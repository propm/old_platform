// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: authorization/authorization.proto

// Protobuf Java Version: 3.25.2
package com.authorization;

/**
 * Protobuf type {@code authorization.GetDecisionsResponse}
 */
public final class GetDecisionsResponse extends
    com.google.protobuf.GeneratedMessageV3 implements
    // @@protoc_insertion_point(message_implements:authorization.GetDecisionsResponse)
    GetDecisionsResponseOrBuilder {
private static final long serialVersionUID = 0L;
  // Use GetDecisionsResponse.newBuilder() to construct.
  private GetDecisionsResponse(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }
  private GetDecisionsResponse() {
    decisionResponses_ = java.util.Collections.emptyList();
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(
      UnusedPrivateParameter unused) {
    return new GetDecisionsResponse();
  }

  public static final com.google.protobuf.Descriptors.Descriptor
      getDescriptor() {
    return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsResponse_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsResponse_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            com.authorization.GetDecisionsResponse.class, com.authorization.GetDecisionsResponse.Builder.class);
  }

  public static final int DECISION_RESPONSES_FIELD_NUMBER = 1;
  @SuppressWarnings("serial")
  private java.util.List<com.authorization.DecisionResponse> decisionResponses_;
  /**
   * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
   */
  @java.lang.Override
  public java.util.List<com.authorization.DecisionResponse> getDecisionResponsesList() {
    return decisionResponses_;
  }
  /**
   * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
   */
  @java.lang.Override
  public java.util.List<? extends com.authorization.DecisionResponseOrBuilder> 
      getDecisionResponsesOrBuilderList() {
    return decisionResponses_;
  }
  /**
   * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
   */
  @java.lang.Override
  public int getDecisionResponsesCount() {
    return decisionResponses_.size();
  }
  /**
   * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
   */
  @java.lang.Override
  public com.authorization.DecisionResponse getDecisionResponses(int index) {
    return decisionResponses_.get(index);
  }
  /**
   * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
   */
  @java.lang.Override
  public com.authorization.DecisionResponseOrBuilder getDecisionResponsesOrBuilder(
      int index) {
    return decisionResponses_.get(index);
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
    for (int i = 0; i < decisionResponses_.size(); i++) {
      output.writeMessage(1, decisionResponses_.get(i));
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    for (int i = 0; i < decisionResponses_.size(); i++) {
      size += com.google.protobuf.CodedOutputStream
        .computeMessageSize(1, decisionResponses_.get(i));
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
    if (!(obj instanceof com.authorization.GetDecisionsResponse)) {
      return super.equals(obj);
    }
    com.authorization.GetDecisionsResponse other = (com.authorization.GetDecisionsResponse) obj;

    if (!getDecisionResponsesList()
        .equals(other.getDecisionResponsesList())) return false;
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
    if (getDecisionResponsesCount() > 0) {
      hash = (37 * hash) + DECISION_RESPONSES_FIELD_NUMBER;
      hash = (53 * hash) + getDecisionResponsesList().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static com.authorization.GetDecisionsResponse parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }

  public static com.authorization.GetDecisionsResponse parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input);
  }

  public static com.authorization.GetDecisionsResponse parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input, extensionRegistry);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static com.authorization.GetDecisionsResponse parseFrom(
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
  public static Builder newBuilder(com.authorization.GetDecisionsResponse prototype) {
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
   * Protobuf type {@code authorization.GetDecisionsResponse}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements
      // @@protoc_insertion_point(builder_implements:authorization.GetDecisionsResponse)
      com.authorization.GetDecisionsResponseOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsResponse_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsResponse_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              com.authorization.GetDecisionsResponse.class, com.authorization.GetDecisionsResponse.Builder.class);
    }

    // Construct using com.authorization.GetDecisionsResponse.newBuilder()
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
      if (decisionResponsesBuilder_ == null) {
        decisionResponses_ = java.util.Collections.emptyList();
      } else {
        decisionResponses_ = null;
        decisionResponsesBuilder_.clear();
      }
      bitField0_ = (bitField0_ & ~0x00000001);
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor
        getDescriptorForType() {
      return com.authorization.AuthorizationProto.internal_static_authorization_GetDecisionsResponse_descriptor;
    }

    @java.lang.Override
    public com.authorization.GetDecisionsResponse getDefaultInstanceForType() {
      return com.authorization.GetDecisionsResponse.getDefaultInstance();
    }

    @java.lang.Override
    public com.authorization.GetDecisionsResponse build() {
      com.authorization.GetDecisionsResponse result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public com.authorization.GetDecisionsResponse buildPartial() {
      com.authorization.GetDecisionsResponse result = new com.authorization.GetDecisionsResponse(this);
      buildPartialRepeatedFields(result);
      if (bitField0_ != 0) { buildPartial0(result); }
      onBuilt();
      return result;
    }

    private void buildPartialRepeatedFields(com.authorization.GetDecisionsResponse result) {
      if (decisionResponsesBuilder_ == null) {
        if (((bitField0_ & 0x00000001) != 0)) {
          decisionResponses_ = java.util.Collections.unmodifiableList(decisionResponses_);
          bitField0_ = (bitField0_ & ~0x00000001);
        }
        result.decisionResponses_ = decisionResponses_;
      } else {
        result.decisionResponses_ = decisionResponsesBuilder_.build();
      }
    }

    private void buildPartial0(com.authorization.GetDecisionsResponse result) {
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
      if (other instanceof com.authorization.GetDecisionsResponse) {
        return mergeFrom((com.authorization.GetDecisionsResponse)other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(com.authorization.GetDecisionsResponse other) {
      if (other == com.authorization.GetDecisionsResponse.getDefaultInstance()) return this;
      if (decisionResponsesBuilder_ == null) {
        if (!other.decisionResponses_.isEmpty()) {
          if (decisionResponses_.isEmpty()) {
            decisionResponses_ = other.decisionResponses_;
            bitField0_ = (bitField0_ & ~0x00000001);
          } else {
            ensureDecisionResponsesIsMutable();
            decisionResponses_.addAll(other.decisionResponses_);
          }
          onChanged();
        }
      } else {
        if (!other.decisionResponses_.isEmpty()) {
          if (decisionResponsesBuilder_.isEmpty()) {
            decisionResponsesBuilder_.dispose();
            decisionResponsesBuilder_ = null;
            decisionResponses_ = other.decisionResponses_;
            bitField0_ = (bitField0_ & ~0x00000001);
            decisionResponsesBuilder_ = 
              com.google.protobuf.GeneratedMessageV3.alwaysUseFieldBuilders ?
                 getDecisionResponsesFieldBuilder() : null;
          } else {
            decisionResponsesBuilder_.addAllMessages(other.decisionResponses_);
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
              com.authorization.DecisionResponse m =
                  input.readMessage(
                      com.authorization.DecisionResponse.parser(),
                      extensionRegistry);
              if (decisionResponsesBuilder_ == null) {
                ensureDecisionResponsesIsMutable();
                decisionResponses_.add(m);
              } else {
                decisionResponsesBuilder_.addMessage(m);
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

    private java.util.List<com.authorization.DecisionResponse> decisionResponses_ =
      java.util.Collections.emptyList();
    private void ensureDecisionResponsesIsMutable() {
      if (!((bitField0_ & 0x00000001) != 0)) {
        decisionResponses_ = new java.util.ArrayList<com.authorization.DecisionResponse>(decisionResponses_);
        bitField0_ |= 0x00000001;
       }
    }

    private com.google.protobuf.RepeatedFieldBuilderV3<
        com.authorization.DecisionResponse, com.authorization.DecisionResponse.Builder, com.authorization.DecisionResponseOrBuilder> decisionResponsesBuilder_;

    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public java.util.List<com.authorization.DecisionResponse> getDecisionResponsesList() {
      if (decisionResponsesBuilder_ == null) {
        return java.util.Collections.unmodifiableList(decisionResponses_);
      } else {
        return decisionResponsesBuilder_.getMessageList();
      }
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public int getDecisionResponsesCount() {
      if (decisionResponsesBuilder_ == null) {
        return decisionResponses_.size();
      } else {
        return decisionResponsesBuilder_.getCount();
      }
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public com.authorization.DecisionResponse getDecisionResponses(int index) {
      if (decisionResponsesBuilder_ == null) {
        return decisionResponses_.get(index);
      } else {
        return decisionResponsesBuilder_.getMessage(index);
      }
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder setDecisionResponses(
        int index, com.authorization.DecisionResponse value) {
      if (decisionResponsesBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ensureDecisionResponsesIsMutable();
        decisionResponses_.set(index, value);
        onChanged();
      } else {
        decisionResponsesBuilder_.setMessage(index, value);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder setDecisionResponses(
        int index, com.authorization.DecisionResponse.Builder builderForValue) {
      if (decisionResponsesBuilder_ == null) {
        ensureDecisionResponsesIsMutable();
        decisionResponses_.set(index, builderForValue.build());
        onChanged();
      } else {
        decisionResponsesBuilder_.setMessage(index, builderForValue.build());
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder addDecisionResponses(com.authorization.DecisionResponse value) {
      if (decisionResponsesBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ensureDecisionResponsesIsMutable();
        decisionResponses_.add(value);
        onChanged();
      } else {
        decisionResponsesBuilder_.addMessage(value);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder addDecisionResponses(
        int index, com.authorization.DecisionResponse value) {
      if (decisionResponsesBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        ensureDecisionResponsesIsMutable();
        decisionResponses_.add(index, value);
        onChanged();
      } else {
        decisionResponsesBuilder_.addMessage(index, value);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder addDecisionResponses(
        com.authorization.DecisionResponse.Builder builderForValue) {
      if (decisionResponsesBuilder_ == null) {
        ensureDecisionResponsesIsMutable();
        decisionResponses_.add(builderForValue.build());
        onChanged();
      } else {
        decisionResponsesBuilder_.addMessage(builderForValue.build());
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder addDecisionResponses(
        int index, com.authorization.DecisionResponse.Builder builderForValue) {
      if (decisionResponsesBuilder_ == null) {
        ensureDecisionResponsesIsMutable();
        decisionResponses_.add(index, builderForValue.build());
        onChanged();
      } else {
        decisionResponsesBuilder_.addMessage(index, builderForValue.build());
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder addAllDecisionResponses(
        java.lang.Iterable<? extends com.authorization.DecisionResponse> values) {
      if (decisionResponsesBuilder_ == null) {
        ensureDecisionResponsesIsMutable();
        com.google.protobuf.AbstractMessageLite.Builder.addAll(
            values, decisionResponses_);
        onChanged();
      } else {
        decisionResponsesBuilder_.addAllMessages(values);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder clearDecisionResponses() {
      if (decisionResponsesBuilder_ == null) {
        decisionResponses_ = java.util.Collections.emptyList();
        bitField0_ = (bitField0_ & ~0x00000001);
        onChanged();
      } else {
        decisionResponsesBuilder_.clear();
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public Builder removeDecisionResponses(int index) {
      if (decisionResponsesBuilder_ == null) {
        ensureDecisionResponsesIsMutable();
        decisionResponses_.remove(index);
        onChanged();
      } else {
        decisionResponsesBuilder_.remove(index);
      }
      return this;
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public com.authorization.DecisionResponse.Builder getDecisionResponsesBuilder(
        int index) {
      return getDecisionResponsesFieldBuilder().getBuilder(index);
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public com.authorization.DecisionResponseOrBuilder getDecisionResponsesOrBuilder(
        int index) {
      if (decisionResponsesBuilder_ == null) {
        return decisionResponses_.get(index);  } else {
        return decisionResponsesBuilder_.getMessageOrBuilder(index);
      }
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public java.util.List<? extends com.authorization.DecisionResponseOrBuilder> 
         getDecisionResponsesOrBuilderList() {
      if (decisionResponsesBuilder_ != null) {
        return decisionResponsesBuilder_.getMessageOrBuilderList();
      } else {
        return java.util.Collections.unmodifiableList(decisionResponses_);
      }
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public com.authorization.DecisionResponse.Builder addDecisionResponsesBuilder() {
      return getDecisionResponsesFieldBuilder().addBuilder(
          com.authorization.DecisionResponse.getDefaultInstance());
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public com.authorization.DecisionResponse.Builder addDecisionResponsesBuilder(
        int index) {
      return getDecisionResponsesFieldBuilder().addBuilder(
          index, com.authorization.DecisionResponse.getDefaultInstance());
    }
    /**
     * <code>repeated .authorization.DecisionResponse decision_responses = 1 [json_name = "decisionResponses"];</code>
     */
    public java.util.List<com.authorization.DecisionResponse.Builder> 
         getDecisionResponsesBuilderList() {
      return getDecisionResponsesFieldBuilder().getBuilderList();
    }
    private com.google.protobuf.RepeatedFieldBuilderV3<
        com.authorization.DecisionResponse, com.authorization.DecisionResponse.Builder, com.authorization.DecisionResponseOrBuilder> 
        getDecisionResponsesFieldBuilder() {
      if (decisionResponsesBuilder_ == null) {
        decisionResponsesBuilder_ = new com.google.protobuf.RepeatedFieldBuilderV3<
            com.authorization.DecisionResponse, com.authorization.DecisionResponse.Builder, com.authorization.DecisionResponseOrBuilder>(
                decisionResponses_,
                ((bitField0_ & 0x00000001) != 0),
                getParentForChildren(),
                isClean());
        decisionResponses_ = null;
      }
      return decisionResponsesBuilder_;
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


    // @@protoc_insertion_point(builder_scope:authorization.GetDecisionsResponse)
  }

  // @@protoc_insertion_point(class_scope:authorization.GetDecisionsResponse)
  private static final com.authorization.GetDecisionsResponse DEFAULT_INSTANCE;
  static {
    DEFAULT_INSTANCE = new com.authorization.GetDecisionsResponse();
  }

  public static com.authorization.GetDecisionsResponse getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<GetDecisionsResponse>
      PARSER = new com.google.protobuf.AbstractParser<GetDecisionsResponse>() {
    @java.lang.Override
    public GetDecisionsResponse parsePartialFrom(
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

  public static com.google.protobuf.Parser<GetDecisionsResponse> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<GetDecisionsResponse> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public com.authorization.GetDecisionsResponse getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }

}

