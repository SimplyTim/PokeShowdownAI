ý
ý
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.0.0-beta12unknown8òï
u
dense/kernelVarHandleOp*
dtype0*
shared_namedense/kernel*
_output_shapes
: *
shape:	


 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
dtype0*
_class
loc:@dense/kernel*
_output_shapes
:	

m

dense/biasVarHandleOp*
shared_name
dense/bias*
shape:*
_output_shapes
: *
dtype0

dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0*
_class
loc:@dense/bias
y
dense_1/kernelVarHandleOp*
shared_namedense_1/kernel*
_output_shapes
: *
shape:	@*
dtype0

"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
dtype0*
_output_shapes
:	@*!
_class
loc:@dense_1/kernel
p
dense_1/biasVarHandleOp*
shared_namedense_1/bias*
_output_shapes
: *
shape:@*
dtype0

 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
shape
:@*
dtype0*
shared_namedense_2/kernel*
_output_shapes
: 

"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes

:@
p
dense_2/biasVarHandleOp*
shared_namedense_2/bias*
shape:*
_output_shapes
: *
dtype0

 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
:

NoOpNoOp

ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *¾
value´B± Bª

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
R
trainable_variables
regularization_losses
	variables
	keras_api


kernel
bias
_callable_losses
_eager_losses
trainable_variables
regularization_losses
	variables
	keras_api
{
_callable_losses
_eager_losses
trainable_variables
regularization_losses
	variables
	keras_api


kernel
bias
 _callable_losses
!_eager_losses
"trainable_variables
#regularization_losses
$	variables
%	keras_api


&kernel
'bias
(_callable_losses
)_eager_losses
*trainable_variables
+regularization_losses
,	variables
-	keras_api
 
*
0
1
2
3
&4
'5
 
*
0
1
2
3
&4
'5
y

.layers
/non_trainable_variables
0metrics
trainable_variables
regularization_losses
		variables
 
 
 
 
y

1layers
2non_trainable_variables
3metrics
trainable_variables
regularization_losses
	variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
 

0
1
y

4layers
5non_trainable_variables
6metrics
trainable_variables
regularization_losses
	variables
 
 
 
 
 
y

7layers
8non_trainable_variables
9metrics
trainable_variables
regularization_losses
	variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
 

0
1
y

:layers
;non_trainable_variables
<metrics
"trainable_variables
#regularization_losses
$	variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

&0
'1
 

&0
'1
y

=layers
>non_trainable_variables
?metrics
*trainable_variables
+regularization_losses
,	variables

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

serving_default_dense_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
* 
shape:ÿÿÿÿÿÿÿÿÿ
*
dtype0
Ì
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_inputdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*-
f(R&
$__inference_signature_wrapper_493880**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tin
	2*
Tout
2
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
Ú
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpConst*
_output_shapes
: *
Tout
2*
Tin

2*(
f#R!
__inference__traced_save_493924*-
_gradient_op_typePartitionedCall-493925**
config_proto

CPU

GPU 2J 8
Ý
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*-
_gradient_op_typePartitionedCall-493956**
config_proto

CPU

GPU 2J 8*
Tin
	2*
Tout
2*
_output_shapes
: *+
f&R$
"__inference__traced_restore_493955ÌÄ
«	
Á
+__inference_sequential_layer_call_fn_493867
dense_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCalldense_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_493857*-
_gradient_op_typePartitionedCall-493858**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tin
	2*
Tout
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : :+ '
%
_user_specified_namedense_input: : 
Ö
©
(__inference_dense_2_layer_call_fn_493789

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_493778*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_gradient_op_typePartitionedCall-493784
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
®
Í
F__inference_sequential_layer_call_and_return_conditional_losses_493829

inputs(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputs$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_493698*-
_gradient_op_typePartitionedCall-493704**
config_proto

CPU

GPU 2J 8*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tin
2*
Tout
2Â
flatten/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_493727*-
_gradient_op_typePartitionedCall-493733**
config_proto

CPU

GPU 2J 8*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tin
2*
Tout
2
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_493751*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*-
_gradient_op_typePartitionedCall-493757¥
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*-
_gradient_op_typePartitionedCall-493784**
config_proto

CPU

GPU 2J 8*
Tin
2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_493778Ô
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall: : : : :& "
 
_user_specified_nameinputs: : 
Ë 
à
A__inference_dense_layer_call_and_return_conditional_losses_493698

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp©
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	
*
dtype0X
Tensordot/axesConst*
dtype0*
_output_shapes
:*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
valueB"       *
dtype0E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Tparams0*
Taxis0*
_output_shapes
:*
Tindices0[
Tensordot/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Tindices0*
_output_shapes
:*
Tparams0*
Taxis0Y
Tensordot/ConstConst*
_output_shapes
:*
valueB: *
dtype0n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
_output_shapes
: *
T0[
Tensordot/Const_1Const*
dtype0*
_output_shapes
:*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
_output_shapes
: *
T0W
Tensordot/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
T0*
_output_shapes
:*
Ny
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
T0k
Tensordot/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB"       
Tensordot/transpose_1	Transpose Tensordot/ReadVariableOp:value:0#Tensordot/transpose_1/perm:output:0*
T0*
_output_shapes
:	
j
Tensordot/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"
      
Tensordot/Reshape_1ReshapeTensordot/transpose_1:y:0"Tensordot/Reshape_1/shape:output:0*
T0*
_output_shapes
:	

Tensordot/MatMulMatMulTensordot/Reshape:output:0Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
dtype0*
_output_shapes
:*
valueB:Y
Tensordot/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0¡
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
EluEluBiasAdd:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ
::24
Tensordot/ReadVariableOpTensordot/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
×
©
(__inference_dense_1_layer_call_fn_493762

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_493751*-
_gradient_op_typePartitionedCall-493757**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
Tin
2*
Tout
2
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
à
§
&__inference_dense_layer_call_fn_493709

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_493698*
Tin
2*-
_gradient_op_typePartitionedCall-493704**
config_proto

CPU

GPU 2J 8
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ
::22
StatefulPartitionedCallStatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
º
D
(__inference_flatten_layer_call_fn_493736

inputs
identity
PartitionedCallPartitionedCallinputs*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2*L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_493727*
Tin
2*-
_gradient_op_typePartitionedCall-493733**
config_proto

CPU

GPU 2J 8a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:& "
 
_user_specified_nameinputs
û
Ü
C__inference_dense_2_layer_call_and_return_conditional_losses_493778

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:@i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 

¼
"__inference__traced_restore_493955
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias%
!assignvariableop_2_dense_1_kernel#
assignvariableop_3_dense_1_bias%
!assignvariableop_4_dense_2_kernel#
assignvariableop_5_dense_2_bias

identity_7¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢	RestoreV2¢RestoreV2_1¹
RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*ß
valueÕBÒB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B B B B ¼
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
dtypes

2*,
_output_shapes
::::::L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:y
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
_output_shapes
:*
T0}
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0*
dtype0*
_output_shapes
 N

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0*
_output_shapes
 *
dtype0N

Identity_3IdentityRestoreV2:tensors:3*
_output_shapes
:*
T0
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0*
dtype0*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0*
_output_shapes
 *
dtype0
RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHt
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B µ
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
dtypes
2*
_output_shapes
:1
NoOpNoOp"/device:CPU:0*
_output_shapes
 Ö

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: â

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2
RestoreV2_1RestoreV2_12
	RestoreV2	RestoreV22(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52$
AssignVariableOpAssignVariableOp: : : : :+ '
%
_user_specified_namefile_prefix: : 
H

!__inference__wrapped_model_493657
dense_input6
2sequential_dense_tensordot_readvariableop_resource4
0sequential_dense_biasadd_readvariableop_resource5
1sequential_dense_1_matmul_readvariableop_resource6
2sequential_dense_1_biasadd_readvariableop_resource5
1sequential_dense_2_matmul_readvariableop_resource6
2sequential_dense_2_biasadd_readvariableop_resource
identity¢'sequential/dense/BiasAdd/ReadVariableOp¢)sequential/dense/Tensordot/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOpË
)sequential/dense/Tensordot/ReadVariableOpReadVariableOp2sequential_dense_tensordot_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	
i
sequential/dense/Tensordot/axesConst*
_output_shapes
:*
valueB:*
dtype0p
sequential/dense/Tensordot/freeConst*
valueB"       *
dtype0*
_output_shapes
:[
 sequential/dense/Tensordot/ShapeShapedense_input*
_output_shapes
:*
T0j
(sequential/dense/Tensordot/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : ÿ
#sequential/dense/Tensordot/GatherV2GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/free:output:01sequential/dense/Tensordot/GatherV2/axis:output:0*
Tparams0*
Tindices0*
_output_shapes
:*
Taxis0l
*sequential/dense/Tensordot/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
%sequential/dense/Tensordot/GatherV2_1GatherV2)sequential/dense/Tensordot/Shape:output:0(sequential/dense/Tensordot/axes:output:03sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Tparams0*
Tindices0*
_output_shapes
:*
Taxis0j
 sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
valueB: *
dtype0¡
sequential/dense/Tensordot/ProdProd,sequential/dense/Tensordot/GatherV2:output:0)sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
valueB: *
dtype0§
!sequential/dense/Tensordot/Prod_1Prod.sequential/dense/Tensordot/GatherV2_1:output:0+sequential/dense/Tensordot/Const_1:output:0*
_output_shapes
: *
T0h
&sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0à
!sequential/dense/Tensordot/concatConcatV2(sequential/dense/Tensordot/free:output:0(sequential/dense/Tensordot/axes:output:0/sequential/dense/Tensordot/concat/axis:output:0*
N*
_output_shapes
:*
T0¬
 sequential/dense/Tensordot/stackPack(sequential/dense/Tensordot/Prod:output:0*sequential/dense/Tensordot/Prod_1:output:0*
_output_shapes
:*
N*
T0 
$sequential/dense/Tensordot/transpose	Transposedense_input*sequential/dense/Tensordot/concat:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
T0½
"sequential/dense/Tensordot/ReshapeReshape(sequential/dense/Tensordot/transpose:y:0)sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
+sequential/dense/Tensordot/transpose_1/permConst*
_output_shapes
:*
valueB"       *
dtype0Æ
&sequential/dense/Tensordot/transpose_1	Transpose1sequential/dense/Tensordot/ReadVariableOp:value:04sequential/dense/Tensordot/transpose_1/perm:output:0*
_output_shapes
:	
*
T0{
*sequential/dense/Tensordot/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"
      º
$sequential/dense/Tensordot/Reshape_1Reshape*sequential/dense/Tensordot/transpose_1:y:03sequential/dense/Tensordot/Reshape_1/shape:output:0*
_output_shapes
:	
*
T0º
!sequential/dense/Tensordot/MatMulMatMul+sequential/dense/Tensordot/Reshape:output:0-sequential/dense/Tensordot/Reshape_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
"sequential/dense/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:j
(sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0ë
#sequential/dense/Tensordot/concat_1ConcatV2,sequential/dense/Tensordot/GatherV2:output:0+sequential/dense/Tensordot/Const_2:output:01sequential/dense/Tensordot/concat_1/axis:output:0*
N*
_output_shapes
:*
T0·
sequential/dense/TensordotReshape+sequential/dense/Tensordot/MatMul:product:0,sequential/dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes	
:°
sequential/dense/BiasAddBiasAdd#sequential/dense/Tensordot:output:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0u
sequential/dense/EluElu!sequential/dense/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
sequential/flatten/ShapeShape"sequential/dense/Elu:activations:0*
_output_shapes
:*
T0p
&sequential/flatten/strided_slice/stackConst*
_output_shapes
:*
valueB: *
dtype0r
(sequential/flatten/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0r
(sequential/flatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0°
 sequential/flatten/strided_sliceStridedSlice!sequential/flatten/Shape:output:0/sequential/flatten/strided_slice/stack:output:01sequential/flatten/strided_slice/stack_1:output:01sequential/flatten/strided_slice/stack_2:output:0*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0m
"sequential/flatten/Reshape/shape/1Const*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0®
 sequential/flatten/Reshape/shapePack)sequential/flatten/strided_slice:output:0+sequential/flatten/Reshape/shape/1:output:0*
_output_shapes
:*
T0*
N§
sequential/flatten/ReshapeReshape"sequential/dense/Elu:activations:0)sequential/flatten/Reshape/shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0É
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
:	@*
dtype0¬
sequential/dense_1/MatMulMatMul#sequential/flatten/Reshape:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
T0Æ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:@¯
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
sequential/dense_1/EluElu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:@­
sequential/dense_2/MatMulMatMul$sequential/dense_1/Elu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÆ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:¯
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0ï
IdentityIdentity#sequential/dense_2/BiasAdd:output:0(^sequential/dense/BiasAdd/ReadVariableOp*^sequential/dense/Tensordot/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense/Tensordot/ReadVariableOp)sequential/dense/Tensordot/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp: : : : :+ '
%
_user_specified_namedense_input: : 
«	
Á
+__inference_sequential_layer_call_fn_493839
dense_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCalldense_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_gradient_op_typePartitionedCall-493830*O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_493829*
Tin
	2**
config_proto

CPU

GPU 2J 8
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : :+ '
%
_user_specified_namedense_input: : 
½
Ò
F__inference_sequential_layer_call_and_return_conditional_losses_493812
dense_input(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_gradient_op_typePartitionedCall-493704*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_493698*
Tin
2**
config_proto

CPU

GPU 2J 8Â
flatten/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0**
config_proto

CPU

GPU 2J 8*
Tout
2*L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_493727*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tin
2*-
_gradient_op_typePartitionedCall-493733
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*-
_gradient_op_typePartitionedCall-493757*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_493751*
Tin
2**
config_proto

CPU

GPU 2J 8¥
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tin
2*-
_gradient_op_typePartitionedCall-493784**
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_493778*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2Ô
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall: : : : :+ '
%
_user_specified_namedense_input: : 
	
_
C__inference_flatten_layer_call_and_return_conditional_losses_493727

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: _
strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:_
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: Z
Reshape/shape/1Const*
dtype0*
_output_shapes
: *
valueB :
ÿÿÿÿÿÿÿÿÿu
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0*
_output_shapes
:*
N*
T0e
ReshapeReshapeinputsReshape/shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0Y
IdentityIdentityReshape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:& "
 
_user_specified_nameinputs
½
Ò
F__inference_sequential_layer_call_and_return_conditional_losses_493796
dense_input(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCalldense_input$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2**
config_proto

CPU

GPU 2J 8*
Tin
2*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_493698*-
_gradient_op_typePartitionedCall-493704Â
flatten/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0**
config_proto

CPU

GPU 2J 8*
Tin
2*
Tout
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_493727*-
_gradient_op_typePartitionedCall-493733
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*-
_gradient_op_typePartitionedCall-493757*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_493751*
Tin
2**
config_proto

CPU

GPU 2J 8¥
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2*
Tin
2*-
_gradient_op_typePartitionedCall-493784**
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_493778*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2Ô
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall: : : : :+ '
%
_user_specified_namedense_input: : 
ÿ
º
$__inference_signature_wrapper_493880
dense_input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2"
statefulpartitionedcall_args_3"
statefulpartitionedcall_args_4"
statefulpartitionedcall_args_5"
statefulpartitionedcall_args_6
identity¢StatefulPartitionedCallÒ
StatefulPartitionedCallStatefulPartitionedCalldense_inputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2statefulpartitionedcall_args_3statefulpartitionedcall_args_4statefulpartitionedcall_args_5statefulpartitionedcall_args_6**
config_proto

CPU

GPU 2J 8*
Tin
	2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2**
f%R#
!__inference__wrapped_model_493657*-
_gradient_op_typePartitionedCall-493871
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::22
StatefulPartitionedCallStatefulPartitionedCall: : : : :+ '
%
_user_specified_namedense_input: : 
Î	
Ü
C__inference_dense_1_layer_call_and_return_conditional_losses_493751

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp£
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:	@i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
T0 
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:@v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
EluEluBiasAdd:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
T0
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
T0"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::2.
MatMul/ReadVariableOpMatMul/ReadVariableOp20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
®
Í
F__inference_sequential_layer_call_and_return_conditional_losses_493857

inputs(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2*
&dense_1_statefulpartitionedcall_args_1*
&dense_1_statefulpartitionedcall_args_2*
&dense_2_statefulpartitionedcall_args_1*
&dense_2_statefulpartitionedcall_args_2
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall
dense/StatefulPartitionedCallStatefulPartitionedCallinputs$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_gradient_op_typePartitionedCall-493704*
Tin
2*J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_493698**
config_proto

CPU

GPU 2J 8Â
flatten/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0**
config_proto

CPU

GPU 2J 8*
Tin
2*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
Tout
2*L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_493727*-
_gradient_op_typePartitionedCall-493733
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0&dense_1_statefulpartitionedcall_args_1&dense_1_statefulpartitionedcall_args_2*
Tout
2*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*-
_gradient_op_typePartitionedCall-493757*
Tin
2*L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_493751**
config_proto

CPU

GPU 2J 8¥
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0&dense_2_statefulpartitionedcall_args_1&dense_2_statefulpartitionedcall_args_2**
config_proto

CPU

GPU 2J 8*
Tout
2*
Tin
2*L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_493778*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*-
_gradient_op_typePartitionedCall-493784Ô
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
T0"
identityIdentity:output:0*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿ
::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall: : : : :& "
 
_user_specified_nameinputs: : 
Ð

__inference__traced_save_493924
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop
savev2_1_const

identity_1¢MergeV2Checkpoints¢SaveV2¢SaveV2_1
StringJoin/inputs_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_f867f83759bc40d38a259d02a2ccae61/parts

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
_output_shapes
: *
NL

num_shardsConst*
dtype0*
_output_shapes
: *
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¶
SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*ß
valueÕBÒB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEy
SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop"/device:CPU:0*
dtypes

2*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B Ã
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 ¹
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*J
_input_shapes9
7: :	
::	@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1: : : : : :+ '
%
_user_specified_namefile_prefix: : "7L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*¶
serving_default¢
G
dense_input8
serving_default_dense_input:0ÿÿÿÿÿÿÿÿÿ
;
dense_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:
Â
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
	optimizer
trainable_variables
regularization_losses
		variables

	keras_api

signatures
@__call__
A_default_save_signature
*B&call_and_return_all_conditional_losses"è
_tf_keras_sequentialÉ{"class_name": "Sequential", "name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": null, "batch_input_shape": null, "config": {"name": "sequential", "layers": [{"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": [null, 1, 10], "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 22, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "activity_regularizer": null, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "Dense", "config": {"name": "dense", "trainable": true, "batch_input_shape": [null, 1, 10], "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 22, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.01, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
ä
trainable_variables
regularization_losses
	variables
	keras_api
C__call__
*D&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "InputLayer", "name": "dense_input", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 1, 10], "config": {"batch_input_shape": [null, 1, 10], "dtype": "float32", "sparse": false, "name": "dense_input"}, "input_spec": null, "activity_regularizer": null}
á

kernel
bias
_callable_losses
_eager_losses
trainable_variables
regularization_losses
	variables
	keras_api
E__call__
*F&call_and_return_all_conditional_losses"
_tf_keras_layerù{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 1, 10], "config": {"name": "dense", "trainable": true, "batch_input_shape": [null, 1, 10], "dtype": "float32", "units": 128, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "activity_regularizer": null}
ó
_callable_losses
_eager_losses
trainable_variables
regularization_losses
	variables
	keras_api
G__call__
*H&call_and_return_all_conditional_losses"»
_tf_keras_layer¡{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "activity_regularizer": null}
¸

kernel
bias
 _callable_losses
!_eager_losses
"trainable_variables
#regularization_losses
$	variables
%	keras_api
I__call__
*J&call_and_return_all_conditional_losses"ê
_tf_keras_layerÐ{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "activity_regularizer": null}
º

&kernel
'bias
(_callable_losses
)_eager_losses
*trainable_variables
+regularization_losses
,	variables
-	keras_api
K__call__
*L&call_and_return_all_conditional_losses"ì
_tf_keras_layerÒ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 22, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "activity_regularizer": null}
"
	optimizer
J
0
1
2
3
&4
'5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
1
2
3
&4
'5"
trackable_list_wrapper


.layers
/non_trainable_variables
0metrics
trainable_variables
regularization_losses
		variables
@__call__
A_default_save_signature
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
,
Mserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ù

1layers
2non_trainable_variables
3metrics
trainable_variables
regularization_losses
	variables
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
:	
2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
ù

4layers
5non_trainable_variables
6metrics
trainable_variables
regularization_losses
	variables
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ù

7layers
8non_trainable_variables
9metrics
trainable_variables
regularization_losses
	variables
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
!:	@2dense_1/kernel
:@2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
ù

:layers
;non_trainable_variables
<metrics
"trainable_variables
#regularization_losses
$	variables
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
ù

=layers
>non_trainable_variables
?metrics
*trainable_variables
+regularization_losses
,	variables
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
2
+__inference_sequential_layer_call_fn_493839
+__inference_sequential_layer_call_fn_493867©
¢²
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ç2ä
!__inference__wrapped_model_493657¾
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *.¢+
)&
dense_inputÿÿÿÿÿÿÿÿÿ

Ï2Ì
F__inference_sequential_layer_call_and_return_conditional_losses_493796
F__inference_sequential_layer_call_and_return_conditional_losses_493812
F__inference_sequential_layer_call_and_return_conditional_losses_493857
F__inference_sequential_layer_call_and_return_conditional_losses_493829©
¢²
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Æ2Ã
&__inference_dense_layer_call_fn_493709
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
á2Þ
A__inference_dense_layer_call_and_return_conditional_losses_493698
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
È2Å
(__inference_flatten_layer_call_fn_493736
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ã2à
C__inference_flatten_layer_call_and_return_conditional_losses_493727
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
È2Å
(__inference_dense_1_layer_call_fn_493762
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ã2à
C__inference_dense_1_layer_call_and_return_conditional_losses_493751
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
È2Å
(__inference_dense_2_layer_call_fn_493789
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ã2à
C__inference_dense_2_layer_call_and_return_conditional_losses_493778
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
7B5
$__inference_signature_wrapper_493880dense_input£
C__inference_dense_2_layer_call_and_return_conditional_losses_493778\&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
F__inference_sequential_layer_call_and_return_conditional_losses_493812m&'<¢9
2¢/
)&
dense_inputÿÿÿÿÿÿÿÿÿ

p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
F__inference_sequential_layer_call_and_return_conditional_losses_493796m&'<¢9
2¢/
)&
dense_inputÿÿÿÿÿÿÿÿÿ

p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
C__inference_dense_1_layer_call_and_return_conditional_losses_493751]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ²
F__inference_sequential_layer_call_and_return_conditional_losses_493857h&'7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ

p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ­
$__inference_signature_wrapper_493880&'G¢D
¢ 
=ª:
8
dense_input)&
dense_inputÿÿÿÿÿÿÿÿÿ
"1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ{
(__inference_dense_2_layer_call_fn_493789O&'/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ|
(__inference_dense_1_layer_call_fn_493762P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ@}
(__inference_flatten_layer_call_fn_493736Q4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_493867`&'<¢9
2¢/
)&
dense_inputÿÿÿÿÿÿÿÿÿ

p
ª "ÿÿÿÿÿÿÿÿÿª
A__inference_dense_layer_call_and_return_conditional_losses_493698e3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ

ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_sequential_layer_call_fn_493839`&'<¢9
2¢/
)&
dense_inputÿÿÿÿÿÿÿÿÿ

p 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_dense_layer_call_fn_493709X3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ

ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_flatten_layer_call_and_return_conditional_losses_493727^4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ²
F__inference_sequential_layer_call_and_return_conditional_losses_493829h&'7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ

p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
!__inference__wrapped_model_493657u&'8¢5
.¢+
)&
dense_inputÿÿÿÿÿÿÿÿÿ

ª "1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ