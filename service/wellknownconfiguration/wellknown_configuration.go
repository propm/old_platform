package wellknownconfiguration

import (
	"context"
	"fmt"
	"log/slog"
	"sync"

	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	wellknown "github.com/opentdf/platform/protocol/go/wellknownconfiguration"
	"github.com/opentdf/platform/service/pkg/serviceregistry"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/structpb"
)

type WellKnownService struct {
	wellknown.UnimplementedWellKnownServiceServer
}

var (
	wellKnownConfiguration map[string]any = make(map[string]any)
	rwMutex                sync.RWMutex
)

func RegisterConfiguration(namespace string, config any) error {
	rwMutex.Lock()
	if _, ok := wellKnownConfiguration[namespace]; ok {
		return fmt.Errorf("namespace %s configuration already registered", namespace)
	}
	wellKnownConfiguration[namespace] = config.(interface{})
	rwMutex.Unlock()
	return nil
}

func NewRegistration() serviceregistry.Registration {
	return serviceregistry.Registration{
		Namespace:   "wellknown",
		ServiceDesc: &wellknown.WellKnownService_ServiceDesc,
		RegisterFunc: func(_ serviceregistry.RegistrationParams) (any, serviceregistry.HandlerServer) {
			return &WellKnownService{}, func(ctx context.Context, mux *runtime.ServeMux, server any) error {
				return wellknown.RegisterWellKnownServiceHandlerServer(ctx, mux, server.(wellknown.WellKnownServiceServer))
			}
		},
	}
}

func (s WellKnownService) GetWellKnownConfiguration(context.Context, *wellknown.GetWellKnownConfigurationRequest) (*wellknown.GetWellKnownConfigurationResponse, error) {
	rwMutex.RLock()
	cfg, err := structpb.NewStruct(wellKnownConfiguration)
	rwMutex.RUnlock()
	if err != nil {
		slog.Error("failed to create struct for wellknown configuration", slog.String("error", err.Error()))
		return nil, status.Error(codes.Internal, "failed to create struct for wellknown configuration")
	}
	return &wellknown.GetWellKnownConfigurationResponse{
		Configuration: cfg,
	}, nil
}
