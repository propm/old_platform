
�#
buf/validate/expression.protobuf.validate"V

Constraint
id (	Rid
message (	Rmessage

expression (	R
expression"E

Violations7

violations (2.buf.validate.ViolationR
violations"�
	Violation

field_path (	R	fieldPath#
constraint_id (	RconstraintId
message (	Rmessage
for_key (RforKeyBp
build.buf.validateBExpressionProtoPZGbuf.build/gen/go/bufbuild/protovalidate/protocolbuffers/go/buf/validateJ�
 [
�
 2� Copyright 2023 Buf Technologies, Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


 

 ^
	
 ^

 "
	

 "

 0
	
 0

 +
	
 +
�
 & 6� `Constraint` represents a validation rule written in the Common Expression
 Language (CEL) syntax. Each Constraint includes a unique identifier, an
 optional error message, and the CEL expression to evaluate. For more
 information on CEL, [see our documentation](https://github.com/bufbuild/protovalidate/blob/main/docs/cel.md).

 ```proto
 message Foo {
   option (buf.validate.message).cel = {
     id: "foo.bar"
     message: "bar must be greater than 0"
     expression: "this.bar > 0"
   };
   int32 bar = 1;
 }
 ```



 &
�
  )� `id` is a string that serves as a machine-readable name for this Constraint.
 It should be unique within its scope, which could be either a message or a field.


  )

  )	

  )
�
 /� `message` is an optional field that provides a human-readable error message
 for this Constraint when the CEL expression evaluates to false. If a
 non-empty message is provided, any strings resulting from the CEL
 expression evaluation are ignored.


 /

 /	

 /
�
 5� `expression` is the actual CEL expression that will be evaluated for
 validation. This string must resolve to either a boolean or a string
 value. If the expression evaluates to false or a non-empty string, the
 validation is considered failed, and the message is rejected.


 5

 5	

 5
�
; >� `Violations` is a collection of `Violation` messages. This message type is returned by
 protovalidate when a proto message fails to meet the requirements set by the `Constraint` validation rules.
 Each individual violation is represented by a `Violation` message.



;
�
 =$w `violations` is a repeated field that contains all the `Violation` messages corresponding to the violations detected.


 =


 =

 =

 ="#
�
L [� `Violation` represents a single instance where a validation rule, expressed
 as a `Constraint`, was not met. It provides information about the field that
 caused the violation, the specific constraint that wasn't fulfilled, and a
 human-readable error message.

 ```json
 {
   "fieldPath": "bar",
   "constraintId": "foo.bar",
   "message": "bar must be greater than 0"
 }
 ```



L
�
 O� `field_path` is a machine-readable identifier that points to the specific field that failed the validation.
 This could be a nested field, in which case the path will include all the parent fields leading to the actual field that caused the violation.


 O

 O	

 O
�
S� `constraint_id` is the unique identifier of the `Constraint` that was not fulfilled.
 This is the same `id` that was specified in the `Constraint` message, allowing easy tracing of which rule was violated.


S

S	

S
�
W� `message` is a human-readable error message that describes the nature of the violation.
 This can be the default error message from the violated `Constraint`, or it can be a custom message that gives more context about the violation.


W

W	

W
f
ZY `for_key` indicates whether the violation was caused by a map key, rather than a value.


Z

Z

Zbproto3��NH
$
	buf.buildbufbuildprotovalidate e097f827e65240ac9fd4b1158849a8fc 
�
 google/protobuf/descriptor.protogoogle.protobuf"M
FileDescriptorSet8
file (2$.google.protobuf.FileDescriptorProtoRfile"�
FileDescriptorProto
name (	Rname
package (	Rpackage

dependency (	R
dependency+
public_dependency
 (RpublicDependency'
weak_dependency (RweakDependencyC
message_type (2 .google.protobuf.DescriptorProtoRmessageTypeA
	enum_type (2$.google.protobuf.EnumDescriptorProtoRenumTypeA
service (2'.google.protobuf.ServiceDescriptorProtoRserviceC
	extension (2%.google.protobuf.FieldDescriptorProtoR	extension6
options (2.google.protobuf.FileOptionsRoptionsI
source_code_info	 (2.google.protobuf.SourceCodeInfoRsourceCodeInfo
syntax (	Rsyntax"�
DescriptorProto
name (	Rname;
field (2%.google.protobuf.FieldDescriptorProtoRfieldC
	extension (2%.google.protobuf.FieldDescriptorProtoR	extensionA
nested_type (2 .google.protobuf.DescriptorProtoR
nestedTypeA
	enum_type (2$.google.protobuf.EnumDescriptorProtoRenumTypeX
extension_range (2/.google.protobuf.DescriptorProto.ExtensionRangeRextensionRangeD

oneof_decl (2%.google.protobuf.OneofDescriptorProtoR	oneofDecl9
options (2.google.protobuf.MessageOptionsRoptionsU
reserved_range	 (2..google.protobuf.DescriptorProto.ReservedRangeRreservedRange#
reserved_name
 (	RreservedNamez
ExtensionRange
start (Rstart
end (Rend@
options (2&.google.protobuf.ExtensionRangeOptionsRoptions7
ReservedRange
start (Rstart
end (Rend"|
ExtensionRangeOptionsX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption*	�����"�
FieldDescriptorProto
name (	Rname
number (RnumberA
label (2+.google.protobuf.FieldDescriptorProto.LabelRlabel>
type (2*.google.protobuf.FieldDescriptorProto.TypeRtype
	type_name (	RtypeName
extendee (	Rextendee#
default_value (	RdefaultValue
oneof_index	 (R
oneofIndex
	json_name
 (	RjsonName7
options (2.google.protobuf.FieldOptionsRoptions'
proto3_optional (Rproto3Optional"�
Type
TYPE_DOUBLE

TYPE_FLOAT

TYPE_INT64
TYPE_UINT64

TYPE_INT32
TYPE_FIXED64
TYPE_FIXED32
	TYPE_BOOL
TYPE_STRING	

TYPE_GROUP

TYPE_MESSAGE

TYPE_BYTES
TYPE_UINT32
	TYPE_ENUM
TYPE_SFIXED32
TYPE_SFIXED64
TYPE_SINT32
TYPE_SINT64"C
Label
LABEL_OPTIONAL
LABEL_REQUIRED
LABEL_REPEATED"c
OneofDescriptorProto
name (	Rname7
options (2.google.protobuf.OneofOptionsRoptions"�
EnumDescriptorProto
name (	Rname?
value (2).google.protobuf.EnumValueDescriptorProtoRvalue6
options (2.google.protobuf.EnumOptionsRoptions]
reserved_range (26.google.protobuf.EnumDescriptorProto.EnumReservedRangeRreservedRange#
reserved_name (	RreservedName;
EnumReservedRange
start (Rstart
end (Rend"�
EnumValueDescriptorProto
name (	Rname
number (Rnumber;
options (2!.google.protobuf.EnumValueOptionsRoptions"�
ServiceDescriptorProto
name (	Rname>
method (2&.google.protobuf.MethodDescriptorProtoRmethod9
options (2.google.protobuf.ServiceOptionsRoptions"�
MethodDescriptorProto
name (	Rname

input_type (	R	inputType
output_type (	R
outputType8
options (2.google.protobuf.MethodOptionsRoptions0
client_streaming (:falseRclientStreaming0
server_streaming (:falseRserverStreaming"�	
FileOptions!
java_package (	RjavaPackage0
java_outer_classname (	RjavaOuterClassname5
java_multiple_files
 (:falseRjavaMultipleFilesD
java_generate_equals_and_hash (BRjavaGenerateEqualsAndHash:
java_string_check_utf8 (:falseRjavaStringCheckUtf8S
optimize_for	 (2).google.protobuf.FileOptions.OptimizeMode:SPEEDRoptimizeFor

go_package (	R	goPackage5
cc_generic_services (:falseRccGenericServices9
java_generic_services (:falseRjavaGenericServices5
py_generic_services (:falseRpyGenericServices7
php_generic_services* (:falseRphpGenericServices%

deprecated (:falseR
deprecated.
cc_enable_arenas (:trueRccEnableArenas*
objc_class_prefix$ (	RobjcClassPrefix)
csharp_namespace% (	RcsharpNamespace!
swift_prefix' (	RswiftPrefix(
php_class_prefix( (	RphpClassPrefix#
php_namespace) (	RphpNamespace4
php_metadata_namespace, (	RphpMetadataNamespace!
ruby_package- (	RrubyPackageX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption":
OptimizeMode	
SPEED
	CODE_SIZE
LITE_RUNTIME*	�����J&'"�
MessageOptions<
message_set_wire_format (:falseRmessageSetWireFormatL
no_standard_descriptor_accessor (:falseRnoStandardDescriptorAccessor%

deprecated (:falseR
deprecated
	map_entry (RmapEntryX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption*	�����JJJJ	J	
"�
FieldOptionsA
ctype (2#.google.protobuf.FieldOptions.CType:STRINGRctype
packed (RpackedG
jstype (2$.google.protobuf.FieldOptions.JSType:	JS_NORMALRjstype
lazy (:falseRlazy.
unverified_lazy (:falseRunverifiedLazy%

deprecated (:falseR
deprecated
weak
 (:falseRweakX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption"/
CType

STRING 
CORD
STRING_PIECE"5
JSType
	JS_NORMAL 
	JS_STRING
	JS_NUMBER*	�����J"s
OneofOptionsX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption*	�����"�
EnumOptions
allow_alias (R
allowAlias%

deprecated (:falseR
deprecatedX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption*	�����J"�
EnumValueOptions%

deprecated (:falseR
deprecatedX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption*	�����"�
ServiceOptions%

deprecated! (:falseR
deprecatedX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption*	�����"�
MethodOptions%

deprecated! (:falseR
deprecatedq
idempotency_level" (2/.google.protobuf.MethodOptions.IdempotencyLevel:IDEMPOTENCY_UNKNOWNRidempotencyLevelX
uninterpreted_option� (2$.google.protobuf.UninterpretedOptionRuninterpretedOption"P
IdempotencyLevel
IDEMPOTENCY_UNKNOWN 
NO_SIDE_EFFECTS

IDEMPOTENT*	�����"�
UninterpretedOptionA
name (2-.google.protobuf.UninterpretedOption.NamePartRname)
identifier_value (	RidentifierValue,
positive_int_value (RpositiveIntValue,
negative_int_value (RnegativeIntValue!
double_value (RdoubleValue!
string_value (RstringValue'
aggregate_value (	RaggregateValueJ
NamePart
	name_part (	RnamePart!
is_extension (RisExtension"�
SourceCodeInfoD
location (2(.google.protobuf.SourceCodeInfo.LocationRlocation�
Location
path (BRpath
span (BRspan)
leading_comments (	RleadingComments+
trailing_comments (	RtrailingComments:
leading_detached_comments (	RleadingDetachedComments"�
GeneratedCodeInfoM

annotation (2-.google.protobuf.GeneratedCodeInfo.AnnotationR
annotationm

Annotation
path (BRpath
source_file (	R
sourceFile
begin (Rbegin
end (RendB~
com.google.protobufBDescriptorProtosHZ-google.golang.org/protobuf/types/descriptorpb��GPB�Google.Protobuf.ReflectionJ��
' �
�
' 2� Protocol Buffers - Google's data interchange format
 Copyright 2008 Google Inc.  All rights reserved.
 https://developers.google.com/protocol-buffers/

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

     * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following disclaimer
 in the documentation and/or other materials provided with the
 distribution.
     * Neither the name of Google Inc. nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
2� Author: kenton@google.com (Kenton Varda)
  Based on original Protocol Buffers design by
  Sanjay Ghemawat, Jeff Dean, and others.

 The messages in this file describe the definitions found in .proto files.
 A valid .proto file can be translated directly to a FileDescriptorProto
 without any other information (e.g. without reading its imports).


) 

+ D
	
+ D

, ,
	
, ,

- 1
	
- 1

. 7
	
%. 7

/ !
	
$/ !

0 
	
0 

4 

	4 t descriptor.proto must be optimized for speed because reflection-based
 algorithms don't work during bootstrapping.

j
 8 :^ The protocol compiler can output a FileDescriptorSet containing the .proto
 files it parses.



 8

  9(

  9


  9

  9#

  9&'
/
= Z# Describes a complete .proto file.



=
9
 >", file name, relative to root of source tree


 >


 >

 >

 >
*
?" e.g. "foo", "foo.bar", etc.


?


?

?

?
4
B!' Names of files imported by this file.


B


B

B

B 
Q
D(D Indexes of the public imported files in the dependency list above.


D


D

D"

D%'
z
G&m Indexes of the weak imported files in the dependency list.
 For Google-internal migration only. Do not use.


G


G

G 

G#%
6
J,) All top-level definitions in this file.


J


J

J'

J*+

K-

K


K

K(

K+,

L.

L


L!

L")

L,-

M.

M


M

M )

M,-

	O#

	O


	O

	O

	O!"
�

U/� This field contains optional information about the original source code.
 You may safely remove this entire field without harming runtime
 functionality of the descriptors -- the information is needed only by
 development tools.



U



U


U*


U-.
]
YP The syntax of the proto file.
 The supported values are "proto2" and "proto3".


Y


Y

Y

Y
'
] } Describes a message type.



]

 ^

 ^


 ^

 ^

 ^

`*

`


`

` %

`()

a.

a


a

a )

a,-

c+

c


c

c&

c)*

d-

d


d

d(

d+,

 fk

 f


  g" Inclusive.


  g

  g

  g

  g

 h" Exclusive.


 h

 h

 h

 h

 j/

 j

 j"

 j#*

 j-.

l.

l


l

l)

l,-

n/

n


n

n *

n-.

p&

p


p

p!

p$%
�
ux� Range of reserved tag numbers. Reserved tag numbers may not be used by
 fields or extension ranges in the same message. Reserved ranges may
 not overlap.


u


 v" Inclusive.


 v

 v

 v

 v

w" Exclusive.


w

w

w

w

y,

y


y

y'

y*+
�
	|%u Reserved field names, which may not be used by fields in the same message.
 A given name may only be reserved once.


	|


	|

	|

	|"$

 �



O
 �:A The parser stores options it doesn't recognize here. See above.


 �


 �

 �3

 �69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �
3
� �% Describes a field within a message.


�

 ��

 �
S
  �C 0 is reserved for errors.
 Order is weird for historical reasons.


  �

  �

 �

 �

 �
w
 �g Not ZigZag encoded.  Negative numbers take 10 bytes.  Use TYPE_SINT64 if
 negative values are likely.


 �

 �

 �

 �

 �
w
 �g Not ZigZag encoded.  Negative numbers take 10 bytes.  Use TYPE_SINT32 if
 negative values are likely.


 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �
�
 	�� Tag-delimited aggregate.
 Group type is deprecated and not supported in proto3. However, Proto3
 implementations should still be able to parse the group wire format and
 treat group fields as unknown fields.


 	�

 	�
-
 
�" Length-delimited aggregate.


 
�

 
�
#
 � New in version 2.


 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �

 �
'
 �" Uses ZigZag encoding.


 �

 �
'
 �" Uses ZigZag encoding.


 �

 �

��

�
*
 � 0 is reserved for errors


 �

 �

�

�

�

�

�

�

 �

 �


 �

 �

 �

�

�


�

�

�

�

�


�

�

�
�
�� If type_name is set, this need not be set.  If both this and type_name
 are set, this must be one of TYPE_ENUM, TYPE_MESSAGE or TYPE_GROUP.


�


�

�

�
�
� � For message and enum types, this is the name of the type.  If the name
 starts with a '.', it is fully-qualified.  Otherwise, C++-like scoping
 rules are used to find the type (i.e. first the nested types within this
 message are searched, then within the parent, on up to the root
 namespace).


�


�

�

�
~
�p For extensions, this is the name of the type being extended.  It is
 resolved in the same manner as type_name.


�


�

�

�
�
�$� For numeric types, contains the original text representation of the value.
 For booleans, "true" or "false".
 For strings, contains the default text contents (not escaped in any way).
 For bytes, contains the C escaped value.  All bytes >= 128 are escaped.


�


�

�

�"#
�
�!v If set, gives the index of a oneof in the containing type's oneof_decl
 list.  This field is a member of that oneof.


�


�

�

� 
�
�!� JSON name of this field. The value is set by protocol compiler. If the
 user has set a "json_name" option on this field, that option's value
 will be used. Otherwise, it's deduced from the field's name by converting
 it to camelCase.


�


�

�

� 

	�$

	�


	�

	�

	�"#
�	

�%�	 If true, this is a proto3 "optional". When a proto3 field is optional, it
 tracks presence regardless of field type.

 When proto3_optional is true, this field must be belong to a oneof to
 signal to old proto3 clients that presence is tracked for this field. This
 oneof is known as a "synthetic" oneof, and this field must be its sole
 member (each proto3 optional field gets its own synthetic oneof). Synthetic
 oneofs exist in the descriptor only, and do not generate any API. Synthetic
 oneofs must be ordered after all "real" oneofs.

 For message fields, proto3_optional doesn't create any semantic change,
 since non-repeated message fields always track presence. However it still
 indicates the semantic detail of whether the user wrote "optional" or not.
 This can be useful for round-tripping the .proto file. For consistency we
 give message fields a synthetic oneof also, even though it is not required
 to track presence. This is especially important because the parser can't
 tell if a field is a message or an enum, so it must always create a
 synthetic oneof.

 Proto2 optional fields do not set this flag, because they already indicate
 optional with `LABEL_OPTIONAL`.



�



�


�


�"$
"
� � Describes a oneof.


�

 �

 �


 �

 �

 �

�$

�


�

�

�"#
'
� � Describes an enum type.


�

 �

 �


 �

 �

 �

�.

�


�#

�$)

�,-

�#

�


�

�

�!"
�
 ��� Range of reserved numeric values. Reserved values may not be used by
 entries in the same enum. Reserved ranges may not overlap.

 Note that this is distinct from DescriptorProto.ReservedRange in that it
 is inclusive such that it can appropriately represent the entire int32
 domain.


 �


  �" Inclusive.


  �

  �

  �

  �

 �" Inclusive.


 �

 �

 �

 �
�
�0� Range of reserved numeric values. Reserved numeric values may not be used
 by enum values in the same enum declaration. Reserved ranges may not
 overlap.


�


�

�+

�./
l
�$^ Reserved enum value names, which may not be reused. A given name may only
 be reserved once.


�


�

�

�"#
1
� �# Describes a value within an enum.


� 

 �

 �


 �

 �

 �

�

�


�

�

�

�(

�


�

�#

�&'
$
� � Describes a service.


�

 �

 �


 �

 �

 �

�,

�


� 

�!'

�*+

�&

�


�

�!

�$%
0
	� �" Describes a method of a service.


	�

	 �

	 �


	 �

	 �

	 �
�
	�!� Input and output type names.  These are resolved in the same way as
 FieldDescriptorProto.type_name, but must refer to a message type.


	�


	�

	�

	� 

	�"

	�


	�

	�

	� !

	�%

	�


	�

	� 

	�#$
E
	�77 Identifies if client streams multiple client messages


	�


	�

	� 

	�#$

	�%6

	�&5
E
	�77 Identifies if server streams multiple server messages


	�


	�

	� 

	�#$

	�%6

	�&5
�

� �2N ===================================================================
 Options
2� Each of the definitions above may have "options" attached.  These are
 just annotations which may cause code to be generated slightly differently
 or may contain hints for code that manipulates protocol messages.

 Clients may define custom options as extensions of the *Options messages.
 These extensions may not yet be known at parsing time, so the parser cannot
 store the values in them.  Instead it stores them in a field in the *Options
 message called uninterpreted_option. This field must have the same name
 across all *Options messages. We then use this field to populate the
 extensions when we build a descriptor, at which point all protos have been
 parsed and so all extensions are known.

 Extension numbers for custom options may be chosen as follows:
 * For options which will only be used within a single application or
   organization, or for experimental options, use field numbers 50000
   through 99999.  It is up to you to ensure that you do not use the
   same number for multiple options.
 * For options which will be published and used publicly by multiple
   independent entities, e-mail protobuf-global-extension-registry@google.com
   to reserve extension numbers. Simply provide your project name (e.g.
   Objective-C plugin) and your project website (if available) -- there's no
   need to explain how you intend to use them. Usually you only need one
   extension number. You can declare multiple options with only one extension
   number by putting them in a sub-message. See the Custom Options section of
   the docs for examples:
   https://developers.google.com/protocol-buffers/docs/proto#options
   If this turns out to be popular, a web service will be set up
   to automatically assign option numbers.



�
�

 �#� Sets the Java package where classes generated from this .proto will be
 placed.  By default, the proto package is used, but this is often
 inappropriate because proto packages do not normally start with backwards
 domain names.



 �



 �


 �


 �!"
�

�+� Controls the name of the wrapper Java class generated for the .proto file.
 That class will always contain the .proto file's getDescriptor() method as
 well as any top-level extensions defined in the .proto file.
 If java_multiple_files is disabled, then all the other classes from the
 .proto file will be nested inside the single wrapper outer class.



�



�


�&


�)*
�

�;� If enabled, then the Java code generator will generate a separate .java
 file for each top-level message, enum, and service defined in the .proto
 file.  Thus, these types will *not* be nested inside the wrapper class
 named by java_outer_classname.  However, the wrapper class will still be
 generated to contain the file's getDescriptor() method as well as any
 top-level extensions defined in the file.



�



�


�#


�&(


�):


�*9
)

�E This option does nothing.



�



�


�-


�02


�3D


�4C
�

�>� If set true, then the Java2 code generator will generate code that
 throws an exception whenever an attempt is made to assign a non-UTF-8
 byte sequence to a string field.
 Message reflection will do the same.
 However, an extension field still accepts non-UTF-8 byte sequences.
 This option has no effect on when used with the lite runtime.



�



�


�&


�)+


�,=


�-<
L

 ��< Generated classes can be optimized for speed or code size.



 �
D

  �"4 Generate complete code for parsing, serialization,



  �	


  �
G

 � etc.
"/ Use ReflectionOps to implement these methods.



 �


 �
G

 �"7 Generate code using MessageLite and the lite runtime.



 �


 �


�;


�



�


�$


�'(


�):


�*9
�

�"� Sets the Go package where structs generated from this .proto will be
 placed. If omitted, the Go package will be derived from the following:
   - The basename of the package import path, if provided.
   - Otherwise, the package statement in the .proto file, if present.
   - Otherwise, the basename of the .proto file, without extension.



�



�


�


�!
�

�;� Should generic services be generated in each language?  "Generic" services
 are not specific to any particular RPC system.  They are generated by the
 main code generators in each language (without additional plugins).
 Generic services were the only kind of service generation supported by
 early versions of google.protobuf.

 Generic services are now considered deprecated in favor of using plugins
 that generate code specific to your particular RPC system.  Therefore,
 these default to false.  Old code which depends on generic services should
 explicitly set them to true.



�



�


�#


�&(


�):


�*9


�=


�



�


�%


�(*


�+<


�,;


	�;


	�



	�


	�#


	�&(


	�):


	�*9



�<



�




�



�$



�')



�*;



�+:
�

�2� Is this file deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for everything in the file, or it will be completely ignored; in the very
 least, this is a formalization for deprecating files.



�



�


�


�


� 1


�!0


�7q Enables the use of arenas for the proto messages in this file. This applies
 only to generated classes for C++.



�



�


� 


�#%


�&6


�'5
�

�)� Sets the objective c class prefix which is prepended to all objective c
 generated classes from this .proto. There is no default.



�



�


�#


�&(
I

�(; Namespace for generated classes; defaults to the package.



�



�


�"


�%'
�

�$� By default Swift generators will take the proto package and CamelCase it
 replacing '.' with underscore and use that to prefix the types/symbols
 defined. When this options is provided, they will use this value instead
 to prefix the types/symbols defined.



�



�


�


�!#
~

�(p Sets the php class prefix which is prepended to all php generated classes
 from this .proto. Default is empty.



�



�


�"


�%'
�

�%� Use this option to change the namespace of php generated classes. Default
 is empty. When this option is empty, the package name will be used for
 determining the namespace.



�



�


�


�"$
�

�.� Use this option to change the namespace of php generated metadata classes.
 Default is empty. When this option is empty, the proto file name will be
 used for determining the namespace.



�



�


�(


�+-
�

�$� Use this option to change the package of ruby generated classes. Default
 is empty. When this option is not set, the package name will be used for
 determining the ruby package.



�



�


�


�!#
|

�:n The parser stores options it doesn't recognize here.
 See the documentation for the "Options" section above.



�



�


�3


�69
�

�z Clients can define custom options in extensions of this message.
 See the documentation for the "Options" section above.



 �


 �


 �


	�


	 �


	 �

� �

�
�
 �>� Set true to use the old proto1 MessageSet wire format for extensions.
 This is provided for backwards-compatibility with the MessageSet wire
 format.  You should not use this for any other reason:  It's less
 efficient, has fewer features, and is more complicated.

 The message must be defined exactly as follows:
   message Foo {
     option message_set_wire_format = true;
     extensions 4 to max;
   }
 Note that the message cannot have any defined fields; MessageSets only
 have extensions.

 All extensions of your type must be singular messages; e.g. they cannot
 be int32s, enums, or repeated messages.

 Because this is an option, the above two restrictions are not enforced by
 the protocol compiler.


 �


 �

 �'

 �*+

 �,=

 �-<
�
�F� Disables the generation of the standard "descriptor()" accessor, which can
 conflict with a field of the same name.  This is meant to make migration
 from proto1 easier; new code should avoid fields named "descriptor".


�


�

�/

�23

�4E

�5D
�
�1� Is this message deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for the message, or it will be completely ignored; in the very least,
 this is a formalization for deprecating messages.


�


�

�

�

�0

� /

	�

	 �

	 �

	�

	�

	�

	�
�
�� Whether the message is an automatically generated map entry type for the
 maps field.

 For maps fields:
     map<KeyType, ValueType> map_field = 1;
 The parsed descriptor looks like:
     message MapFieldEntry {
         option map_entry = true;
         optional KeyType key = 1;
         optional ValueType value = 2;
     }
     repeated MapFieldEntry map_field = 1;

 Implementations may choose not to generate the map_entry=true message, but
 use a native map in the target language to hold the keys and values.
 The reflection APIs in such implementations still need to work as
 if the field is a repeated message field.

 NOTE: Do not set the option in .proto files. Always use the maps syntax
 instead. The option should only be implicitly set by the proto compiler
 parser.


�


�

�

�
$
	�" javalite_serializable


	�

	�

	�" javanano_as_lite


	�

	�
O
�:A The parser stores options it doesn't recognize here. See above.


�


�

�3

�69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �

� �

�
�
 �.� The ctype option instructs the C++ code generator to use a different
 representation of the field than it normally would.  See the specific
 options below.  This option is not yet implemented in the open source
 release -- sorry, we'll try to include it in a future version!


 �


 �

 �

 �

 �-

 �,

 ��

 �

  � Default mode.


  �


  �

 �

 �

 �

 �

 �

 �
�
�� The packed option can be enabled for repeated primitive fields to enable
 a more efficient representation on the wire. Rather than repeatedly
 writing the tag and type for each element, the entire array is encoded as
 a single length-delimited blob. In proto3, only explicit setting it to
 false will avoid using packed encoding.


�


�

�

�
�
�3� The jstype option determines the JavaScript type used for values of the
 field.  The option is permitted only for 64 bit integral and fixed types
 (int64, uint64, sint64, fixed64, sfixed64).  A field with jstype JS_STRING
 is represented as JavaScript string, which avoids loss of precision that
 can happen when a large value is converted to a floating point JavaScript.
 Specifying JS_NUMBER for the jstype causes the generated JavaScript code to
 use the JavaScript "number" type.  The behavior of the default option
 JS_NORMAL is implementation dependent.

 This option is an enum to permit additional types to be added, e.g.
 goog.math.Integer.


�


�

�

�

�2

�1

��

�
'
 � Use the default type.


 �

 �
)
� Use JavaScript strings.


�

�
)
� Use JavaScript numbers.


�

�
�
�+� Should this field be parsed lazily?  Lazy applies only to message-type
 fields.  It means that when the outer message is initially parsed, the
 inner message's contents will not be parsed but instead stored in encoded
 form.  The inner message will actually be parsed when it is first accessed.

 This is only a hint.  Implementations are free to choose whether to use
 eager or lazy parsing regardless of the value of this option.  However,
 setting this option true suggests that the protocol author believes that
 using lazy parsing on this field is worth the additional bookkeeping
 overhead typically needed to implement it.

 This option does not affect the public interface of any generated code;
 all method signatures remain the same.  Furthermore, thread-safety of the
 interface is not affected by this option; const methods remain safe to
 call from multiple threads concurrently, while non-const methods continue
 to require exclusive access.


 Note that implementations may choose not to check required fields within
 a lazy sub-message.  That is, calling IsInitialized() on the outer message
 may return true even if the inner message has missing required fields.
 This is necessary because otherwise the inner message would have to be
 parsed in order to perform the check, defeating the purpose of lazy
 parsing.  An implementation which chooses not to check required fields
 must be consistent about it.  That is, for any particular sub-message, the
 implementation must either *always* check its required fields, or *never*
 check its required fields, regardless of whether or not the message has
 been parsed.

 As of 2021, lazy does no correctness checks on the byte stream during
 parsing.  This may lead to crashes if and when an invalid byte stream is
 finally parsed upon access.

 TODO(b/211906113):  Enable validation on lazy fields.


�


�

�

�

�*

�)
�
�7� unverified_lazy does no correctness checks on the byte stream. This should
 only be used where lazy with verification is prohibitive for performance
 reasons.


�


�

�

�"$

�%6

�&5
�
�1� Is this field deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for accessors, or it will be completely ignored; in the very least, this
 is a formalization for deprecating fields.


�


�

�

�

�0

� /
?
�,1 For Google-internal migration only. Do not use.


�


�

�

�

�+

�*
O
�:A The parser stores options it doesn't recognize here. See above.


�


�

�3

�69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �

	�" removed jtype


	 �

	 �

� �

�
O
 �:A The parser stores options it doesn't recognize here. See above.


 �


 �

 �3

 �69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �

� �

�
`
 � R Set this option to true to allow mapping different tag names to the same
 value.


 �


 �

 �

 �
�
�1� Is this enum deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for the enum, or it will be completely ignored; in the very least, this
 is a formalization for deprecating enums.


�


�

�

�

�0

� /

	�" javanano_as_lite


	 �

	 �
O
�:A The parser stores options it doesn't recognize here. See above.


�


�

�3

�69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �

� �

�
�
 �1� Is this enum value deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for the enum value, or it will be completely ignored; in the very least,
 this is a formalization for deprecating enum values.


 �


 �

 �

 �

 �0

 � /
O
�:A The parser stores options it doesn't recognize here. See above.


�


�

�3

�69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �

� �

�
�
 �2� Is this service deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for the service, or it will be completely ignored; in the very least,
 this is a formalization for deprecating services.
2� Note:  Field numbers 1 through 32 are reserved for Google's internal RPC
   framework.  We apologize for hoarding these numbers to ourselves, but
   we were already using them long before we decided to release Protocol
   Buffers.


 �


 �

 �

 �

 � 1

 �!0
O
�:A The parser stores options it doesn't recognize here. See above.


�


�

�3

�69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �

� �

�
�
 �2� Is this method deprecated?
 Depending on the target platform, this can emit Deprecated annotations
 for the method, or it will be completely ignored; in the very least,
 this is a formalization for deprecating methods.
2� Note:  Field numbers 1 through 32 are reserved for Google's internal RPC
   framework.  We apologize for hoarding these numbers to ourselves, but
   we were already using them long before we decided to release Protocol
   Buffers.


 �


 �

 �

 �

 � 1

 �!0
�
 ��� Is this method side-effect-free (or safe in HTTP parlance), or idempotent,
 or neither? HTTP based RPC implementation may choose GET verb for safe
 methods, and PUT verb for idempotent methods instead of the default POST.


 �

  �

  �

  �
$
 �" implies idempotent


 �

 �
7
 �"' idempotent, but may have side effects


 �

 �

��&

�


�

�-

�02

�%

�$
O
�:A The parser stores options it doesn't recognize here. See above.


�


�

�3

�69
Z
�M Clients can define custom options in extensions of this message. See above.


 �

 �

 �
�
� �� A message representing a option the parser does not recognize. This only
 appears in options protos created by the compiler::Parser class.
 DescriptorPool resolves these when building Descriptor objects. Therefore,
 options protos in descriptor objects (e.g. returned by Descriptor::options(),
 or produced by Descriptor::CopyTo()) will never have UninterpretedOptions
 in them.


�
�
 ��� The name of the uninterpreted option.  Each string represents a segment in
 a dot-separated name.  is_extension is true iff a segment represents an
 extension (denoted with parentheses in options specs in .proto files).
 E.g.,{ ["foo", false], ["bar.baz", true], ["moo", false] } represents
 "foo.(bar.baz).moo".


 �


  �"

  �

  �

  �

  � !

 �#

 �

 �

 �

 �!"

 �

 �


 �

 �

 �
�
�'� The value of the uninterpreted option, in whatever type the tokenizer
 identified it as during parsing. Exactly one of these should be set.


�


�

�"

�%&

�)

�


�

�$

�'(

�(

�


�

�#

�&'

�#

�


�

�

�!"

�"

�


�

�

� !

�&

�


�

�!

�$%
�
� �j Encapsulates information about the original source file from which a
 FileDescriptorProto was generated.
2` ===================================================================
 Optional source code info


�
�
 �!� A Location identifies a piece of source code in a .proto file which
 corresponds to a particular definition.  This information is intended
 to be useful to IDEs, code indexers, documentation generators, and similar
 tools.

 For example, say we have a file like:
   message Foo {
     optional string foo = 1;
   }
 Let's look at just the field definition:
   optional string foo = 1;
   ^       ^^     ^^  ^  ^^^
   a       bc     de  f  ghi
 We have the following locations:
   span   path               represents
   [a,i)  [ 4, 0, 2, 0 ]     The whole field definition.
   [a,b)  [ 4, 0, 2, 0, 4 ]  The label (optional).
   [c,d)  [ 4, 0, 2, 0, 5 ]  The type (string).
   [e,f)  [ 4, 0, 2, 0, 1 ]  The name (foo).
   [g,h)  [ 4, 0, 2, 0, 3 ]  The number (1).

 Notes:
 - A location may refer to a repeated field itself (i.e. not to any
   particular index within it).  This is used whenever a set of elements are
   logically enclosed in a single code segment.  For example, an entire
   extend block (possibly containing multiple extension definitions) will
   have an outer location whose path refers to the "extensions" repeated
   field without an index.
 - Multiple locations may have the same path.  This happens when a single
   logical declaration is spread out across multiple places.  The most
   obvious example is the "extend" block again -- there may be multiple
   extend blocks in the same scope, each of which will have the same path.
 - A location's span is not always a subset of its parent's span.  For
   example, the "extendee" of an extension declaration appears at the
   beginning of the "extend" block and is shared by all extensions within
   the block.
 - Just because a location's span is a subset of some other location's span
   does not mean that it is a descendant.  For example, a "group" defines
   both a type and a field in a single declaration.  Thus, the locations
   corresponding to the type and field and their components will overlap.
 - Code which tries to interpret locations should probably be designed to
   ignore those that it doesn't understand, as more types of locations could
   be recorded in the future.


 �


 �

 �

 � 

 ��

 �

�
  �,� Identifies which part of the FileDescriptorProto was defined at this
 location.

 Each element is a field number or an index.  They form a path from
 the root FileDescriptorProto to the place where the definition occurs.
 For example, this path:
   [ 4, 3, 2, 7, 1 ]
 refers to:
   file.message_type(3)  // 4, 3
       .field(7)         // 2, 7
       .name()           // 1
 This is because FileDescriptorProto.message_type has field number 4:
   repeated DescriptorProto message_type = 4;
 and DescriptorProto.field has field number 2:
   repeated FieldDescriptorProto field = 2;
 and FieldDescriptorProto.name has field number 1:
   optional string name = 1;

 Thus, the above path gives the location of a field name.  If we removed
 the last element:
   [ 4, 3, 2, 7 ]
 this path refers to the whole field declaration (from the beginning
 of the label to the terminating semicolon).


  �

  �

  �

  �

  �+

  �*
�
 �,� Always has exactly three or four elements: start line, start column,
 end line (optional, otherwise assumed same as start line), end column.
 These are packed into a single field for efficiency.  Note that line
 and column numbers are zero-based -- typically you will want to add
 1 to each before displaying to a user.


 �

 �

 �

 �

 �+

 �*
�
 �)� If this SourceCodeInfo represents a complete declaration, these are any
 comments appearing before and after the declaration which appear to be
 attached to the declaration.

 A series of line comments appearing on consecutive lines, with no other
 tokens appearing on those lines, will be treated as a single comment.

 leading_detached_comments will keep paragraphs of comments that appear
 before (but not connected to) the current element. Each paragraph,
 separated by empty lines, will be one comment element in the repeated
 field.

 Only the comment content is provided; comment markers (e.g. //) are
 stripped out.  For block comments, leading whitespace and an asterisk
 will be stripped from the beginning of each line other than the first.
 Newlines are included in the output.

 Examples:

   optional int32 foo = 1;  // Comment attached to foo.
   // Comment attached to bar.
   optional int32 bar = 2;

   optional string baz = 3;
   // Comment attached to baz.
   // Another line attached to baz.

   // Comment attached to moo.
   //
   // Another line attached to moo.
   optional double moo = 4;

   // Detached comment for corge. This is not leading or trailing comments
   // to moo or corge because there are blank lines separating it from
   // both.

   // Detached comment for corge paragraph 2.

   optional string corge = 5;
   /* Block comment attached
    * to corge.  Leading asterisks
    * will be removed. */
   /* Block comment attached to
    * grault. */
   optional int32 grault = 6;

   // ignored detached comments.


 �

 �

 �$

 �'(

 �*

 �

 �

 �%

 �()

 �2

 �

 �

 �-

 �01
�
� �� Describes the relationship between generated code and its original source
 file. A GeneratedCodeInfo message is associated with only one generated
 source file, but may contain references to different source .proto files.


�
x
 �%j An Annotation connects some span of text in generated code to an element
 of its generating .proto file.


 �


 �

 � 

 �#$

 ��

 �

�
  �, Identifies the element in the original source .proto file. This field
 is formatted the same as SourceCodeInfo.Location.path.


  �

  �

  �

  �

  �+

  �*
O
 �$? Identifies the filesystem path to the original source .proto.


 �

 �

 �

 �"#
w
 �g Identifies the starting offset in bytes in the generated code
 that relates to the identified object.


 �

 �

 �

 �
�
 �� Identifies the ending offset in bytes in the generated code that
 relates to the identified offset. The end offset should be one past
 the last relevant byte (so the length of the text = end - begin).


 �

 �

 �

 ��� 
�
buf/validate/priv/private.protobuf.validate.priv google/protobuf/descriptor.proto"C
FieldConstraints/
cel (2.buf.validate.priv.ConstraintRcel"V

Constraint
id (	Rid
message (	Rmessage

expression (	R
expression:\
field.google.protobuf.FieldOptions�	 (2#.buf.validate.priv.FieldConstraintsRfield�Bw
build.buf.validate.privBPrivateProtoPZLbuf.build/gen/go/bufbuild/protovalidate/protocolbuffers/go/buf/validate/privJ�	
 (
�
 2� Copyright 2023 Buf Technologies, Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


 
	
  *

 c
	
 c

 "
	

 "

 -
	
 -

 0
	
 0
	
 
:
 )/ Do not use. Internal to protovalidate library



 #


 



 


 !


 $(
;
  !/ Do not use. Internal to protovalidate library



 

   

   


   

   

   
;
$ (/ Do not use. Internal to protovalidate library



$

 %

 %

 %	

 %

&

&

&	

&

'

'

'	

'bproto3��NH
$
	buf.buildbufbuildprotovalidate e097f827e65240ac9fd4b1158849a8fc 
�%
google/protobuf/duration.protogoogle.protobuf":
Duration
seconds (Rseconds
nanos (RnanosB�
com.google.protobufBDurationProtoPZ1google.golang.org/protobuf/types/known/durationpb��GPB�Google.Protobuf.WellKnownTypesJ�#
 s
�
 2� Protocol Buffers - Google's data interchange format
 Copyright 2008 Google Inc.  All rights reserved.
 https://developers.google.com/protocol-buffers/

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

     * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following disclaimer
 in the documentation and/or other materials provided with the
 distribution.
     * Neither the name of Google Inc. nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


  

" ;
	
%" ;

# 
	
# 

$ H
	
$ H

% ,
	
% ,

& .
	
& .

' "
	

' "

( !
	
$( !
�
 f s� A Duration represents a signed, fixed-length span of time represented
 as a count of seconds and fractions of seconds at nanosecond
 resolution. It is independent of any calendar and concepts like "day"
 or "month". It is related to Timestamp in that the difference between
 two Timestamp values is a Duration and it can be added or subtracted
 from a Timestamp. Range is approximately +-10,000 years.

 # Examples

 Example 1: Compute Duration from two Timestamps in pseudo code.

     Timestamp start = ...;
     Timestamp end = ...;
     Duration duration = ...;

     duration.seconds = end.seconds - start.seconds;
     duration.nanos = end.nanos - start.nanos;

     if (duration.seconds < 0 && duration.nanos > 0) {
       duration.seconds += 1;
       duration.nanos -= 1000000000;
     } else if (duration.seconds > 0 && duration.nanos < 0) {
       duration.seconds -= 1;
       duration.nanos += 1000000000;
     }

 Example 2: Compute Timestamp from Timestamp + Duration in pseudo code.

     Timestamp start = ...;
     Duration duration = ...;
     Timestamp end = ...;

     end.seconds = start.seconds + duration.seconds;
     end.nanos = start.nanos + duration.nanos;

     if (end.nanos < 0) {
       end.seconds -= 1;
       end.nanos += 1000000000;
     } else if (end.nanos >= 1000000000) {
       end.seconds += 1;
       end.nanos -= 1000000000;
     }

 Example 3: Compute Duration from datetime.timedelta in Python.

     td = datetime.timedelta(days=3, minutes=10)
     duration = Duration()
     duration.FromTimedelta(td)

 # JSON Mapping

 In JSON format, the Duration type is encoded as a string rather than an
 object, where the string ends in the suffix "s" (indicating seconds) and
 is preceded by the number of seconds, with nanoseconds expressed as
 fractional seconds. For example, 3 seconds with 0 nanoseconds should be
 encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should
 be expressed in JSON format as "3.000000001s", and 3 seconds and 1
 microsecond should be expressed in JSON format as "3.000001s".





 f
�
  j� Signed seconds of the span of time. Must be from -315,576,000,000
 to +315,576,000,000 inclusive. Note: these bounds are computed from:
 60 sec/min * 60 min/hr * 24 hr/day * 365.25 days/year * 10000 years


  j

  j

  j
�
 r� Signed fractions of a second at nanosecond resolution of the span
 of time. Durations less than one second are represented with a 0
 `seconds` field and a positive or negative `nanos` field. For durations
 of one second or more, a non-zero value for the `nanos` field must be
 of the same sign as the `seconds` field. Must be from -999,999,999
 to +999,999,999 inclusive.


 r

 r

 rbproto3�� 
�1
google/protobuf/timestamp.protogoogle.protobuf";
	Timestamp
seconds (Rseconds
nanos (RnanosB�
com.google.protobufBTimestampProtoPZ2google.golang.org/protobuf/types/known/timestamppb��GPB�Google.Protobuf.WellKnownTypesJ�/
 �
�
 2� Protocol Buffers - Google's data interchange format
 Copyright 2008 Google Inc.  All rights reserved.
 https://developers.google.com/protocol-buffers/

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

     * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following disclaimer
 in the documentation and/or other materials provided with the
 distribution.
     * Neither the name of Google Inc. nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


  

" ;
	
%" ;

# 
	
# 

$ I
	
$ I

% ,
	
% ,

& /
	
& /

' "
	

' "

( !
	
$( !
�
 � �� A Timestamp represents a point in time independent of any time zone or local
 calendar, encoded as a count of seconds and fractions of seconds at
 nanosecond resolution. The count is relative to an epoch at UTC midnight on
 January 1, 1970, in the proleptic Gregorian calendar which extends the
 Gregorian calendar backwards to year one.

 All minutes are 60 seconds long. Leap seconds are "smeared" so that no leap
 second table is needed for interpretation, using a [24-hour linear
 smear](https://developers.google.com/time/smear).

 The range is from 0001-01-01T00:00:00Z to 9999-12-31T23:59:59.999999999Z. By
 restricting to that range, we ensure that we can convert to and from [RFC
 3339](https://www.ietf.org/rfc/rfc3339.txt) date strings.

 # Examples

 Example 1: Compute Timestamp from POSIX `time()`.

     Timestamp timestamp;
     timestamp.set_seconds(time(NULL));
     timestamp.set_nanos(0);

 Example 2: Compute Timestamp from POSIX `gettimeofday()`.

     struct timeval tv;
     gettimeofday(&tv, NULL);

     Timestamp timestamp;
     timestamp.set_seconds(tv.tv_sec);
     timestamp.set_nanos(tv.tv_usec * 1000);

 Example 3: Compute Timestamp from Win32 `GetSystemTimeAsFileTime()`.

     FILETIME ft;
     GetSystemTimeAsFileTime(&ft);
     UINT64 ticks = (((UINT64)ft.dwHighDateTime) << 32) | ft.dwLowDateTime;

     // A Windows tick is 100 nanoseconds. Windows epoch 1601-01-01T00:00:00Z
     // is 11644473600 seconds before Unix epoch 1970-01-01T00:00:00Z.
     Timestamp timestamp;
     timestamp.set_seconds((INT64) ((ticks / 10000000) - 11644473600LL));
     timestamp.set_nanos((INT32) ((ticks % 10000000) * 100));

 Example 4: Compute Timestamp from Java `System.currentTimeMillis()`.

     long millis = System.currentTimeMillis();

     Timestamp timestamp = Timestamp.newBuilder().setSeconds(millis / 1000)
         .setNanos((int) ((millis % 1000) * 1000000)).build();


 Example 5: Compute Timestamp from Java `Instant.now()`.

     Instant now = Instant.now();

     Timestamp timestamp =
         Timestamp.newBuilder().setSeconds(now.getEpochSecond())
             .setNanos(now.getNano()).build();


 Example 6: Compute Timestamp from current time in Python.

     timestamp = Timestamp()
     timestamp.GetCurrentTime()

 # JSON Mapping

 In JSON format, the Timestamp type is encoded as a string in the
 [RFC 3339](https://www.ietf.org/rfc/rfc3339.txt) format. That is, the
 format is "{year}-{month}-{day}T{hour}:{min}:{sec}[.{frac_sec}]Z"
 where {year} is always expressed using four digits while {month}, {day},
 {hour}, {min}, and {sec} are zero-padded to two digits each. The fractional
 seconds, which can go up to 9 digits (i.e. up to 1 nanosecond resolution),
 are optional. The "Z" suffix indicates the timezone ("UTC"); the timezone
 is required. A proto3 JSON serializer should always use UTC (as indicated by
 "Z") when printing the Timestamp type and a proto3 JSON parser should be
 able to accept both UTC and other timezones (as indicated by an offset).

 For example, "2017-01-15T01:30:15.01Z" encodes 15.01 seconds past
 01:30 UTC on January 15, 2017.

 In JavaScript, one can convert a Date object to this format using the
 standard
 [toISOString()](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date/toISOString)
 method. In Python, a standard `datetime.datetime` object can be converted
 to this format using
 [`strftime`](https://docs.python.org/2/library/time.html#time.strftime) with
 the time format spec '%Y-%m-%dT%H:%M:%S.%fZ'. Likewise, in Java, one can use
 the Joda Time's [`ISODateTimeFormat.dateTime()`](
 http://www.joda.org/joda-time/apidocs/org/joda/time/format/ISODateTimeFormat.html#dateTime%2D%2D
 ) to obtain a formatter capable of generating timestamps in this format.




 �
�
  �� Represents seconds of UTC time since Unix epoch
 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
 9999-12-31T23:59:59Z inclusive.


  �

  �

  �
�
 �� Non-negative fractions of a second at nanosecond resolution. Negative
 second values with fractions must still have non-negative nanos values
 that count forward in time. Must be from 0 to 999,999,999
 inclusive.


 �

 �

 �bproto3�� 
Ϙ	
buf/validate/validate.protobuf.validatebuf/validate/expression.protobuf/validate/priv/private.proto google/protobuf/descriptor.protogoogle/protobuf/duration.protogoogle/protobuf/timestamp.proto"n
MessageConstraints
disabled (H Rdisabled�*
cel (2.buf.validate.ConstraintRcelB
	_disabled"@
OneofConstraints
required (H Rrequired�B
	_required"�	
FieldConstraints*
cel (2.buf.validate.ConstraintRcel
skipped (Rskipped
required (Rrequired!
ignore_empty (RignoreEmpty0
float (2.buf.validate.FloatRulesH Rfloat3
double (2.buf.validate.DoubleRulesH Rdouble0
int32 (2.buf.validate.Int32RulesH Rint320
int64 (2.buf.validate.Int64RulesH Rint643
uint32 (2.buf.validate.UInt32RulesH Ruint323
uint64 (2.buf.validate.UInt64RulesH Ruint643
sint32 (2.buf.validate.SInt32RulesH Rsint323
sint64 (2.buf.validate.SInt64RulesH Rsint646
fixed32	 (2.buf.validate.Fixed32RulesH Rfixed326
fixed64
 (2.buf.validate.Fixed64RulesH Rfixed649
sfixed32 (2.buf.validate.SFixed32RulesH Rsfixed329
sfixed64 (2.buf.validate.SFixed64RulesH Rsfixed64-
bool (2.buf.validate.BoolRulesH Rbool3
string (2.buf.validate.StringRulesH Rstring0
bytes (2.buf.validate.BytesRulesH Rbytes-
enum (2.buf.validate.EnumRulesH Renum9
repeated (2.buf.validate.RepeatedRulesH Rrepeated*
map (2.buf.validate.MapRulesH Rmap*
any (2.buf.validate.AnyRulesH Rany9
duration (2.buf.validate.DurationRulesH Rduration<
	timestamp (2.buf.validate.TimestampRulesH R	timestampB
type"�

FloatRulesu
const (BZ�HW
U
float.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B��H�
�
float.lt}!has(rules.gte) && !has(rules.gt) && (this.isNan() || this >= rules.lt)? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
	float.lte�!has(rules.gte) && !has(rules.gt) && (this.isNan() || this > rules.lte)? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
�
float.gt�!has(rules.lt) && !has(rules.lte) && (this.isNan() || this <= rules.gt)? 'value must be greater than %s'.format([rules.gt]) : ''
�
float.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this.isNan() || this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
float.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (this.isNan() || (rules.lt <= this && this <= rules.gt))? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
float.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this.isNan() || this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
float.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (this.isNan() || (rules.lte < this && this <= rules.gt))? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
	float.gte�!has(rules.lt) && !has(rules.lte) && (this.isNan() || this < rules.gte)? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
float.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this.isNan() || this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
float.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (this.isNan() || (rules.lt <= this && this < rules.gte))? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
float.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this.isNan() || this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
float.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (this.isNan() || (rules.lte < this && this < rules.gte))? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtey
in (Bi�Hf
d
float.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin}
not_in (Bf�Hc
a
float.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotIng
finite (BO�HL
J
float.finite:this.isNan() || this.isInf() ? 'value must be finite' : ''RfiniteB
	less_thanB
greater_thanB
_const"�
DoubleRulesv
const (B[�HX
V
double.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B��H�
�
	double.lt}!has(rules.gte) && !has(rules.gt) && (this.isNan() || this >= rules.lt)? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�

double.lte�!has(rules.gte) && !has(rules.gt) && (this.isNan() || this > rules.lte)? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
�
	double.gt�!has(rules.lt) && !has(rules.lte) && (this.isNan() || this <= rules.gt)? 'value must be greater than %s'.format([rules.gt]) : ''
�
double.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this.isNan() || this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
double.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (this.isNan() || (rules.lt <= this && this <= rules.gt))? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
double.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this.isNan() || this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
double.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (this.isNan() || (rules.lte < this && this <= rules.gt))? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�

double.gte�!has(rules.lt) && !has(rules.lte) && (this.isNan() || this < rules.gte)? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
double.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this.isNan() || this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
double.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (this.isNan() || (rules.lt <= this && this < rules.gte))? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
double.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this.isNan() || this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
double.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (this.isNan() || (rules.lte < this && this < rules.gte))? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtez
in (Bj�Hg
e
	double.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin~
not_in (Bg�Hd
b
double.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInh
finite (BP�HM
K
double.finite:this.isNan() || this.isInf() ? 'value must be finite' : ''RfiniteB
	less_thanB
greater_thanB
_const"�

Int32Rulesu
const (BZ�HW
U
int32.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B|�Hy
w
int32.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
	int32.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
z
int32.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
int32.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
int32.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
int32.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
int32.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
	int32.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
int32.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
int32.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
int32.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
int32.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtey
in (Bi�Hf
d
int32.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin}
not_in (Bf�Hc
a
int32.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�

Int64Rulesu
const (BZ�HW
U
int64.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B|�Hy
w
int64.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
	int64.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
z
int64.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
int64.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
int64.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
int64.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
int64.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
	int64.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
int64.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
int64.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
int64.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
int64.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtey
in (Bi�Hf
d
int64.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin}
not_in (Bf�Hc
a
int64.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
UInt32Rulesv
const (B[�HX
V
uint32.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B}�Hz
x
	uint32.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�

uint32.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
{
	uint32.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
uint32.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
uint32.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
uint32.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
uint32.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�

uint32.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
uint32.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
uint32.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
uint32.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
uint32.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtez
in (Bj�Hg
e
	uint32.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin~
not_in (Bg�Hd
b
uint32.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
UInt64Rulesv
const (B[�HX
V
uint64.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B}�Hz
x
	uint64.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�

uint64.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
{
	uint64.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
uint64.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
uint64.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
uint64.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
uint64.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�

uint64.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
uint64.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
uint64.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
uint64.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
uint64.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtez
in (Bj�Hg
e
	uint64.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin~
not_in (Bg�Hd
b
uint64.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
SInt32Rulesv
const (B[�HX
V
sint32.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B}�Hz
x
	sint32.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�

sint32.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
{
	sint32.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
sint32.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
sint32.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
sint32.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
sint32.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�

sint32.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
sint32.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
sint32.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
sint32.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
sint32.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtez
in (Bj�Hg
e
	sint32.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin~
not_in (Bg�Hd
b
sint32.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
SInt64Rulesv
const (B[�HX
V
sint64.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B}�Hz
x
	sint64.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�

sint64.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
{
	sint64.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
sint64.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
sint64.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
sint64.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
sint64.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�

sint64.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
sint64.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
sint64.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
sint64.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
sint64.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgtez
in (Bj�Hg
e
	sint64.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin~
not_in (Bg�Hd
b
sint64.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
Fixed32Rulesw
const (B\�HY
W
fixed32.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B~�H{
y

fixed32.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
fixed32.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
|

fixed32.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
fixed32.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
fixed32.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
fixed32.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
fixed32.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
fixed32.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
fixed32.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
fixed32.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
fixed32.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
fixed32.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgte{
in (Bk�Hh
f

fixed32.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin
not_in (Bh�He
c
fixed32.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
Fixed64Rulesw
const (B\�HY
W
fixed64.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B~�H{
y

fixed64.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
fixed64.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
|

fixed64.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
fixed64.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
fixed64.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
fixed64.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
fixed64.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
fixed64.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
fixed64.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
fixed64.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
fixed64.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
fixed64.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgte{
in (Bk�Hh
f

fixed64.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin
not_in (Bh�He
c
fixed64.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
SFixed32Rulesx
const (B]�HZ
X
sfixed32.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B�H|
z
sfixed32.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
sfixed32.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
}
sfixed32.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
sfixed32.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
sfixed32.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
sfixed32.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
sfixed32.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
sfixed32.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
sfixed32.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
sfixed32.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
sfixed32.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
sfixed32.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgte|
in (Bl�Hi
g
sfixed32.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin�
not_in (Bi�Hf
d
sfixed32.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
SFixed64Rulesx
const (B]�HZ
X
sfixed64.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (B�H|
z
sfixed64.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (B��H�
�
sfixed64.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (B��H�
}
sfixed64.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
sfixed64.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
sfixed64.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
sfixed64.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
sfixed64.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (B��H�
�
sfixed64.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
sfixed64.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
sfixed64.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
sfixed64.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
sfixed64.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgte|
in (Bl�Hi
g
sfixed64.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin�
not_in (Bi�Hf
d
sfixed64.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
	BoolRulest
const (BY�HV
T

bool.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''H Rconst�B
_const"�$
StringRulesx
const (	B]�HZ
X
string.constHthis != rules.const ? 'value must equal `%s`'.format([rules.const]) : ''HRconst��
len (Bq�Hn
l

string.len^uint(this.size()) != rules.len ? 'value length must be %s characters'.format([rules.len]) : ''HRlen��
min_len (B��H�
�
string.min_lennuint(this.size()) < rules.min_len ? 'value length must be at least %s characters'.format([rules.min_len]) : ''HRminLen��
max_len (B��H�

string.max_lenmuint(this.size()) > rules.max_len ? 'value length must be at most %s characters'.format([rules.max_len]) : ''HRmaxLen��
	len_bytes (B��H�
�
string.len_bytesluint(bytes(this).size()) != rules.len_bytes ? 'value length must be %s bytes'.format([rules.len_bytes]) : ''HRlenBytes��
	min_bytes (B��H�
�
string.min_bytestuint(bytes(this).size()) < rules.min_bytes ? 'value length must be at least %s bytes'.format([rules.min_bytes]) : ''HRminBytes��
	max_bytes (B��H�
�
string.max_bytessuint(bytes(this).size()) > rules.max_bytes ? 'value length must be at most %s bytes'.format([rules.max_bytes]) : ''HRmaxBytes��
pattern (	B|�Hy
w
string.patterne!this.matches(rules.pattern) ? 'value does not match regex pattern `%s`'.format([rules.pattern]) : ''HRpattern��
prefix (	Bt�Hq
o
string.prefix^!this.startsWith(rules.prefix) ? 'value does not have prefix `%s`'.format([rules.prefix]) : ''H	Rprefix��
suffix (	Br�Ho
m
string.suffix\!this.endsWith(rules.suffix) ? 'value does not have suffix `%s`'.format([rules.suffix]) : ''H
Rsuffix��
contains	 (	B~�H{
y
string.containsf!this.contains(rules.contains) ? 'value does not contain substring `%s`'.format([rules.contains]) : ''HRcontains��
not_contains (	B��H~
|
string.not_containsethis.contains(rules.not_contains) ? 'value contains substring `%s`'.format([rules.not_contains]) : ''HRnotContains�z
in
 (	Bj�Hg
e
	string.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin~
not_in (	Bg�Hd
b
string.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotIn`
email (BH�HE
C
string.email#value must be a valid email addressthis.isEmail()H Remailg
hostname (BI�HF
D
string.hostnamevalue must be a valid hostnamethis.isHostname()H RhostnameQ
ip (B?�H<
:
	string.ip value must be a valid IP addressthis.isIp()H RipZ
ipv4 (BD�HA
?
string.ipv4"value must be a valid IPv4 addressthis.isIp(4)H Ripv4Z
ipv6 (BD�HA
?
string.ipv6"value must be a valid IPv6 addressthis.isIp(6)H Ripv6N
uri (B:�H7
5

string.urivalue must be a valid URIthis.isUri()H Ruri\
uri_ref (BA�H>
<
string.uri_refvalue must be a valid URIthis.isUriRef()H RuriRef�
address (Bf�Hc
a
string.address-value must be a valid hostname, or ip address this.isHostname() || this.isIp()H Raddress�
uuid (B��H�
�
string.uuid�!this.matches('^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$') ? 'value must be a valid UUID' : ''H Ruuid�
ip_with_prefixlen (BS�HP
N
string.ip_with_prefixlenvalue must be a valid IP prefixthis.isIpPrefix()H RipWithPrefixlen�
ipv4_with_prefixlen (Bl�Hi
g
string.ipv4_with_prefixlen5value must be a valid IPv4 address with prefix lengththis.isIpPrefix(4)H Ripv4WithPrefixlen�
ipv6_with_prefixlen (Bl�Hi
g
string.ipv6_with_prefixlen5value must be a valid IPv6 address with prefix lengththis.isIpPrefix(6)H Ripv6WithPrefixlenn
	ip_prefix (BO�HL
J
string.ip_prefixvalue must be a valid IP prefixthis.isIpPrefix(true)H RipPrefixy
ipv4_prefix (BV�HS
Q
string.ipv4_prefix!value must be a valid IPv4 prefixthis.isIpPrefix(4, true)H R
ipv4Prefixy
ipv6_prefix (BV�HS
Q
string.ipv6_prefix!value must be a valid IPv6 prefixthis.isIpPrefix(6, true)H R
ipv6Prefix�
well_known_regex (2.buf.validate.KnownRegexB��H�
�
#string.well_known_regex.header_name�rules.well_known_regex == 1 && !this.matches(!has(rules.strict) || rules.strict ?'^:?[0-9a-zA-Z!#$%&\'*+-.^_|~\x60]+$' :'^[^\u0000\u000A\u000D]+$') ? 'value must be a valid HTTP header name' : ''
�
$string.well_known_regex.header_value�rules.well_known_regex == 2 && !this.matches(!has(rules.strict) || rules.strict ?'^[^\u0000-\u0008\u000A-\u001F\u007F]*$' :'^[^\u0000\u000A\u000D]*$') ? 'value must be a valid HTTP header value' : ''H RwellKnownRegex
strict (HRstrict�B

well_knownB
_constB
_lenB

_min_lenB

_max_lenB

_len_bytesB

_min_bytesB

_max_bytesB

_patternB	
_prefixB	
_suffixB
	_containsB
_not_containsB	
_strict"�

BytesRulesr
const (BW�HT
R
bytes.constCthis != rules.const ? 'value must be %x'.format([rules.const]) : ''HRconst��
len (Bk�Hh
f
	bytes.lenYuint(this.size()) != rules.len ? 'value length must be %s bytes'.format([rules.len]) : ''HRlen��
min_len (B�H|
z
bytes.min_leniuint(this.size()) < rules.min_len ? 'value length must be at least %s bytes'.format([rules.min_len]) : ''HRminLen��
max_len (Bw�Ht
r
bytes.max_lenauint(this.size()) > rules.max_len ? 'value must be at most %s bytes'.format([rules.max_len]) : ''HRmaxLen��
pattern (	B�H|
z
bytes.patterni!string(this).matches(rules.pattern) ? 'value must match regex pattern `%s`'.format([rules.pattern]) : ''HRpattern��
prefix (Bq�Hn
l
bytes.prefix\!this.startsWith(rules.prefix) ? 'value does not have prefix %x'.format([rules.prefix]) : ''HRprefix��
suffix (Bo�Hl
j
bytes.suffixZ!this.endsWith(rules.suffix) ? 'value does not have suffix %x'.format([rules.suffix]) : ''HRsuffix��
contains (Bq�Hn
l
bytes.containsZ!this.contains(rules.contains) ? 'value does not contain %x'.format([rules.contains]) : ''HRcontains��
in (B��H�
�
bytes.inwdyn(rules)['in'].size() > 0 && !(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin}
not_in	 (Bf�Hc
a
bytes.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInr
ip
 (B`�H]
[
bytes.ipOthis.size() != 4 && this.size() != 16 ? 'value must be a valid IP address' : ''H Ripe
ipv4 (BO�HL
J

bytes.ipv4<this.size() != 4 ? 'value must be a valid IPv4 address' : ''H Ripv4f
ipv6 (BP�HM
K

bytes.ipv6=this.size() != 16 ? 'value must be a valid IPv6 address' : ''H Ripv6B

well_knownB
_constB
_lenB

_min_lenB

_max_lenB

_patternB	
_prefixB	
_suffixB
	_contains"�
	EnumRulest
const (BY�HV
T

enum.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''H Rconst�&
defined_only (HRdefinedOnly�x
in (Bh�He
c
enum.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin|
not_in (Be�Hb
`
enum.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
_constB
_defined_only"�
RepeatedRules�
	min_items (B��H�
�
repeated.min_itemsmuint(this.size()) < rules.min_items ? 'value must contain at least %d item(s)'.format([rules.min_items]) : ''H RminItems��
	max_items (B��H�
�
repeated.max_itemsquint(this.size()) > rules.max_items ? 'value must contain no more than %s item(s)'.format([rules.max_items]) : ''HRmaxItems�l
unique (BO�HL
J
repeated.unique(repeated value must contain unique itemsthis.unique()HRunique�9
items (2.buf.validate.FieldConstraintsHRitems�B

_min_itemsB

_max_itemsB	
_uniqueB
_items"�
MapRules�
	min_pairs (B|�Hy
w
map.min_pairsfuint(this.size()) < rules.min_pairs ? 'map must be at least %d entries'.format([rules.min_pairs]) : ''H RminPairs��
	max_pairs (B{�Hx
v
map.max_pairseuint(this.size()) > rules.max_pairs ? 'map must be at most %d entries'.format([rules.max_pairs]) : ''HRmaxPairs�7
keys (2.buf.validate.FieldConstraintsHRkeys�;
values (2.buf.validate.FieldConstraintsHRvalues�B

_min_pairsB

_max_pairsB
_keysB	
_values"1
AnyRules
in (	Rin
not_in (	RnotIn"�
DurationRules�
const (2.google.protobuf.DurationB]�HZ
X
duration.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (2.google.protobuf.DurationB�H|
z
duration.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (2.google.protobuf.DurationB��H�
�
duration.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rlte�
gt (2.google.protobuf.DurationB��H�
}
duration.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
duration.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
duration.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
duration.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
duration.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (2.google.protobuf.DurationB��H�
�
duration.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
duration.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
duration.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
duration.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
duration.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgte�
in (2.google.protobuf.DurationBl�Hi
g
duration.inX!(this in dyn(rules)['in']) ? 'value must be in list %s'.format([dyn(rules)['in']]) : ''Rin�
not_in (2.google.protobuf.DurationBi�Hf
d
duration.not_inQthis in rules.not_in ? 'value must not be in list %s'.format([rules.not_in]) : ''RnotInB
	less_thanB
greater_thanB
_const"�
TimestampRules�
const (2.google.protobuf.TimestampB^�H[
Y
timestamp.constFthis != rules.const ? 'value must equal %s'.format([rules.const]) : ''HRconst��
lt (2.google.protobuf.TimestampB��H}
{
timestamp.ltk!has(rules.gte) && !has(rules.gt) && this >= rules.lt? 'value must be less than %s'.format([rules.lt]) : ''H Rlt�
lte (2.google.protobuf.TimestampB��H�
�
timestamp.ltex!has(rules.gte) && !has(rules.gt) && this > rules.lte? 'value must be less than or equal to %s'.format([rules.lte]) : ''H Rltea
lt_now (BH�HE
C
timestamp.lt_now/this > now ? 'value must be less than now' : ''H RltNow�
gt (2.google.protobuf.TimestampB��H�
~
timestamp.gtn!has(rules.lt) && !has(rules.lte) && this <= rules.gt? 'value must be greater than %s'.format([rules.gt]) : ''
�
timestamp.gt_lt�has(rules.lt) && rules.lt >= rules.gt && (this >= rules.lt || this <= rules.gt)? 'value must be greater than %s and less than %s'.format([rules.gt, rules.lt]) : ''
�
timestamp.gt_lt_exclusive�has(rules.lt) && rules.lt < rules.gt && (rules.lt <= this && this <= rules.gt)? 'value must be greater than %s or less than %s'.format([rules.gt, rules.lt]) : ''
�
timestamp.gt_lte�has(rules.lte) && rules.lte >= rules.gt && (this > rules.lte || this <= rules.gt)? 'value must be greater than %s and less than or equal to %s'.format([rules.gt, rules.lte]) : ''
�
timestamp.gt_lte_exclusive�has(rules.lte) && rules.lte < rules.gt && (rules.lte < this && this <= rules.gt)? 'value must be greater than %s or less than or equal to %s'.format([rules.gt, rules.lte]) : ''HRgt�
gte (2.google.protobuf.TimestampB��H�
�
timestamp.gte{!has(rules.lt) && !has(rules.lte) && this < rules.gte? 'value must be greater than or equal to %s'.format([rules.gte]) : ''
�
timestamp.gte_lt�has(rules.lt) && rules.lt >= rules.gte && (this >= rules.lt || this < rules.gte)? 'value must be greater than or equal to %s and less than %s'.format([rules.gte, rules.lt]) : ''
�
timestamp.gte_lt_exclusive�has(rules.lt) && rules.lt < rules.gte && (rules.lt <= this && this < rules.gte)? 'value must be greater than or equal to %s or less than %s'.format([rules.gte, rules.lt]) : ''
�
timestamp.gte_lte�has(rules.lte) && rules.lte >= rules.gte && (this > rules.lte || this < rules.gte)? 'value must be greater than or equal to %s and less than or equal to %s'.format([rules.gte, rules.lte]) : ''
�
timestamp.gte_lte_exclusive�has(rules.lte) && rules.lte < rules.gte && (rules.lte < this && this < rules.gte)? 'value must be greater than or equal to %s or less than or equal to %s'.format([rules.gte, rules.lte]) : ''HRgted
gt_now (BK�HH
F
timestamp.gt_now2this < now ? 'value must be greater than now' : ''HRgtNow�
within	 (2.google.protobuf.DurationB��H�
�
timestamp.withinqthis < now-rules.within || this > now+rules.within ? 'value must be within %s of now'.format([rules.within]) : ''HRwithin�B
	less_thanB
greater_thanB
_constB	
_within*n

KnownRegex
KNOWN_REGEX_UNSPECIFIED  
KNOWN_REGEX_HTTP_HEADER_NAME!
KNOWN_REGEX_HTTP_HEADER_VALUE:_
message.google.protobuf.MessageOptions�	 (2 .buf.validate.MessageConstraintsRmessage�:W
oneof.google.protobuf.OneofOptions�	 (2.buf.validate.OneofConstraintsRoneof�:W
field.google.protobuf.FieldOptions�	 (2.buf.validate.FieldConstraintsRfield�Bn
build.buf.validateBValidateProtoPZGbuf.build/gen/go/bufbuild/protovalidate/protocolbuffers/go/buf/validateJ��
 �
�
 2� Copyright 2023 Buf Technologies, Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


 
	
  '
	
 )
	
 *
	
 (
	
 )

 ^
	
 ^

 "
	

 "

 .
	
 .

 +
	
 +
�
! %� MessageOptions is an extension to google.protobuf.MessageOptions. It allows
 the addition of validation rules at the message level. These rules can be
 applied to incoming messages to ensure they meet certain criteria before
 being processed.

�
 $-{ Rules specify the validations to be performed on this message. By default,
 no validation is performed against a message.



 !%


 $



 $


 $%


 $(,
�
+ /� OneofOptions is an extension to google.protobuf.OneofOptions. It allows
 the addition of validation rules on a oneof. These rules can be
 applied to incoming messages to ensure they meet certain criteria before
 being processed.

�
.)w Rules specify the validations to be performed on this oneof. By default,
 no validation is performed against a oneof.



+#


.



.


.!


.$(
�
5 9� FieldOptions is an extension to google.protobuf.FieldOptions. It allows
 the addition of validation rules at the field level. These rules can be
 applied to incoming messages to ensure they meet certain criteria before
 being processed.

�
8)w Rules specify the validations to be performed on this field. By default,
 no validation is performed against a field.



5#


8



8


8!


8$(
�
 = Z� MessageConstraints represents validation rules that are applied to the entire message.
 It includes disabling options and a list of Constraint messages representing Common Expression Language (CEL) validation rules.



 =
�
  G� `disabled` is a boolean flag that, when set to true, nullifies any validation rules for this message.
 This includes any fields within the message that would otherwise support validation.

 ```proto
 message MyMessage {
   // validation will be bypassed for this message
   option (buf.validate.message).disabled = true;
 }
 ```


  G


  G

  G

  G
�
 Y� `cel` is a repeated field of type Constraint. Each Constraint specifies a validation rule to be applied to this message.
 These constraints are written in Common Expression Language (CEL) syntax. For more information on
 CEL, [see our documentation](https://github.com/bufbuild/protovalidate/blob/main/docs/cel.md).


 ```proto
 message MyMessage {
   // The field `foo` must be greater than 42.
   option (buf.validate.message).cel = {
     id: "my_message.value",
     message: "value must be greater than 42",
     expression: "this.foo > 42",
   };
   optional int32 foo = 1;
 }
 ```


 Y


 Y

 Y

 Y
�
^ qt The `OneofConstraints` message type enables you to manage constraints for
 oneof fields in your protobuf messages.



^
�
 p� If `required` is true, exactly one field of the oneof must be present. A
 validation error is returned if no fields in the oneof are present. The
 field itself may still be a default value; further constraints
 should be placed on the fields themselves to ensure they are valid values,
 such as `min_len` or `gt`.

 ```proto
 message MyMessage {
   oneof value {
     // Either `a` or `b` must be set. If `a` is set, it must also be
     // non-empty; whereas if `b` is set, it can still be an empty string.
     option (buf.validate.oneof).required = true;
     string a = 1 [(buf.validate.field).string.min_len = 1];
     string b = 2;
   }
 }
 ```


 p


 p

 p

 p
�
u �� FieldRules encapsulates the rules for each type of field. Depending on the
 field, the correct set should be used to ensure proper validations.



u
�
 �� `cel` is a repeated field used to represent a textual expression
 in the Common Expression Language (CEL) syntax. For more information on
 CEL, [see our documentation](https://github.com/bufbuild/protovalidate/blob/main/docs/cel.md).

 ```proto
 message MyMessage {
   // The field `value` must be greater than 42.
   optional int32 value = 1 [(buf.validate.field).cel = {
     id: "my_message.value",
     message: "value must be greater than 42",
     expression: "this > 42",
   }];
 }
 ```


 �


 �

 �

 �
�
�� `skipped` is an optional boolean attribute that specifies that the
 validation rules of this field should not be evaluated. If skipped is set to
 true, any validation rules set for the field will be ignored.

 ```proto
 message MyMessage {
   // The field `value` must not be set.
   optional MyOtherMessage value = 1 [(buf.validate.field).skipped = true];
 }
 ```


�

�

�
�
�� If `required` is true, the field must be populated. Field presence can be
 described as "serialized in the wire format," which follows the following rules:

 - the following "nullable" fields must be explicitly set to be considered present:
   - singular message fields (may be their empty value)
   - member fields of a oneof (may be their default value)
   - proto3 optional fields (may be their default value)
   - proto2 scalar fields
 - proto3 scalar fields must be non-zero to be considered present
 - repeated and map fields must be non-empty to be considered present

 ```proto
 message MyMessage {
   // The field `value` must be set to a non-null value.
   optional MyOtherMessage value = 1 [(buf.validate.field).required = true];
 }
 ```


�

�

�
�
�� If `ignore_empty` is true and applied to a non-nullable field (see
 `required` for more details), validation is skipped on the field if it is
 the default or empty value. Adding `ignore_empty` to a "nullable" field is
 a noop as these unset fields already skip validation (with the exception
 of `required`).

 ```proto
 message MyRepeated {
   // The field `value` min_len rule is only applied if the field isn't empty.
   repeated string value = 1 [
     (buf.validate.field).ignore_empty = true,
     (buf.validate.field).min_len = 5
   ];
 }
 ```


�

�

�

 ��

 �
"
� Scalar Field Types


�

�

�

�

�

�

�

�

�

�

�

�

�

�

�

�

�

�

�

	�

	�

	�

	�


�


�


�


�

�

�

�

�

�

�

�

�

�

�

�

�

� 

�

�

�

� 

�

�

�

�

�

�

�

�

�

�

�

�

�

�

�
#
� Complex Field Types


�

�

�

� 

�

�

�

�

�

�

�
&
� Well-Known Field Types


�

�

�

� 

�

�

�

�"

�

�

�!
�
� �� FloatRules describes the constraints applied to `float` values. These
 rules may also be applied to the `google.protobuf.FloatValue` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyFloat {
   // value must equal 42.0
   float value = 1 [(buf.validate.field).float.const = 42.0];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MyFloat {
   // value must be less than 10.0
   float value = 1 [(buf.validate.field).float.lt = 10.0];
 }
 ```


�	

�


�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyFloat {
   // value must be less than or equal to 10.0
   float value = 1 [(buf.validate.field).float.lte = 10.0];
 }
 ```


�	

�


�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyFloat {
   // value must be greater than 5.0 [float.gt]
   float value = 1 [(buf.validate.field).float.gt = 5.0];

   // value must be greater than 5 and less than 10.0 [float.gt_lt]
   float other_value = 2 [(buf.validate.field).float = { gt: 5.0, lt: 10.0 }];

   // value must be greater than 10 or less than 5.0 [float.gt_lt_exclusive]
   float another_value = 3 [(buf.validate.field).float = { gt: 10.0, lt: 5.0 }];
 }
 ```


�	

�


�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyFloat {
   // value must be greater than or equal to 5.0 [float.gte]
   float value = 1 [(buf.validate.field).float.gte = 5.0];

   // value must be greater than or equal to 5.0 and less than 10.0 [float.gte_lt]
   float other_value = 2 [(buf.validate.field).float = { gte: 5.0, lt: 10.0 }];

   // value must be greater than or equal to 10.0 or less than 5.0 [float.gte_lt_exclusive]
   float another_value = 3 [(buf.validate.field).float = { gte: 10.0, lt: 5.0 }];
 }
 ```


�	

�


�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message
 is generated.

 ```proto
 message MyFloat {
   // value must be in list [1.0, 2.0, 3.0]
   repeated float value = 1 (buf.validate.field).float = { in: [1.0, 2.0, 3.0] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyFloat {
   // value must not be in list [1.0, 2.0, 3.0]
   repeated float value = 1 (buf.validate.field).float = { not_in: [1.0, 2.0, 3.0] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��x `finite` requires the field value to be finite. If the field value is
 infinite or NaN, an error message is generated.


�

�

�

��

	�	 ��
�
� �� DoubleRules describes the constraints applied to `double` values. These
 rules may also be applied to the `google.protobuf.DoubleValue` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyDouble {
   // value must equal 42.0
   double value = 1 [(buf.validate.field).double.const = 42.0];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified
 value, an error message is generated.

 ```proto
 message MyDouble {
   // value must be less than 10.0
   double value = 1 [(buf.validate.field).double.lt = 10.0];
 }
 ```


�


�

�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified value
 (field <= value). If the field value is greater than the specified value,
 an error message is generated.

 ```proto
 message MyDouble {
   // value must be less than or equal to 10.0
   double value = 1 [(buf.validate.field).double.lte = 10.0];
 }
 ```


�


�

�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or `lte`,
 the range is reversed, and the field value must be outside the specified
 range. If the field value doesn't meet the required conditions, an error
 message is generated.

 ```proto
 message MyDouble {
   // value must be greater than 5.0 [double.gt]
   double value = 1 [(buf.validate.field).double.gt = 5.0];

   // value must be greater than 5 and less than 10.0 [double.gt_lt]
   double other_value = 2 [(buf.validate.field).double = { gt: 5.0, lt: 10.0 }];

   // value must be greater than 10 or less than 5.0 [double.gt_lt_exclusive]
   double another_value = 3 [(buf.validate.field).double = { gt: 10.0, lt: 5.0 }];
 }
 ```


�


�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyDouble {
   // value must be greater than or equal to 5.0 [double.gte]
   double value = 1 [(buf.validate.field).double.gte = 5.0];

   // value must be greater than or equal to 5.0 and less than 10.0 [double.gte_lt]
   double other_value = 2 [(buf.validate.field).double = { gte: 5.0, lt: 10.0 }];

   // value must be greater than or equal to 10.0 or less than 5.0 [double.gte_lt_exclusive]
   double another_value = 3 [(buf.validate.field).double = { gte: 10.0, lt: 5.0 }];
 }
 ```


�


�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MyDouble {
   // value must be in list [1.0, 2.0, 3.0]
   repeated double value = 1 (buf.validate.field).double = { in: [1.0, 2.0, 3.0] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyDouble {
   // value must not be in list [1.0, 2.0, 3.0]
   repeated double value = 1 (buf.validate.field).double = { not_in: [1.0, 2.0, 3.0] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��x `finite` requires the field value to be finite. If the field value is
 infinite or NaN, an error message is generated.


�

�

�

��

	�	 ��
�
� �� Int32Rules describes the constraints applied to `int32` values. These
 rules may also be applied to the `google.protobuf.Int32Value` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyInt32 {
   // value must equal 42
   int32 value = 1 [(buf.validate.field).int32.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field
 < value). If the field value is equal to or greater than the specified
 value, an error message is generated.

 ```proto
 message MyInt32 {
   // value must be less than 10
   int32 value = 1 [(buf.validate.field).int32.lt = 10];
 }
 ```


�	

�


�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyInt32 {
   // value must be less than or equal to 10
   int32 value = 1 [(buf.validate.field).int32.lte = 10];
 }
 ```


�	

�


�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyInt32 {
   // value must be greater than 5 [int32.gt]
   int32 value = 1 [(buf.validate.field).int32.gt = 5];

   // value must be greater than 5 and less than 10 [int32.gt_lt]
   int32 other_value = 2 [(buf.validate.field).int32 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [int32.gt_lt_exclusive]
   int32 another_value = 3 [(buf.validate.field).int32 = { gt: 10, lt: 5 }];
 }
 ```


�	

�


�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified value
 (exclusive). If the value of `gte` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyInt32 {
   // value must be greater than or equal to 5 [int32.gte]
   int32 value = 1 [(buf.validate.field).int32.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [int32.gte_lt]
   int32 other_value = 2 [(buf.validate.field).int32 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [int32.gte_lt_exclusive]
   int32 another_value = 3 [(buf.validate.field).int32 = { gte: 10, lt: 5 }];
 }
 ```


�	

�


�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MyInt32 {
   // value must be in list [1, 2, 3]
   repeated int32 value = 1 (buf.validate.field).int32 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error message
 is generated.

 ```proto
 message MyInt32 {
   // value must not be in list [1, 2, 3]
   repeated int32 value = 1 (buf.validate.field).int32 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
� �� Int64Rules describes the constraints applied to `int64` values. These
 rules may also be applied to the `google.protobuf.Int64Value` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyInt64 {
   // value must equal 42
   int64 value = 1 [(buf.validate.field).int64.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MyInt64 {
   // value must be less than 10
   int64 value = 1 [(buf.validate.field).int64.lt = 10];
 }
 ```


�	

�


�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyInt64 {
   // value must be less than or equal to 10
   int64 value = 1 [(buf.validate.field).int64.lte = 10];
 }
 ```


�	

�


�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyInt64 {
   // value must be greater than 5 [int64.gt]
   int64 value = 1 [(buf.validate.field).int64.gt = 5];

   // value must be greater than 5 and less than 10 [int64.gt_lt]
   int64 other_value = 2 [(buf.validate.field).int64 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [int64.gt_lt_exclusive]
   int64 another_value = 3 [(buf.validate.field).int64 = { gt: 10, lt: 5 }];
 }
 ```


�	

�


�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyInt64 {
   // value must be greater than or equal to 5 [int64.gte]
   int64 value = 1 [(buf.validate.field).int64.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [int64.gte_lt]
   int64 other_value = 2 [(buf.validate.field).int64 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [int64.gte_lt_exclusive]
   int64 another_value = 3 [(buf.validate.field).int64 = { gte: 10, lt: 5 }];
 }
 ```


�	

�


�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MyInt64 {
   // value must be in list [1, 2, 3]
   repeated int64 value = 1 (buf.validate.field).int64 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyInt64 {
   // value must not be in list [1, 2, 3]
   repeated int64 value = 1 (buf.validate.field).int64 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
� �� UInt32Rules describes the constraints applied to `uint32` values. These
 rules may also be applied to the `google.protobuf.UInt32Value` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyUInt32 {
   // value must equal 42
   uint32 value = 1 [(buf.validate.field).uint32.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MyUInt32 {
   // value must be less than 10
   uint32 value = 1 [(buf.validate.field).uint32.lt = 10];
 }
 ```


�


�

�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyUInt32 {
   // value must be less than or equal to 10
   uint32 value = 1 [(buf.validate.field).uint32.lte = 10];
 }
 ```


�


�

�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyUInt32 {
   // value must be greater than 5 [uint32.gt]
   uint32 value = 1 [(buf.validate.field).uint32.gt = 5];

   // value must be greater than 5 and less than 10 [uint32.gt_lt]
   uint32 other_value = 2 [(buf.validate.field).uint32 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [uint32.gt_lt_exclusive]
   uint32 another_value = 3 [(buf.validate.field).uint32 = { gt: 10, lt: 5 }];
 }
 ```


�


�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyUInt32 {
   // value must be greater than or equal to 5 [uint32.gte]
   uint32 value = 1 [(buf.validate.field).uint32.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [uint32.gte_lt]
   uint32 other_value = 2 [(buf.validate.field).uint32 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [uint32.gte_lt_exclusive]
   uint32 another_value = 3 [(buf.validate.field).uint32 = { gte: 10, lt: 5 }];
 }
 ```


�


�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MyUInt32 {
   // value must be in list [1, 2, 3]
   repeated uint32 value = 1 (buf.validate.field).uint32 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyUInt32 {
   // value must not be in list [1, 2, 3]
   repeated uint32 value = 1 (buf.validate.field).uint32 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
�	 �
� UInt64Rules describes the constraints applied to `uint64` values. These
 rules may also be applied to the `google.protobuf.UInt64Value` Well-Known-Type.


�	
�
 �	�	� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyUInt64 {
   // value must equal 42
   uint64 value = 1 [(buf.validate.field).uint64.const = 42];
 }
 ```


 �	


 �	

 �	

 �	

 �	�	

	 �	 �	�	

 �	�	

 �	
�
�	�	� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MyUInt64 {
   // value must be less than 10
   uint64 value = 1 [(buf.validate.field).uint64.lt = 10];
 }
 ```


�	


�	

�	

�	�	

	�	 �	�	
�
�	�	� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyUInt64 {
   // value must be less than or equal to 10
   uint64 value = 1 [(buf.validate.field).uint64.lte = 10];
 }
 ```


�	


�	

�	

�	�	

	�	 �	�	

�	�


�	
�
�	�	� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyUInt64 {
   // value must be greater than 5 [uint64.gt]
   uint64 value = 1 [(buf.validate.field).uint64.gt = 5];

   // value must be greater than 5 and less than 10 [uint64.gt_lt]
   uint64 other_value = 2 [(buf.validate.field).uint64 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [uint64.gt_lt_exclusive]
   uint64 another_value = 3 [(buf.validate.field).uint64 = { gt: 10, lt: 5 }];
 }
 ```


�	


�	

�	

�	�	

	�	 �	�	

	�	�	�	

	�	�	�	

	�	�	�	

	�	�	�	
�
�	�
� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyUInt64 {
   // value must be greater than or equal to 5 [uint64.gte]
   uint64 value = 1 [(buf.validate.field).uint64.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [uint64.gte_lt]
   uint64 other_value = 2 [(buf.validate.field).uint64 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [uint64.gte_lt_exclusive]
   uint64 another_value = 3 [(buf.validate.field).uint64 = { gte: 10, lt: 5 }];
 }
 ```


�	


�	

�	

�	�


	�	 �	�


	�	�
�


	�	�
�


	�	�
�


	�	�
�

�
�
�
� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MyUInt64 {
   // value must be in list [1, 2, 3]
   repeated uint64 value = 1 (buf.validate.field).uint64 = { in: [1, 2, 3] };
 }
 ```


�



�


�


�


�
�


	�	 �
�

�
�
�
� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyUInt64 {
   // value must not be in list [1, 2, 3]
   repeated uint64 value = 1 (buf.validate.field).uint64 = { not_in: [1, 2, 3] };
 }
 ```


�



�


�


�


�
�


	�	 �
�

Q
	�
 �C SInt32Rules describes the constraints applied to `sint32` values.


	�

�
	 �
�
� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MySInt32 {
   // value must equal 42
   sint32 value = 1 [(buf.validate.field).sint32.const = 42];
 }
 ```


	 �



	 �


	 �


	 �


	 �
�


		 �	 �
�


	 �
�


	 �

�
	�
�
� `lt` requires the field value to be less than the specified value (field
 < value). If the field value is equal to or greater than the specified
 value, an error message is generated.

 ```proto
 message MySInt32 {
   // value must be less than 10
   sint32 value = 1 [(buf.validate.field).sint32.lt = 10];
 }
 ```


	�



	�


	�


	�
�


		�	 �
�

�
	�
�
� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MySInt32 {
   // value must be less than or equal to 10
   sint32 value = 1 [(buf.validate.field).sint32.lte = 10];
 }
 ```


	�



	�


	�


	�
�


		�	 �
�


	�
�

	�

�
	�
�� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySInt32 {
   // value must be greater than 5 [sint32.gt]
   sint32 value = 1 [(buf.validate.field).sint32.gt = 5];

   // value must be greater than 5 and less than 10 [sint32.gt_lt]
   sint32 other_value = 2 [(buf.validate.field).sint32 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [sint32.gt_lt_exclusive]
   sint32 another_value = 3 [(buf.validate.field).sint32 = { gt: 10, lt: 5 }];
 }
 ```


	�



	�


	�


	�
�

		�	 ��

		�	��

		�	��

		�	��

		�	��
�
	��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySInt32 {
  // value must be greater than or equal to 5 [sint32.gte]
  sint32 value = 1 [(buf.validate.field).sint32.gte = 5];

  // value must be greater than or equal to 5 and less than 10 [sint32.gte_lt]
  sint32 other_value = 2 [(buf.validate.field).sint32 = { gte: 5, lt: 10 }];

  // value must be greater than or equal to 10 or less than 5 [sint32.gte_lt_exclusive]
  sint32 another_value = 3 [(buf.validate.field).sint32 = { gte: 10, lt: 5 }];
 }
 ```


	�


	�

	�

	��

		�	 ��

		�	��

		�	��

		�	��

		�	��
�
	��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MySInt32 {
   // value must be in list [1, 2, 3]
   repeated sint32 value = 1 (buf.validate.field).sint32 = { in: [1, 2, 3] };
 }
 ```


	�


	�

	�

	�

	��

		�	 ��
�
	��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MySInt32 {
   // value must not be in list [1, 2, 3]
   repeated sint32 value = 1 (buf.validate.field).sint32 = { not_in: [1, 2, 3] };
 }
 ```


	�


	�

	�

	�

	��

		�	 ��
Q

� �C SInt64Rules describes the constraints applied to `sint64` values.



�
�

 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MySInt64 {
   // value must equal 42
   sint64 value = 1 [(buf.validate.field).sint64.const = 42];
 }
 ```



 �



 �


 �


 �


 ��

	
 �	 ��


 ��


 �
�

��� `lt` requires the field value to be less than the specified value (field
 < value). If the field value is equal to or greater than the specified
 value, an error message is generated.

 ```proto
 message MySInt64 {
   // value must be less than 10
   sint64 value = 1 [(buf.validate.field).sint64.lt = 10];
 }
 ```



�



�


�


��

	
�	 ��
�

��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MySInt64 {
   // value must be less than or equal to 10
   sint64 value = 1 [(buf.validate.field).sint64.lte = 10];
 }
 ```



�



�


�


��

	
�	 ��


��


�
�

��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySInt64 {
   // value must be greater than 5 [sint64.gt]
   sint64 value = 1 [(buf.validate.field).sint64.gt = 5];

   // value must be greater than 5 and less than 10 [sint64.gt_lt]
   sint64 other_value = 2 [(buf.validate.field).sint64 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [sint64.gt_lt_exclusive]
   sint64 another_value = 3 [(buf.validate.field).sint64 = { gt: 10, lt: 5 }];
 }
 ```



�



�


�


��

	
�	 ��

	
�	��

	
�	��

	
�	��

	
�	��
�

��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySInt64 {
   // value must be greater than or equal to 5 [sint64.gte]
   sint64 value = 1 [(buf.validate.field).sint64.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [sint64.gte_lt]
   sint64 other_value = 2 [(buf.validate.field).sint64 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [sint64.gte_lt_exclusive]
   sint64 another_value = 3 [(buf.validate.field).sint64 = { gte: 10, lt: 5 }];
 }
 ```



�



�


�


��

	
�	 ��

	
�	��

	
�	��

	
�	��

	
�	��
�

��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message
 is generated.

 ```proto
 message MySInt64 {
   // value must be in list [1, 2, 3]
   repeated sint64 value = 1 (buf.validate.field).sint64 = { in: [1, 2, 3] };
 }
 ```



�



�


�


�


��

	
�	 ��
�

��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MySInt64 {
   // value must not be in list [1, 2, 3]
   repeated sint64 value = 1 (buf.validate.field).sint64 = { not_in: [1, 2, 3] };
 }
 ```



�



�


�


�


��

	
�	 ��
S
� �E Fixed32Rules describes the constraints applied to `fixed32` values.


�
�
 ��� `const` requires the field value to exactly match the specified value.
 If the field value doesn't match, an error message is generated.

 ```proto
 message MyFixed32 {
   // value must equal 42
   fixed32 value = 1 [(buf.validate.field).fixed32.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MyFixed32 {
   // value must be less than 10
   fixed32 value = 1 [(buf.validate.field).fixed32.lt = 10];
 }
 ```


�

�

�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyFixed32 {
   // value must be less than or equal to 10
   fixed32 value = 1 [(buf.validate.field).fixed32.lte = 10];
 }
 ```


�

�

�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyFixed32 {
   // value must be greater than 5 [fixed32.gt]
   fixed32 value = 1 [(buf.validate.field).fixed32.gt = 5];

   // value must be greater than 5 and less than 10 [fixed32.gt_lt]
   fixed32 other_value = 2 [(buf.validate.field).fixed32 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [fixed32.gt_lt_exclusive]
   fixed32 another_value = 3 [(buf.validate.field).fixed32 = { gt: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyFixed32 {
   // value must be greater than or equal to 5 [fixed32.gte]
   fixed32 value = 1 [(buf.validate.field).fixed32.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [fixed32.gte_lt]
   fixed32 other_value = 2 [(buf.validate.field).fixed32 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [fixed32.gte_lt_exclusive]
   fixed32 another_value = 3 [(buf.validate.field).fixed32 = { gte: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message
 is generated.

 ```proto
 message MyFixed32 {
   // value must be in list [1, 2, 3]
   repeated fixed32 value = 1 (buf.validate.field).fixed32 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyFixed32 {
   // value must not be in list [1, 2, 3]
   repeated fixed32 value = 1 (buf.validate.field).fixed32 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
S
� �E Fixed64Rules describes the constraints applied to `fixed64` values.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyFixed64 {
   // value must equal 42
   fixed64 value = 1 [(buf.validate.field).fixed64.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MyFixed64 {
   // value must be less than 10
   fixed64 value = 1 [(buf.validate.field).fixed64.lt = 10];
 }
 ```


�

�

�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MyFixed64 {
   // value must be less than or equal to 10
   fixed64 value = 1 [(buf.validate.field).fixed64.lte = 10];
 }
 ```


�

�

�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyFixed64 {
   // value must be greater than 5 [fixed64.gt]
   fixed64 value = 1 [(buf.validate.field).fixed64.gt = 5];

   // value must be greater than 5 and less than 10 [fixed64.gt_lt]
   fixed64 other_value = 2 [(buf.validate.field).fixed64 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [fixed64.gt_lt_exclusive]
   fixed64 another_value = 3 [(buf.validate.field).fixed64 = { gt: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyFixed64 {
   // value must be greater than or equal to 5 [fixed64.gte]
   fixed64 value = 1 [(buf.validate.field).fixed64.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [fixed64.gte_lt]
   fixed64 other_value = 2 [(buf.validate.field).fixed64 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [fixed64.gte_lt_exclusive]
   fixed64 another_value = 3 [(buf.validate.field).fixed64 = { gte: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MyFixed64 {
   // value must be in list [1, 2, 3]
   repeated fixed64 value = 1 (buf.validate.field).fixed64 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MyFixed64 {
   // value must not be in list [1, 2, 3]
   repeated fixed64 value = 1 (buf.validate.field).fixed64 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
T
� �F SFixed32Rules describes the constraints applied to `fixed32` values.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MySFixed32 {
   // value must equal 42
   sfixed32 value = 1 [(buf.validate.field).sfixed32.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MySFixed32 {
   // value must be less than 10
   sfixed32 value = 1 [(buf.validate.field).sfixed32.lt = 10];
 }
 ```


�

�

�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MySFixed32 {
   // value must be less than or equal to 10
   sfixed32 value = 1 [(buf.validate.field).sfixed32.lte = 10];
 }
 ```


�

�

�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySFixed32 {
   // value must be greater than 5 [sfixed32.gt]
   sfixed32 value = 1 [(buf.validate.field).sfixed32.gt = 5];

   // value must be greater than 5 and less than 10 [sfixed32.gt_lt]
   sfixed32 other_value = 2 [(buf.validate.field).sfixed32 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [sfixed32.gt_lt_exclusive]
   sfixed32 another_value = 3 [(buf.validate.field).sfixed32 = { gt: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySFixed32 {
   // value must be greater than or equal to 5 [sfixed32.gte]
   sfixed32 value = 1 [(buf.validate.field).sfixed32.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [sfixed32.gte_lt]
   sfixed32 other_value = 2 [(buf.validate.field).sfixed32 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [sfixed32.gte_lt_exclusive]
   sfixed32 another_value = 3 [(buf.validate.field).sfixed32 = { gte: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MySFixed32 {
   // value must be in list [1, 2, 3]
   repeated sfixed32 value = 1 (buf.validate.field).sfixed32 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MySFixed32 {
   // value must not be in list [1, 2, 3]
   repeated sfixed32 value = 1 (buf.validate.field).sfixed32 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 � �
T
� �F SFixed64Rules describes the constraints applied to `fixed64` values.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MySFixed64 {
   // value must equal 42
   sfixed64 value = 1 [(buf.validate.field).sfixed64.const = 42];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��

 ��

 �
�
��� `lt` requires the field value to be less than the specified value (field <
 value). If the field value is equal to or greater than the specified value,
 an error message is generated.

 ```proto
 message MySFixed64 {
   // value must be less than 10
   sfixed64 value = 1 [(buf.validate.field).sfixed64.lt = 10];
 }
 ```


�

�

�

��

	�	 ��
�
��� `lte` requires the field value to be less than or equal to the specified
 value (field <= value). If the field value is greater than the specified
 value, an error message is generated.

 ```proto
 message MySFixed64 {
   // value must be less than or equal to 10
   sfixed64 value = 1 [(buf.validate.field).sfixed64.lte = 10];
 }
 ```


�

�

�

��

	�	 ��

��

�
�
��� `gt` requires the field value to be greater than the specified value
 (exclusive). If the value of `gt` is larger than a specified `lt` or
 `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySFixed64 {
   // value must be greater than 5 [sfixed64.gt]
   sfixed64 value = 1 [(buf.validate.field).sfixed64.gt = 5];

   // value must be greater than 5 and less than 10 [sfixed64.gt_lt]
   sfixed64 other_value = 2 [(buf.validate.field).sfixed64 = { gt: 5, lt: 10 }];

   // value must be greater than 10 or less than 5 [sfixed64.gt_lt_exclusive]
   sfixed64 another_value = 3 [(buf.validate.field).sfixed64 = { gt: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the field value to be greater than or equal to the specified
 value (exclusive). If the value of `gte` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MySFixed64 {
   // value must be greater than or equal to 5 [sfixed64.gte]
   sfixed64 value = 1 [(buf.validate.field).sfixed64.gte = 5];

   // value must be greater than or equal to 5 and less than 10 [sfixed64.gte_lt]
   sfixed64 other_value = 2 [(buf.validate.field).sfixed64 = { gte: 5, lt: 10 }];

   // value must be greater than or equal to 10 or less than 5 [sfixed64.gte_lt_exclusive]
   sfixed64 another_value = 3 [(buf.validate.field).sfixed64 = { gte: 10, lt: 5 }];
 }
 ```


�

�

�

��

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` requires the field value to be equal to one of the specified values.
 If the field value isn't one of the specified values, an error message is
 generated.

 ```proto
 message MySFixed64 {
   // value must be in list [1, 2, 3]
   repeated sfixed64 value = 1 (buf.validate.field).sfixed64 = { in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to not be equal to any of the specified
 values. If the field value is one of the specified values, an error
 message is generated.

 ```proto
 message MySFixed64 {
   // value must not be in list [1, 2, 3]
   repeated sfixed64 value = 1 (buf.validate.field).sfixed64 = { not_in: [1, 2, 3] };
 }
 ```


�


�

�

�

��

	�	 � �
�
� �� BoolRules describes the constraints applied to `bool` values. These rules
 may also be applied to the `google.protobuf.BoolValue` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified boolean value.
 If the field value doesn't match, an error message is generated.

 ```proto
 message MyBool {
   // value must equal true
   bool value = 1 [(buf.validate.field).bool.const = true];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��
�
� �� StringRules describes the constraints applied to `string` values These
 rules may also be applied to the `google.protobuf.StringValue` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified value. If
 the field value doesn't match, an error message is generated.

 ```proto
 message MyString {
   // value must equal `hello`
   string value = 1 [(buf.validate.field).string.const = "hello"];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��
�
��� `len` dictates that the field value must have the specified
 number of characters (Unicode code points), which may differ from the number
 of bytes in the string. If the field value does not meet the specified
 length, an error message will be generated.

 ```proto
 message MyString {
   // value length must be 5 characters
   string value = 1 [(buf.validate.field).string.len = 5];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `min_len` specifies that the field value must have at least the specified
 number of characters (Unicode code points), which may differ from the number
 of bytes in the string. If the field value contains fewer characters, an error
 message will be generated.

 ```proto
 message MyString {
   // value length must be at least 3 characters
   string value = 1 [(buf.validate.field).string.min_len = 3];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `max_len` specifies that the field value must have no more than the specified
 number of characters (Unicode code points), which may differ from the
 number of bytes in the string. If the field value contains more characters,
 an error message will be generated.

 ```proto
 message MyString {
   // value length must be at most 10 characters
   string value = 1 [(buf.validate.field).string.max_len = 10];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `len_bytes` dictates that the field value must have the specified number of
 bytes. If the field value does not match the specified length in bytes,
 an error message will be generated.

 ```proto
 message MyString {
   // value length must be 6 bytes
   string value = 1 [(buf.validate.field).string.len_bytes = 6];
 }
 ```


�


�

�

� 

�!�

	�	 �"�
�
��� `min_bytes` specifies that the field value must have at least the specified
 number of bytes. If the field value contains fewer bytes, an error message
 will be generated.

 ```proto
 message MyString {
   // value length must be at least 4 bytes
   string value = 1 [(buf.validate.field).string.min_bytes = 4];
 }

 ```


�


�

�

�

� �

	�	 �!�
�
��� `max_bytes` specifies that the field value must have no more than the
specified number of bytes. If the field value contains more bytes, an
 error message will be generated.

 ```proto
 message MyString {
   // value length must be at most 8 bytes
   string value = 1 [(buf.validate.field).string.max_bytes = 8];
 }
 ```


�


�

�

�

� �

	�	 �!�
�
��� `pattern` specifies that the field value must match the specified
 regular expression (RE2 syntax), with the expression provided without any
 delimiters. If the field value doesn't match the regular expression, an
 error message will be generated.

 ```proto
 message MyString {
   // value does not match regex pattern `^[a-zA-Z]//$`
   string value = 1 [(buf.validate.field).string.pattern = "^[a-zA-Z]//$"];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `prefix` specifies that the field value must have the
specified substring at the beginning of the string. If the field value
 doesn't start with the specified prefix, an error message will be
 generated.

 ```proto
 message MyString {
   // value does not have prefix `pre`
   string value = 1 [(buf.validate.field).string.prefix = "pre"];
 }
 ```


�


�

�

�

��

	�	 ��
�
	��� `suffix` specifies that the field value must have the
specified substring at the end of the string. If the field value doesn't
 end with the specified suffix, an error message will be generated.

 ```proto
 message MyString {
   // value does not have suffix `post`
   string value = 1 [(buf.validate.field).string.suffix = "post"];
 }
 ```


	�


	�

	�

	�

	��

		�	 ��
�

��� `contains` specifies that the field value must have the
specified substring anywhere in the string. If the field value doesn't
 contain the specified substring, an error message will be generated.

 ```proto
 message MyString {
   // value does not contain substring `inside`.
   string value = 1 [(buf.validate.field).string.contains = "inside"];
 }
 ```



�



�


�


�


��

	
�	 � �
�
��� `not_contains` specifies that the field value must not have the
specified substring anywhere in the string. If the field value contains
 the specified substring, an error message will be generated.

 ```proto
 message MyString {
   // value contains substring `inside`.
   string value = 1 [(buf.validate.field).string.not_contains = "inside"];
 }
 ```


�


�

�

�!#

�$�

	�	 �%�
�
��� `in` specifies that the field value must be equal to one of the specified
 values. If the field value isn't one of the specified values, an error
 message will be generated.

 ```proto
 message MyString {
   // value must be in list ["apple", "banana"]
   repeated string value = 1 [(buf.validate.field).string.in = "apple", (buf.validate.field).string.in = "banana"];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` specifies that the field value cannot be equal to any
 of the specified values. If the field value is one of the specified values,
 an error message will be generated.
 ```proto
 message MyString {
   // value must not be in list ["orange", "grape"]
   repeated string value = 1 [(buf.validate.field).string.not_in = "orange", (buf.validate.field).string.not_in = "grape"];
 }
 ```


�


�

�

�

��

	�	 ��
`
 ��P `WellKnown` rules provide advanced constraints against common string
 patterns


 �
�
��� `email` specifies that the field value must be a valid email address
 (addr-spec only) as defined by [RFC 5322](https://tools.ietf.org/html/rfc5322#section-3.4.1).
 If the field value isn't a valid email address, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid email address
   string value = 1 [(buf.validate.field).string.email = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `hostname` specifies that the field value must be a valid
 hostname as defined by [RFC 1034](https://tools.ietf.org/html/rfc1034#section-3.5). This constraint doesn't support
 internationalized domain names (IDNs). If the field value isn't a
 valid hostname, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid hostname
   string value = 1 [(buf.validate.field).string.hostname = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ip` specifies that the field value must be a valid IP
 (v4 or v6) address, without surrounding square brackets for IPv6 addresses.
 If the field value isn't a valid IP address, an error message will be
 generated.

 ```proto
 message MyString {
   // value must be a valid IP address
   string value = 1 [(buf.validate.field).string.ip = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ipv4` specifies that the field value must be a valid IPv4
 address. If the field value isn't a valid IPv4 address, an error message
 will be generated.

 ```proto
 message MyString {
   // value must be a valid IPv4 address
   string value = 1 [(buf.validate.field).string.ipv4 = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ipv6` specifies that the field value must be a valid
 IPv6 address, without surrounding square brackets. If the field value is
 not a valid IPv6 address, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid IPv6 address
   string value = 1 [(buf.validate.field).string.ipv6 = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `uri` specifies that the field value must be a valid,
 absolute URI as defined by [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3). If the field value isn't a valid,
 absolute URI, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid URI
   string value = 1 [(buf.validate.field).string.uri = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `uri_ref` specifies that the field value must be a valid URI
 as defined by [RFC 3986](https://tools.ietf.org/html/rfc3986#section-3) and may be either relative or absolute. If the
 field value isn't a valid URI, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid URI
   string value = 1 [(buf.validate.field).string.uri_ref = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `address` specifies that the field value must be either a valid hostname
 as defined by [RFC 1034](https://tools.ietf.org/html/rfc1034#section-3.5)
 (which doesn't support internationalized domain names or IDNs) or a valid
 IP (v4 or v6). If the field value isn't a valid hostname or IP, an error
 message will be generated.

 ```proto
 message MyString {
   // value must be a valid hostname, or ip address
   string value = 1 [(buf.validate.field).string.address = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `uuid` specifies that the field value must be a valid UUID as defined by
 [RFC 4122](https://tools.ietf.org/html/rfc4122#section-4.1.2). If the
 field value isn't a valid UUID, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid UUID
   string value = 1 [(buf.validate.field).string.uuid = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ip_with_prefixlen` specifies that the field value must be a valid IP (v4 or v6)
 address with prefix length. If the field value isn't a valid IP with prefix
 length, an error message will be generated.


 ```proto
 message MyString {
   // value must be a valid IP with prefix length
    string value = 1 [(buf.validate.field).string.ip_with_prefixlen = true];
 }
 ```


�

�	

�

� �

	�	 �!�
�
��� `ipv4_with_prefixlen` specifies that the field value must be a valid
 IPv4 address with prefix.
 If the field value isn't a valid IPv4 address with prefix length,
 an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid IPv4 address with prefix lentgh
    string value = 1 [(buf.validate.field).string.ipv4_with_prefixlen = true];
 }
 ```


�

�	

�!

�"�

	�	 �#�
�
��� `ipv6_with_prefixlen` specifies that the field value must be a valid
 IPv6 address with prefix length.
 If the field value is not a valid IPv6 address with prefix length,
 an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid IPv6 address prefix length
    string value = 1 [(buf.validate.field).string.ipv6_with_prefixlen = true];
 }
 ```


�

�	

�!

�"�

	�	 �#�
�
��� `ip_prefix` specifies that the field value must be a valid IP (v4 or v6) prefix.
 If the field value isn't a valid IP prefix, an error message will be
 generated. The prefix must have all zeros for the masked bits of the prefix (e.g.,
 `127.0.0.0/16`, not `127.0.0.1/16`).

 ```proto
 message MyString {
   // value must be a valid IP prefix
    string value = 1 [(buf.validate.field).string.ip_prefix = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ipv4_prefix` specifies that the field value must be a valid IPv4
 prefix. If the field value isn't a valid IPv4 prefix, an error message
 will be generated. The prefix must have all zeros for the masked bits of
 the prefix (e.g., `127.0.0.0/16`, not `127.0.0.1/16`).

 ```proto
 message MyString {
   // value must be a valid IPv4 prefix
    string value = 1 [(buf.validate.field).string.ipv4_prefix = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ipv6_prefix` specifies that the field value must be a valid IPv6 prefix.
 If the field value is not a valid IPv6 prefix, an error message will be
 generated. The prefix must have all zeros for the masked bits of the prefix
 (e.g., `2001:db8::/48`, not `2001:db8::1/48`).

 ```proto
 message MyString {
   // value must be a valid IPv6 prefix
    string value = 1 [(buf.validate.field).string.ipv6_prefix = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `well_known_regex` specifies a common well-known pattern
 defined as a regex. If the field value doesn't match the well-known
 regex, an error message will be generated.

 ```proto
 message MyString {
   // value must be a valid HTTP header value
   string value = 1 [(buf.validate.field).string.well_known_regex = 2];
 }
 ```

 #### KnownRegex

 `well_known_regex` contains some well-known patterns.

 | Name                          | Number | Description                               |
 |-------------------------------|--------|-------------------------------------------|
 | KNOWN_REGEX_UNSPECIFIED       | 0      |                                           |
 | KNOWN_REGEX_HTTP_HEADER_NAME  | 1      | HTTP header name as defined by [RFC 7230](https://tools.ietf.org/html/rfc7230#section-3.2)  |
 | KNOWN_REGEX_HTTP_HEADER_VALUE | 2      | HTTP header value as defined by [RFC 7230](https://tools.ietf.org/html/rfc7230#section-3.2.4) |


�

�

�"$

�%�

	�	 ��

	�	��
�
�� This applies to regexes `HTTP_HEADER_NAME` and `HTTP_HEADER_VALUE` to
 enable strict header validation. By default, this is true, and HTTP header
 validations are [RFC-compliant](https://tools.ietf.org/html/rfc7230#section-3). Setting to false will enable looser
 validations that only disallow `\r\n\0` characters, which can be used to
 bypass header matching rules.

 ```proto
 message MyString {
   // The field `value` must have be a valid HTTP headers, but not enforced with strict rules.
   string value = 1 [(buf.validate.field).string.strict = false];
 }
 ```


�


�

�

�
@
 � �2 WellKnownRegex contain some well-known patterns.


 �

  �

  �

  �
k
 �#] HTTP header name as defined by [RFC 7230](https://tools.ietf.org/html/rfc7230#section-3.2).


 �

 �!"
n
 �$` HTTP header value as defined by [RFC 7230](https://tools.ietf.org/html/rfc7230#section-3.2.4).


 �

 �"#
�
� �� BytesRules describe the constraints applied to `bytes` values. These rules
 may also be applied to the `google.protobuf.BytesValue` Well-Known-Type.


�
�
 ��� `const` requires the field value to exactly match the specified bytes
 value. If the field value doesn't match, an error message is generated.

 ```proto
 message MyBytes {
   // value must be "\x01\x02\x03\x04"
   bytes value = 1 [(buf.validate.field).bytes.const = "\x01\x02\x03\x04"];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��
�
��� `len` requires the field value to have the specified length in bytes.
 If the field value doesn't match, an error message is generated.

 ```proto
 message MyBytes {
   // value length must be 4 bytes.
   optional bytes value = 1 [(buf.validate.field).bytes.len = 4];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `min_len` requires the field value to have at least the specified minimum
 length in bytes.
 If the field value doesn't meet the requirement, an error message is generated.

 ```proto
 message MyBytes {
   // value length must be at least 2 bytes.
   optional bytes value = 1 [(buf.validate.field).bytes.min_len = 2];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `max_len` requires the field value to have at most the specified maximum
 length in bytes.
 If the field value exceeds the requirement, an error message is generated.

 ```proto
 message MyBytes {
   // value must be at most 6 bytes.
   optional bytes value = 1 [(buf.validate.field).bytes.max_len = 6];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `pattern` requires the field value to match the specified regular
 expression ([RE2 syntax](https://github.com/google/re2/wiki/Syntax)).
 The value of the field must be valid UTF-8 or validation will fail with a
 runtime error.
 If the field value doesn't match the pattern, an error message is generated.

 ```proto
 message MyBytes {
   // value must match regex pattern "^[a-zA-Z0-9]+$".
   optional bytes value = 1 [(buf.validate.field).bytes.pattern = "^[a-zA-Z0-9]+$"];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `prefix` requires the field value to have the specified bytes at the
 beginning of the string.
 If the field value doesn't meet the requirement, an error message is generated.

 ```proto
 message MyBytes {
   // value does not have prefix \x01\x02
   optional bytes value = 1 [(buf.validate.field).bytes.prefix = "\x01\x02"];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `suffix` requires the field value to have the specified bytes at the end
 of the string.
 If the field value doesn't meet the requirement, an error message is generated.

 ```proto
 message MyBytes {
   // value does not have suffix \x03\x04
   optional bytes value = 1 [(buf.validate.field).bytes.suffix = "\x03\x04"];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `contains` requires the field value to have the specified bytes anywhere in
 the string.
 If the field value doesn't meet the requirement, an error message is generated.

 ```protobuf
 message MyBytes {
   // value does not contain \x02\x03
   optional bytes value = 1 [(buf.validate.field).bytes.contains = "\x02\x03"];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `in` requires the field value to be equal to one of the specified
 values. If the field value doesn't match any of the specified values, an
 error message is generated.

 ```protobuf
 message MyBytes {
   // value must in ["\x01\x02", "\x02\x03", "\x03\x04"]
   optional bytes value = 1 [(buf.validate.field).bytes.in = {"\x01\x02", "\x02\x03", "\x03\x04"}];
 }
 ```


�


�

�

�

��

	�	 ��
�
	��� `not_in` requires the field value to be not equal to any of the specified
 values.
 If the field value matches any of the specified values, an error message is
 generated.

 ```proto
 message MyBytes {
   // value must not in ["\x01\x02", "\x02\x03", "\x03\x04"]
   optional bytes value = 1 [(buf.validate.field).bytes.not_in = {"\x01\x02", "\x02\x03", "\x03\x04"}];
 }
 ```


	�


	�

	�

	�

	��

		�	 ��
\
 ��L WellKnown rules provide advanced constraints against common byte
 patterns


 �
�

��� `ip` ensures that the field `value` is a valid IP address (v4 or v6) in byte format.
 If the field value doesn't meet this constraint, an error message is generated.

 ```proto
 message MyBytes {
   // value must be a valid IP address
   optional bytes value = 1 [(buf.validate.field).bytes.ip = true];
 }
 ```



�


�	


�


��

	
�	 ��
�
��� `ipv4` ensures that the field `value` is a valid IPv4 address in byte format.
 If the field value doesn't meet this constraint, an error message is generated.

 ```proto
 message MyBytes {
   // value must be a valid IPv4 address
   optional bytes value = 1 [(buf.validate.field).bytes.ipv4 = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `ipv6` ensures that the field `value` is a valid IPv6 address in byte format.
 If the field value doesn't meet this constraint, an error message is generated.
 ```proto
 message MyBytes {
   // value must be a valid IPv6 address
   optional bytes value = 1 [(buf.validate.field).bytes.ipv6 = true];
 }
 ```


�

�	

�

��

	�	 ��
L
� �> EnumRules describe the constraints applied to `enum` values.


�
�
 ��� `const` requires the field value to exactly match the specified enum value.
 If the field value doesn't match, an error message is generated.

 ```proto
 enum MyEnum {
   MY_ENUM_UNSPECIFIED = 0;
   MY_ENUM_VALUE1 = 1;
   MY_ENUM_VALUE2 = 2;
 }

 message MyMessage {
   // The field `value` must be exactly MY_ENUM_VALUE1.
   MyEnum value = 1 [(buf.validate.field).enum.const = 1];
 }
 ```


 �


 �

 �

 �

 ��

	 �	 ��
�
�!� `defined_only` requires the field value to be one of the defined values for
 this enum, failing on any undefined value.

 ```proto
 enum MyEnum {
   MY_ENUM_UNSPECIFIED = 0;
   MY_ENUM_VALUE1 = 1;
   MY_ENUM_VALUE2 = 2;
 }

 message MyMessage {
   // The field `value` must be a defined value of MyEnum.
   MyEnum value = 1 [(buf.validate.field).enum.defined_only = true];
 }
 ```


�


�

�

� 
�
��� `in` requires the field value to be equal to one of the
specified enum values. If the field value doesn't match any of the
specified values, an error message is generated.

 ```proto
 enum MyEnum {
   MY_ENUM_UNSPECIFIED = 0;
   MY_ENUM_VALUE1 = 1;
   MY_ENUM_VALUE2 = 2;
 }

 message MyMessage {
   // The field `value` must be equal to one of the specified values.
   MyEnum value = 1 [(buf.validate.field).enum = { in: [1, 2]}];
 }
 ```


�


�

�

�

��

	�	 ��
�
��� `not_in` requires the field value to be not equal to any of the
specified enum values. If the field value matches one of the specified
 values, an error message is generated.

 ```proto
 enum MyEnum {
   MY_ENUM_UNSPECIFIED = 0;
   MY_ENUM_VALUE1 = 1;
   MY_ENUM_VALUE2 = 2;
 }

 message MyMessage {
   // The field `value` must not be equal to any of the specified values.
   MyEnum value = 1 [(buf.validate.field).enum = { not_in: [1, 2]}];
 }
 ```


�


�

�

�

��

	�	 ��
T
� �F RepeatedRules describe the constraints applied to `repeated` values.


�
�
 ��� `min_items` requires that this field must contain at least the specified
 minimum number of items.

 Note that `min_items = 1` is equivalent to setting a field as `required`.

 ```proto
 message MyRepeated {
   // value must contain at least  2 items
   repeated string value = 1 [(buf.validate.field).repeated.min_items = 2];
 }
 ```


 �


 �

 �

 �

 � �

	 �	 �!�
�
��� `max_items` denotes that this field must not exceed a
 certain number of items as the upper limit. If the field contains more
 items than specified, an error message will be generated, requiring the
 field to maintain no more than the specified number of items.

 ```proto
 message MyRepeated {
   // value must contain no more than 3 item(s)
   repeated string value = 1 [(buf.validate.field).repeated.max_items = 3];
 }
 ```


�


�

�

�

� �

	�	 �!�
�
��� `unique` indicates that all elements in this field must
 be unique. This constraint is strictly applicable to scalar and enum
 types, with message types not being supported.

 ```proto
 message MyRepeated {
   // repeated value must contain unique items
   repeated string value = 1 [(buf.validate.field).repeated.unique = true];
 }
 ```


�


�

�

�

��

	�	 ��
�
�&� `items` details the constraints to be applied to each item
 in the field. Even for repeated message fields, validation is executed
 against each item unless skip is explicitly specified.

 ```proto
 message MyRepeated {
   // The items in the field `value` must follow the specified constraints.
   repeated string value = 1 [(buf.validate.field).repeated.items = {
     string: {
       min_len: 3
       max_len: 10
     }
   }];
 }
 ```


�


�

�!

�$%
J
� �< MapRules describe the constraints applied to `map` values.


�
�
 ���Specifies the minimum number of key-value pairs allowed. If the field has
 fewer key-value pairs than specified, an error message is generated.

 ```proto
 message MyMap {
   // The field `value` must have at least 2 key-value pairs.
   map<string, string> value = 1 [(buf.validate.field).map.min_pairs = 2];
 }
 ```


 �


 �

 �

 �

 � �

	 �	 �!�
�
���Specifies the maximum number of key-value pairs allowed. If the field has
 more key-value pairs than specified, an error message is generated.

 ```proto
 message MyMap {
   // The field `value` must have at most 3 key-value pairs.
   map<string, string> value = 1 [(buf.validate.field).map.max_pairs = 3];
 }
 ```


�


�

�

�

� �

	�	 �!�
�
�%�Specifies the constraints to be applied to each key in the field.

 ```proto
 message MyMap {
   // The keys in the field `value` must follow the specified constraints.
   map<string, string> value = 1 [(buf.validate.field).map.keys = {
     string: {
       min_len: 3
       max_len: 10
     }
   }];
 }
 ```


�


�

� 

�#$
�
�'�Specifies the constraints to be applied to the value of each key in the
 field. Message values will still have their validations evaluated unless
skip is specified here.

 ```proto
 message MyMap {
   // The values in the field `value` must follow the specified constraints.
   map<string, string> value = 1 [(buf.validate.field).map.values = {
     string: {
       min_len: 5
       max_len: 20
     }
   }];
 }
 ```


�


�

�"

�%&
o
� �a AnyRules describe constraints applied exclusively to the `google.protobuf.Any` well-known type.


�
�
 �� `in` requires the field's `type_url` to be equal to one of the
specified values. If it doesn't match any of the specified values, an error
 message is generated.

 ```proto
 message MyAny {
   //  The `value` field must have a `type_url` equal to one of the specified values.
   google.protobuf.Any value = 1 [(buf.validate.field).any.in = ["type.googleapis.com/MyType1", "type.googleapis.com/MyType2"]];
 }
 ```


 �


 �

 �

 �
�
�� requires the field's type_url to be not equal to any of the specified values. If it matches any of the specified values, an error message is generated.

 ```proto
 message MyAny {
   // The field `value` must not have a `type_url` equal to any of the specified values.
   google.protobuf.Any value = 1 [(buf.validate.field).any.not_in = ["type.googleapis.com/ForbiddenType1", "type.googleapis.com/ForbiddenType2"]];
 }
 ```


�


�

�

�
}
� �o DurationRules describe the constraints applied exclusively to the `google.protobuf.Duration` well-known type.


�
�
 ��� `const` dictates that the field must match the specified value of the `google.protobuf.Duration` type exactly.
 If the field's value deviates from the specified value, an error message
 will be generated.

 ```proto
 message MyDuration {
   // value must equal 5s
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.const = "5s"];
 }
 ```


 �


 �#

 �$)

 �,-

 �.�

	 �	 �/�

 ��

 �
�
��� `lt` stipulates that the field must be less than the specified value of the `google.protobuf.Duration` type,
 exclusive. If the field's value is greater than or equal to the specified
 value, an error message will be generated.

 ```proto
 message MyDuration {
   // value must be less than 5s
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.lt = "5s"];
 }
 ```


�

�

�"#

�$�

	�	 �%�
�
��� `lte` indicates that the field must be less than or equal to the specified
 value of the `google.protobuf.Duration` type, inclusive. If the field's value is greater than the specified value,
 an error message will be generated.

 ```proto
 message MyDuration {
   // value must be less than or equal to 10s
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.lte = "10s"];
 }
 ```


�

� 

�#$

�%�

	�	 �&�

��

�
�
��� `gt` requires the duration field value to be greater than the specified
 value (exclusive). If the value of `gt` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyDuration {
   // duration must be greater than 5s [duration.gt]
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.gt = { seconds: 5 }];

   // duration must be greater than 5s and less than 10s [duration.gt_lt]
   google.protobuf.Duration another_value = 2 [(buf.validate.field).duration = { gt: { seconds: 5 }, lt: { seconds: 10 } }];

   // duration must be greater than 10s or less than 5s [duration.gt_lt_exclusive]
   google.protobuf.Duration other_value = 3 [(buf.validate.field).duration = { gt: { seconds: 10 }, lt: { seconds: 5 } }];
 }
 ```


�

�

�"#

�$�

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the duration field value to be greater than or equal to the
 specified value (exclusive). If the value of `gte` is larger than a
 specified `lt` or `lte`, the range is reversed, and the field value must
 be outside the specified range. If the field value doesn't meet the
 required conditions, an error message is generated.

 ```proto
 message MyDuration {
  // duration must be greater than or equal to 5s [duration.gte]
  google.protobuf.Duration value = 1 [(buf.validate.field).duration.gte = { seconds: 5 }];

  // duration must be greater than or equal to 5s and less than 10s [duration.gte_lt]
  google.protobuf.Duration another_value = 2 [(buf.validate.field).duration = { gte: { seconds: 5 }, lt: { seconds: 10 } }];

  // duration must be greater than or equal to 10s or less than 5s [duration.gte_lt_exclusive]
  google.protobuf.Duration other_value = 3 [(buf.validate.field).duration = { gte: { seconds: 10 }, lt: { seconds: 5 } }];
 }
 ```


�

� 

�#$

�%�

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `in` asserts that the field must be equal to one of the specified values of the `google.protobuf.Duration` type.
 If the field's value doesn't correspond to any of the specified values,
 an error message will be generated.

 ```proto
 message MyDuration {
   // value must be in list [1s, 2s, 3s]
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.in = ["1s", "2s", "3s"]];
 }
 ```


�


�#

�$&

�)*

�+�

	�	 �,�
�
��� `not_in` denotes that the field must not be equal to
 any of the specified values of the `google.protobuf.Duration` type.
 If the field's value matches any of these values, an error message will be
 generated.

 ```proto
 message MyDuration {
   // value must not be in list [1s, 2s, 3s]
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.not_in = ["1s", "2s", "3s"]];
 }
 ```


�


�#

�$*

�-.

�/�

	�	 �0�

� �q TimestampRules describe the constraints applied exclusively to the `google.protobuf.Timestamp` well-known type.


�
�
 ��� `const` dictates that this field, of the `google.protobuf.Timestamp` type, must exactly match the specified value. If the field value doesn't correspond to the specified timestamp, an error message will be generated.

 ```proto
 message MyTimestamp {
   // value must equal 2023-05-03T10:00:00Z
   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.const = {seconds: 1727998800}];
 }
 ```


 �


 �$

 �%*

 �-.

 �/�

	 �	 �0�

 ��

 �
�
��� requires the duration field value to be less than the specified value (field < value). If the field value doesn't meet the required conditions, an error message is generated.

 ```proto
 message MyDuration {
   // duration must be less than 'P3D' [duration.lt]
   google.protobuf.Duration value = 1 [(buf.validate.field).duration.lt = { seconds: 259200 }];
 }
 ```


�

� 

�#$

�%�

	�	 �&�
�
��� requires the timestamp field value to be less than or equal to the specified value (field <= value). If the field value doesn't meet the required conditions, an error message is generated.

 ```proto
 message MyTimestamp {
   // timestamp must be less than or equal to '2023-05-14T00:00:00Z' [timestamp.lte]
   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.lte = { seconds: 1678867200 }];
 }
 ```


�

�!

�$%

�&�

	�	 �'�
�
��� `lt_now` specifies that this field, of the `google.protobuf.Timestamp` type, must be less than the current time. `lt_now` can only be used with the `within` rule.

 ```proto
 message MyTimestamp {
  // value must be less than now
   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.lt_now = true];
 }
 ```


�

�	

�

��

	�	 ��

��

�
�
��� `gt` requires the timestamp field value to be greater than the specified
 value (exclusive). If the value of `gt` is larger than a specified `lt`
 or `lte`, the range is reversed, and the field value must be outside the
 specified range. If the field value doesn't meet the required conditions,
 an error message is generated.

 ```proto
 message MyTimestamp {
   // timestamp must be greater than '2023-01-01T00:00:00Z' [timestamp.gt]
   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.gt = { seconds: 1672444800 }];

   // timestamp must be greater than '2023-01-01T00:00:00Z' and less than '2023-01-02T00:00:00Z' [timestamp.gt_lt]
   google.protobuf.Timestamp another_value = 2 [(buf.validate.field).timestamp = { gt: { seconds: 1672444800 }, lt: { seconds: 1672531200 } }];

   // timestamp must be greater than '2023-01-02T00:00:00Z' or less than '2023-01-01T00:00:00Z' [timestamp.gt_lt_exclusive]
   google.protobuf.Timestamp other_value = 3 [(buf.validate.field).timestamp = { gt: { seconds: 1672531200 }, lt: { seconds: 1672444800 } }];
 }
 ```


�

� 

�#$

�%�

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gte` requires the timestamp field value to be greater than or equal to the
 specified value (exclusive). If the value of `gte` is larger than a
 specified `lt` or `lte`, the range is reversed, and the field value
 must be outside the specified range. If the field value doesn't meet
 the required conditions, an error message is generated.

 ```proto
 message MyTimestamp {
   // timestamp must be greater than or equal to '2023-01-01T00:00:00Z' [timestamp.gte]
   google.protobuf.Timestamp value = 1 [(buf.validate.field).timestamp.gte = { seconds: 1672444800 }];

   // timestamp must be greater than or equal to '2023-01-01T00:00:00Z' and less than '2023-01-02T00:00:00Z' [timestamp.gte_lt]
   google.protobuf.Timestamp another_value = 2 [(buf.validate.field).timestamp = { gte: { seconds: 1672444800 }, lt: { seconds: 1672531200 } }];

   // timestamp must be greater than or equal to '2023-01-02T00:00:00Z' or less than '2023-01-01T00:00:00Z' [timestamp.gte_lt_exclusive]
   google.protobuf.Timestamp other_value = 3 [(buf.validate.field).timestamp = { gte: { seconds: 1672531200 }, lt: { seconds: 1672444800 } }];
 }
 ```


�

�!

�$%

�&�

	�	 ��

	�	��

	�	��

	�	��

	�	��
�
��� `gt_now` specifies that this field, of the `google.protobuf.Timestamp` type, must be greater than the current time. `gt_now` can only be used with the `within` rule.

 ```proto
 message MyTimestamp {
   // value must be greater than now
   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.gt_now = true];
 }
 ```


�

�	

�

��

	�	 ��
�
��� `within` specifies that this field, of the `google.protobuf.Timestamp` type, must be within the specified duration of the current time. If the field value isn't within the duration, an error message is generated.

 ```proto
 message MyTimestamp {
   // value must be within 1 hour of now
   google.protobuf.Timestamp created_at = 1 [(buf.validate.field).timestamp.within = {seconds: 3600}];
 }
 ```


�


�#

�$*

�-.

�/�

	�	 �0�bproto3��NH
$
	buf.buildbufbuildprotovalidate e097f827e65240ac9fd4b1158849a8fc 
�

common/common.protocommongoogle/protobuf/timestamp.proto"�
Metadata9

created_at (2.google.protobuf.TimestampR	createdAt9

updated_at (2.google.protobuf.TimestampR	updatedAt4
labels (2.common.Metadata.LabelsEntryRlabels 
description (	Rdescription9
LabelsEntry
key (	Rkey
value (	Rvalue:8"�
MetadataMutable;
labels (2#.common.MetadataMutable.LabelsEntryRlabels 
description (	Rdescription9
LabelsEntry
key (	Rkey
value (	Rvalue:8J�
  

  

 
	
  )
V
  J Struct to uniquely identify a resource with optional additional metadata



 
\
  	+O created_at set by server (entity who created will recorded in an audit event)


  	

  	&

  	)*
\
 +O updated_at set by server (entity who updated will recorded in an audit event)


 

 &

 )*
)
 ! optional short description


 

 

  
(
  optional long description


 

 	

 


 



)
 ! optional short description


 

 

  
(
 optional long description




	

bproto3��  
�y
google/api/http.proto
google.api"y
Http*
rules (2.google.api.HttpRuleRrulesE
fully_decode_reserved_expansion (RfullyDecodeReservedExpansion"�
HttpRule
selector (	Rselector
get (	H Rget
put (	H Rput
post (	H Rpost
delete (	H Rdelete
patch (	H Rpatch7
custom (2.google.api.CustomHttpPatternH Rcustom
body (	Rbody#
response_body (	RresponseBodyE
additional_bindings (2.google.api.HttpRuleRadditionalBindingsB	
pattern";
CustomHttpPattern
kind (	Rkind
path (	RpathBj
com.google.apiB	HttpProtoPZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations��GAPIJ�s
 �
�
 2� Copyright 2023 Google LLC

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


 

 
	
 

 X
	
 X

 "
	

 "

 *
	
 *

 '
	
 '

 "
	
$ "
�
  )� Defines the HTTP configuration for an API service. It contains a list of
 [HttpRule][google.api.HttpRule], each specifying the mapping of an RPC method
 to one or more HTTP REST API methods.



 
�
   � A list of HTTP configuration rules that apply to individual API methods.

 **NOTE:** All service configuration rules follow "last one wins" order.


   


   

   

   
�
 (+� When set to true, URL path parameters will be fully URI-decoded except in
 cases of single segment matches in reserved expansion, where "%2F" will be
 left encoded.

 The default behavior is to not decode RFC 6570 reserved characters in multi
 segment matches.


 (

 (&

 ()*
�S
� ��S # gRPC Transcoding

 gRPC Transcoding is a feature for mapping between a gRPC method and one or
 more HTTP REST endpoints. It allows developers to build a single API service
 that supports both gRPC APIs and REST APIs. Many systems, including [Google
 APIs](https://github.com/googleapis/googleapis),
 [Cloud Endpoints](https://cloud.google.com/endpoints), [gRPC
 Gateway](https://github.com/grpc-ecosystem/grpc-gateway),
 and [Envoy](https://github.com/envoyproxy/envoy) proxy support this feature
 and use it for large scale production services.

 `HttpRule` defines the schema of the gRPC/REST mapping. The mapping specifies
 how different portions of the gRPC request message are mapped to the URL
 path, URL query parameters, and HTTP request body. It also controls how the
 gRPC response message is mapped to the HTTP response body. `HttpRule` is
 typically specified as an `google.api.http` annotation on the gRPC method.

 Each mapping specifies a URL path template and an HTTP method. The path
 template may refer to one or more fields in the gRPC request message, as long
 as each field is a non-repeated field with a primitive (non-message) type.
 The path template controls how fields of the request message are mapped to
 the URL path.

 Example:

     service Messaging {
       rpc GetMessage(GetMessageRequest) returns (Message) {
         option (google.api.http) = {
             get: "/v1/{name=messages/*}"
         };
       }
     }
     message GetMessageRequest {
       string name = 1; // Mapped to URL path.
     }
     message Message {
       string text = 1; // The resource content.
     }

 This enables an HTTP REST to gRPC mapping as below:

 HTTP | gRPC
 -----|-----
 `GET /v1/messages/123456`  | `GetMessage(name: "messages/123456")`

 Any fields in the request message which are not bound by the path template
 automatically become HTTP query parameters if there is no HTTP request body.
 For example:

     service Messaging {
       rpc GetMessage(GetMessageRequest) returns (Message) {
         option (google.api.http) = {
             get:"/v1/messages/{message_id}"
         };
       }
     }
     message GetMessageRequest {
       message SubMessage {
         string subfield = 1;
       }
       string message_id = 1; // Mapped to URL path.
       int64 revision = 2;    // Mapped to URL query parameter `revision`.
       SubMessage sub = 3;    // Mapped to URL query parameter `sub.subfield`.
     }

 This enables a HTTP JSON to RPC mapping as below:

 HTTP | gRPC
 -----|-----
 `GET /v1/messages/123456?revision=2&sub.subfield=foo` |
 `GetMessage(message_id: "123456" revision: 2 sub: SubMessage(subfield:
 "foo"))`

 Note that fields which are mapped to URL query parameters must have a
 primitive type or a repeated primitive type or a non-repeated message type.
 In the case of a repeated type, the parameter can be repeated in the URL
 as `...?param=A&param=B`. In the case of a message type, each field of the
 message is mapped to a separate parameter, such as
 `...?foo.a=A&foo.b=B&foo.c=C`.

 For HTTP methods that allow a request body, the `body` field
 specifies the mapping. Consider a REST update method on the
 message resource collection:

     service Messaging {
       rpc UpdateMessage(UpdateMessageRequest) returns (Message) {
         option (google.api.http) = {
           patch: "/v1/messages/{message_id}"
           body: "message"
         };
       }
     }
     message UpdateMessageRequest {
       string message_id = 1; // mapped to the URL
       Message message = 2;   // mapped to the body
     }

 The following HTTP JSON to RPC mapping is enabled, where the
 representation of the JSON in the request body is determined by
 protos JSON encoding:

 HTTP | gRPC
 -----|-----
 `PATCH /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id:
 "123456" message { text: "Hi!" })`

 The special name `*` can be used in the body mapping to define that
 every field not bound by the path template should be mapped to the
 request body.  This enables the following alternative definition of
 the update method:

     service Messaging {
       rpc UpdateMessage(Message) returns (Message) {
         option (google.api.http) = {
           patch: "/v1/messages/{message_id}"
           body: "*"
         };
       }
     }
     message Message {
       string message_id = 1;
       string text = 2;
     }


 The following HTTP JSON to RPC mapping is enabled:

 HTTP | gRPC
 -----|-----
 `PATCH /v1/messages/123456 { "text": "Hi!" }` | `UpdateMessage(message_id:
 "123456" text: "Hi!")`

 Note that when using `*` in the body mapping, it is not possible to
 have HTTP parameters, as all fields not bound by the path end in
 the body. This makes this option more rarely used in practice when
 defining REST APIs. The common usage of `*` is in custom methods
 which don't use the URL at all for transferring data.

 It is possible to define multiple HTTP methods for one RPC by using
 the `additional_bindings` option. Example:

     service Messaging {
       rpc GetMessage(GetMessageRequest) returns (Message) {
         option (google.api.http) = {
           get: "/v1/messages/{message_id}"
           additional_bindings {
             get: "/v1/users/{user_id}/messages/{message_id}"
           }
         };
       }
     }
     message GetMessageRequest {
       string message_id = 1;
       string user_id = 2;
     }

 This enables the following two alternative HTTP JSON to RPC mappings:

 HTTP | gRPC
 -----|-----
 `GET /v1/messages/123456` | `GetMessage(message_id: "123456")`
 `GET /v1/users/me/messages/123456` | `GetMessage(user_id: "me" message_id:
 "123456")`

 ## Rules for HTTP mapping

 1. Leaf request fields (recursive expansion nested messages in the request
    message) are classified into three categories:
    - Fields referred by the path template. They are passed via the URL path.
    - Fields referred by the [HttpRule.body][google.api.HttpRule.body]. They
    are passed via the HTTP
      request body.
    - All other fields are passed via the URL query parameters, and the
      parameter name is the field path in the request message. A repeated
      field can be represented as multiple query parameters under the same
      name.
  2. If [HttpRule.body][google.api.HttpRule.body] is "*", there is no URL
  query parameter, all fields
     are passed via URL path and HTTP request body.
  3. If [HttpRule.body][google.api.HttpRule.body] is omitted, there is no HTTP
  request body, all
     fields are passed via URL path and URL query parameters.

 ### Path template syntax

     Template = "/" Segments [ Verb ] ;
     Segments = Segment { "/" Segment } ;
     Segment  = "*" | "**" | LITERAL | Variable ;
     Variable = "{" FieldPath [ "=" Segments ] "}" ;
     FieldPath = IDENT { "." IDENT } ;
     Verb     = ":" LITERAL ;

 The syntax `*` matches a single URL path segment. The syntax `**` matches
 zero or more URL path segments, which must be the last part of the URL path
 except the `Verb`.

 The syntax `Variable` matches part of the URL path as specified by its
 template. A variable template must not contain other variables. If a variable
 matches a single path segment, its template may be omitted, e.g. `{var}`
 is equivalent to `{var=*}`.

 The syntax `LITERAL` matches literal text in the URL path. If the `LITERAL`
 contains any reserved character, such characters should be percent-encoded
 before the matching.

 If a variable contains exactly one path segment, such as `"{var}"` or
 `"{var=*}"`, when such a variable is expanded into a URL path on the client
 side, all characters except `[-_.~0-9a-zA-Z]` are percent-encoded. The
 server side does the reverse decoding. Such variables show up in the
 [Discovery
 Document](https://developers.google.com/discovery/v1/reference/apis) as
 `{var}`.

 If a variable contains multiple path segments, such as `"{var=foo/*}"`
 or `"{var=**}"`, when such a variable is expanded into a URL path on the
 client side, all characters except `[-_.~/0-9a-zA-Z]` are percent-encoded.
 The server side does the reverse decoding, except "%2F" and "%2f" are left
 unchanged. Such variables show up in the
 [Discovery
 Document](https://developers.google.com/discovery/v1/reference/apis) as
 `{+var}`.

 ## Using gRPC API Service Configuration

 gRPC API Service Configuration (service config) is a configuration language
 for configuring a gRPC service to become a user-facing product. The
 service config is simply the YAML representation of the `google.api.Service`
 proto message.

 As an alternative to annotating your proto file, you can configure gRPC
 transcoding in your service config YAML files. You do this by specifying a
 `HttpRule` that maps the gRPC method to a REST endpoint, achieving the same
 effect as the proto annotation. This can be particularly useful if you
 have a proto that is reused in multiple services. Note that any transcoding
 specified in the service config will override any matching transcoding
 configuration in the proto.

 Example:

     http:
       rules:
         # Selects a gRPC method and applies HttpRule to it.
         - selector: example.v1.Messaging.GetMessage
           get: /v1/messages/{message_id}/{sub.subfield}

 ## Special notes

 When gRPC Transcoding is used to map a gRPC to JSON REST endpoints, the
 proto to JSON conversion must follow the [proto3
 specification](https://developers.google.com/protocol-buffers/docs/proto3#json).

 While the single segment variable follows the semantics of
 [RFC 6570](https://tools.ietf.org/html/rfc6570) Section 3.2.2 Simple String
 Expansion, the multi segment variable **does not** follow RFC 6570 Section
 3.2.3 Reserved Expansion. The reason is that the Reserved Expansion
 does not expand special characters like `?` and `#`, which would lead
 to invalid URLs. As the result, gRPC Transcoding uses a custom encoding
 for multi segment variables.

 The path variables **must not** refer to any repeated or mapped field,
 because client libraries are not capable of handling such variable expansion.

 The path variables **must not** capture the leading "/" character. The reason
 is that the most common use case "{var}" does not capture the leading "/"
 character. For consistency, all path variables must share the same behavior.

 Repeated message fields must not be mapped to URL query parameters, because
 no client library can support such complicated mapping.

 If an API needs to use a JSON array for request or response body, it can map
 the request or response body to a repeated field. However, some gRPC
 Transcoding implementations may not support this feature.


�
�
 �� Selects a method to which this rule applies.

 Refer to [selector][google.api.DocumentationRule.selector] for syntax
 details.


 �

 �	

 �
�
 ��� Determines the URL pattern is matched by this rules. This pattern can be
 used with any of the {get|put|post|delete|patch} methods. A custom method
 can be defined using the 'custom' field.


 �
\
�N Maps to HTTP GET. Used for listing and getting information about
 resources.


�


�

�
@
�2 Maps to HTTP PUT. Used for replacing a resource.


�


�

�
X
�J Maps to HTTP POST. Used for creating a resource or performing an action.


�


�

�
B
�4 Maps to HTTP DELETE. Used for deleting a resource.


�


�

�
A
�3 Maps to HTTP PATCH. Used for updating a resource.


�


�

�
�
�!� The custom pattern is used for specifying an HTTP method that is not
 included in the `pattern` field, such as HEAD, or "*" to leave the
 HTTP method unspecified for this rule. The wild-card rule is useful
 for services that provide content to Web (HTML) clients.


�

�

� 
�
�� The name of the request field whose value is mapped to the HTTP request
 body, or `*` for mapping all request fields not captured by the path
 pattern to the HTTP body, or omitted for not having any HTTP request body.

 NOTE: the referred field must be present at the top-level of the request
 message type.


�

�	

�
�
�� Optional. The name of the response field whose value is mapped to the HTTP
 response body. When omitted, the entire response message will be used
 as the HTTP response body.

 NOTE: The referred field must be present at the top-level of the response
 message type.


�

�	

�
�
	�-� Additional HTTP bindings for the selector. Nested bindings must
 not contain an `additional_bindings` field themselves (that is,
 the nesting may only be one level deep).


	�


	�

	�'

	�*,
G
� �9 A custom pattern is used for defining custom HTTP verb.


�
2
 �$ The name of this custom HTTP verb.


 �

 �	

 �
5
�' The path matched by this custom verb.


�

�	

�bproto3��MG
#
	buf.build
googleapis
googleapis a86849a25cc04f4dbe9b15ddddfbc488 
�	
google/api/annotations.proto
google.apigoogle/api/http.proto google/protobuf/descriptor.proto:K
http.google.protobuf.MethodOptions�ʼ" (2.google.api.HttpRuleRhttpBn
com.google.apiBAnnotationsProtoPZAgoogle.golang.org/genproto/googleapis/api/annotations;annotations�GAPIJ�
 
�
 2� Copyright 2015 Google LLC

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


 
	
  
	
 *

 X
	
 X

 "
	

 "

 1
	
 1

 '
	
 '

 "
	
$ "
	
 

  See `HttpRule`.



 $


 



 


 bproto3��MG
#
	buf.build
googleapis
googleapis a86849a25cc04f4dbe9b15ddddfbc488 
�E
,kasregistry/key_access_server_registry.protokasregistrybuf/validate/validate.protocommon/common.protogoogle/api/annotations.proto"�
KeyAccessServer
id (	Rid,
metadata (2.common.MetadataRmetadata
uri (	Ruri5

public_key (2.kasregistry.PublicKeyR	publicKey"�
KeyAccessServerCreateUpdate3
metadata (2.common.MetadataMutableRmetadata
uri (	B�H�Ruri=

public_key (2.kasregistry.PublicKeyB�H�R	publicKey"�
	PublicKey�
remote (	B��H���

fqn_format�FQN must start with a valid URL (e.g., 'https://demo.com/') followed by additional segments. Each segment must start and end with an alphanumeric character, can contain hyphens, alphanumeric characters, and slashes.�this.matches('^https://[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?(\\.[a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?)*(/.*)?$')H Rremote
local (	H RlocalB

public_key"3
GetKeyAccessServerRequest
id (	B�H�Rid"f
GetKeyAccessServerResponseH
key_access_server (2.kasregistry.KeyAccessServerRkeyAccessServer"
ListKeyAccessServersRequest"j
ListKeyAccessServersResponseJ
key_access_servers (2.kasregistry.KeyAccessServerRkeyAccessServers"|
CreateKeyAccessServerRequest\
key_access_server (2(.kasregistry.KeyAccessServerCreateUpdateB�H�RkeyAccessServer"i
CreateKeyAccessServerResponseH
key_access_server (2.kasregistry.KeyAccessServerRkeyAccessServer"�
UpdateKeyAccessServerRequest
id (	B�H�Rid\
key_access_server (2(.kasregistry.KeyAccessServerCreateUpdateB�H�RkeyAccessServer"i
UpdateKeyAccessServerResponseH
key_access_server (2.kasregistry.KeyAccessServerRkeyAccessServer"6
DeleteKeyAccessServerRequest
id (	B�H�Rid"i
DeleteKeyAccessServerResponseH
key_access_server (2.kasregistry.KeyAccessServerRkeyAccessServer2�
KeyAccessServerRegistryService�
ListKeyAccessServers(.kasregistry.ListKeyAccessServersRequest).kasregistry.ListKeyAccessServersResponse"���/key-access-servers�
GetKeyAccessServer&.kasregistry.GetKeyAccessServerRequest'.kasregistry.GetKeyAccessServerResponse" ���/key-access-servers/{id}�
CreateKeyAccessServer).kasregistry.CreateKeyAccessServerRequest*.kasregistry.CreateKeyAccessServerResponse".���("/key-access-servers:key_access_server�
UpdateKeyAccessServer).kasregistry.UpdateKeyAccessServerRequest*.kasregistry.UpdateKeyAccessServerResponse"3���-/key-access-servers/{id}:key_access_server�
DeleteKeyAccessServer).kasregistry.DeleteKeyAccessServerRequest*.kasregistry.DeleteKeyAccessServerResponse" ���*/key-access-servers/{id}J�0
  �

  

 
	
  %
	
 
	
 &
#
  
 Descriptor for a KAS



 

  

  

  	

  

 

 

 

 
(
  Address of a KAS instance


 

 	

 

 

 

 

 


 


#
=
 &0 Optional metadata for the attribute definition


 

 !

 $%
(
8 Address of a KAS instance




	



7

�	6

B







A

�	@


  ,


 

 !+

 !
X
 #'J kas public key url - optional since can also be retrieved via public key


 #


 #

 #

 #'

	 �	 #'
H
*; public key - optional since can also be retrieved via url


*


*

*


. 0


.!

 /7

 /

 /	

 /

 /6

 �	/5


1 3


1"

 2(

 2

 2#

 2&'
	
5 &


5#


6 8


6$

 72

 7


 7

 7-

 701


: <


:$

 ;[

 ;

 ;/

 ;23

 ;4Z

 �	;5Y


= ?


=%

 >(

 >

 >#

 >&'


	A D


	A$

	 B7

	 B

	 B	

	 B

	 B6

	 �	B5

	C[

	C

	C/

	C23

	C4Z

	�	C5Y



E G



E%


 F(


 F


 F#


 F&'


I K


I$

 J7

 J

 J	

 J

 J6

 �	J5


L N


L%

 M(

 M

 M#

 M&'

 P �


 P&
�
  ���
 Request Examples:
 {}

 Response Examples:
 {
 "key_access_servers": [
 {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "updated_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "description": "test kas instance"
 },
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 },
 {
 "id": "cad1fc87-1193-456b-a217-d5cdae1fa67a",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1705971990",
 "nanos": 303386000
 },
 "updated_at": {
 "seconds": "1705971990",
 "nanos": 303386000
 },
 "description": "test kas instance"
 },
 "uri": "kas3",
 "public_key": {
 "local": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUJ6ekNDQVhXZ0F3SUJBZ0lVT1J1VjNhdlU5QUU2enNCNlp4eWxsSHBpNWQ0d0NnWUlLb1pJemowRUF3SXcKUFRFTE1Ba0dBMVVFQmhNQ2RYTXhDekFKQmdOVkJBZ01BbU4wTVNFd0h3WURWUVFLREJoSmJuUmxjbTVsZENCWAphV1JuYVhSeklGQjBlU0JNZEdRd0hoY05NalF3TVRBeU1UWTFOalUyV2hjTk1qVXdNVEF4TVRZMU5qVTJXakE5Ck1Rc3dDUVlEVlFRR0V3SjFjekVMTUFrR0ExVUVDQXdDWTNReElUQWZCZ05WQkFvTUdFbHVkR1Z5Ym1WMElGZHAKWkdkcGRITWdVSFI1SUV4MFpEQlpNQk1HQnlxR1NNNDlBZ0VHQ0NxR1NNNDlBd0VIQTBJQUJMVjlmQ0pIRC9rYwpyWHJVSFF3QVp4ME1jMGRQdkxqc0ovb2pFdE1NbjBST2RlT3g4eWd4Z2NRVEZGQXh5Q3RCdWFkaEFkbS9pVkh0CjhnMkVNejVkTzNXalV6QlJNQjBHQTFVZERnUVdCQlFZTmt1aytKSXVSV3luK2JFOHNCaFJ3MjdPVlRBZkJnTlYKSFNNRUdEQVdnQlFZTmt1aytKSXVSV3luK2JFOHNCaFJ3MjdPVlRBUEJnTlZIUk1CQWY4RUJUQURBUUgvTUFvRwpDQ3FHU000OUJBTUNBMGdBTUVVQ0lRQ0FCMmppWWU4QVk2TUo0QURQU1FHRTQ3K2Eza1dGTGNHc0pob1pieHRnClV3SWdjZklJdVBmaDRmYmN2OGNUaTJCbEkzazdzV1B1QW1JRlZyaUkyZDNVeDVRPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
 }
 }
 ]
 }


  �

  �6

  �A]

  �<

	  �ʼ"�<
�
 ���
 Request Examples:
 {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732"
 }

 Response Examples:
 {
 "key_access_server": {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "updated_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "description": "test kas instance"
 },
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 }
 }


 �

 �2

 �=W

 �A

	 �ʼ"�A
�
 ���
 Request Examples:
 {
 "key_access_server": {
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 }
 }

 Response Examples:
 {
 "key_access_server": {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "updated_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "description": "test kas instance"
 },
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 }
 }


 �

 �8

 �C`

 ��

	 �ʼ"��
�
 ���
 Request Examples:
 {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732",
 "key_access_server": {
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 }
 }

 Response Examples:
 {
 "key_access_server": {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "updated_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "description": "test kas instance"
 },
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 }
 }


 �

 �8

 �C`

 ��

	 �ʼ"��
�
 ���
 Request Examples:
 {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732"
 }

 Response Examples:
 {
 "key_access_server": {
 "id": "71eae02f-6837-4980-8a2c-70abf6b68732",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "updated_at": {
 "seconds": "1705971719",
 "nanos": 534029000
 },
 "description": "test kas instance"
 },
 "uri": "kas2",
 "public_key": {
 "remote": "https://platform.virtru.com/kas1"
 }
 }
 }


 �

 �8

 �C`

 �D

	 �ʼ"�Dbproto3��  
�
namespaces/namespaces.proto
namespacesbuf/validate/validate.protogoogle/api/annotations.proto"�
	Namespace
id (	Rid�
name (	B��H�r���
namespace_format�Namespace must be a valid hostname. It should include at least one dot, with each segment (label) starting and ending with an alphanumeric character. Each label must be 1 to 63 characters long, allowing hyphens but not as the first or last character. The top-level domain (the last segment after the final dot) must consist of at least two alphabetic characters.Qthis.matches('^([a-zA-Z0-9]([a-zA-Z0-9\\-]{0,61}[a-zA-Z0-9])?\\.)+[a-zA-Z]{2,}$')�Rname"-
GetNamespaceRequest
id (	B�H�Rid"K
GetNamespaceResponse3
	namespace (2.namespaces.NamespaceR	namespace"
ListNamespacesRequest"O
ListNamespacesResponse5

namespaces (2.namespaces.NamespaceR
namespaces"4
CreateNamespaceRequest
name (	B�H�Rname"N
CreateNamespaceResponse3
	namespace (2.namespaces.NamespaceR	namespace"L
UpdateNamespaceRequest
id (	B�H�Rid
name (	B�H�Rname"N
UpdateNamespaceResponse3
	namespace (2.namespaces.NamespaceR	namespace"0
DeleteNamespaceRequest
id (	B�H�Rid"
DeleteNamespaceResponse2�
NamespaceServicev
GetNamespace.namespaces.GetNamespaceRequest .namespaces.GetNamespaceResponse"#���/attributes/namespaces/{id}w
ListNamespaces!.namespaces.ListNamespacesRequest".namespaces.ListNamespacesResponse"���/attributes/namespacesz
CreateNamespace".namespaces.CreateNamespaceRequest#.namespaces.CreateNamespaceResponse"���"/attributes/namespaces
UpdateNamespace".namespaces.UpdateNamespaceRequest#.namespaces.UpdateNamespaceResponse"#���/attributes/namespaces/{id}
DeleteNamespace".namespaces.DeleteNamespaceRequest#.namespaces.DeleteNamespaceResponse"#���*/attributes/namespaces/{id}J�
  V

  

 
	
  %
	
 &


  


 
)
  	 generated uuid in database


  	

  		

  	
i
 [ used to partition Attribute Definitions, support by namespace AuthN and enable federation


 

 	

 

 

 �	(

	 �	-

	 �	 
.
 2"

 Namespace Service Definitions






 7

 

 	

 

 6

 �	5


 !




  

  

  

  
	
#  


#


$ &


$

 %$

 %


 %

 %

 %"#


( *


(

 )9

 )

 )	

 )

 )8

 �	)7


+ -


+

 ,

 ,

 ,

 ,


/ 2


/

 07

 0

 0	

 0

 06

 �	05

19

1

1	

1

18

�	17


3 5


3

 4

 4

 4

 4


	7 9


	7

	 87

	 8

	 8	

	 8

	 86

	 �	85
	

: "



:


 < V


 <

  =A

  =

  =&

  =1E

  >@

	  �ʼ">@

 BF

 B

 B*

 B5K

 CE

	 �ʼ"CE

 GK

 G

 G,

 G7N

 HJ

	 �ʼ"HJ

 LP

 L

 L,

 L7N

 MO

	 �ʼ"MO

 QU

 Q

 Q,

 Q7N

 RT

	 �ʼ"RTbproto3��  
ʅ
attributes/attributes.proto
attributesbuf/validate/validate.protocommon/common.protogoogle/api/annotations.proto,kasregistry/key_access_server_registry.protonamespaces/namespaces.proto"�
	Attribute
id (	Rid,
metadata (2.common.MetadataRmetadata3
	namespace (2.namespaces.NamespaceR	namespace
name (	RnameB
rule (2!.attributes.AttributeRuleTypeEnumB�H��Rrule)
values (2.attributes.ValueRvalues4
grants (2.kasregistry.KeyAccessServerRgrants"�
AttributeCreateUpdate3
metadata (2.common.MetadataMutableRmetadata)
namespace_id (	B�H�RnamespaceId
name (	B�H�RnameB
rule (2!.attributes.AttributeRuleTypeEnumB�H��Rrule5
values (2.attributes.ValueCreateUpdateRvalues"�
Value
id (	Rid,
metadata (2.common.MetadataRmetadata)
attribute_id (	B�H�RattributeId
value (	Rvalue
members (	Rmembers4
grants (2.kasregistry.KeyAccessServerRgrants"x
ValueCreateUpdate3
metadata (2.common.MetadataMutableRmetadata
value (	Rvalue
members (	Rmembers"n
AttributeKeyAccessServer!
attribute_id (	RattributeId/
key_access_server_id (	RkeyAccessServerId"b
ValueKeyAccessServer
value_id (	RvalueId/
key_access_server_id (	RkeyAccessServerId"
ListAttributesRequest"O
ListAttributesResponse5

attributes (2.attributes.AttributeR
attributes"-
GetAttributeRequest
id (	B�H�Rid"K
GetAttributeResponse3
	attribute (2.attributes.AttributeR	attribute"a
CreateAttributeRequestG
	attribute (2!.attributes.AttributeCreateUpdateB�H�R	attribute"N
CreateAttributeResponse3
	attribute (2.attributes.AttributeR	attribute"y
UpdateAttributeRequest
id (	B�H�RidG
	attribute (2!.attributes.AttributeCreateUpdateB�H�R	attribute"N
UpdateAttributeResponse3
	attribute (2.attributes.AttributeR	attribute"0
DeleteAttributeRequest
id (	B�H�Rid"N
DeleteAttributeResponse3
	attribute (2.attributes.AttributeR	attribute"2
GetAttributeValueRequest
id (	B�H�Rid"D
GetAttributeValueResponse'
value (2.attributes.ValueRvalue"G
ListAttributeValuesRequest)
attribute_id (	B�H�RattributeId"H
ListAttributeValuesResponse)
values (2.attributes.ValueRvalues"�
CreateAttributeValueRequest)
attribute_id (	B�H�RattributeId;
value (2.attributes.ValueCreateUpdateB�H�Rvalue"G
CreateAttributeValueResponse'
value (2.attributes.ValueRvalue"�
UpdateAttributeValueRequest)
attribute_id (	B�H�RattributeId
id (	B�H�Rid;
value (2.attributes.ValueCreateUpdateB�H�Rvalue"G
UpdateAttributeValueResponse'
value (2.attributes.ValueRvalue"5
DeleteAttributeValueRequest
id (	B�H�Rid"G
DeleteAttributeValueResponse'
value (2.attributes.ValueRvalue"�
'AssignKeyAccessServerToAttributeRequestc
attribute_key_access_server (2$.attributes.AttributeKeyAccessServerRattributeKeyAccessServer"�
(AssignKeyAccessServerToAttributeResponsec
attribute_key_access_server (2$.attributes.AttributeKeyAccessServerRattributeKeyAccessServer"�
)RemoveKeyAccessServerFromAttributeRequestc
attribute_key_access_server (2$.attributes.AttributeKeyAccessServerRattributeKeyAccessServer"�
*RemoveKeyAccessServerFromAttributeResponsec
attribute_key_access_server (2$.attributes.AttributeKeyAccessServerRattributeKeyAccessServer"~
#AssignKeyAccessServerToValueRequestW
value_key_access_server (2 .attributes.ValueKeyAccessServerRvalueKeyAccessServer"
$AssignKeyAccessServerToValueResponseW
value_key_access_server (2 .attributes.ValueKeyAccessServerRvalueKeyAccessServer"�
%RemoveKeyAccessServerFromValueRequestW
value_key_access_server (2 .attributes.ValueKeyAccessServerRvalueKeyAccessServer"�
&RemoveKeyAccessServerFromValueResponseW
value_key_access_server (2 .attributes.ValueKeyAccessServerRvalueKeyAccessServer*�
AttributeRuleTypeEnum(
$ATTRIBUTE_RULE_TYPE_ENUM_UNSPECIFIED #
ATTRIBUTE_RULE_TYPE_ENUM_ALL_OF#
ATTRIBUTE_RULE_TYPE_ENUM_ANY_OF&
"ATTRIBUTE_RULE_TYPE_ENUM_HIERARCHY2�
AttributesServiceY
ListAttributes!.attributes.ListAttributesRequest".attributes.ListAttributesResponse" h
ListAttributeValues&.attributes.ListAttributeValuesRequest'.attributes.ListAttributeValuesResponse" k
GetAttribute.attributes.GetAttributeRequest .attributes.GetAttributeResponse"���/attributes/{id}z
CreateAttribute".attributes.CreateAttributeRequest#.attributes.CreateAttributeResponse"���"/attributes:	attribute
UpdateAttribute".attributes.UpdateAttributeRequest#.attributes.UpdateAttributeResponse"#���"/attributes/{id}:	attributet
DeleteAttribute".attributes.DeleteAttributeRequest#.attributes.DeleteAttributeResponse"���*/attributes/{id}�
GetAttributeValue$.attributes.GetAttributeValueRequest%.attributes.GetAttributeValueResponse"!���/attributes/_/values/{id}�
CreateAttributeValue'.attributes.CreateAttributeValueRequest(.attributes.CreateAttributeValueResponse"0���*"!/attributes/{attribute_id}/values:value�
UpdateAttributeValue'.attributes.UpdateAttributeValueRequest(.attributes.UpdateAttributeValueResponse"5���/"&/attributes/{attribute_id}/values/{id}:value�
DeleteAttributeValue'.attributes.DeleteAttributeValueRequest(.attributes.DeleteAttributeValueResponse"!���*/attributes/_/values/{id}�
 AssignKeyAccessServerToAttribute3.attributes.AssignKeyAccessServerToAttributeRequest4.attributes.AssignKeyAccessServerToAttributeResponse"G���A""/attributes/keyaccessserver/assign:attribute_key_access_server�
"RemoveKeyAccessServerFromAttribute5.attributes.RemoveKeyAccessServerFromAttributeRequest6.attributes.RemoveKeyAccessServerFromAttributeResponse"G���A""/attributes/keyaccessserver/remove:attribute_key_access_server�
AssignKeyAccessServerToValue/.attributes.AssignKeyAccessServerToValueRequest0.attributes.AssignKeyAccessServerToValueResponse"J���D")/attributes/values/keyaccessserver/assign:value_key_access_server�
RemoveKeyAccessServerFromValue1.attributes.RemoveKeyAccessServerFromValueRequest2.attributes.RemoveKeyAccessServerFromValueResponse"J���D")/attributes/values/keyaccessserver/remove:value_key_access_serverJ�S
  �

  

 
	
  %
	
 
	
 &
	
 6
	
 %
�
  � buflint ENUM_VALUE_PREFIX: to make sure that C++ scoping rules aren't violated when users add new enum values to an enum in a given package



 

  +

  &

  )*

 &

 !

 $%

 &

 !

 $%

 )

 $

 '(


  '


 

  

  

  	

  
=
 0 Optional metadata for the attribute definition


 

 

 
)
 % namespace of the attribute


 

  

 #$

 attribute name


 

 	

 
#
 " attribute rule enum


 

 

  

 !"

	 �	 1

 �	!(

 $

 $


 $

 $

 $

 &2

 &


 &&

 &'-

 &01


) ;


)
=
 +&0 Optional metadata for the attribute definition


 +

 +!

 +$%
)
.A namespace of the attribute


.

.	

.

.@

�	.?

19attribute name


1

1	

1

18

�	17
#
47 attribute rule enum


4

4

4 

4!7

	�	51

�	6(

:(
 optional


:


:

:#

:&'


= L


=
)
 ? generated uuid in database


 ?

 ?	

 ?

A

A

A

A

CA

C

C	

C

C@

�	C?

E

E

E	

E
W
HJ list of attribute values that this value is related to (attribute group)


H


H

H

H
)
K2 list of key access servers


K


K&

K'-

K01


N U


N

 O&

 O

 O!

 O$%

Q

Q

Q	

Q
W
TJ list of attribute values that this value is related to (attribute group)


T


T

T

T
'
[ ^2
 Key Access Server Grants



[ 

 \

 \

 \	

 \

]"

]

]	

] !


` c


`

 a

 a

 a	

 a

b"

b

b	

b !
+
i  2 
 Attribute Service Definitions



i


j l


j

 k$

 k


 k

 k

 k"#


n p


n

 o7

 o

 o	

 o

 o6

 �	o5


	q s


	q

	 r

	 r

	 r

	 r



u w



u


 vM


 v


 v!


 v$%


 v&L


 �	v'K


x z


x

 y

 y

 y

 y


| 


|

 }7

 }

 }	

 }

 }6

 �	}5

~M

~

~!

~$%

~&L

�	~'K

� �

�

 �

 �

 �

 �

� �

�

 �7

 �

 �	

 �

 �6

 �	�5

� �

�

 �

 �

 �

 �
'
� �/
/ Value RPC messages
/


� 

 �7

 �

 �	

 �

 �6

 �	�5

� �

�!

 �

 �

 �

 �

� �

�"

 �A

 �

 �	

 �

 �@

 �	�?

� �

�#

 �

 �


 �

 �

 �

� �

�#

 �A

 �

 �	

 �

 �@

 �	�?

�E

�

�

�

�D

�	�C

� �

�$

 �

 �

 �

 �

� �

�#

 �A

 �

 �	

 �

 �@

 �	�?

�7

�

�	

�

�6

�	�5

�E

�

�

�

�D

�	�C

� �

�$

 �

 �

 �

 �

� �

�#

 �7

 �

 �	

 �

 �6

 �	�5

� �

�$

 �

 �

 �

 �
@
� �22
 Assign Key Access Server to Attribute and Value


�/

 �;

 �

 �6

 �9:

� �

�0

 �;

 �

 �6

 �9:

� �

�1

 �;

 �

 �6

 �9:

� �

�2

 �;

 �

 �6

 �9:

� �

�+

 �3

 �

 �.

 �12

� �

�,

 �3

 �

 �.

 �12

 � �

 �-

  �3

  �

  �.

  �12

!� �

!�.

! �3

! �

! �.

! �12
&
 � �/
/ Attribute Service
/


 �
�
  �O�
 List Attributes
 Example:
 grpcurl -plaintext localhost:9000 attributes.AttributesService/ListAttributes

 Response:
 {
 "attributes": [
 {
 "values": [
 {
 "members": [],
 "grants": [
 {
 "id": "bb50eaac-0d95-4f28-9a36-9bbf412a7b95",
 "metadata": null,
 "uri": "kas10",
 "public_key": {
 "remote": "https://example.com/kas"
 }
 }
 ],
 "id": "e2140c39-f478-43cf-9559-0067d596654f",
 "metadata": null,
 "attribute_id": "",
 "value": "value1"
 }
 ],
 "grants": [
 {
 "id": "bb50eaac-0d95-4f28-9a36-9bbf412a7b95",
 "metadata": null,
 "uri": "kas10",
 "public_key": {
 "remote": "https://example.com/kas"
 }
 }
 ],
 "id": "2dc75d97-f6a4-4036-9a6a-acc99171fff1",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1706878441",
 "nanos": 147178000
 },
 "updated_at": {
 "seconds": "1706878441",
 "nanos": 147178000
 },
 "description": ""
 },
 "namespace": {
 "id": "c85d126a-c2f2-4bb6-bc6d-a513015363cb",
 "name": "demo.com"
 },
 "name": "test",
 "rule": "ATTRIBUTE_RULE_TYPE_ENUM_ALL_OF"
 }
 ]
 }


  �

  �*

  �5K
�
 �^�
 List Values
 Example:
 grpcurl -plaintext -d '{"attribute_id": "attribute_id"}' localhost:8080 attributes.AttributesService/ListValues


 �

 �4

 �?Z

 ��

 �

 �&

 �1E

 �9

	 �ʼ"�9
�
 ��� Create Attribute
 Example:
  grpcurl -plaintext -d '{"attribute": {"namespace_id": "namespace_id", "name": "attribute_name", "rule": "ATTRIBUTE_RULE_TYPE_ENUM_ALL_OF"}}' localhost:8080 attributes.AttributesService/CreateAttribute


 �

 �,

 �7N

 ��

	 �ʼ"��

 ��

 �

 �,

 �7N

 ��

	 �ʼ"��

 ��

 �

 �,

 �7N

 �<

	 �ʼ"�<
"
 �� Attribute Value *

 �

 �0

 �;T

 �B

	 �ʼ"�B
�
 ��� Create Attribute Value
 Example:
  grpcurl -plaintext -d '{"attribute_id": "attribute_id", "value": {"value": "value"}}' localhost:8080 attributes.AttributesService/CreateValue


 �

 �6

 �A]

 ��

	 �ʼ"��

 ��

 �

 �6

 �A]

 ��

	 �ʼ"��

 	��

 	�

 	�6

 	�A]

 	�E

	 	�ʼ"�E
�
 
���
 Assign Key Access Server to Attribute

 grpcurl -plaintext -d '{"attribute_key_access_server": {"attribute_id": "attribute_id", "key_access_server_id": "key_access_server_id"}}' localhost:9000 attributes.AttributesService/AssignKeyAccessServerToAttribute

 Example Request:
 {
 "attribute_key_access_server": {
 "attribute_id": "attribute_id",
 "key_access_server_id
 }

 Example Response:
 {
 "attribute_key_access_server": {
 "attribute_id": "attribute_id",
 "key_access_server_id: "key_access_server_id"
 }


 
�&

 
�'N

 
�Y�

 
��

	 
�ʼ"��
�
 ���
 Remove Key Access Server to Attribute

 grpcurl -plaintext -d '{"attribute_key_access_server": {"attribute_id": "attribute_id", "key_access_server_id": "key_access_server_id"}}' localhost:9000 attributes.AttributesService/RemeoveKeyAccessServerFromAttribute

 Example Request:
 {
 "attribute_key_access_server": {
 "attribute_id": "attribute_id",
 "key_access_server_id
 }

 Example Response:
 {
 "attribute_key_access_server": {
 "attribute_id": "attribute_id",
 "key_access_server_id: "key_access_server_id"
 }


 �(

 �)R

 �]�

 ��

	 �ʼ"��
�
 ���
 Assign Key Access Server to Value

 grpcurl -plaintext -d '{"attribute_key_access_server": {"attribute_id": "attribute_id", "key_access_server_id": "key_access_server_id"}}' localhost:9000 attributes.AttributesService/AssignKeyAccessServerToValue

 Example Request:
 {
 "attribute_key_access_server": {
 "value_id": "attribute_id",
 "key_access_server_id
 }

 Example Response:
 {
 "attribute_key_access_server": {
 "value_id": "attribute_id",
 "key_access_server_id: "key_access_server_id"
 }


 �"

 �#F

 �Qu

 ��

	 �ʼ"��
�
 ���
 Remove Key Access Server to Value
 grpcurl -plaintext -d '{"value_key_access_server": {"value_id": "value_id", "key_access_server_id": "key_access_server_id"}}' localhost:9000 attributes.AttributesService/RemoveKeyAccessServerFromValue

 Example Request:
 {
 "value_key_access_server": {
 "value_id": "value_id",
 "key_access_server_id
 }

 Example Response:
 {
 "value_key_access_server": {
 "value_id": "value_id",
 "key_access_server_id


 �$

 �%J

 �U{

 ��

	 �ʼ"��bproto3��  
�,
google/protobuf/any.protogoogle.protobuf"6
Any
type_url (	RtypeUrl
value (RvalueBv
com.google.protobufBAnyProtoPZ,google.golang.org/protobuf/types/known/anypb�GPB�Google.Protobuf.WellKnownTypesJ�*
 �
�
 2� Protocol Buffers - Google's data interchange format
 Copyright 2008 Google Inc.  All rights reserved.
 https://developers.google.com/protocol-buffers/

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are
 met:

     * Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above
 copyright notice, this list of conditions and the following disclaimer
 in the documentation and/or other materials provided with the
 distribution.
     * Neither the name of Google Inc. nor the names of its
 contributors may be used to endorse or promote products derived from
 this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


  

" ;
	
%" ;

# C
	
# C

$ ,
	
$ ,

% )
	
% )

& "
	

& "

' !
	
$' !
�
 | �� `Any` contains an arbitrary serialized protocol buffer message along with a
 URL that describes the type of the serialized message.

 Protobuf library provides support to pack/unpack Any values in the form
 of utility functions or additional generated methods of the Any type.

 Example 1: Pack and unpack a message in C++.

     Foo foo = ...;
     Any any;
     any.PackFrom(foo);
     ...
     if (any.UnpackTo(&foo)) {
       ...
     }

 Example 2: Pack and unpack a message in Java.

     Foo foo = ...;
     Any any = Any.pack(foo);
     ...
     if (any.is(Foo.class)) {
       foo = any.unpack(Foo.class);
     }

 Example 3: Pack and unpack a message in Python.

     foo = Foo(...)
     any = Any()
     any.Pack(foo)
     ...
     if any.Is(Foo.DESCRIPTOR):
       any.Unpack(foo)
       ...

 Example 4: Pack and unpack a message in Go

      foo := &pb.Foo{...}
      any, err := anypb.New(foo)
      if err != nil {
        ...
      }
      ...
      foo := &pb.Foo{}
      if err := any.UnmarshalTo(foo); err != nil {
        ...
      }

 The pack methods provided by protobuf library will by default use
 'type.googleapis.com/full.type.name' as the type URL and the unpack
 methods only use the fully qualified type name after the last '/'
 in the type URL, for example "foo.bar.com/x/y.z" will yield type
 name "y.z".


 JSON

 The JSON representation of an `Any` value uses the regular
 representation of the deserialized, embedded message, with an
 additional field `@type` which contains the type URL. Example:

     package google.profile;
     message Person {
       string first_name = 1;
       string last_name = 2;
     }

     {
       "@type": "type.googleapis.com/google.profile.Person",
       "firstName": <string>,
       "lastName": <string>
     }

 If the embedded message type is well-known and has a custom JSON
 representation, that representation will be embedded adding a field
 `value` which holds the custom JSON in addition to the `@type`
 field. Example (for message [google.protobuf.Duration][]):

     {
       "@type": "type.googleapis.com/google.protobuf.Duration",
       "value": "1.212s"
     }




 |
�

  ��
 A URL/resource name that uniquely identifies the type of the serialized
 protocol buffer message. This string must contain at least
 one "/" character. The last segment of the URL's path must represent
 the fully qualified name of the type (as in
 `path/google.protobuf.Duration`). The name should be in a canonical form
 (e.g., leading "." is not accepted).

 In practice, teams usually precompile into the binary all types that they
 expect it to use in the context of Any. However, for URLs which use the
 scheme `http`, `https`, or no scheme, one can optionally set up a type
 server that maps type URLs to message definitions as follows:

 * If no scheme is provided, `https` is assumed.
 * An HTTP GET on the URL must yield a [google.protobuf.Type][]
   value in binary format, or produce an error.
 * Applications are allowed to cache lookup results based on the
   URL, or have them precompiled into a binary to avoid any
   lookup. Therefore, binary compatibility needs to be preserved
   on changes to types. (Use versioned type names to manage
   breaking changes.)

 Note: this functionality is not currently available in the official
 protobuf release, and it is not used for type URLs beginning with
 type.googleapis.com.

 Schemes other than `http`, `https` (or the empty scheme) might be
 used with implementation specific semantics.



  �

  �	

  �
W
 �I Must be a valid serialized protocol buffer of the above specified type.


 �

 �

 �bproto3�� 
�C
!authorization/authorization.protoauthorizationgoogle/api/annotations.protogoogle/protobuf/any.proto"�
Entity
id (	Rid%
email_address (	H RemailAddress
	user_name (	H RuserName,
remote_claims_url (	H RremoteClaimsUrl
jwt (	H Rjwt.
claims (2.google.protobuf.AnyH Rclaims5
custom (2.authorization.EntityCustomH RcustomB
entity_type"B
EntityCustom2
	extension (2.google.protobuf.AnyR	extension"P
EntityChain
id (	Rid1
entities (2.authorization.EntityRentities"�
ActionB
standard (2$.authorization.Action.StandardActionH Rstandard
custom (	H Rcustom"l
StandardAction
STANDARD_ACTION_UNSPECIFIED 
STANDARD_ACTION_DECRYPT
STANDARD_ACTION_TRANSMITB
value"�
DecisionRequest/
actions (2.authorization.ActionRactions?
entity_chains (2.authorization.EntityChainRentityChainsR
resource_attributes (2!.authorization.ResourceAttributesRresourceAttributes"�
DecisionResponse&
entity_chain_id (	RentityChainId4
resource_attributes_id (	RresourceAttributesId-
action (2.authorization.ActionRactionD
decision (2(.authorization.DecisionResponse.DecisionRdecision 
obligations (	Robligations"L
Decision
DECISION_UNSPECIFIED 
DECISION_DENY
DECISION_PERMIT"b
GetDecisionsRequestK
decision_requests (2.authorization.DecisionRequestRdecisionRequests"f
GetDecisionsResponseN
decision_responses (2.authorization.DecisionResponseRdecisionResponses"�
GetEntitlementsRequest1
entities (2.authorization.EntityRentities<
scope (2!.authorization.ResourceAttributesH Rscope�B
_scope"T
EntityEntitlements
	entity_id (	RentityId!
attribute_id (	RattributeId"G
ResourceAttributes
id (	Rid!
attribute_id (	RattributeId"`
GetEntitlementsResponseE
entitlements (2!.authorization.EntityEntitlementsRentitlements2�
AuthorizationServicer
GetDecisions".authorization.GetDecisionsRequest#.authorization.GetDecisionsResponse"���"/v1/authorizationz
GetEntitlements%.authorization.GetEntitlementsRequest&.authorization.GetEntitlementsResponse"���"/v1/entitlementsJ�2
  �

  

 
	
  &
	
 #
;
  / PE (Person Entity) or NPE (Non-Person Entity)



 
E
  	"8 ephemeral id for tracking between request and response


  	

  		

  	
?
  1 Standard entity types supported by the platform


  

 

 


 

 

 

 


 

 

 !

 


 

  

 

 


 

 

 #

 

 

 !"

 

 

 

 
G
 ; Entity type for custom entities beyond the standard types





 $

 

 

 "#
)
  A set of related PE and NPE




E
 "8 ephemeral id for tracking between request and response


 

 	

 











*
! , An action an entity can take



!
:
 #', Standard actions supported by the platform


 #

  $$

  $

  $"#

 % 

 %

 %

 &!

 &

 & 

 (+

 (

 ) 

 )

 )

 )

*

*


*

*
�
e i�
 Example Request Get Decisions to answer the question -  Do Bob (represented by entity chain ec1)
 and Alice (represented by entity chain ec2) have TRANSMIT authorization for
 2 resources; resource1 (attr-set-1) defined by attributes foo:bar  resource2 (attr-set-2) defined by attribute foo:bar, color:red ?

 {
 "actions": [
 {
 "standard": "STANDARD_ACTION_TRANSMIT"
 }
 ],
 "entityChains": [
 {
 "id": "ec1",
 "entities": [
 {
 "emailAddress": "bob@example.org"
 }
 ]
 },
 {
 "id": "ec2",
 "entities": [
 {
 "userName": "alice@example.org"
 }
 ]
 }
 ],
 "resourceAttributes": [
 {
 "id": "attr-set-1",
 "attributeValueReferences": [
 {
 "attributeFqn": "http://www.example.org/attr/foo/value/bar"
 }
 ]
 },
 {
 "id": "request-set-2",
 "attributeValueReferences": [
 {
 "attributeFqn": "http://www.example.org/attr/foo/value/bar"
 },
 {
 "attributeFqn": "http://www.example.org/attr/color/value/red"
 }
 ]
 }
 ]
 }






e

 f

 f


 f

 f

 f

g)

g


g

g$

g'(

h6

h


h

h1

h45
�	
� ��	

 Example response for a Decision Request -  Do Bob (represented by entity chain ec1)
 and Alice (represented by entity chain ec2) have TRANSMIT authorization for
 2 resources; resource1 (attr-set-1) defined by attributes foo:bar  resource2 (attr-set-2) defined by attribute foo:bar, color:red ?

 Results:
 - bob has permitted authorization to transmit for a resource defined by attr-set-1 attributes and has a watermark obligation
 - bob has denied authorization to transmit a for a resource defined by attr-set-2 attributes
 - alice has permitted authorization to transmit for a resource defined by attr-set-1 attributes
 - alice has denied authorization to transmit a for a resource defined by attr-set-2 attributes

 {
 "entityChainId":  "ec1",
 "resourceAttributesId":  "attr-set-1",
 "decision":  "DECISION_PERMIT",
 "obligations":  [
 "http://www.example.org/obligation/watermark"
 ]
 },
 {
 "entityChainId":  "ec1",
 "resourceAttributesId":  "attr-set-2",
 "decision":  "DECISION_PERMIT"
 },
 {
 "entityChainId":  "ec2",
 "resourceAttributesId":  "attr-set-1",
 "decision":  "DECISION_PERMIT"
 },
 {
 "entityChainId":  "ec2",
 "resourceAttributesId":  "attr-set-2",
 "decision":  "DECISION_DENY"
 }




�

 ��

 �

  �

  �

  �

 �

 �

 �

 �

 �

 �
:
 �", ephemeral entity chain id from the request


 �

 �	

 �
A
�$"3 ephemeral resource attributes id from the request


�

�	

�"#
/
�"! Action of the decision response


�

�	

�
%
�" The decision response


�


�

�
E
�""7optional list of obligations represented in URI format


�


�

�

� !

� �

�

 �1

 �


 �

 �,

 �/0

� �

�

 �3

 �


 �

 �.

 �12
�
� ��
 Request to get entitlements for one or more entities for an optional attribute scope

 Example: Get entitlements for bob and alice (both represented using an email address

 {
 "entities": [
 {
 "id": "e1",
 "emailAddress": "bob@example.org"
 },
 {
 "id": "e2",
 "emailAddress": "alice@example.org"
 }
 ]
 }



�
*
 �" list of requested entities


 �


 �

 �

 �
0
�(""optional attribute fqn as a scope


�


�

�#

�&'

	� �

	�

	 �

	 �

	 �	

	 �

	�#

	�


	�

	�

	�!"
G

� �9A logical bucket of attributes belonging to a "Resource"



�


 �


 �


 �	


 �


�#


�



�


�


�!"
�
� ��

 Example Response for a request of : Get entitlements for bob and alice (both represented using an email address

 {
 "entitlements":  [
 {
 "entityId":  "e1",
 "attributeValueReferences":  [
 {
 "attributeFqn":  "http://www.example.org/attr/foo/value/bar"
 }
 ]
 },
 {
 "entityId":  "e2",
 "attributeValueReferences":  [
 {
 "attributeFqn":  "http://www.example.org/attr/color/value/red"
 }
 ]
 }
 ]
 }




�

 �/

 �


 �

 �*

 �-.

 � �

 �

  ��

  �

  �&

  �1E

  �;

	  �ʼ"�;

 ��

 �

 �,

 �7N

 �:

	 �ʼ"�:bproto3��  
�@
&resourcemapping/resource_mapping.protoresourcemappingattributes/attributes.protobuf/validate/validate.protocommon/common.protogoogle/api/annotations.proto"�
ResourceMapping
id (	Rid,
metadata (2.common.MetadataRmetadataB
attribute_value (2.attributes.ValueB�H�RattributeValue
terms (	Rterms"�
ResourceMappingCreateUpdate3
metadata (2.common.MetadataMutableRmetadata,
attribute_value_id (	RattributeValueId
terms (	Rterms"
ListResourceMappingsRequest"m
ListResourceMappingsResponseM
resource_mappings (2 .resourcemapping.ResourceMappingRresourceMappings"3
GetResourceMappingRequest
id (	B�H�Rid"i
GetResourceMappingResponseK
resource_mapping (2 .resourcemapping.ResourceMappingRresourceMapping"
CreateResourceMappingRequest_
resource_mapping (2,.resourcemapping.ResourceMappingCreateUpdateB�H�RresourceMapping"l
CreateResourceMappingResponseK
resource_mapping (2 .resourcemapping.ResourceMappingRresourceMapping"�
UpdateResourceMappingRequest
id (	B�H�Rid_
resource_mapping (2,.resourcemapping.ResourceMappingCreateUpdateB�H�RresourceMapping"l
UpdateResourceMappingResponseK
resource_mapping (2 .resourcemapping.ResourceMappingRresourceMapping"6
DeleteResourceMappingRequest
id (	B�H�Rid"l
DeleteResourceMappingResponseK
resource_mapping (2 .resourcemapping.ResourceMappingRresourceMapping2�
ResourceMappingService�
ListResourceMappings,.resourcemapping.ListResourceMappingsRequest-.resourcemapping.ListResourceMappingsResponse"���/resource-mappings�
GetResourceMapping*.resourcemapping.GetResourceMappingRequest+.resourcemapping.GetResourceMappingResponse"���/resource-mappings/{id}�
CreateResourceMapping-.resourcemapping.CreateResourceMappingRequest..resourcemapping.CreateResourceMappingResponse",���&"/resource-mappings:resource_mapping�
UpdateResourceMapping-.resourcemapping.UpdateResourceMappingRequest..resourcemapping.UpdateResourceMappingResponse"1���+"/resource-mappings/{id}:resource_mapping�
DeleteResourceMapping-.resourcemapping.DeleteResourceMappingRequest..resourcemapping.DeleteResourceMappingResponse"���*/resource-mappings/{id}J�.
  �

  

 
	
  %
	
 %
	
 
	
 &
�
 1 9�
 # Resource Mappings (aka Access Control Resource Encodings aka ACRE):  Structures supporting Resources and Attributes mappings

 ## Examples

 ### Where

 attributeId is an id of the following attribute

 FQN: http://demo.com/attr/Classification/value/Confidential
 UUID: 12345678-1234-1234-1234-123456789012

 ### Request

 grpcurl -plaintext -d @ localhost:9000 resourcemapping.ResourceMappingService/CreateResourceMapping <<EOM
 {
 "mapping": {
 "name": "Classification",
 "attribute_value_id": "12345678-1234-1234-1234-123456789012",
 "terms": ["CONFIDENTIAL", "CONTROLLED UNCLASSIFIED", "OFFICIAL-SENSITIVE", "CUI", "C"]
 }
 }
 EOM

 ### Response

 {
 "mapping": {
 "metadata": {
 "id": "12345678-1234-1234-1234-123456789012",
 "created_at": "2020-01-01T00:00:00Z",
 "updated_at": "2020-01-01T00:00:00Z"
 },
 "name": "Classification",
 "attribute_value_id": "12345678-1234-1234-1234-123456789012",
 "terms": ["CONFIDENTIAL", "CONTROLLED UNCLASSIFIED", "OFFICIAL-SENSITIVE", "CUI", "C"]
 }
 }




 1

  2

  2

  2	

  2

 4

 4

 4

 4

 6N

 6

 6"

 6%&

 6'M

 �	6(L

 8

 8


 8

 8

 8


; A


;#

 <&

 <

 <!

 <$%

> 

>

>	

>

@

@


@

@

@

G &2
 Resource Mappings



G#


I K


I$

 J1

 J


 J

 J,

 J/0


M O


M!

 N7

 N

 N	

 N

 N6

 �	N5


Q S


Q"

 R'

 R

 R"

 R%&


U W


U$

 VZ

 V

 V.

 V12

 V3Y

 �	V4X


X Z


X%

 Y'

 Y

 Y"

 Y%&


\ _


\$

 ]7

 ]

 ]	

 ]

 ]6

 �	]5

^Z

^

^.

^12

^3Y

�	^4X


	` b


	`%

	 a'

	 a

	 a"

	 a%&



d f



d$


 e7


 e


 e	


 e


 e6


 �	e5


g i


g%

 h'

 h

 h"

 h%&
!
 k �"
 Resource Mappings



 k
�
  ���
 Request Example:
 - empty body

 Response Example:
 {
 "resource_mappings": [
 {
 "terms": [
 "TOPSECRET",
 "TS",
 ],
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1706103276",
 "nanos": 510718000
 },
 "updated_at": {
 "seconds": "1706107873",
 "nanos": 399786000
 },
 "description": ""
 },
 "attribute_value": {
 "members": [],
 "id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "metadata": null,
 "attribute_id": "",
 "value": "value1"
 }
 }
 ]
 }


  �

  �6

  �A]

  �;

	  �ʼ"�;
�
 ���
 Request Example:
 {
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e"
 }

 Response Example:
 {
 "resource_mapping": {
 "terms": [
 "TOPSECRET",
 "TS",
 ],
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1706103276",
 "nanos": 510718000
 },
 "updated_at": {
 "seconds": "1706107873",
 "nanos": 399786000
 },
 "description": ""
 },
 "attribute_value": {
 "members": [],
 "id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "metadata": null,
 "attribute_id": "",
 "value": "value1"
 }
 }
 }


 �

 �2

 �=W

 �@

	 �ʼ"�@
�
 ���
 Request Example:
 {
 "resource_mapping": {
 "attribute_value_id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "terms": [
 "TOPSECRET",
 "TS",
 ]
 }
 }

 Response Example:
 {
 "resource_mapping": {
 "terms": [
 "TOPSECRET",
 "TS",
 ],
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1706103276",
 "nanos": 510718000
 },
 "updated_at": {
 "seconds": "1706107873",
 "nanos": 399786000
 },
 "description": ""
 },
 "attribute_value": {
 "members": [],
 "id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "metadata": null,
 "attribute_id": "",
 "value": "value1"
 }
 }
 }


 �

 �8

 �C`

 ��

	 �ʼ"��
�
 ���
 Request Example:
 {
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e",
 "resource_mapping": {
 "attribute_value_id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "terms": [
 "TOPSECRET",
 "TS",
 "NEWTERM"
 ]
 }
 }

 Response Example:
 {
 "resource_mapping": {
 "terms": [
 "TOPSECRET",
 "TS",
 ],
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1706103276",
 "nanos": 510718000
 },
 "updated_at": {
 "seconds": "1706107873",
 "nanos": 399786000
 },
 "description": ""
 },
 "attribute_value": {
 "members": [],
 "id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "metadata": null,
 "attribute_id": "",
 "value": "value1"
 }
 }
 }


 �

 �8

 �C`

 ��

	 �ʼ"��
�
 ���
 Request Example:
 {
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e"
 }

 Response Example:
 {
 "resource_mapping": {
 "terms": [
 "TOPSECRET",
 "TS",
 ],
 "id": "3c649464-95b4-4fe0-a09c-ca4b1fecbb0e",
 "metadata": {
 "labels": [],
 "created_at": {
 "seconds": "1706103276",
 "nanos": 510718000
 },
 "updated_at": {
 "seconds": "1706107873",
 "nanos": 399786000
 },
 "description": ""
 },
 "attribute_value": {
 "members": [],
 "id": "f0d1d4f6-bff9-45fd-8170-607b6b559349",
 "metadata": null,
 "attribute_id": "",
 "value": "value1"
 }
 }
 }


 �

 �8

 �C`

 �C

	 �ʼ"�Cbproto3��  
�8
$subjectmapping/subject_mapping.protosubjectmappingattributes/attributes.protobuf/validate/validate.protocommon/common.protogoogle/api/annotations.proto"�
SubjectMapping
id (	Rid,
metadata (2.common.MetadataRmetadata:
attribute_value (2.attributes.ValueRattributeValue+
subject_attribute (	RsubjectAttribute%
subject_values (	RsubjectValuesS
operator (2*.subjectmapping.SubjectMappingOperatorEnumB�H��Roperator"�
SubjectMappingCreateUpdate3
metadata (2.common.MetadataMutableRmetadata,
attribute_value_id (	RattributeValueId+
subject_attribute (	RsubjectAttribute%
subject_values (	RsubjectValuesS
operator (2*.subjectmapping.SubjectMappingOperatorEnumB�H��Roperator"2
GetSubjectMappingRequest
id (	B�H�Rid"d
GetSubjectMappingResponseG
subject_mapping (2.subjectmapping.SubjectMappingRsubjectMapping"
ListSubjectMappingsRequest"h
ListSubjectMappingsResponseI
subject_mappings (2.subjectmapping.SubjectMappingRsubjectMappings"z
CreateSubjectMappingRequest[
subject_mapping (2*.subjectmapping.SubjectMappingCreateUpdateB�H�RsubjectMapping"g
CreateSubjectMappingResponseG
subject_mapping (2.subjectmapping.SubjectMappingRsubjectMapping"�
UpdateSubjectMappingRequest
id (	B�H�Rid[
subject_mapping (2*.subjectmapping.SubjectMappingCreateUpdateB�H�RsubjectMapping"g
UpdateSubjectMappingResponseG
subject_mapping (2.subjectmapping.SubjectMappingRsubjectMapping"5
DeleteSubjectMappingRequest
id (	B�H�Rid"g
DeleteSubjectMappingResponseG
subject_mapping (2.subjectmapping.SubjectMappingRsubjectMapping*�
SubjectMappingOperatorEnum-
)SUBJECT_MAPPING_OPERATOR_ENUM_UNSPECIFIED $
 SUBJECT_MAPPING_OPERATOR_ENUM_IN(
$SUBJECT_MAPPING_OPERATOR_ENUM_NOT_IN2�
SubjectMappingService�
ListSubjectMappings*.subjectmapping.ListSubjectMappingsRequest+.subjectmapping.ListSubjectMappingsResponse"���/subject-mappings�
GetSubjectMapping(.subjectmapping.GetSubjectMappingRequest).subjectmapping.GetSubjectMappingResponse"���/subject-mappings/{id}�
CreateSubjectMapping+.subjectmapping.CreateSubjectMappingRequest,.subjectmapping.CreateSubjectMappingResponse"*���$"/subject-mappings:subject_mapping�
UpdateSubjectMapping+.subjectmapping.UpdateSubjectMappingRequest,.subjectmapping.UpdateSubjectMappingResponse"/���)"/subject-mappings/{id}:subject_mapping�
DeleteSubjectMapping+.subjectmapping.DeleteSubjectMappingRequest,.subjectmapping.DeleteSubjectMappingResponse"���*/subject-mappings/{id}J�#
  �

  

 
	
  %
	
 %
	
 
	
 &
�	
 > B� buflint ENUM_VALUE_PREFIX: to make sure that C++ scoping rules aren't violated when users add new enum values to an enum in a given package
2�
 # Subject Mapping (aka Access Control Subject Encoding aka ACSE):  Structures supporting the mapping of Subjects and Attributes (e.g. Entitlement)

 ## Examples

 ### Where:

 - attribute_value_id represents the following attribute
 - FQN: "http://demo.com/attr/relto/value/CZE"
 - UUID: "12345678-1234-1234-1234-123456789012"

 ### Request

 ```bash
 grpcurl -plaintext -d '{
 "subject_mapping": {
 "metadata": {
 "description": "subject mapping 1",
 "labels": {
 "test-label": "test-value"
 }
 },
 "attribute_value_id": "12345678-1234-1234-1234-123456789012",
 "subject_attribute": "nationality",
 "subject_values": ["CZE"],
 "operator": "IN"
 }
 }' localhost:8080 SubjectMappingService.CreateSubjectMapping
 ```

 ### Response

 ```
 {
 "subject_mapping": {
 "metadata": {
 "id": "12345678-2222-1234-1234-123456789012",
 "description": "subject mapping 1",
 "labels": {
 "test-label": "test-value"
 }
 },
 "attribute_value_id": "12345678-1234-1234-1234-123456789012",
 "subject_attribute": "nationality",
 "subject_values": ["CZE"],
 "operator": "IN"
 }
 }
 ```




 >

  ?0

  ?+

  ?./

 @'

 @"

 @%&

 A+

 A&

 A)*


 D Z


 D

  E

  E

  E	

  E
3
 G"&TODO should this be a list of values?


 G

 G

 G
.
 K'! Attribute Value to be mapped to


 K

 K"

 K%&
N
 NA Resource Attribute Key; NOT Attribute Definition Attribute name


 N

 N	

 N
O
 Q%B The list of comparison values for a resource's <attribute> value


 Q


 Q

 Q 

 Q#$
�
 TW the operator
"�TODO future - add features or idea of pattern/regex like ACSE?  like username regex to pull domain from subject attribute
 or treat the subject values as regex patterns applied to subject attribute


 T

 T%

 T()

 T*W

	 �	U1

 �	V(


\ o


\"

 ]&

 ]

 ]!

 ]$%
.
` ! Attribute Value to be mapped to


`

`	

`
N
cA Resource Attribute Key; NOT Attribute Definition Attribute name


c

c	

c
O
f%B The list of comparison values for a resource's <attribute> value


f


f

f 

f#$
�
il the operator
"�TODO future - add features or idea of pattern/regex like ACSE?  like username regex to pull domain from subject attribute
 or treat the subject values as regex patterns applied to subject attribute


i

i%

i()

i*l

	�	j1

�	k(


q s


q 

 r7

 r

 r	

 r

 r6

 �	r5


t v


t!

 u%

 u

 u 

 u#$
	
x %


x"


y {


y#

 z/

 z


 z

 z*

 z-.


} 


}#

 ~X

 ~

 ~,

 ~/0

 ~1W

 �	~2V

� �

�$

 �%

 �

 � 

 �#$

� �

�#

 �7

 �

 �	

 �

 �6

 �	�5

�X

�

�,

�/0

�1W

�	�2V

	� �

	�$

	 �%

	 �

	 � 

	 �#$


� �


�#


 �7


 �


 �	


 �


 �6


 �	�5

� �

�$

 �%

 �

 � 

 �#$

 � �

 �

  ��

  �

  �4

  �?Z

  �:

	  �ʼ"�:

 ��

 �

 �0

 �;T

 �?

	 �ʼ"�?

 ��

 �

 �6

 �A]

 ��

	 �ʼ"��

 ��

 �

 �6

 �A]

 ��

	 �ʼ"��

 ��

 �

 �6

 �A]

 �B

	 �ʼ"�Bbproto3��  