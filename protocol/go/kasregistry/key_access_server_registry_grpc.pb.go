// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.3.0
// - protoc             (unknown)
// source: kasregistry/key_access_server_registry.proto

package kasregistry

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

const (
	KeyAccessServerRegistryService_ListKeyAccessServers_FullMethodName  = "/kasregistry.KeyAccessServerRegistryService/ListKeyAccessServers"
	KeyAccessServerRegistryService_GetKeyAccessServer_FullMethodName    = "/kasregistry.KeyAccessServerRegistryService/GetKeyAccessServer"
	KeyAccessServerRegistryService_CreateKeyAccessServer_FullMethodName = "/kasregistry.KeyAccessServerRegistryService/CreateKeyAccessServer"
	KeyAccessServerRegistryService_UpdateKeyAccessServer_FullMethodName = "/kasregistry.KeyAccessServerRegistryService/UpdateKeyAccessServer"
	KeyAccessServerRegistryService_DeleteKeyAccessServer_FullMethodName = "/kasregistry.KeyAccessServerRegistryService/DeleteKeyAccessServer"
)

// KeyAccessServerRegistryServiceClient is the client API for KeyAccessServerRegistryService service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type KeyAccessServerRegistryServiceClient interface {
	ListKeyAccessServers(ctx context.Context, in *ListKeyAccessServersRequest, opts ...grpc.CallOption) (*ListKeyAccessServersResponse, error)
	GetKeyAccessServer(ctx context.Context, in *GetKeyAccessServerRequest, opts ...grpc.CallOption) (*GetKeyAccessServerResponse, error)
	CreateKeyAccessServer(ctx context.Context, in *CreateKeyAccessServerRequest, opts ...grpc.CallOption) (*CreateKeyAccessServerResponse, error)
	UpdateKeyAccessServer(ctx context.Context, in *UpdateKeyAccessServerRequest, opts ...grpc.CallOption) (*UpdateKeyAccessServerResponse, error)
	DeleteKeyAccessServer(ctx context.Context, in *DeleteKeyAccessServerRequest, opts ...grpc.CallOption) (*DeleteKeyAccessServerResponse, error)
}

type keyAccessServerRegistryServiceClient struct {
	cc grpc.ClientConnInterface
}

func NewKeyAccessServerRegistryServiceClient(cc grpc.ClientConnInterface) KeyAccessServerRegistryServiceClient {
	return &keyAccessServerRegistryServiceClient{cc}
}

func (c *keyAccessServerRegistryServiceClient) ListKeyAccessServers(ctx context.Context, in *ListKeyAccessServersRequest, opts ...grpc.CallOption) (*ListKeyAccessServersResponse, error) {
	out := new(ListKeyAccessServersResponse)
	err := c.cc.Invoke(ctx, KeyAccessServerRegistryService_ListKeyAccessServers_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *keyAccessServerRegistryServiceClient) GetKeyAccessServer(ctx context.Context, in *GetKeyAccessServerRequest, opts ...grpc.CallOption) (*GetKeyAccessServerResponse, error) {
	out := new(GetKeyAccessServerResponse)
	err := c.cc.Invoke(ctx, KeyAccessServerRegistryService_GetKeyAccessServer_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *keyAccessServerRegistryServiceClient) CreateKeyAccessServer(ctx context.Context, in *CreateKeyAccessServerRequest, opts ...grpc.CallOption) (*CreateKeyAccessServerResponse, error) {
	out := new(CreateKeyAccessServerResponse)
	err := c.cc.Invoke(ctx, KeyAccessServerRegistryService_CreateKeyAccessServer_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *keyAccessServerRegistryServiceClient) UpdateKeyAccessServer(ctx context.Context, in *UpdateKeyAccessServerRequest, opts ...grpc.CallOption) (*UpdateKeyAccessServerResponse, error) {
	out := new(UpdateKeyAccessServerResponse)
	err := c.cc.Invoke(ctx, KeyAccessServerRegistryService_UpdateKeyAccessServer_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

func (c *keyAccessServerRegistryServiceClient) DeleteKeyAccessServer(ctx context.Context, in *DeleteKeyAccessServerRequest, opts ...grpc.CallOption) (*DeleteKeyAccessServerResponse, error) {
	out := new(DeleteKeyAccessServerResponse)
	err := c.cc.Invoke(ctx, KeyAccessServerRegistryService_DeleteKeyAccessServer_FullMethodName, in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// KeyAccessServerRegistryServiceServer is the server API for KeyAccessServerRegistryService service.
// All implementations must embed UnimplementedKeyAccessServerRegistryServiceServer
// for forward compatibility
type KeyAccessServerRegistryServiceServer interface {
	ListKeyAccessServers(context.Context, *ListKeyAccessServersRequest) (*ListKeyAccessServersResponse, error)
	GetKeyAccessServer(context.Context, *GetKeyAccessServerRequest) (*GetKeyAccessServerResponse, error)
	CreateKeyAccessServer(context.Context, *CreateKeyAccessServerRequest) (*CreateKeyAccessServerResponse, error)
	UpdateKeyAccessServer(context.Context, *UpdateKeyAccessServerRequest) (*UpdateKeyAccessServerResponse, error)
	DeleteKeyAccessServer(context.Context, *DeleteKeyAccessServerRequest) (*DeleteKeyAccessServerResponse, error)
	mustEmbedUnimplementedKeyAccessServerRegistryServiceServer()
}

// UnimplementedKeyAccessServerRegistryServiceServer must be embedded to have forward compatible implementations.
type UnimplementedKeyAccessServerRegistryServiceServer struct {
}

func (UnimplementedKeyAccessServerRegistryServiceServer) ListKeyAccessServers(context.Context, *ListKeyAccessServersRequest) (*ListKeyAccessServersResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method ListKeyAccessServers not implemented")
}
func (UnimplementedKeyAccessServerRegistryServiceServer) GetKeyAccessServer(context.Context, *GetKeyAccessServerRequest) (*GetKeyAccessServerResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method GetKeyAccessServer not implemented")
}
func (UnimplementedKeyAccessServerRegistryServiceServer) CreateKeyAccessServer(context.Context, *CreateKeyAccessServerRequest) (*CreateKeyAccessServerResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateKeyAccessServer not implemented")
}
func (UnimplementedKeyAccessServerRegistryServiceServer) UpdateKeyAccessServer(context.Context, *UpdateKeyAccessServerRequest) (*UpdateKeyAccessServerResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UpdateKeyAccessServer not implemented")
}
func (UnimplementedKeyAccessServerRegistryServiceServer) DeleteKeyAccessServer(context.Context, *DeleteKeyAccessServerRequest) (*DeleteKeyAccessServerResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method DeleteKeyAccessServer not implemented")
}
func (UnimplementedKeyAccessServerRegistryServiceServer) mustEmbedUnimplementedKeyAccessServerRegistryServiceServer() {
}

// UnsafeKeyAccessServerRegistryServiceServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to KeyAccessServerRegistryServiceServer will
// result in compilation errors.
type UnsafeKeyAccessServerRegistryServiceServer interface {
	mustEmbedUnimplementedKeyAccessServerRegistryServiceServer()
}

func RegisterKeyAccessServerRegistryServiceServer(s grpc.ServiceRegistrar, srv KeyAccessServerRegistryServiceServer) {
	s.RegisterService(&KeyAccessServerRegistryService_ServiceDesc, srv)
}

func _KeyAccessServerRegistryService_ListKeyAccessServers_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(ListKeyAccessServersRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(KeyAccessServerRegistryServiceServer).ListKeyAccessServers(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: KeyAccessServerRegistryService_ListKeyAccessServers_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(KeyAccessServerRegistryServiceServer).ListKeyAccessServers(ctx, req.(*ListKeyAccessServersRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _KeyAccessServerRegistryService_GetKeyAccessServer_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(GetKeyAccessServerRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(KeyAccessServerRegistryServiceServer).GetKeyAccessServer(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: KeyAccessServerRegistryService_GetKeyAccessServer_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(KeyAccessServerRegistryServiceServer).GetKeyAccessServer(ctx, req.(*GetKeyAccessServerRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _KeyAccessServerRegistryService_CreateKeyAccessServer_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(CreateKeyAccessServerRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(KeyAccessServerRegistryServiceServer).CreateKeyAccessServer(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: KeyAccessServerRegistryService_CreateKeyAccessServer_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(KeyAccessServerRegistryServiceServer).CreateKeyAccessServer(ctx, req.(*CreateKeyAccessServerRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _KeyAccessServerRegistryService_UpdateKeyAccessServer_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UpdateKeyAccessServerRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(KeyAccessServerRegistryServiceServer).UpdateKeyAccessServer(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: KeyAccessServerRegistryService_UpdateKeyAccessServer_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(KeyAccessServerRegistryServiceServer).UpdateKeyAccessServer(ctx, req.(*UpdateKeyAccessServerRequest))
	}
	return interceptor(ctx, in, info, handler)
}

func _KeyAccessServerRegistryService_DeleteKeyAccessServer_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(DeleteKeyAccessServerRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(KeyAccessServerRegistryServiceServer).DeleteKeyAccessServer(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: KeyAccessServerRegistryService_DeleteKeyAccessServer_FullMethodName,
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(KeyAccessServerRegistryServiceServer).DeleteKeyAccessServer(ctx, req.(*DeleteKeyAccessServerRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// KeyAccessServerRegistryService_ServiceDesc is the grpc.ServiceDesc for KeyAccessServerRegistryService service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var KeyAccessServerRegistryService_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "kasregistry.KeyAccessServerRegistryService",
	HandlerType: (*KeyAccessServerRegistryServiceServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "ListKeyAccessServers",
			Handler:    _KeyAccessServerRegistryService_ListKeyAccessServers_Handler,
		},
		{
			MethodName: "GetKeyAccessServer",
			Handler:    _KeyAccessServerRegistryService_GetKeyAccessServer_Handler,
		},
		{
			MethodName: "CreateKeyAccessServer",
			Handler:    _KeyAccessServerRegistryService_CreateKeyAccessServer_Handler,
		},
		{
			MethodName: "UpdateKeyAccessServer",
			Handler:    _KeyAccessServerRegistryService_UpdateKeyAccessServer_Handler,
		},
		{
			MethodName: "DeleteKeyAccessServer",
			Handler:    _KeyAccessServerRegistryService_DeleteKeyAccessServer_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "kasregistry/key_access_server_registry.proto",
}
