// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: authorization/authorization.proto

// Protobuf Java Version: 3.25.2
package com.authorization;

public interface ActionOrBuilder extends
    // @@protoc_insertion_point(interface_extends:authorization.Action)
    com.google.protobuf.MessageOrBuilder {

  /**
   * <code>.authorization.Action.StandardAction standard = 1 [json_name = "standard"];</code>
   * @return Whether the standard field is set.
   */
  boolean hasStandard();
  /**
   * <code>.authorization.Action.StandardAction standard = 1 [json_name = "standard"];</code>
   * @return The enum numeric value on the wire for standard.
   */
  int getStandardValue();
  /**
   * <code>.authorization.Action.StandardAction standard = 1 [json_name = "standard"];</code>
   * @return The standard.
   */
  com.authorization.Action.StandardAction getStandard();

  /**
   * <code>string custom = 2 [json_name = "custom"];</code>
   * @return Whether the custom field is set.
   */
  boolean hasCustom();
  /**
   * <code>string custom = 2 [json_name = "custom"];</code>
   * @return The custom.
   */
  java.lang.String getCustom();
  /**
   * <code>string custom = 2 [json_name = "custom"];</code>
   * @return The bytes for custom.
   */
  com.google.protobuf.ByteString
      getCustomBytes();

  com.authorization.Action.ValueCase getValueCase();
}
