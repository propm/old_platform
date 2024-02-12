// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: authorization/authorization.proto

// Protobuf Java Version: 3.25.2
package com.authorization;

/**
 * Protobuf type {@code authorization.GetDecisionsRequest}
 */
public final class GetDecisionsRequest extends
    com.google.protobuf.GeneratedMessageV3 implements
    // @@protoc_insertion_point(message_implements:authorization.GetDecisionsRequest)
    GetDecisionsRequestOrBuilder {
private static final long serialVersionUID = 0L;
  // Use GetDecisionsRequest.newBuilder() to construct.
  private GetDecisionsRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }
  private GetDecisionsRequest() {
    decisionRequests_ = java.util.Collections.emptyList();
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(
      UnusedPrivateParameter unused) {
    return new GetDecisionsRequest();
  }

  public static final com.google.protobuf.Descriptors.Descriptor
      getDescriptor() {
    return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            com.authorization.GetDecisionsRequest.class, com.authorization.GetDecisionsRequest.Builder.class);
  }

  public static final int DECISION_REQUESTS_FIELD_NUMBER = 1;
  @SuppressWarnings("serial")
  private java.util.List<com.authorization.DecisionRequest> decisionRequests_;
  /**
   * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
   */
  @java.lang.Override
  public java.util.List<com.authorization.DecisionRequest> getDecisionRequestsList() {
    return decisionRequests_;
  }
  /**
   * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
   */
  @java.lang.Override
  public java.util.List<? extends com.authorization.DecisionRequestOrBuilder> 
      getDecisionRequestsOrBuilderList() {
    return decisionRequests_;
  }
  /**
   * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
   */
  @java.lang.Override
  public int getDecisionRequestsCount() {
    return decisionRequests_.size();
  }
  /**
   * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
   */
  @java.lang.Override
  public com.authorization.DecisionRequest getDecisionRequests(int index) {
    return decisionRequests_.get(index);
  }
  /**
   * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
   */
  @java.lang.Override
  public com.authorization.DecisionRequestOrBuilder getDecisionRequestsOrBuilder(
      int index) {
    return decisionRequests_.get(index);
  }

  private byte memoizedIsInitialized = -1;
  @java.lang.Override
  public final boolean isInitialized() {
    byte isInitialized = memoizedIsInitialized;
    if (isInitialized == 1) return true;
    if (isInitialized == 0) return false;

    memoizedIsInitialized = 1;
    return true;
  }

  @java.lang.Override
  public void writeTo(com.google.protobuf.CodedOutputStream output)
                      throws java.io.IOException {
    for (int i = 0; i < decisionRequests_.size(); i++) {
      output.writeMessage(1, decisionRequests_.get(i));
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    for (int i = 0; i < decisionRequests_.size(); i++) {
      size += com.google.protobuf.CodedOutputStream
        .computeMessageSize(1, decisionRequests_.get(i));
    }
    size += getUnknownFields().getSerializedSize();
    memoizedSize = size;
    return size;
  }

  @java.lang.Override
  public boolean equals(final java.lang.Object obj) {
    if (obj == this) {
     return true;
    }
    if (!(obj instanceof com.authorization.GetDecisionsRequest)) {
      return super.equals(obj);
    }
    com.authorization.GetDecisionsRequest other = (com.authorization.GetDecisionsRequest) obj;

    if (!getDecisionRequestsList()
        .equals(other.getDecisionRequestsList())) return false;
    if (!getUnknownFields().equals(other.getUnknownFields())) return false;
    return true;
  }

  @java.lang.Override
  public int hashCode() {
    if (memoizedHashCode != 0) {
      return memoizedHashCode;
    }
    int hash = 41;
    hash = (19 * hash) + getDescriptor().hashCode();
    if (getDecisionRequestsCount() > 0) {
      hash = (37 * hash) + DECISION_REQUESTS_FIELD_NUMBER;
      hash = (53 * hash) + getDecisionRequestsList().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static com.authorization.GetDecisionsRequest parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }

  public static com.authorization.GetDecisionsRequest parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input);
  }

  public static com.authorization.GetDecisionsRequest parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input, extensionRegistry);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static com.authorization.GetDecisionsRequest parseFrom(
      com.google.protobuf.CodedInputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }

  @java.lang.Override
  public Builder newBuilderForType() { return newBuilder(); }
  public static Builder newBuilder() {
    return DEFAULT_INSTANCE.toBuilder();
  }
  public static Builder newBuilder(com.authorization.GetDecisionsRequest prototype) {
    return DEFAULT_INSTANCE.toBuilder().mergeFrom(prototype);
  }
  @java.lang.Override
  public Builder toBuilder() {
    return this == DEFAULT_INSTANCE
        ? new Builder() : new Builder().mergeFrom(this);
  }

  @java.lang.Override
  protected Builder newBuilderForType(
      com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
    Builder builder = new Builder(parent);
    return builder;
  }
  /**
   * Protobuf type {@code authorization.GetDecisionsRequest}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements
      // @@protoc_insertion_point(builder_implements:authorization.GetDecisionsRequest)
      com.authorization.GetDecisionsRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              com.authorization.GetDecisionsRequest.class, com.authorization.GetDecisionsRequest.Builder.class);
    }

    // Construct using com.authorization.GetDecisionsRequest.newBuilder()
    private Builder() {

    }

    private Builder(
        com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);

    }
    @java.lang.Override
    public Builder clear() {
      super.clear();
      bitField0_ = 0;
      if (decisionRequestsBuilder_ == null) {
        decisionRequests_ = java.util.Collections.emptyList();
      } else {
        decisionRequests_ = null;
        decisionRequestsBuilder_.clear();
      }
      bitField0_ = (bitField0_ & ~0x00000001);
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor
        getDescriptorForType() {
      return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsRequest_descriptor;
    }

    @java.lang.Override
    public com.authorization.GetDecisionsRequest getDefaultInstanceForType() {
      return com.authorization.GetDecisionsRequest.getDefaultInstance();
    }

    @java.lang.Override
    public com.authorization.GetDecisionsRequest build() {
      com.authorization.GetDecisionsRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public com.authorization.GetDecisionsRequest buildPartial() {
      com.authorization.GetDecisionsRequest result = new com.authorization.GetDecisionsRequest(this);
      buildPartialRepeatedFields(result);
      if (bitField0_ != 0) { buildPartial0(result); }
      onBuilt();
      return result;
    }

    private void buildPartialRepeatedFields(com.authorization.GetDecisionsRequest result) {
      if (decisionRequestsBuilder_ == null) {
        if (((bitField0_ & 0x00000001) != 0)) {
          decisionRequests_ = java.util.Collections.unmodifiableList(decisionRequests_);
          bitField0_ = (bitField0_ & ~0x00000001);
        }
        result.decisionRequests_ = decisionRequests_;
      } else {
        result.decisionRequests_ = decisionRequestsBuilder_.build();
      }
    }

    private void buildPartial0(com.authorization.GetDecisionsRequest result) {
      int from_bitField0_ = bitField0_;
    }

    @java.lang.Override
    public Builder clone() {
      return super.clone();
    }
    @java.lang.Override
    public Builder setField(
        com.google.protobuf.Descriptors.FieldDescriptor field,
        java.lang.Object value) {
      return super.setField(field, value);
    }
    @java.lang.Override
    public Builder clearField(
        com.google.protobuf.Descriptors.FieldDescriptor field) {
      return super.clearField(field);
    }
    @java.lang.Override
    public Builder clearOneof(
        com.google.protobuf.Descriptors.OneofDescriptor oneof) {
      return super.clearOneof(oneof);
    }
    @java.lang.Override
    public Builder setRepeatedField(
        com.google.protobuf.Descriptors.FieldDescriptor field,
        int index, java.lang.Object value) {
      return super.setRepeatedField(field, index, value);
    }
    @java.lang.Override
    public Builder addRepeatedField(
        com.google.protobuf.Descriptors.FieldDescriptor field,
        java.lang.Object value) {
      return super.addRepeatedField(field, value);
    }
    @java.lang.Override
    public Builder mergeFrom(com.google.protobuf.Message other) {
      if (other instanceof com.authorization.GetDecisionsRequest) {
        return mergeFrom((com.authorization.GetDecisionsRequest)other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(com.authorization.GetDecisionsRequest other) {
      if (other == com.authorization.GetDecisionsRequest.getDefaultInstance()) return this;
      if (decisionRequestsBuilder_ == null) {
        if (!other.decisionRequests_.isEmpty()) {
          if (decisionRequests_.isEmpty()) {
            decisionRequests_ = other.decisionRequests_;
            bitField0_ = (bitField0_ & ~0x00000001);
          } else {
            ensureDecisionRequestsIsMutable();
            decisionRequests_.addAll(other.decisionRequests_);
          }
          onChanged();
        }
      } else {
        if (!other.decisionRequests_.isEmpty()) {
          if (decisionRequestsBuilder_.isEmpty()) {
            decisionRequestsBuilder_.dispose();
            decisionRequestsBuilder_ = null;
            decisionRequests_ = other.decisionRequests_;
            bitField0_ = (bitField0_ & ~0x00000001);
            decisionRequestsBuilder_ = 
              com.google.protobuf.GeneratedMessageV3.alwaysUseFieldBuilders ?
                 getDecisionRequestsFieldBuilder() : null;
          } else {
            decisionRequestsBuilder_.addAllMessages(other.decisionRequests_);
          }
        }
      }
      this.mergeUnknownFields(other.getUnknownFields());
      onChanged();
      return this;
    }

    @java.lang.Override
    public final boolean isInitialized() {
      return true;
    }

    @java.lang.Override
    public Builder mergeFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws java.io.IOException {
      if (extensionRegistry == null) {
        throw new java.lang.NullPointerException();
      }
      try {
        boolean done = false;
        while (!done) {
          int tag = input.readTag();
          switch (tag) {
            case 0:
              done = true;
              break;
            case 10: {
              com.authorization.DecisionRequest m =
                  input.readMessage(
                      com.authorization.DecisionRequest.parser(),
                      extensionRegistry);
              if (decisionRequestsBuilder_ == null) {
                ensureDecisionRequestsIsMutable();
                decisionRequests_.add(m);
              } else {
                decisionRequestsBuilder_.addMessage(m);
              }
              break;
            } // case 10
            default: {
              if (!super.parseUnknownField(input, extensionRegistry, tag)) {
                done = true; // was an endgroup tag
              }
              break;
            } // default:
          } // switch (tag)
        } // while (!done)
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        throw e.unwrapIOException();
      } finally {
        onChanged();
      } // finally
      return this;
    }
    private int bitField0_;

    private java.util.List<com.authorization.DecisionRequest> decisionRequests_ =
      java.util.Collections.emptyList();
    private void ensureDecisionRequestsIsMutable() {
      if (!((bitField0_ & 0x00000001) != 0)) {
        decisionRequests_ = new java.util.ArrayList<com.authorization.DecisionRequest>(decisionRequests_);
        bitField0_ |= 0x00000001;
       }
    }

    private com.google.protobuf.RepeatedFieldBuilderV3<
        com.authorization.DecisionRequest, com.authorization.DecisionRequest.Builder, com.authorization.DecisionRequestOrBuilder> decisionRequestsBuilder_;

    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public java.util.List<com.authorization.DecisionRequest> getDecisionRequestsList() {
      if (decisionRequestsBuilder_ == null) {
        return java.util.Collections.unmodifiableList(decisionRequests_);
      } else {
        return decisionRequestsBuilder_.getMessageList();
      }
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public int getDecisionRequestsCount() {
      if (decisionRequestsBuilder_ == null) {
        return decisionRequests_.size();
      } else {
        return decisionRequestsBuilder_.getCount();
      }
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public com.authorization.DecisionRequest getDecisionRequests(int index) {
      if (decisionRequestsBuilder_ == null) {
        return decisionRequests_.get(index);
      } else {
        return decisionRequestsBuilder_.getMessage(index);
      }
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder setDecisionRequests(
        int index, com.authorization.DecisionRequest value) {
      if (decisionRequestsBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ensureDecisionRequestsIsMutable();
        decisionRequests_.set(index, value);
        onChanged();
      } else {
        decisionRequestsBuilder_.setMessage(index, value);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder setDecisionRequests(
        int index, com.authorization.DecisionRequest.Builder builderForValue) {
      if (decisionRequestsBuilder_ == null) {
        ensureDecisionRequestsIsMutable();
        decisionRequests_.set(index, builderForValue.build());
        onChanged();
      } else {
        decisionRequestsBuilder_.setMessage(index, builderForValue.build());
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder addDecisionRequests(com.authorization.DecisionRequest value) {
      if (decisionRequestsBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ensureDecisionRequestsIsMutable();
        decisionRequests_.add(value);
        onChanged();
      } else {
        decisionRequestsBuilder_.addMessage(value);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder addDecisionRequests(
        int index, com.authorization.DecisionRequest value) {
      if (decisionRequestsBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ensureDecisionRequestsIsMutable();
        decisionRequests_.add(index, value);
        onChanged();
      } else {
        decisionRequestsBuilder_.addMessage(index, value);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder addDecisionRequests(
        com.authorization.DecisionRequest.Builder builderForValue) {
      if (decisionRequestsBuilder_ == null) {
        ensureDecisionRequestsIsMutable();
        decisionRequests_.add(builderForValue.build());
        onChanged();
      } else {
        decisionRequestsBuilder_.addMessage(builderForValue.build());
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder addDecisionRequests(
        int index, com.authorization.DecisionRequest.Builder builderForValue) {
      if (decisionRequestsBuilder_ == null) {
        ensureDecisionRequestsIsMutable();
        decisionRequests_.add(index, builderForValue.build());
        onChanged();
      } else {
        decisionRequestsBuilder_.addMessage(index, builderForValue.build());
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder addAllDecisionRequests(
        java.lang.Iterable<? extends com.authorization.DecisionRequest> values) {
      if (decisionRequestsBuilder_ == null) {
        ensureDecisionRequestsIsMutable();
        com.google.protobuf.AbstractMessageLite.Builder.addAll(
            values, decisionRequests_);
        onChanged();
      } else {
        decisionRequestsBuilder_.addAllMessages(values);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder clearDecisionRequests() {
      if (decisionRequestsBuilder_ == null) {
        decisionRequests_ = java.util.Collections.emptyList();
        bitField0_ = (bitField0_ & ~0x00000001);
        onChanged();
      } else {
        decisionRequestsBuilder_.clear();
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public Builder removeDecisionRequests(int index) {
      if (decisionRequestsBuilder_ == null) {
        ensureDecisionRequestsIsMutable();
        decisionRequests_.remove(index);
        onChanged();
      } else {
        decisionRequestsBuilder_.remove(index);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public com.authorization.DecisionRequest.Builder getDecisionRequestsBuilder(
        int index) {
      return getDecisionRequestsFieldBuilder().getBuilder(index);
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public com.authorization.DecisionRequestOrBuilder getDecisionRequestsOrBuilder(
        int index) {
      if (decisionRequestsBuilder_ == null) {
        return decisionRequests_.get(index);  } else {
        return decisionRequestsBuilder_.getMessageOrBuilder(index);
      }
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public java.util.List<? extends com.authorization.DecisionRequestOrBuilder> 
         getDecisionRequestsOrBuilderList() {
      if (decisionRequestsBuilder_ != null) {
        return decisionRequestsBuilder_.getMessageOrBuilderList();
      } else {
        return java.util.Collections.unmodifiableList(decisionRequests_);
      }
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public com.authorization.DecisionRequest.Builder addDecisionRequestsBuilder() {
      return getDecisionRequestsFieldBuilder().addBuilder(
          com.authorization.DecisionRequest.getDefaultInstance());
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public com.authorization.DecisionRequest.Builder addDecisionRequestsBuilder(
        int index) {
      return getDecisionRequestsFieldBuilder().addBuilder(
          index, com.authorization.DecisionRequest.getDefaultInstance());
    }
    /**
     * <code>repeated .authorization.DecisionRequest decision_requests = 1 [json_name = "decisionRequests"];</code>
     */
    public java.util.List<com.authorization.DecisionRequest.Builder> 
         getDecisionRequestsBuilderList() {
      return getDecisionRequestsFieldBuilder().getBuilderList();
    }
    private com.google.protobuf.RepeatedFieldBuilderV3<
        com.authorization.DecisionRequest, com.authorization.DecisionRequest.Builder, com.authorization.DecisionRequestOrBuilder> 
        getDecisionRequestsFieldBuilder() {
      if (decisionRequestsBuilder_ == null) {
        decisionRequestsBuilder_ = new com.google.protobuf.RepeatedFieldBuilderV3<
            com.authorization.DecisionRequest, com.authorization.DecisionRequest.Builder, com.authorization.DecisionRequestOrBuilder>(
                decisionRequests_,
                ((bitField0_ & 0x00000001) != 0),
                getParentForChildren(),
                isClean());
        decisionRequests_ = null;
      }
      return decisionRequestsBuilder_;
    }
    @java.lang.Override
    public final Builder setUnknownFields(
        final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.setUnknownFields(unknownFields);
    }

    @java.lang.Override
    public final Builder mergeUnknownFields(
        final com.google.protobuf.UnknownFieldSet unknownFields) {
      return super.mergeUnknownFields(unknownFields);
    }


    // @@protoc_insertion_point(builder_scope:authorization.GetDecisionsRequest)
  }

  // @@protoc_insertion_point(class_scope:authorization.GetDecisionsRequest)
  private static final com.authorization.GetDecisionsRequest DEFAULT_INSTANCE;
  static {
    DEFAULT_INSTANCE = new com.authorization.GetDecisionsRequest();
  }

  public static com.authorization.GetDecisionsRequest getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<GetDecisionsRequest>
      PARSER = new com.google.protobuf.AbstractParser<GetDecisionsRequest>() {
    @java.lang.Override
    public GetDecisionsRequest parsePartialFrom(
        com.google.protobuf.CodedInputStream input,
        com.google.protobuf.ExtensionRegistryLite extensionRegistry)
        throws com.google.protobuf.InvalidProtocolBufferException {
      Builder builder = newBuilder();
      try {
        builder.mergeFrom(input, extensionRegistry);
      } catch (com.google.protobuf.InvalidProtocolBufferException e) {
        throw e.setUnfinishedMessage(builder.buildPartial());
      } catch (com.google.protobuf.UninitializedMessageException e) {
        throw e.asInvalidProtocolBufferException().setUnfinishedMessage(builder.buildPartial());
      } catch (java.io.IOException e) {
        throw new com.google.protobuf.InvalidProtocolBufferException(e)
            .setUnfinishedMessage(builder.buildPartial());
      }
      return builder.buildPartial();
    }
  };

  public static com.google.protobuf.Parser<GetDecisionsRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<GetDecisionsRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public com.authorization.GetDecisionsRequest getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }

}

