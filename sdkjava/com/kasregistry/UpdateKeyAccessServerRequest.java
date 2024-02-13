// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: kasregistry/key_access_server_registry.proto

// Protobuf Java Version: 3.25.2
package com.kasregistry;

/**
 * Protobuf type {@code kasregistry.UpdateKeyAccessServerRequest}
 */
public final class UpdateKeyAccessServerRequest extends
    com.google.protobuf.GeneratedMessageV3 implements
    // @@protoc_insertion_point(message_implements:kasregistry.UpdateKeyAccessServerRequest)
    UpdateKeyAccessServerRequestOrBuilder {
private static final long serialVersionUID = 0L;
  // Use UpdateKeyAccessServerRequest.newBuilder() to construct.
  private UpdateKeyAccessServerRequest(com.google.protobuf.GeneratedMessageV3.Builder<?> builder) {
    super(builder);
  }
  private UpdateKeyAccessServerRequest() {
    id_ = "";
  }

  @java.lang.Override
  @SuppressWarnings({"unused"})
  protected java.lang.Object newInstance(
      UnusedPrivateParameter unused) {
    return new UpdateKeyAccessServerRequest();
  }

  public static final com.google.protobuf.Descriptors.Descriptor
      getDescriptor() {
    return com.kasregistry.KeyAccessServerRegistryProto.internal_static_kasregistry_UpdateKeyAccessServerRequest_descriptor;
  }

  @java.lang.Override
  protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
      internalGetFieldAccessorTable() {
    return com.kasregistry.KeyAccessServerRegistryProto.internal_static_kasregistry_UpdateKeyAccessServerRequest_fieldAccessorTable
        .ensureFieldAccessorsInitialized(
            com.kasregistry.UpdateKeyAccessServerRequest.class, com.kasregistry.UpdateKeyAccessServerRequest.Builder.class);
  }

  private int bitField0_;
  public static final int ID_FIELD_NUMBER = 1;
  @SuppressWarnings("serial")
  private volatile java.lang.Object id_ = "";
  /**
   * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
   * @return The id.
   */
  @java.lang.Override
  public java.lang.String getId() {
    java.lang.Object ref = id_;
    if (ref instanceof java.lang.String) {
      return (java.lang.String) ref;
    } else {
      com.google.protobuf.ByteString bs = 
          (com.google.protobuf.ByteString) ref;
      java.lang.String s = bs.toStringUtf8();
      id_ = s;
      return s;
    }
  }
  /**
   * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
   * @return The bytes for id.
   */
  @java.lang.Override
  public com.google.protobuf.ByteString
      getIdBytes() {
    java.lang.Object ref = id_;
    if (ref instanceof java.lang.String) {
      com.google.protobuf.ByteString b = 
          com.google.protobuf.ByteString.copyFromUtf8(
              (java.lang.String) ref);
      id_ = b;
      return b;
    } else {
      return (com.google.protobuf.ByteString) ref;
    }
  }

  public static final int KEY_ACCESS_SERVER_FIELD_NUMBER = 2;
  private com.kasregistry.KeyAccessServerCreateUpdate keyAccessServer_;
  /**
   * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
   * @return Whether the keyAccessServer field is set.
   */
  @java.lang.Override
  public boolean hasKeyAccessServer() {
    return ((bitField0_ & 0x00000001) != 0);
  }
  /**
   * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
   * @return The keyAccessServer.
   */
  @java.lang.Override
  public com.kasregistry.KeyAccessServerCreateUpdate getKeyAccessServer() {
    return keyAccessServer_ == null ? com.kasregistry.KeyAccessServerCreateUpdate.getDefaultInstance() : keyAccessServer_;
  }
  /**
   * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
   */
  @java.lang.Override
  public com.kasregistry.KeyAccessServerCreateUpdateOrBuilder getKeyAccessServerOrBuilder() {
    return keyAccessServer_ == null ? com.kasregistry.KeyAccessServerCreateUpdate.getDefaultInstance() : keyAccessServer_;
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
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(id_)) {
      com.google.protobuf.GeneratedMessageV3.writeString(output, 1, id_);
    }
    if (((bitField0_ & 0x00000001) != 0)) {
      output.writeMessage(2, getKeyAccessServer());
    }
    getUnknownFields().writeTo(output);
  }

  @java.lang.Override
  public int getSerializedSize() {
    int size = memoizedSize;
    if (size != -1) return size;

    size = 0;
    if (!com.google.protobuf.GeneratedMessageV3.isStringEmpty(id_)) {
      size += com.google.protobuf.GeneratedMessageV3.computeStringSize(1, id_);
    }
    if (((bitField0_ & 0x00000001) != 0)) {
      size += com.google.protobuf.CodedOutputStream
        .computeMessageSize(2, getKeyAccessServer());
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
    if (!(obj instanceof com.kasregistry.UpdateKeyAccessServerRequest)) {
      return super.equals(obj);
    }
    com.kasregistry.UpdateKeyAccessServerRequest other = (com.kasregistry.UpdateKeyAccessServerRequest) obj;

    if (!getId()
        .equals(other.getId())) return false;
    if (hasKeyAccessServer() != other.hasKeyAccessServer()) return false;
    if (hasKeyAccessServer()) {
      if (!getKeyAccessServer()
          .equals(other.getKeyAccessServer())) return false;
    }
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
    hash = (37 * hash) + ID_FIELD_NUMBER;
    hash = (53 * hash) + getId().hashCode();
    if (hasKeyAccessServer()) {
      hash = (37 * hash) + KEY_ACCESS_SERVER_FIELD_NUMBER;
      hash = (53 * hash) + getKeyAccessServer().hashCode();
    }
    hash = (29 * hash) + getUnknownFields().hashCode();
    memoizedHashCode = hash;
    return hash;
  }

  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      java.nio.ByteBuffer data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      java.nio.ByteBuffer data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      com.google.protobuf.ByteString data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      com.google.protobuf.ByteString data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(byte[] data)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      byte[] data,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws com.google.protobuf.InvalidProtocolBufferException {
    return PARSER.parseFrom(data, extensionRegistry);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input, extensionRegistry);
  }

  public static com.kasregistry.UpdateKeyAccessServerRequest parseDelimitedFrom(java.io.InputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input);
  }

  public static com.kasregistry.UpdateKeyAccessServerRequest parseDelimitedFrom(
      java.io.InputStream input,
      com.google.protobuf.ExtensionRegistryLite extensionRegistry)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseDelimitedWithIOException(PARSER, input, extensionRegistry);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
      com.google.protobuf.CodedInputStream input)
      throws java.io.IOException {
    return com.google.protobuf.GeneratedMessageV3
        .parseWithIOException(PARSER, input);
  }
  public static com.kasregistry.UpdateKeyAccessServerRequest parseFrom(
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
  public static Builder newBuilder(com.kasregistry.UpdateKeyAccessServerRequest prototype) {
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
   * Protobuf type {@code kasregistry.UpdateKeyAccessServerRequest}
   */
  public static final class Builder extends
      com.google.protobuf.GeneratedMessageV3.Builder<Builder> implements
      // @@protoc_insertion_point(builder_implements:kasregistry.UpdateKeyAccessServerRequest)
      com.kasregistry.UpdateKeyAccessServerRequestOrBuilder {
    public static final com.google.protobuf.Descriptors.Descriptor
        getDescriptor() {
      return com.kasregistry.KeyAccessServerRegistryProto.internal_static_kasregistry_UpdateKeyAccessServerRequest_descriptor;
    }

    @java.lang.Override
    protected com.google.protobuf.GeneratedMessageV3.FieldAccessorTable
        internalGetFieldAccessorTable() {
      return com.kasregistry.KeyAccessServerRegistryProto.internal_static_kasregistry_UpdateKeyAccessServerRequest_fieldAccessorTable
          .ensureFieldAccessorsInitialized(
              com.kasregistry.UpdateKeyAccessServerRequest.class, com.kasregistry.UpdateKeyAccessServerRequest.Builder.class);
    }

    // Construct using com.kasregistry.UpdateKeyAccessServerRequest.newBuilder()
    private Builder() {
      maybeForceBuilderInitialization();
    }

    private Builder(
        com.google.protobuf.GeneratedMessageV3.BuilderParent parent) {
      super(parent);
      maybeForceBuilderInitialization();
    }
    private void maybeForceBuilderInitialization() {
      if (com.google.protobuf.GeneratedMessageV3
              .alwaysUseFieldBuilders) {
        getKeyAccessServerFieldBuilder();
      }
    }
    @java.lang.Override
    public Builder clear() {
      super.clear();
      bitField0_ = 0;
      id_ = "";
      keyAccessServer_ = null;
      if (keyAccessServerBuilder_ != null) {
        keyAccessServerBuilder_.dispose();
        keyAccessServerBuilder_ = null;
      }
      return this;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.Descriptor
        getDescriptorForType() {
      return com.kasregistry.KeyAccessServerRegistryProto.internal_static_kasregistry_UpdateKeyAccessServerRequest_descriptor;
    }

    @java.lang.Override
    public com.kasregistry.UpdateKeyAccessServerRequest getDefaultInstanceForType() {
      return com.kasregistry.UpdateKeyAccessServerRequest.getDefaultInstance();
    }

    @java.lang.Override
    public com.kasregistry.UpdateKeyAccessServerRequest build() {
      com.kasregistry.UpdateKeyAccessServerRequest result = buildPartial();
      if (!result.isInitialized()) {
        throw newUninitializedMessageException(result);
      }
      return result;
    }

    @java.lang.Override
    public com.kasregistry.UpdateKeyAccessServerRequest buildPartial() {
      com.kasregistry.UpdateKeyAccessServerRequest result = new com.kasregistry.UpdateKeyAccessServerRequest(this);
      if (bitField0_ != 0) { buildPartial0(result); }
      onBuilt();
      return result;
    }

    private void buildPartial0(com.kasregistry.UpdateKeyAccessServerRequest result) {
      int from_bitField0_ = bitField0_;
      if (((from_bitField0_ & 0x00000001) != 0)) {
        result.id_ = id_;
      }
      int to_bitField0_ = 0;
      if (((from_bitField0_ & 0x00000002) != 0)) {
        result.keyAccessServer_ = keyAccessServerBuilder_ == null
            ? keyAccessServer_
            : keyAccessServerBuilder_.build();
        to_bitField0_ |= 0x00000001;
      }
      result.bitField0_ |= to_bitField0_;
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
      if (other instanceof com.kasregistry.UpdateKeyAccessServerRequest) {
        return mergeFrom((com.kasregistry.UpdateKeyAccessServerRequest)other);
      } else {
        super.mergeFrom(other);
        return this;
      }
    }

    public Builder mergeFrom(com.kasregistry.UpdateKeyAccessServerRequest other) {
      if (other == com.kasregistry.UpdateKeyAccessServerRequest.getDefaultInstance()) return this;
      if (!other.getId().isEmpty()) {
        id_ = other.id_;
        bitField0_ |= 0x00000001;
        onChanged();
      }
      if (other.hasKeyAccessServer()) {
        mergeKeyAccessServer(other.getKeyAccessServer());
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
              id_ = input.readStringRequireUtf8();
              bitField0_ |= 0x00000001;
              break;
            } // case 10
            case 18: {
              input.readMessage(
                  getKeyAccessServerFieldBuilder().getBuilder(),
                  extensionRegistry);
              bitField0_ |= 0x00000002;
              break;
            } // case 18
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

    private java.lang.Object id_ = "";
    /**
     * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
     * @return The id.
     */
    public java.lang.String getId() {
      java.lang.Object ref = id_;
      if (!(ref instanceof java.lang.String)) {
        com.google.protobuf.ByteString bs =
            (com.google.protobuf.ByteString) ref;
        java.lang.String s = bs.toStringUtf8();
        id_ = s;
        return s;
      } else {
        return (java.lang.String) ref;
      }
    }
    /**
     * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
     * @return The bytes for id.
     */
    public com.google.protobuf.ByteString
        getIdBytes() {
      java.lang.Object ref = id_;
      if (ref instanceof String) {
        com.google.protobuf.ByteString b = 
            com.google.protobuf.ByteString.copyFromUtf8(
                (java.lang.String) ref);
        id_ = b;
        return b;
      } else {
        return (com.google.protobuf.ByteString) ref;
      }
    }
    /**
     * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
     * @param value The id to set.
     * @return This builder for chaining.
     */
    public Builder setId(
        java.lang.String value) {
      if (value == null) { throw new NullPointerException(); }
      id_ = value;
      bitField0_ |= 0x00000001;
      onChanged();
      return this;
    }
    /**
     * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
     * @return This builder for chaining.
     */
    public Builder clearId() {
      id_ = getDefaultInstance().getId();
      bitField0_ = (bitField0_ & ~0x00000001);
      onChanged();
      return this;
    }
    /**
     * <code>string id = 1 [json_name = "id", (.buf.validate.field) = { ... }</code>
     * @param value The bytes for id to set.
     * @return This builder for chaining.
     */
    public Builder setIdBytes(
        com.google.protobuf.ByteString value) {
      if (value == null) { throw new NullPointerException(); }
      checkByteStringIsUtf8(value);
      id_ = value;
      bitField0_ |= 0x00000001;
      onChanged();
      return this;
    }

    private com.kasregistry.KeyAccessServerCreateUpdate keyAccessServer_;
    private com.google.protobuf.SingleFieldBuilderV3<
        com.kasregistry.KeyAccessServerCreateUpdate, com.kasregistry.KeyAccessServerCreateUpdate.Builder, com.kasregistry.KeyAccessServerCreateUpdateOrBuilder> keyAccessServerBuilder_;
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     * @return Whether the keyAccessServer field is set.
     */
    public boolean hasKeyAccessServer() {
      return ((bitField0_ & 0x00000002) != 0);
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     * @return The keyAccessServer.
     */
    public com.kasregistry.KeyAccessServerCreateUpdate getKeyAccessServer() {
      if (keyAccessServerBuilder_ == null) {
        return keyAccessServer_ == null ? com.kasregistry.KeyAccessServerCreateUpdate.getDefaultInstance() : keyAccessServer_;
      } else {
        return keyAccessServerBuilder_.getMessage();
      }
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    public Builder setKeyAccessServer(com.kasregistry.KeyAccessServerCreateUpdate value) {
      if (keyAccessServerBuilder_ == null) {
        if (value == null) {
          throw new NullPointerException();
        }
        keyAccessServer_ = value;
      } else {
        keyAccessServerBuilder_.setMessage(value);
      }
      bitField0_ |= 0x00000002;
      onChanged();
      return this;
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    public Builder setKeyAccessServer(
        com.kasregistry.KeyAccessServerCreateUpdate.Builder builderForValue) {
      if (keyAccessServerBuilder_ == null) {
        keyAccessServer_ = builderForValue.build();
      } else {
        keyAccessServerBuilder_.setMessage(builderForValue.build());
      }
      bitField0_ |= 0x00000002;
      onChanged();
      return this;
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    public Builder mergeKeyAccessServer(com.kasregistry.KeyAccessServerCreateUpdate value) {
      if (keyAccessServerBuilder_ == null) {
        if (((bitField0_ & 0x00000002) != 0) &&
          keyAccessServer_ != null &&
          keyAccessServer_ != com.kasregistry.KeyAccessServerCreateUpdate.getDefaultInstance()) {
          getKeyAccessServerBuilder().mergeFrom(value);
        } else {
          keyAccessServer_ = value;
        }
      } else {
        keyAccessServerBuilder_.mergeFrom(value);
      }
      if (keyAccessServer_ != null) {
        bitField0_ |= 0x00000002;
        onChanged();
      }
      return this;
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    public Builder clearKeyAccessServer() {
      bitField0_ = (bitField0_ & ~0x00000002);
      keyAccessServer_ = null;
      if (keyAccessServerBuilder_ != null) {
        keyAccessServerBuilder_.dispose();
        keyAccessServerBuilder_ = null;
      }
      onChanged();
      return this;
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    public com.kasregistry.KeyAccessServerCreateUpdate.Builder getKeyAccessServerBuilder() {
      bitField0_ |= 0x00000002;
      onChanged();
      return getKeyAccessServerFieldBuilder().getBuilder();
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    public com.kasregistry.KeyAccessServerCreateUpdateOrBuilder getKeyAccessServerOrBuilder() {
      if (keyAccessServerBuilder_ != null) {
        return keyAccessServerBuilder_.getMessageOrBuilder();
      } else {
        return keyAccessServer_ == null ?
            com.kasregistry.KeyAccessServerCreateUpdate.getDefaultInstance() : keyAccessServer_;
      }
    }
    /**
     * <code>.kasregistry.KeyAccessServerCreateUpdate key_access_server = 2 [json_name = "keyAccessServer", (.buf.validate.field) = { ... }</code>
     */
    private com.google.protobuf.SingleFieldBuilderV3<
        com.kasregistry.KeyAccessServerCreateUpdate, com.kasregistry.KeyAccessServerCreateUpdate.Builder, com.kasregistry.KeyAccessServerCreateUpdateOrBuilder> 
        getKeyAccessServerFieldBuilder() {
      if (keyAccessServerBuilder_ == null) {
        keyAccessServerBuilder_ = new com.google.protobuf.SingleFieldBuilderV3<
            com.kasregistry.KeyAccessServerCreateUpdate, com.kasregistry.KeyAccessServerCreateUpdate.Builder, com.kasregistry.KeyAccessServerCreateUpdateOrBuilder>(
                getKeyAccessServer(),
                getParentForChildren(),
                isClean());
        keyAccessServer_ = null;
      }
      return keyAccessServerBuilder_;
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


    // @@protoc_insertion_point(builder_scope:kasregistry.UpdateKeyAccessServerRequest)
  }

  // @@protoc_insertion_point(class_scope:kasregistry.UpdateKeyAccessServerRequest)
  private static final com.kasregistry.UpdateKeyAccessServerRequest DEFAULT_INSTANCE;
  static {
    DEFAULT_INSTANCE = new com.kasregistry.UpdateKeyAccessServerRequest();
  }

  public static com.kasregistry.UpdateKeyAccessServerRequest getDefaultInstance() {
    return DEFAULT_INSTANCE;
  }

  private static final com.google.protobuf.Parser<UpdateKeyAccessServerRequest>
      PARSER = new com.google.protobuf.AbstractParser<UpdateKeyAccessServerRequest>() {
    @java.lang.Override
    public UpdateKeyAccessServerRequest parsePartialFrom(
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

  public static com.google.protobuf.Parser<UpdateKeyAccessServerRequest> parser() {
    return PARSER;
  }

  @java.lang.Override
  public com.google.protobuf.Parser<UpdateKeyAccessServerRequest> getParserForType() {
    return PARSER;
  }

  @java.lang.Override
  public com.kasregistry.UpdateKeyAccessServerRequest getDefaultInstanceForType() {
    return DEFAULT_INSTANCE;
  }

}

