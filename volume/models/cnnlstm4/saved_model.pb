??9
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
?
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
?
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??6
?
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namebatch_normalization/gamma
?
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
: *
dtype0
?
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namebatch_normalization/beta
?
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
: *
dtype0
?
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!batch_normalization/moving_mean
?
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
: *
dtype0
?
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization/moving_variance
?
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
: *
dtype0
?
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma
?
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
?
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta
?
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0
?
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean
?
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
?
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance
?
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
?
ConvLSTM3D/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameConvLSTM3D/kernel
?
%ConvLSTM3D/kernel/Read/ReadVariableOpReadVariableOpConvLSTM3D/kernel**
_output_shapes
: *
dtype0
v
ConvLSTM3D/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameConvLSTM3D/bias
o
#ConvLSTM3D/bias/Read/ReadVariableOpReadVariableOpConvLSTM3D/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
?
ConvLSTM2D_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameConvLSTM2D_1/kernel
?
'ConvLSTM2D_1/kernel/Read/ReadVariableOpReadVariableOpConvLSTM2D_1/kernel*'
_output_shapes
:?*
dtype0
?
ConvLSTM2D_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: ?*.
shared_nameConvLSTM2D_1/recurrent_kernel
?
1ConvLSTM2D_1/recurrent_kernel/Read/ReadVariableOpReadVariableOpConvLSTM2D_1/recurrent_kernel*'
_output_shapes
: ?*
dtype0
{
ConvLSTM2D_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameConvLSTM2D_1/bias
t
%ConvLSTM2D_1/bias/Read/ReadVariableOpReadVariableOpConvLSTM2D_1/bias*
_output_shapes	
:?*
dtype0
?
ConvLSTM2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: ?*$
shared_nameConvLSTM2D_2/kernel
?
'ConvLSTM2D_2/kernel/Read/ReadVariableOpReadVariableOpConvLSTM2D_2/kernel*'
_output_shapes
: ?*
dtype0
?
ConvLSTM2D_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: ?*.
shared_nameConvLSTM2D_2/recurrent_kernel
?
1ConvLSTM2D_2/recurrent_kernel/Read/ReadVariableOpReadVariableOpConvLSTM2D_2/recurrent_kernel*'
_output_shapes
: ?*
dtype0
{
ConvLSTM2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameConvLSTM2D_2/bias
t
%ConvLSTM2D_2/bias/Read/ReadVariableOpReadVariableOpConvLSTM2D_2/bias*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

NoOpNoOp
?,
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?,
value?,B?, B?,
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
 
l
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
?
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
trainable_variables
regularization_losses
 	variables
!	keras_api
?
"axis
	#gamma
$beta
%moving_mean
&moving_variance
'trainable_variables
(	variables
)regularization_losses
*	keras_api
h

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
6
1iter
	2decay
3learning_rate
4momentum
V
50
61
72
3
4
85
96
:7
#8
$9
+10
,11
 
v
50
61
72
3
4
5
6
87
98
:9
#10
$11
%12
&13
+14
,15
?
trainable_variables
;layer_regularization_losses
<non_trainable_variables
=metrics
>layer_metrics
	regularization_losses

?layers

	variables
 
~

5kernel
6recurrent_kernel
7bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
 

50
61
72
 

50
61
72
?
trainable_variables
Dlayer_regularization_losses
Enon_trainable_variables
Fmetrics
Glayer_metrics
regularization_losses

Hstates

Ilayers
	variables
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
2
3
 
?
trainable_variables
Jlayer_regularization_losses
Knon_trainable_variables
	variables
Lmetrics
Mlayer_metrics
regularization_losses

Nlayers
~

8kernel
9recurrent_kernel
:bias
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
 

80
91
:2
 

80
91
:2
?
trainable_variables
Slayer_regularization_losses
Tnon_trainable_variables
Umetrics
Vlayer_metrics
regularization_losses

Wstates

Xlayers
 	variables
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

#0
$1

#0
$1
%2
&3
 
?
'trainable_variables
Ylayer_regularization_losses
Znon_trainable_variables
(	variables
[metrics
\layer_metrics
)regularization_losses

]layers
][
VARIABLE_VALUEConvLSTM3D/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEConvLSTM3D/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1

+0
,1
 
?
-trainable_variables
^layer_regularization_losses
_non_trainable_variables
.	variables
`metrics
alayer_metrics
/regularization_losses

blayers
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEConvLSTM2D_1/kernel0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEConvLSTM2D_1/recurrent_kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEConvLSTM2D_1/bias0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEConvLSTM2D_2/kernel0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEConvLSTM2D_2/recurrent_kernel0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEConvLSTM2D_2/bias0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
%2
&3

c0
 
*
0
1
2
3
4
5

50
61
72

50
61
72
 
?
@trainable_variables
dlayer_regularization_losses
enon_trainable_variables
A	variables
fmetrics
glayer_metrics
Bregularization_losses

hlayers
 
 
 
 
 

0
 

0
1
 
 
 

80
91
:2

80
91
:2
 
?
Otrainable_variables
ilayer_regularization_losses
jnon_trainable_variables
P	variables
kmetrics
llayer_metrics
Qregularization_losses

mlayers
 
 
 
 
 

0
 

%0
&1
 
 
 
 
 
 
 
 
4
	ntotal
	ocount
p	variables
q	keras_api
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
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

n0
o1

p	variables
?
serving_default_input_1Placeholder*<
_output_shapes*
(:&??????????????????dd*
dtype0*1
shape(:&??????????????????dd
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1ConvLSTM2D_1/kernelConvLSTM2D_1/recurrent_kernelConvLSTM2D_1/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaConvLSTM2D_2/kernelConvLSTM2D_2/recurrent_kernelConvLSTM2D_2/bias%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betaConvLSTM3D/kernelConvLSTM3D/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_34070
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp%ConvLSTM3D/kernel/Read/ReadVariableOp#ConvLSTM3D/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp'ConvLSTM2D_1/kernel/Read/ReadVariableOp1ConvLSTM2D_1/recurrent_kernel/Read/ReadVariableOp%ConvLSTM2D_1/bias/Read/ReadVariableOp'ConvLSTM2D_2/kernel/Read/ReadVariableOp1ConvLSTM2D_2/recurrent_kernel/Read/ReadVariableOp%ConvLSTM2D_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*#
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_37779
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceConvLSTM3D/kernelConvLSTM3D/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumConvLSTM2D_1/kernelConvLSTM2D_1/recurrent_kernelConvLSTM2D_1/biasConvLSTM2D_2/kernelConvLSTM2D_2/recurrent_kernelConvLSTM2D_2/biastotalcount*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_37855??5
?8
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_31971

inputs"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_318892
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_31903*
condR
while_cond_31902*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^StatefulPartitionedCall^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
ConvLSTM2D_1_while_cond_341636
2convlstm2d_1_while_convlstm2d_1_while_loop_counter<
8convlstm2d_1_while_convlstm2d_1_while_maximum_iterations"
convlstm2d_1_while_placeholder$
 convlstm2d_1_while_placeholder_1$
 convlstm2d_1_while_placeholder_2$
 convlstm2d_1_while_placeholder_36
2convlstm2d_1_while_less_convlstm2d_1_strided_sliceM
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34163___redundant_placeholder0M
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34163___redundant_placeholder1M
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34163___redundant_placeholder2M
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34163___redundant_placeholder3
convlstm2d_1_while_identity
?
ConvLSTM2D_1/while/LessLessconvlstm2d_1_while_placeholder2convlstm2d_1_while_less_convlstm2d_1_strided_slice*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Less?
ConvLSTM2D_1/while/IdentityIdentityConvLSTM2D_1/while/Less:z:0*
T0
*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity"C
convlstm2d_1_while_identity$ConvLSTM2D_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?#
?
while_body_31327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_31351_0:?(
while_31353_0: ?
while_31355_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_31351:?&
while_31353: ?
while_31355:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_31351_0while_31353_0while_31355_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_312652
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1~
while/IdentityIdentitywhile/add_1:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5"
while_31351while_31351_0"
while_31353while_31353_0"
while_31355while_31355_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
??
?
ConvLSTM2D_2_while_body_348896
2convlstm2d_2_while_convlstm2d_2_while_loop_counter<
8convlstm2d_2_while_convlstm2d_2_while_maximum_iterations"
convlstm2d_2_while_placeholder$
 convlstm2d_2_while_placeholder_1$
 convlstm2d_2_while_placeholder_2$
 convlstm2d_2_while_placeholder_33
/convlstm2d_2_while_convlstm2d_2_strided_slice_0q
mconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0M
2convlstm2d_2_while_split_readvariableop_resource_0: ?O
4convlstm2d_2_while_split_1_readvariableop_resource_0: ?C
4convlstm2d_2_while_split_2_readvariableop_resource_0:	?
convlstm2d_2_while_identity!
convlstm2d_2_while_identity_1!
convlstm2d_2_while_identity_2!
convlstm2d_2_while_identity_3!
convlstm2d_2_while_identity_4!
convlstm2d_2_while_identity_51
-convlstm2d_2_while_convlstm2d_2_strided_sliceo
kconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensorK
0convlstm2d_2_while_split_readvariableop_resource: ?M
2convlstm2d_2_while_split_1_readvariableop_resource: ?A
2convlstm2d_2_while_split_2_readvariableop_resource:	???'ConvLSTM2D_2/while/split/ReadVariableOp?)ConvLSTM2D_2/while/split_1/ReadVariableOp?)ConvLSTM2D_2/while/split_2/ReadVariableOp?
DConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2F
DConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0convlstm2d_2_while_placeholderMConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype028
6ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem?
"ConvLSTM2D_2/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_2/while/split/split_dim?
'ConvLSTM2D_2/while/split/ReadVariableOpReadVariableOp2convlstm2d_2_while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02)
'ConvLSTM2D_2/while/split/ReadVariableOp?
ConvLSTM2D_2/while/splitSplit+ConvLSTM2D_2/while/split/split_dim:output:0/ConvLSTM2D_2/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/while/split?
$ConvLSTM2D_2/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$ConvLSTM2D_2/while/split_1/split_dim?
)ConvLSTM2D_2/while/split_1/ReadVariableOpReadVariableOp4convlstm2d_2_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02+
)ConvLSTM2D_2/while/split_1/ReadVariableOp?
ConvLSTM2D_2/while/split_1Split-ConvLSTM2D_2/while/split_1/split_dim:output:01ConvLSTM2D_2/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/while/split_1?
$ConvLSTM2D_2/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$ConvLSTM2D_2/while/split_2/split_dim?
)ConvLSTM2D_2/while/split_2/ReadVariableOpReadVariableOp4convlstm2d_2_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)ConvLSTM2D_2/while/split_2/ReadVariableOp?
ConvLSTM2D_2/while/split_2Split-ConvLSTM2D_2/while/split_2/split_dim:output:01ConvLSTM2D_2/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_2/while/split_2?
ConvLSTM2D_2/while/convolutionConv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2 
ConvLSTM2D_2/while/convolution?
ConvLSTM2D_2/while/BiasAddBiasAdd'ConvLSTM2D_2/while/convolution:output:0#ConvLSTM2D_2/while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd?
 ConvLSTM2D_2/while/convolution_1Conv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_1?
ConvLSTM2D_2/while/BiasAdd_1BiasAdd)ConvLSTM2D_2/while/convolution_1:output:0#ConvLSTM2D_2/while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd_1?
 ConvLSTM2D_2/while/convolution_2Conv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_2?
ConvLSTM2D_2/while/BiasAdd_2BiasAdd)ConvLSTM2D_2/while/convolution_2:output:0#ConvLSTM2D_2/while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd_2?
 ConvLSTM2D_2/while/convolution_3Conv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_3?
ConvLSTM2D_2/while/BiasAdd_3BiasAdd)ConvLSTM2D_2/while/convolution_3:output:0#ConvLSTM2D_2/while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd_3?
 ConvLSTM2D_2/while/convolution_4Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_4?
 ConvLSTM2D_2/while/convolution_5Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_5?
 ConvLSTM2D_2/while/convolution_6Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_6?
 ConvLSTM2D_2/while/convolution_7Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_7?
ConvLSTM2D_2/while/addAddV2#ConvLSTM2D_2/while/BiasAdd:output:0)ConvLSTM2D_2/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/addy
ConvLSTM2D_2/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/while/Const}
ConvLSTM2D_2/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/while/Const_1?
ConvLSTM2D_2/while/MulMulConvLSTM2D_2/while/add:z:0!ConvLSTM2D_2/while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Mul?
ConvLSTM2D_2/while/Add_1AddConvLSTM2D_2/while/Mul:z:0#ConvLSTM2D_2/while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Add_1?
*ConvLSTM2D_2/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*ConvLSTM2D_2/while/clip_by_value/Minimum/y?
(ConvLSTM2D_2/while/clip_by_value/MinimumMinimumConvLSTM2D_2/while/Add_1:z:03ConvLSTM2D_2/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(ConvLSTM2D_2/while/clip_by_value/Minimum?
"ConvLSTM2D_2/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"ConvLSTM2D_2/while/clip_by_value/y?
 ConvLSTM2D_2/while/clip_by_valueMaximum,ConvLSTM2D_2/while/clip_by_value/Minimum:z:0+ConvLSTM2D_2/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2"
 ConvLSTM2D_2/while/clip_by_value?
ConvLSTM2D_2/while/add_2AddV2%ConvLSTM2D_2/while/BiasAdd_1:output:0)ConvLSTM2D_2/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_2}
ConvLSTM2D_2/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/while/Const_2}
ConvLSTM2D_2/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/while/Const_3?
ConvLSTM2D_2/while/Mul_1MulConvLSTM2D_2/while/add_2:z:0#ConvLSTM2D_2/while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Mul_1?
ConvLSTM2D_2/while/Add_3AddConvLSTM2D_2/while/Mul_1:z:0#ConvLSTM2D_2/while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Add_3?
,ConvLSTM2D_2/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_2/while/clip_by_value_1/Minimum/y?
*ConvLSTM2D_2/while/clip_by_value_1/MinimumMinimumConvLSTM2D_2/while/Add_3:z:05ConvLSTM2D_2/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_2/while/clip_by_value_1/Minimum?
$ConvLSTM2D_2/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_2/while/clip_by_value_1/y?
"ConvLSTM2D_2/while/clip_by_value_1Maximum.ConvLSTM2D_2/while/clip_by_value_1/Minimum:z:0-ConvLSTM2D_2/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_2/while/clip_by_value_1?
ConvLSTM2D_2/while/mul_2Mul&ConvLSTM2D_2/while/clip_by_value_1:z:0 convlstm2d_2_while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/mul_2?
ConvLSTM2D_2/while/add_4AddV2%ConvLSTM2D_2/while/BiasAdd_2:output:0)ConvLSTM2D_2/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_4?
ConvLSTM2D_2/while/ReluReluConvLSTM2D_2/while/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Relu?
ConvLSTM2D_2/while/mul_3Mul$ConvLSTM2D_2/while/clip_by_value:z:0%ConvLSTM2D_2/while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/mul_3?
ConvLSTM2D_2/while/add_5AddV2ConvLSTM2D_2/while/mul_2:z:0ConvLSTM2D_2/while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_5?
ConvLSTM2D_2/while/add_6AddV2%ConvLSTM2D_2/while/BiasAdd_3:output:0)ConvLSTM2D_2/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_6}
ConvLSTM2D_2/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/while/Const_4}
ConvLSTM2D_2/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/while/Const_5?
ConvLSTM2D_2/while/Mul_4MulConvLSTM2D_2/while/add_6:z:0#ConvLSTM2D_2/while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Mul_4?
ConvLSTM2D_2/while/Add_7AddConvLSTM2D_2/while/Mul_4:z:0#ConvLSTM2D_2/while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Add_7?
,ConvLSTM2D_2/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_2/while/clip_by_value_2/Minimum/y?
*ConvLSTM2D_2/while/clip_by_value_2/MinimumMinimumConvLSTM2D_2/while/Add_7:z:05ConvLSTM2D_2/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_2/while/clip_by_value_2/Minimum?
$ConvLSTM2D_2/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_2/while/clip_by_value_2/y?
"ConvLSTM2D_2/while/clip_by_value_2Maximum.ConvLSTM2D_2/while/clip_by_value_2/Minimum:z:0-ConvLSTM2D_2/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_2/while/clip_by_value_2?
ConvLSTM2D_2/while/Relu_1ReluConvLSTM2D_2/while/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Relu_1?
ConvLSTM2D_2/while/mul_5Mul&ConvLSTM2D_2/while/clip_by_value_2:z:0'ConvLSTM2D_2/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/mul_5?
7ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem convlstm2d_2_while_placeholder_1convlstm2d_2_while_placeholderConvLSTM2D_2/while/mul_5:z:0*
_output_shapes
: *
element_dtype029
7ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItemz
ConvLSTM2D_2/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_2/while/add_8/y?
ConvLSTM2D_2/while/add_8AddV2convlstm2d_2_while_placeholder#ConvLSTM2D_2/while/add_8/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/add_8z
ConvLSTM2D_2/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_2/while/add_9/y?
ConvLSTM2D_2/while/add_9AddV22convlstm2d_2_while_convlstm2d_2_while_loop_counter#ConvLSTM2D_2/while/add_9/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/add_9?
ConvLSTM2D_2/while/IdentityIdentityConvLSTM2D_2/while/add_9:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity?
ConvLSTM2D_2/while/Identity_1Identity8convlstm2d_2_while_convlstm2d_2_while_maximum_iterations(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity_1?
ConvLSTM2D_2/while/Identity_2IdentityConvLSTM2D_2/while/add_8:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity_2?
ConvLSTM2D_2/while/Identity_3IdentityGConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity_3?
ConvLSTM2D_2/while/Identity_4IdentityConvLSTM2D_2/while/mul_5:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Identity_4?
ConvLSTM2D_2/while/Identity_5IdentityConvLSTM2D_2/while/add_5:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Identity_5"`
-convlstm2d_2_while_convlstm2d_2_strided_slice/convlstm2d_2_while_convlstm2d_2_strided_slice_0"C
convlstm2d_2_while_identity$ConvLSTM2D_2/while/Identity:output:0"G
convlstm2d_2_while_identity_1&ConvLSTM2D_2/while/Identity_1:output:0"G
convlstm2d_2_while_identity_2&ConvLSTM2D_2/while/Identity_2:output:0"G
convlstm2d_2_while_identity_3&ConvLSTM2D_2/while/Identity_3:output:0"G
convlstm2d_2_while_identity_4&ConvLSTM2D_2/while/Identity_4:output:0"G
convlstm2d_2_while_identity_5&ConvLSTM2D_2/while/Identity_5:output:0"j
2convlstm2d_2_while_split_1_readvariableop_resource4convlstm2d_2_while_split_1_readvariableop_resource_0"j
2convlstm2d_2_while_split_2_readvariableop_resource4convlstm2d_2_while_split_2_readvariableop_resource_0"f
0convlstm2d_2_while_split_readvariableop_resource2convlstm2d_2_while_split_readvariableop_resource_0"?
kconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensormconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2R
'ConvLSTM2D_2/while/split/ReadVariableOp'ConvLSTM2D_2/while/split/ReadVariableOp2V
)ConvLSTM2D_2/while/split_1/ReadVariableOp)ConvLSTM2D_2/while/split_1/ReadVariableOp2V
)ConvLSTM2D_2/while/split_2/ReadVariableOp)ConvLSTM2D_2/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?,
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_32525

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?h
?
while_body_33658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?p
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36654
inputs_08
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_36528*
condR
while_cond_36527*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????dd 
"
_user_specified_name
inputs/0
?
?
while_cond_35659
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_35659___redundant_placeholder03
/while_while_cond_35659___redundant_placeholder13
/while_while_cond_35659___redundant_placeholder23
/while_while_cond_35659___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_31902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_31902___redundant_placeholder03
/while_while_cond_31902___redundant_placeholder13
/while_while_cond_31902___redundant_placeholder23
/while_while_cond_31902___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
̄
?
 __inference__wrapped_model_30975
input_1K
0model_convlstm2d_1_split_readvariableop_resource:?M
2model_convlstm2d_1_split_1_readvariableop_resource: ?A
2model_convlstm2d_1_split_2_readvariableop_resource:	?I
;model_batch_normalization_batchnorm_readvariableop_resource: M
?model_batch_normalization_batchnorm_mul_readvariableop_resource: K
=model_batch_normalization_batchnorm_readvariableop_1_resource: K
=model_batch_normalization_batchnorm_readvariableop_2_resource: K
0model_convlstm2d_2_split_readvariableop_resource: ?M
2model_convlstm2d_2_split_1_readvariableop_resource: ?A
2model_convlstm2d_2_split_2_readvariableop_resource:	?K
=model_batch_normalization_1_batchnorm_readvariableop_resource: O
Amodel_batch_normalization_1_batchnorm_mul_readvariableop_resource: M
?model_batch_normalization_1_batchnorm_readvariableop_1_resource: M
?model_batch_normalization_1_batchnorm_readvariableop_2_resource: M
/model_convlstm3d_conv3d_readvariableop_resource: >
0model_convlstm3d_biasadd_readvariableop_resource:
identity??'model/ConvLSTM2D_1/split/ReadVariableOp?)model/ConvLSTM2D_1/split_1/ReadVariableOp?)model/ConvLSTM2D_1/split_2/ReadVariableOp?model/ConvLSTM2D_1/while?'model/ConvLSTM2D_2/split/ReadVariableOp?)model/ConvLSTM2D_2/split_1/ReadVariableOp?)model/ConvLSTM2D_2/split_2/ReadVariableOp?model/ConvLSTM2D_2/while?'model/ConvLSTM3D/BiasAdd/ReadVariableOp?&model/ConvLSTM3D/Conv3D/ReadVariableOp?2model/batch_normalization/batchnorm/ReadVariableOp?4model/batch_normalization/batchnorm/ReadVariableOp_1?4model/batch_normalization/batchnorm/ReadVariableOp_2?6model/batch_normalization/batchnorm/mul/ReadVariableOp?4model/batch_normalization_1/batchnorm/ReadVariableOp?6model/batch_normalization_1/batchnorm/ReadVariableOp_1?6model/batch_normalization_1/batchnorm/ReadVariableOp_2?8model/batch_normalization_1/batchnorm/mul/ReadVariableOp?
model/ConvLSTM2D_1/zeros_like	ZerosLikeinput_1*
T0*<
_output_shapes*
(:&??????????????????dd2
model/ConvLSTM2D_1/zeros_like?
(model/ConvLSTM2D_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/ConvLSTM2D_1/Sum/reduction_indices?
model/ConvLSTM2D_1/SumSum!model/ConvLSTM2D_1/zeros_like:y:01model/ConvLSTM2D_1/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
model/ConvLSTM2D_1/Sum?
model/ConvLSTM2D_1/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
model/ConvLSTM2D_1/zeros?
model/ConvLSTM2D_1/convolutionConv2Dmodel/ConvLSTM2D_1/Sum:output:0!model/ConvLSTM2D_1/zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2 
model/ConvLSTM2D_1/convolution?
!model/ConvLSTM2D_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2#
!model/ConvLSTM2D_1/transpose/perm?
model/ConvLSTM2D_1/transpose	Transposeinput_1*model/ConvLSTM2D_1/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
model/ConvLSTM2D_1/transpose?
model/ConvLSTM2D_1/ShapeShape model/ConvLSTM2D_1/transpose:y:0*
T0*
_output_shapes
:2
model/ConvLSTM2D_1/Shape?
&model/ConvLSTM2D_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model/ConvLSTM2D_1/strided_slice/stack?
(model/ConvLSTM2D_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/ConvLSTM2D_1/strided_slice/stack_1?
(model/ConvLSTM2D_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/ConvLSTM2D_1/strided_slice/stack_2?
 model/ConvLSTM2D_1/strided_sliceStridedSlice!model/ConvLSTM2D_1/Shape:output:0/model/ConvLSTM2D_1/strided_slice/stack:output:01model/ConvLSTM2D_1/strided_slice/stack_1:output:01model/ConvLSTM2D_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model/ConvLSTM2D_1/strided_slice?
.model/ConvLSTM2D_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.model/ConvLSTM2D_1/TensorArrayV2/element_shape?
 model/ConvLSTM2D_1/TensorArrayV2TensorListReserve7model/ConvLSTM2D_1/TensorArrayV2/element_shape:output:0)model/ConvLSTM2D_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 model/ConvLSTM2D_1/TensorArrayV2?
Hmodel/ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      2J
Hmodel/ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
:model/ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor model/ConvLSTM2D_1/transpose:y:0Qmodel/ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02<
:model/ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor?
(model/ConvLSTM2D_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model/ConvLSTM2D_1/strided_slice_1/stack?
*model/ConvLSTM2D_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/ConvLSTM2D_1/strided_slice_1/stack_1?
*model/ConvLSTM2D_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/ConvLSTM2D_1/strided_slice_1/stack_2?
"model/ConvLSTM2D_1/strided_slice_1StridedSlice model/ConvLSTM2D_1/transpose:y:01model/ConvLSTM2D_1/strided_slice_1/stack:output:03model/ConvLSTM2D_1/strided_slice_1/stack_1:output:03model/ConvLSTM2D_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2$
"model/ConvLSTM2D_1/strided_slice_1?
"model/ConvLSTM2D_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"model/ConvLSTM2D_1/split/split_dim?
'model/ConvLSTM2D_1/split/ReadVariableOpReadVariableOp0model_convlstm2d_1_split_readvariableop_resource*'
_output_shapes
:?*
dtype02)
'model/ConvLSTM2D_1/split/ReadVariableOp?
model/ConvLSTM2D_1/splitSplit+model/ConvLSTM2D_1/split/split_dim:output:0/model/ConvLSTM2D_1/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
model/ConvLSTM2D_1/split?
$model/ConvLSTM2D_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model/ConvLSTM2D_1/split_1/split_dim?
)model/ConvLSTM2D_1/split_1/ReadVariableOpReadVariableOp2model_convlstm2d_1_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02+
)model/ConvLSTM2D_1/split_1/ReadVariableOp?
model/ConvLSTM2D_1/split_1Split-model/ConvLSTM2D_1/split_1/split_dim:output:01model/ConvLSTM2D_1/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
model/ConvLSTM2D_1/split_1?
$model/ConvLSTM2D_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model/ConvLSTM2D_1/split_2/split_dim?
)model/ConvLSTM2D_1/split_2/ReadVariableOpReadVariableOp2model_convlstm2d_1_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)model/ConvLSTM2D_1/split_2/ReadVariableOp?
model/ConvLSTM2D_1/split_2Split-model/ConvLSTM2D_1/split_2/split_dim:output:01model/ConvLSTM2D_1/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
model/ConvLSTM2D_1/split_2?
 model/ConvLSTM2D_1/convolution_1Conv2D+model/ConvLSTM2D_1/strided_slice_1:output:0!model/ConvLSTM2D_1/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_1?
model/ConvLSTM2D_1/BiasAddBiasAdd)model/ConvLSTM2D_1/convolution_1:output:0#model/ConvLSTM2D_1/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/BiasAdd?
 model/ConvLSTM2D_1/convolution_2Conv2D+model/ConvLSTM2D_1/strided_slice_1:output:0!model/ConvLSTM2D_1/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_2?
model/ConvLSTM2D_1/BiasAdd_1BiasAdd)model/ConvLSTM2D_1/convolution_2:output:0#model/ConvLSTM2D_1/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/BiasAdd_1?
 model/ConvLSTM2D_1/convolution_3Conv2D+model/ConvLSTM2D_1/strided_slice_1:output:0!model/ConvLSTM2D_1/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_3?
model/ConvLSTM2D_1/BiasAdd_2BiasAdd)model/ConvLSTM2D_1/convolution_3:output:0#model/ConvLSTM2D_1/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/BiasAdd_2?
 model/ConvLSTM2D_1/convolution_4Conv2D+model/ConvLSTM2D_1/strided_slice_1:output:0!model/ConvLSTM2D_1/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_4?
model/ConvLSTM2D_1/BiasAdd_3BiasAdd)model/ConvLSTM2D_1/convolution_4:output:0#model/ConvLSTM2D_1/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/BiasAdd_3?
 model/ConvLSTM2D_1/convolution_5Conv2D'model/ConvLSTM2D_1/convolution:output:0#model/ConvLSTM2D_1/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_5?
 model/ConvLSTM2D_1/convolution_6Conv2D'model/ConvLSTM2D_1/convolution:output:0#model/ConvLSTM2D_1/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_6?
 model/ConvLSTM2D_1/convolution_7Conv2D'model/ConvLSTM2D_1/convolution:output:0#model/ConvLSTM2D_1/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_7?
 model/ConvLSTM2D_1/convolution_8Conv2D'model/ConvLSTM2D_1/convolution:output:0#model/ConvLSTM2D_1/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_1/convolution_8?
model/ConvLSTM2D_1/addAddV2#model/ConvLSTM2D_1/BiasAdd:output:0)model/ConvLSTM2D_1/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/addy
model/ConvLSTM2D_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
model/ConvLSTM2D_1/Const}
model/ConvLSTM2D_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
model/ConvLSTM2D_1/Const_1?
model/ConvLSTM2D_1/MulMulmodel/ConvLSTM2D_1/add:z:0!model/ConvLSTM2D_1/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Mul?
model/ConvLSTM2D_1/Add_1Addmodel/ConvLSTM2D_1/Mul:z:0#model/ConvLSTM2D_1/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Add_1?
*model/ConvLSTM2D_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*model/ConvLSTM2D_1/clip_by_value/Minimum/y?
(model/ConvLSTM2D_1/clip_by_value/MinimumMinimummodel/ConvLSTM2D_1/Add_1:z:03model/ConvLSTM2D_1/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(model/ConvLSTM2D_1/clip_by_value/Minimum?
"model/ConvLSTM2D_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model/ConvLSTM2D_1/clip_by_value/y?
 model/ConvLSTM2D_1/clip_by_valueMaximum,model/ConvLSTM2D_1/clip_by_value/Minimum:z:0+model/ConvLSTM2D_1/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2"
 model/ConvLSTM2D_1/clip_by_value?
model/ConvLSTM2D_1/add_2AddV2%model/ConvLSTM2D_1/BiasAdd_1:output:0)model/ConvLSTM2D_1/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/add_2}
model/ConvLSTM2D_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
model/ConvLSTM2D_1/Const_2}
model/ConvLSTM2D_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
model/ConvLSTM2D_1/Const_3?
model/ConvLSTM2D_1/Mul_1Mulmodel/ConvLSTM2D_1/add_2:z:0#model/ConvLSTM2D_1/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Mul_1?
model/ConvLSTM2D_1/Add_3Addmodel/ConvLSTM2D_1/Mul_1:z:0#model/ConvLSTM2D_1/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Add_3?
,model/ConvLSTM2D_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,model/ConvLSTM2D_1/clip_by_value_1/Minimum/y?
*model/ConvLSTM2D_1/clip_by_value_1/MinimumMinimummodel/ConvLSTM2D_1/Add_3:z:05model/ConvLSTM2D_1/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*model/ConvLSTM2D_1/clip_by_value_1/Minimum?
$model/ConvLSTM2D_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model/ConvLSTM2D_1/clip_by_value_1/y?
"model/ConvLSTM2D_1/clip_by_value_1Maximum.model/ConvLSTM2D_1/clip_by_value_1/Minimum:z:0-model/ConvLSTM2D_1/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_1/clip_by_value_1?
model/ConvLSTM2D_1/mul_2Mul&model/ConvLSTM2D_1/clip_by_value_1:z:0'model/ConvLSTM2D_1/convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/mul_2?
model/ConvLSTM2D_1/add_4AddV2%model/ConvLSTM2D_1/BiasAdd_2:output:0)model/ConvLSTM2D_1/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/add_4?
model/ConvLSTM2D_1/ReluRelumodel/ConvLSTM2D_1/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Relu?
model/ConvLSTM2D_1/mul_3Mul$model/ConvLSTM2D_1/clip_by_value:z:0%model/ConvLSTM2D_1/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/mul_3?
model/ConvLSTM2D_1/add_5AddV2model/ConvLSTM2D_1/mul_2:z:0model/ConvLSTM2D_1/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/add_5?
model/ConvLSTM2D_1/add_6AddV2%model/ConvLSTM2D_1/BiasAdd_3:output:0)model/ConvLSTM2D_1/convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/add_6}
model/ConvLSTM2D_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
model/ConvLSTM2D_1/Const_4}
model/ConvLSTM2D_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
model/ConvLSTM2D_1/Const_5?
model/ConvLSTM2D_1/Mul_4Mulmodel/ConvLSTM2D_1/add_6:z:0#model/ConvLSTM2D_1/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Mul_4?
model/ConvLSTM2D_1/Add_7Addmodel/ConvLSTM2D_1/Mul_4:z:0#model/ConvLSTM2D_1/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Add_7?
,model/ConvLSTM2D_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,model/ConvLSTM2D_1/clip_by_value_2/Minimum/y?
*model/ConvLSTM2D_1/clip_by_value_2/MinimumMinimummodel/ConvLSTM2D_1/Add_7:z:05model/ConvLSTM2D_1/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*model/ConvLSTM2D_1/clip_by_value_2/Minimum?
$model/ConvLSTM2D_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model/ConvLSTM2D_1/clip_by_value_2/y?
"model/ConvLSTM2D_1/clip_by_value_2Maximum.model/ConvLSTM2D_1/clip_by_value_2/Minimum:z:0-model/ConvLSTM2D_1/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_1/clip_by_value_2?
model/ConvLSTM2D_1/Relu_1Relumodel/ConvLSTM2D_1/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/Relu_1?
model/ConvLSTM2D_1/mul_5Mul&model/ConvLSTM2D_1/clip_by_value_2:z:0'model/ConvLSTM2D_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/mul_5?
0model/ConvLSTM2D_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0model/ConvLSTM2D_1/TensorArrayV2_1/element_shape?
"model/ConvLSTM2D_1/TensorArrayV2_1TensorListReserve9model/ConvLSTM2D_1/TensorArrayV2_1/element_shape:output:0)model/ConvLSTM2D_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"model/ConvLSTM2D_1/TensorArrayV2_1t
model/ConvLSTM2D_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model/ConvLSTM2D_1/time?
+model/ConvLSTM2D_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+model/ConvLSTM2D_1/while/maximum_iterations?
%model/ConvLSTM2D_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model/ConvLSTM2D_1/while/loop_counter?
model/ConvLSTM2D_1/whileWhile.model/ConvLSTM2D_1/while/loop_counter:output:04model/ConvLSTM2D_1/while/maximum_iterations:output:0 model/ConvLSTM2D_1/time:output:0+model/ConvLSTM2D_1/TensorArrayV2_1:handle:0'model/ConvLSTM2D_1/convolution:output:0'model/ConvLSTM2D_1/convolution:output:0)model/ConvLSTM2D_1/strided_slice:output:0Jmodel/ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor:output_handle:00model_convlstm2d_1_split_readvariableop_resource2model_convlstm2d_1_split_1_readvariableop_resource2model_convlstm2d_1_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#model_ConvLSTM2D_1_while_body_30592*/
cond'R%
#model_ConvLSTM2D_1_while_cond_30591*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
model/ConvLSTM2D_1/while?
Cmodel/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2E
Cmodel/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shape?
5model/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStackTensorListStack!model/ConvLSTM2D_1/while:output:3Lmodel/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype027
5model/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack?
(model/ConvLSTM2D_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(model/ConvLSTM2D_1/strided_slice_2/stack?
*model/ConvLSTM2D_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*model/ConvLSTM2D_1/strided_slice_2/stack_1?
*model/ConvLSTM2D_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/ConvLSTM2D_1/strided_slice_2/stack_2?
"model/ConvLSTM2D_1/strided_slice_2StridedSlice>model/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack:tensor:01model/ConvLSTM2D_1/strided_slice_2/stack:output:03model/ConvLSTM2D_1/strided_slice_2/stack_1:output:03model/ConvLSTM2D_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2$
"model/ConvLSTM2D_1/strided_slice_2?
#model/ConvLSTM2D_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#model/ConvLSTM2D_1/transpose_1/perm?
model/ConvLSTM2D_1/transpose_1	Transpose>model/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack:tensor:0,model/ConvLSTM2D_1/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2 
model/ConvLSTM2D_1/transpose_1?
2model/batch_normalization/batchnorm/ReadVariableOpReadVariableOp;model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype024
2model/batch_normalization/batchnorm/ReadVariableOp?
)model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2+
)model/batch_normalization/batchnorm/add/y?
'model/batch_normalization/batchnorm/addAddV2:model/batch_normalization/batchnorm/ReadVariableOp:value:02model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2)
'model/batch_normalization/batchnorm/add?
)model/batch_normalization/batchnorm/RsqrtRsqrt+model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: 2+
)model/batch_normalization/batchnorm/Rsqrt?
6model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype028
6model/batch_normalization/batchnorm/mul/ReadVariableOp?
'model/batch_normalization/batchnorm/mulMul-model/batch_normalization/batchnorm/Rsqrt:y:0>model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2)
'model/batch_normalization/batchnorm/mul?
)model/batch_normalization/batchnorm/mul_1Mul"model/ConvLSTM2D_1/transpose_1:y:0+model/batch_normalization/batchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2+
)model/batch_normalization/batchnorm/mul_1?
4model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_1?
)model/batch_normalization/batchnorm/mul_2Mul<model/batch_normalization/batchnorm/ReadVariableOp_1:value:0+model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: 2+
)model/batch_normalization/batchnorm/mul_2?
4model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_2?
'model/batch_normalization/batchnorm/subSub<model/batch_normalization/batchnorm/ReadVariableOp_2:value:0-model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2)
'model/batch_normalization/batchnorm/sub?
)model/batch_normalization/batchnorm/add_1AddV2-model/batch_normalization/batchnorm/mul_1:z:0+model/batch_normalization/batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2+
)model/batch_normalization/batchnorm/add_1?
model/ConvLSTM2D_2/zeros_like	ZerosLike-model/batch_normalization/batchnorm/add_1:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
model/ConvLSTM2D_2/zeros_like?
(model/ConvLSTM2D_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/ConvLSTM2D_2/Sum/reduction_indices?
model/ConvLSTM2D_2/SumSum!model/ConvLSTM2D_2/zeros_like:y:01model/ConvLSTM2D_2/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Sum?
(model/ConvLSTM2D_2/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2*
(model/ConvLSTM2D_2/zeros/shape_as_tensor?
model/ConvLSTM2D_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
model/ConvLSTM2D_2/zeros/Const?
model/ConvLSTM2D_2/zerosFill1model/ConvLSTM2D_2/zeros/shape_as_tensor:output:0'model/ConvLSTM2D_2/zeros/Const:output:0*
T0*&
_output_shapes
:  2
model/ConvLSTM2D_2/zeros?
model/ConvLSTM2D_2/convolutionConv2Dmodel/ConvLSTM2D_2/Sum:output:0!model/ConvLSTM2D_2/zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2 
model/ConvLSTM2D_2/convolution?
!model/ConvLSTM2D_2/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2#
!model/ConvLSTM2D_2/transpose/perm?
model/ConvLSTM2D_2/transpose	Transpose-model/batch_normalization/batchnorm/add_1:z:0*model/ConvLSTM2D_2/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
model/ConvLSTM2D_2/transpose?
model/ConvLSTM2D_2/ShapeShape model/ConvLSTM2D_2/transpose:y:0*
T0*
_output_shapes
:2
model/ConvLSTM2D_2/Shape?
&model/ConvLSTM2D_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&model/ConvLSTM2D_2/strided_slice/stack?
(model/ConvLSTM2D_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/ConvLSTM2D_2/strided_slice/stack_1?
(model/ConvLSTM2D_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(model/ConvLSTM2D_2/strided_slice/stack_2?
 model/ConvLSTM2D_2/strided_sliceStridedSlice!model/ConvLSTM2D_2/Shape:output:0/model/ConvLSTM2D_2/strided_slice/stack:output:01model/ConvLSTM2D_2/strided_slice/stack_1:output:01model/ConvLSTM2D_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 model/ConvLSTM2D_2/strided_slice?
.model/ConvLSTM2D_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????20
.model/ConvLSTM2D_2/TensorArrayV2/element_shape?
 model/ConvLSTM2D_2/TensorArrayV2TensorListReserve7model/ConvLSTM2D_2/TensorArrayV2/element_shape:output:0)model/ConvLSTM2D_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02"
 model/ConvLSTM2D_2/TensorArrayV2?
Hmodel/ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2J
Hmodel/ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
:model/ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor model/ConvLSTM2D_2/transpose:y:0Qmodel/ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02<
:model/ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor?
(model/ConvLSTM2D_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(model/ConvLSTM2D_2/strided_slice_1/stack?
*model/ConvLSTM2D_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/ConvLSTM2D_2/strided_slice_1/stack_1?
*model/ConvLSTM2D_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/ConvLSTM2D_2/strided_slice_1/stack_2?
"model/ConvLSTM2D_2/strided_slice_1StridedSlice model/ConvLSTM2D_2/transpose:y:01model/ConvLSTM2D_2/strided_slice_1/stack:output:03model/ConvLSTM2D_2/strided_slice_1/stack_1:output:03model/ConvLSTM2D_2/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2$
"model/ConvLSTM2D_2/strided_slice_1?
"model/ConvLSTM2D_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"model/ConvLSTM2D_2/split/split_dim?
'model/ConvLSTM2D_2/split/ReadVariableOpReadVariableOp0model_convlstm2d_2_split_readvariableop_resource*'
_output_shapes
: ?*
dtype02)
'model/ConvLSTM2D_2/split/ReadVariableOp?
model/ConvLSTM2D_2/splitSplit+model/ConvLSTM2D_2/split/split_dim:output:0/model/ConvLSTM2D_2/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
model/ConvLSTM2D_2/split?
$model/ConvLSTM2D_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$model/ConvLSTM2D_2/split_1/split_dim?
)model/ConvLSTM2D_2/split_1/ReadVariableOpReadVariableOp2model_convlstm2d_2_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02+
)model/ConvLSTM2D_2/split_1/ReadVariableOp?
model/ConvLSTM2D_2/split_1Split-model/ConvLSTM2D_2/split_1/split_dim:output:01model/ConvLSTM2D_2/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
model/ConvLSTM2D_2/split_1?
$model/ConvLSTM2D_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model/ConvLSTM2D_2/split_2/split_dim?
)model/ConvLSTM2D_2/split_2/ReadVariableOpReadVariableOp2model_convlstm2d_2_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02+
)model/ConvLSTM2D_2/split_2/ReadVariableOp?
model/ConvLSTM2D_2/split_2Split-model/ConvLSTM2D_2/split_2/split_dim:output:01model/ConvLSTM2D_2/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
model/ConvLSTM2D_2/split_2?
 model/ConvLSTM2D_2/convolution_1Conv2D+model/ConvLSTM2D_2/strided_slice_1:output:0!model/ConvLSTM2D_2/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_1?
model/ConvLSTM2D_2/BiasAddBiasAdd)model/ConvLSTM2D_2/convolution_1:output:0#model/ConvLSTM2D_2/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/BiasAdd?
 model/ConvLSTM2D_2/convolution_2Conv2D+model/ConvLSTM2D_2/strided_slice_1:output:0!model/ConvLSTM2D_2/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_2?
model/ConvLSTM2D_2/BiasAdd_1BiasAdd)model/ConvLSTM2D_2/convolution_2:output:0#model/ConvLSTM2D_2/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/BiasAdd_1?
 model/ConvLSTM2D_2/convolution_3Conv2D+model/ConvLSTM2D_2/strided_slice_1:output:0!model/ConvLSTM2D_2/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_3?
model/ConvLSTM2D_2/BiasAdd_2BiasAdd)model/ConvLSTM2D_2/convolution_3:output:0#model/ConvLSTM2D_2/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/BiasAdd_2?
 model/ConvLSTM2D_2/convolution_4Conv2D+model/ConvLSTM2D_2/strided_slice_1:output:0!model/ConvLSTM2D_2/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_4?
model/ConvLSTM2D_2/BiasAdd_3BiasAdd)model/ConvLSTM2D_2/convolution_4:output:0#model/ConvLSTM2D_2/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/BiasAdd_3?
 model/ConvLSTM2D_2/convolution_5Conv2D'model/ConvLSTM2D_2/convolution:output:0#model/ConvLSTM2D_2/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_5?
 model/ConvLSTM2D_2/convolution_6Conv2D'model/ConvLSTM2D_2/convolution:output:0#model/ConvLSTM2D_2/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_6?
 model/ConvLSTM2D_2/convolution_7Conv2D'model/ConvLSTM2D_2/convolution:output:0#model/ConvLSTM2D_2/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_7?
 model/ConvLSTM2D_2/convolution_8Conv2D'model/ConvLSTM2D_2/convolution:output:0#model/ConvLSTM2D_2/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 model/ConvLSTM2D_2/convolution_8?
model/ConvLSTM2D_2/addAddV2#model/ConvLSTM2D_2/BiasAdd:output:0)model/ConvLSTM2D_2/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/addy
model/ConvLSTM2D_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
model/ConvLSTM2D_2/Const}
model/ConvLSTM2D_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
model/ConvLSTM2D_2/Const_1?
model/ConvLSTM2D_2/MulMulmodel/ConvLSTM2D_2/add:z:0!model/ConvLSTM2D_2/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Mul?
model/ConvLSTM2D_2/Add_1Addmodel/ConvLSTM2D_2/Mul:z:0#model/ConvLSTM2D_2/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Add_1?
*model/ConvLSTM2D_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*model/ConvLSTM2D_2/clip_by_value/Minimum/y?
(model/ConvLSTM2D_2/clip_by_value/MinimumMinimummodel/ConvLSTM2D_2/Add_1:z:03model/ConvLSTM2D_2/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(model/ConvLSTM2D_2/clip_by_value/Minimum?
"model/ConvLSTM2D_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"model/ConvLSTM2D_2/clip_by_value/y?
 model/ConvLSTM2D_2/clip_by_valueMaximum,model/ConvLSTM2D_2/clip_by_value/Minimum:z:0+model/ConvLSTM2D_2/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2"
 model/ConvLSTM2D_2/clip_by_value?
model/ConvLSTM2D_2/add_2AddV2%model/ConvLSTM2D_2/BiasAdd_1:output:0)model/ConvLSTM2D_2/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/add_2}
model/ConvLSTM2D_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
model/ConvLSTM2D_2/Const_2}
model/ConvLSTM2D_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
model/ConvLSTM2D_2/Const_3?
model/ConvLSTM2D_2/Mul_1Mulmodel/ConvLSTM2D_2/add_2:z:0#model/ConvLSTM2D_2/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Mul_1?
model/ConvLSTM2D_2/Add_3Addmodel/ConvLSTM2D_2/Mul_1:z:0#model/ConvLSTM2D_2/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Add_3?
,model/ConvLSTM2D_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,model/ConvLSTM2D_2/clip_by_value_1/Minimum/y?
*model/ConvLSTM2D_2/clip_by_value_1/MinimumMinimummodel/ConvLSTM2D_2/Add_3:z:05model/ConvLSTM2D_2/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*model/ConvLSTM2D_2/clip_by_value_1/Minimum?
$model/ConvLSTM2D_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model/ConvLSTM2D_2/clip_by_value_1/y?
"model/ConvLSTM2D_2/clip_by_value_1Maximum.model/ConvLSTM2D_2/clip_by_value_1/Minimum:z:0-model/ConvLSTM2D_2/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_2/clip_by_value_1?
model/ConvLSTM2D_2/mul_2Mul&model/ConvLSTM2D_2/clip_by_value_1:z:0'model/ConvLSTM2D_2/convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/mul_2?
model/ConvLSTM2D_2/add_4AddV2%model/ConvLSTM2D_2/BiasAdd_2:output:0)model/ConvLSTM2D_2/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/add_4?
model/ConvLSTM2D_2/ReluRelumodel/ConvLSTM2D_2/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Relu?
model/ConvLSTM2D_2/mul_3Mul$model/ConvLSTM2D_2/clip_by_value:z:0%model/ConvLSTM2D_2/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/mul_3?
model/ConvLSTM2D_2/add_5AddV2model/ConvLSTM2D_2/mul_2:z:0model/ConvLSTM2D_2/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/add_5?
model/ConvLSTM2D_2/add_6AddV2%model/ConvLSTM2D_2/BiasAdd_3:output:0)model/ConvLSTM2D_2/convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/add_6}
model/ConvLSTM2D_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
model/ConvLSTM2D_2/Const_4}
model/ConvLSTM2D_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
model/ConvLSTM2D_2/Const_5?
model/ConvLSTM2D_2/Mul_4Mulmodel/ConvLSTM2D_2/add_6:z:0#model/ConvLSTM2D_2/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Mul_4?
model/ConvLSTM2D_2/Add_7Addmodel/ConvLSTM2D_2/Mul_4:z:0#model/ConvLSTM2D_2/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Add_7?
,model/ConvLSTM2D_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,model/ConvLSTM2D_2/clip_by_value_2/Minimum/y?
*model/ConvLSTM2D_2/clip_by_value_2/MinimumMinimummodel/ConvLSTM2D_2/Add_7:z:05model/ConvLSTM2D_2/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*model/ConvLSTM2D_2/clip_by_value_2/Minimum?
$model/ConvLSTM2D_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$model/ConvLSTM2D_2/clip_by_value_2/y?
"model/ConvLSTM2D_2/clip_by_value_2Maximum.model/ConvLSTM2D_2/clip_by_value_2/Minimum:z:0-model/ConvLSTM2D_2/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_2/clip_by_value_2?
model/ConvLSTM2D_2/Relu_1Relumodel/ConvLSTM2D_2/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/Relu_1?
model/ConvLSTM2D_2/mul_5Mul&model/ConvLSTM2D_2/clip_by_value_2:z:0'model/ConvLSTM2D_2/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/mul_5?
0model/ConvLSTM2D_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0model/ConvLSTM2D_2/TensorArrayV2_1/element_shape?
"model/ConvLSTM2D_2/TensorArrayV2_1TensorListReserve9model/ConvLSTM2D_2/TensorArrayV2_1/element_shape:output:0)model/ConvLSTM2D_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02$
"model/ConvLSTM2D_2/TensorArrayV2_1t
model/ConvLSTM2D_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
model/ConvLSTM2D_2/time?
+model/ConvLSTM2D_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+model/ConvLSTM2D_2/while/maximum_iterations?
%model/ConvLSTM2D_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2'
%model/ConvLSTM2D_2/while/loop_counter?
model/ConvLSTM2D_2/whileWhile.model/ConvLSTM2D_2/while/loop_counter:output:04model/ConvLSTM2D_2/while/maximum_iterations:output:0 model/ConvLSTM2D_2/time:output:0+model/ConvLSTM2D_2/TensorArrayV2_1:handle:0'model/ConvLSTM2D_2/convolution:output:0'model/ConvLSTM2D_2/convolution:output:0)model/ConvLSTM2D_2/strided_slice:output:0Jmodel/ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor:output_handle:00model_convlstm2d_2_split_readvariableop_resource2model_convlstm2d_2_split_1_readvariableop_resource2model_convlstm2d_2_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*/
body'R%
#model_ConvLSTM2D_2_while_body_30826*/
cond'R%
#model_ConvLSTM2D_2_while_cond_30825*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
model/ConvLSTM2D_2/while?
Cmodel/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2E
Cmodel/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shape?
5model/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStackTensorListStack!model/ConvLSTM2D_2/while:output:3Lmodel/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype027
5model/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack?
(model/ConvLSTM2D_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2*
(model/ConvLSTM2D_2/strided_slice_2/stack?
*model/ConvLSTM2D_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2,
*model/ConvLSTM2D_2/strided_slice_2/stack_1?
*model/ConvLSTM2D_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*model/ConvLSTM2D_2/strided_slice_2/stack_2?
"model/ConvLSTM2D_2/strided_slice_2StridedSlice>model/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack:tensor:01model/ConvLSTM2D_2/strided_slice_2/stack:output:03model/ConvLSTM2D_2/strided_slice_2/stack_1:output:03model/ConvLSTM2D_2/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2$
"model/ConvLSTM2D_2/strided_slice_2?
#model/ConvLSTM2D_2/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2%
#model/ConvLSTM2D_2/transpose_1/perm?
model/ConvLSTM2D_2/transpose_1	Transpose>model/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack:tensor:0,model/ConvLSTM2D_2/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2 
model/ConvLSTM2D_2/transpose_1?
4model/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype026
4model/batch_normalization_1/batchnorm/ReadVariableOp?
+model/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2-
+model/batch_normalization_1/batchnorm/add/y?
)model/batch_normalization_1/batchnorm/addAddV2<model/batch_normalization_1/batchnorm/ReadVariableOp:value:04model/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2+
)model/batch_normalization_1/batchnorm/add?
+model/batch_normalization_1/batchnorm/RsqrtRsqrt-model/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2-
+model/batch_normalization_1/batchnorm/Rsqrt?
8model/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02:
8model/batch_normalization_1/batchnorm/mul/ReadVariableOp?
)model/batch_normalization_1/batchnorm/mulMul/model/batch_normalization_1/batchnorm/Rsqrt:y:0@model/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2+
)model/batch_normalization_1/batchnorm/mul?
+model/batch_normalization_1/batchnorm/mul_1Mul"model/ConvLSTM2D_2/transpose_1:y:0-model/batch_normalization_1/batchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2-
+model/batch_normalization_1/batchnorm/mul_1?
6model/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp?model_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype028
6model/batch_normalization_1/batchnorm/ReadVariableOp_1?
+model/batch_normalization_1/batchnorm/mul_2Mul>model/batch_normalization_1/batchnorm/ReadVariableOp_1:value:0-model/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2-
+model/batch_normalization_1/batchnorm/mul_2?
6model/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp?model_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype028
6model/batch_normalization_1/batchnorm/ReadVariableOp_2?
)model/batch_normalization_1/batchnorm/subSub>model/batch_normalization_1/batchnorm/ReadVariableOp_2:value:0/model/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2+
)model/batch_normalization_1/batchnorm/sub?
+model/batch_normalization_1/batchnorm/add_1AddV2/model/batch_normalization_1/batchnorm/mul_1:z:0-model/batch_normalization_1/batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2-
+model/batch_normalization_1/batchnorm/add_1?
&model/ConvLSTM3D/Conv3D/ReadVariableOpReadVariableOp/model_convlstm3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02(
&model/ConvLSTM3D/Conv3D/ReadVariableOp?
model/ConvLSTM3D/Conv3DConv3D/model/batch_normalization_1/batchnorm/add_1:z:0.model/ConvLSTM3D/Conv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd*
paddingSAME*
strides	
2
model/ConvLSTM3D/Conv3D?
'model/ConvLSTM3D/BiasAdd/ReadVariableOpReadVariableOp0model_convlstm3d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model/ConvLSTM3D/BiasAdd/ReadVariableOp?
model/ConvLSTM3D/BiasAddBiasAdd model/ConvLSTM3D/Conv3D:output:0/model/ConvLSTM3D/BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd2
model/ConvLSTM3D/BiasAdd?
model/ConvLSTM3D/SigmoidSigmoid!model/ConvLSTM3D/BiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
model/ConvLSTM3D/Sigmoid?
IdentityIdentitymodel/ConvLSTM3D/Sigmoid:y:0(^model/ConvLSTM2D_1/split/ReadVariableOp*^model/ConvLSTM2D_1/split_1/ReadVariableOp*^model/ConvLSTM2D_1/split_2/ReadVariableOp^model/ConvLSTM2D_1/while(^model/ConvLSTM2D_2/split/ReadVariableOp*^model/ConvLSTM2D_2/split_1/ReadVariableOp*^model/ConvLSTM2D_2/split_2/ReadVariableOp^model/ConvLSTM2D_2/while(^model/ConvLSTM3D/BiasAdd/ReadVariableOp'^model/ConvLSTM3D/Conv3D/ReadVariableOp3^model/batch_normalization/batchnorm/ReadVariableOp5^model/batch_normalization/batchnorm/ReadVariableOp_15^model/batch_normalization/batchnorm/ReadVariableOp_27^model/batch_normalization/batchnorm/mul/ReadVariableOp5^model/batch_normalization_1/batchnorm/ReadVariableOp7^model/batch_normalization_1/batchnorm/ReadVariableOp_17^model/batch_normalization_1/batchnorm/ReadVariableOp_29^model/batch_normalization_1/batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2R
'model/ConvLSTM2D_1/split/ReadVariableOp'model/ConvLSTM2D_1/split/ReadVariableOp2V
)model/ConvLSTM2D_1/split_1/ReadVariableOp)model/ConvLSTM2D_1/split_1/ReadVariableOp2V
)model/ConvLSTM2D_1/split_2/ReadVariableOp)model/ConvLSTM2D_1/split_2/ReadVariableOp24
model/ConvLSTM2D_1/whilemodel/ConvLSTM2D_1/while2R
'model/ConvLSTM2D_2/split/ReadVariableOp'model/ConvLSTM2D_2/split/ReadVariableOp2V
)model/ConvLSTM2D_2/split_1/ReadVariableOp)model/ConvLSTM2D_2/split_1/ReadVariableOp2V
)model/ConvLSTM2D_2/split_2/ReadVariableOp)model/ConvLSTM2D_2/split_2/ReadVariableOp24
model/ConvLSTM2D_2/whilemodel/ConvLSTM2D_2/while2R
'model/ConvLSTM3D/BiasAdd/ReadVariableOp'model/ConvLSTM3D/BiasAdd/ReadVariableOp2P
&model/ConvLSTM3D/Conv3D/ReadVariableOp&model/ConvLSTM3D/Conv3D/ReadVariableOp2h
2model/batch_normalization/batchnorm/ReadVariableOp2model/batch_normalization/batchnorm/ReadVariableOp2l
4model/batch_normalization/batchnorm/ReadVariableOp_14model/batch_normalization/batchnorm/ReadVariableOp_12l
4model/batch_normalization/batchnorm/ReadVariableOp_24model/batch_normalization/batchnorm/ReadVariableOp_22p
6model/batch_normalization/batchnorm/mul/ReadVariableOp6model/batch_normalization/batchnorm/mul/ReadVariableOp2l
4model/batch_normalization_1/batchnorm/ReadVariableOp4model/batch_normalization_1/batchnorm/ReadVariableOp2p
6model/batch_normalization_1/batchnorm/ReadVariableOp_16model/batch_normalization_1/batchnorm/ReadVariableOp_12p
6model/batch_normalization_1/batchnorm/ReadVariableOp_26model/batch_normalization_1/batchnorm/ReadVariableOp_22t
8model/batch_normalization_1/batchnorm/mul/ReadVariableOp8model/batch_normalization_1/batchnorm/mul/ReadVariableOp:e a
<
_output_shapes*
(:&??????????????????dd
!
_user_specified_name	input_1
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31647

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?$
?
@__inference_model_layer_call_and_return_conditional_losses_33873

inputs-
convlstm2d_1_33835:?-
convlstm2d_1_33837: ?!
convlstm2d_1_33839:	?'
batch_normalization_33842: '
batch_normalization_33844: '
batch_normalization_33846: '
batch_normalization_33848: -
convlstm2d_2_33851: ?-
convlstm2d_2_33853: ?!
convlstm2d_2_33855:	?)
batch_normalization_1_33858: )
batch_normalization_1_33860: )
batch_normalization_1_33862: )
batch_normalization_1_33864: .
convlstm3d_33867: 
convlstm3d_33869:
identity??$ConvLSTM2D_1/StatefulPartitionedCall?$ConvLSTM2D_2/StatefulPartitionedCall?"ConvLSTM3D/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?
$ConvLSTM2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsconvlstm2d_1_33835convlstm2d_1_33837convlstm2d_1_33839*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_337842&
$ConvLSTM2D_1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_1/StatefulPartitionedCall:output:0batch_normalization_33842batch_normalization_33844batch_normalization_33846batch_normalization_33848*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_335402-
+batch_normalization/StatefulPartitionedCall?
$ConvLSTM2D_2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0convlstm2d_2_33851convlstm2d_2_33853convlstm2d_2_33855*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_334822&
$ConvLSTM2D_2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_2/StatefulPartitionedCall:output:0batch_normalization_1_33858batch_normalization_1_33860batch_normalization_1_33862batch_normalization_1_33864*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_332362/
-batch_normalization_1/StatefulPartitionedCall?
"ConvLSTM3D/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0convlstm3d_33867convlstm3d_33869*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_331352$
"ConvLSTM3D/StatefulPartitionedCall?
IdentityIdentity+ConvLSTM3D/StatefulPartitionedCall:output:0%^ConvLSTM2D_1/StatefulPartitionedCall%^ConvLSTM2D_2/StatefulPartitionedCall#^ConvLSTM3D/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2L
$ConvLSTM2D_1/StatefulPartitionedCall$ConvLSTM2D_1/StatefulPartitionedCall2L
$ConvLSTM2D_2/StatefulPartitionedCall$ConvLSTM2D_2/StatefulPartitionedCall2H
"ConvLSTM3D/StatefulPartitionedCall"ConvLSTM3D/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36124

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
3__inference_conv_lst_m2d_cell_1_layer_call_fn_37673

inputs
states_0
states_1"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_318892
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd :?????????dd :?????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd 
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_32465

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
*__inference_ConvLSTM3D_layer_call_fn_37322

inputs%
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_331352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:&??????????????????dd : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?`
?
!__inference__traced_restore_37855
file_prefix8
*assignvariableop_batch_normalization_gamma: 9
+assignvariableop_1_batch_normalization_beta: @
2assignvariableop_2_batch_normalization_moving_mean: D
6assignvariableop_3_batch_normalization_moving_variance: <
.assignvariableop_4_batch_normalization_1_gamma: ;
-assignvariableop_5_batch_normalization_1_beta: B
4assignvariableop_6_batch_normalization_1_moving_mean: F
8assignvariableop_7_batch_normalization_1_moving_variance: B
$assignvariableop_8_convlstm3d_kernel: 0
"assignvariableop_9_convlstm3d_bias:&
assignvariableop_10_sgd_iter:	 '
assignvariableop_11_sgd_decay: /
%assignvariableop_12_sgd_learning_rate: *
 assignvariableop_13_sgd_momentum: B
'assignvariableop_14_convlstm2d_1_kernel:?L
1assignvariableop_15_convlstm2d_1_recurrent_kernel: ?4
%assignvariableop_16_convlstm2d_1_bias:	?B
'assignvariableop_17_convlstm2d_2_kernel: ?L
1assignvariableop_18_convlstm2d_2_recurrent_kernel: ?4
%assignvariableop_19_convlstm2d_2_bias:	?#
assignvariableop_20_total: #
assignvariableop_21_count: 
identity_23??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*p
_output_shapes^
\:::::::::::::::::::::::*%
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp*assignvariableop_batch_normalization_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp+assignvariableop_1_batch_normalization_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp2assignvariableop_2_batch_normalization_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp6assignvariableop_3_batch_normalization_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp.assignvariableop_4_batch_normalization_1_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp-assignvariableop_5_batch_normalization_1_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp4assignvariableop_6_batch_normalization_1_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp8assignvariableop_7_batch_normalization_1_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_convlstm3d_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp"assignvariableop_9_convlstm3d_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp%assignvariableop_12_sgd_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp assignvariableop_13_sgd_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp'assignvariableop_14_convlstm2d_1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp1assignvariableop_15_convlstm2d_1_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_convlstm2d_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_convlstm2d_2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp1assignvariableop_18_convlstm2d_2_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_convlstm2d_2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_22Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_22?
Identity_23IdentityIdentity_22:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_23"#
identity_23Identity_23:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
while_cond_32140
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_32140___redundant_placeholder03
/while_while_cond_32140___redundant_placeholder13
/while_while_cond_32140___redundant_placeholder23
/while_while_cond_32140___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37216

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
5__inference_batch_normalization_1_layer_call_fn_37289

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_331142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
while_cond_35439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_35439___redundant_placeholder03
/while_while_cond_35439___redundant_placeholder13
/while_while_cond_35439___redundant_placeholder23
/while_while_cond_35439___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
,__inference_ConvLSTM2D_1_layer_call_fn_36039

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_328292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?+
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37250

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
while_cond_33657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_33657___redundant_placeholder03
/while_while_cond_33657___redundant_placeholder13
/while_while_cond_33657___redundant_placeholder23
/while_while_cond_33657___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
ǖ
?
#model_ConvLSTM2D_1_while_body_30592B
>model_convlstm2d_1_while_model_convlstm2d_1_while_loop_counterH
Dmodel_convlstm2d_1_while_model_convlstm2d_1_while_maximum_iterations(
$model_convlstm2d_1_while_placeholder*
&model_convlstm2d_1_while_placeholder_1*
&model_convlstm2d_1_while_placeholder_2*
&model_convlstm2d_1_while_placeholder_3?
;model_convlstm2d_1_while_model_convlstm2d_1_strided_slice_0}
ymodel_convlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0S
8model_convlstm2d_1_while_split_readvariableop_resource_0:?U
:model_convlstm2d_1_while_split_1_readvariableop_resource_0: ?I
:model_convlstm2d_1_while_split_2_readvariableop_resource_0:	?%
!model_convlstm2d_1_while_identity'
#model_convlstm2d_1_while_identity_1'
#model_convlstm2d_1_while_identity_2'
#model_convlstm2d_1_while_identity_3'
#model_convlstm2d_1_while_identity_4'
#model_convlstm2d_1_while_identity_5=
9model_convlstm2d_1_while_model_convlstm2d_1_strided_slice{
wmodel_convlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_1_tensorarrayunstack_tensorlistfromtensorQ
6model_convlstm2d_1_while_split_readvariableop_resource:?S
8model_convlstm2d_1_while_split_1_readvariableop_resource: ?G
8model_convlstm2d_1_while_split_2_readvariableop_resource:	???-model/ConvLSTM2D_1/while/split/ReadVariableOp?/model/ConvLSTM2D_1/while/split_1/ReadVariableOp?/model/ConvLSTM2D_1/while/split_2/ReadVariableOp?
Jmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      2L
Jmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
<model/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemymodel_convlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0$model_convlstm2d_1_while_placeholderSmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02>
<model/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem?
(model/ConvLSTM2D_1/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/ConvLSTM2D_1/while/split/split_dim?
-model/ConvLSTM2D_1/while/split/ReadVariableOpReadVariableOp8model_convlstm2d_1_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02/
-model/ConvLSTM2D_1/while/split/ReadVariableOp?
model/ConvLSTM2D_1/while/splitSplit1model/ConvLSTM2D_1/while/split/split_dim:output:05model/ConvLSTM2D_1/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2 
model/ConvLSTM2D_1/while/split?
*model/ConvLSTM2D_1/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/ConvLSTM2D_1/while/split_1/split_dim?
/model/ConvLSTM2D_1/while/split_1/ReadVariableOpReadVariableOp:model_convlstm2d_1_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype021
/model/ConvLSTM2D_1/while/split_1/ReadVariableOp?
 model/ConvLSTM2D_1/while/split_1Split3model/ConvLSTM2D_1/while/split_1/split_dim:output:07model/ConvLSTM2D_1/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2"
 model/ConvLSTM2D_1/while/split_1?
*model/ConvLSTM2D_1/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model/ConvLSTM2D_1/while/split_2/split_dim?
/model/ConvLSTM2D_1/while/split_2/ReadVariableOpReadVariableOp:model_convlstm2d_1_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/model/ConvLSTM2D_1/while/split_2/ReadVariableOp?
 model/ConvLSTM2D_1/while/split_2Split3model/ConvLSTM2D_1/while/split_2/split_dim:output:07model/ConvLSTM2D_1/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2"
 model/ConvLSTM2D_1/while/split_2?
$model/ConvLSTM2D_1/while/convolutionConv2DCmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_1/while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2&
$model/ConvLSTM2D_1/while/convolution?
 model/ConvLSTM2D_1/while/BiasAddBiasAdd-model/ConvLSTM2D_1/while/convolution:output:0)model/ConvLSTM2D_1/while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2"
 model/ConvLSTM2D_1/while/BiasAdd?
&model/ConvLSTM2D_1/while/convolution_1Conv2DCmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_1/while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_1?
"model/ConvLSTM2D_1/while/BiasAdd_1BiasAdd/model/ConvLSTM2D_1/while/convolution_1:output:0)model/ConvLSTM2D_1/while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_1/while/BiasAdd_1?
&model/ConvLSTM2D_1/while/convolution_2Conv2DCmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_1/while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_2?
"model/ConvLSTM2D_1/while/BiasAdd_2BiasAdd/model/ConvLSTM2D_1/while/convolution_2:output:0)model/ConvLSTM2D_1/while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_1/while/BiasAdd_2?
&model/ConvLSTM2D_1/while/convolution_3Conv2DCmodel/ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_1/while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_3?
"model/ConvLSTM2D_1/while/BiasAdd_3BiasAdd/model/ConvLSTM2D_1/while/convolution_3:output:0)model/ConvLSTM2D_1/while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_1/while/BiasAdd_3?
&model/ConvLSTM2D_1/while/convolution_4Conv2D&model_convlstm2d_1_while_placeholder_2)model/ConvLSTM2D_1/while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_4?
&model/ConvLSTM2D_1/while/convolution_5Conv2D&model_convlstm2d_1_while_placeholder_2)model/ConvLSTM2D_1/while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_5?
&model/ConvLSTM2D_1/while/convolution_6Conv2D&model_convlstm2d_1_while_placeholder_2)model/ConvLSTM2D_1/while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_6?
&model/ConvLSTM2D_1/while/convolution_7Conv2D&model_convlstm2d_1_while_placeholder_2)model/ConvLSTM2D_1/while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_1/while/convolution_7?
model/ConvLSTM2D_1/while/addAddV2)model/ConvLSTM2D_1/while/BiasAdd:output:0/model/ConvLSTM2D_1/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/while/add?
model/ConvLSTM2D_1/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model/ConvLSTM2D_1/while/Const?
 model/ConvLSTM2D_1/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model/ConvLSTM2D_1/while/Const_1?
model/ConvLSTM2D_1/while/MulMul model/ConvLSTM2D_1/while/add:z:0'model/ConvLSTM2D_1/while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/while/Mul?
model/ConvLSTM2D_1/while/Add_1Add model/ConvLSTM2D_1/while/Mul:z:0)model/ConvLSTM2D_1/while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/Add_1?
0model/ConvLSTM2D_1/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model/ConvLSTM2D_1/while/clip_by_value/Minimum/y?
.model/ConvLSTM2D_1/while/clip_by_value/MinimumMinimum"model/ConvLSTM2D_1/while/Add_1:z:09model/ConvLSTM2D_1/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 20
.model/ConvLSTM2D_1/while/clip_by_value/Minimum?
(model/ConvLSTM2D_1/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model/ConvLSTM2D_1/while/clip_by_value/y?
&model/ConvLSTM2D_1/while/clip_by_valueMaximum2model/ConvLSTM2D_1/while/clip_by_value/Minimum:z:01model/ConvLSTM2D_1/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2(
&model/ConvLSTM2D_1/while/clip_by_value?
model/ConvLSTM2D_1/while/add_2AddV2+model/ConvLSTM2D_1/while/BiasAdd_1:output:0/model/ConvLSTM2D_1/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/add_2?
 model/ConvLSTM2D_1/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model/ConvLSTM2D_1/while/Const_2?
 model/ConvLSTM2D_1/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model/ConvLSTM2D_1/while/Const_3?
model/ConvLSTM2D_1/while/Mul_1Mul"model/ConvLSTM2D_1/while/add_2:z:0)model/ConvLSTM2D_1/while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/Mul_1?
model/ConvLSTM2D_1/while/Add_3Add"model/ConvLSTM2D_1/while/Mul_1:z:0)model/ConvLSTM2D_1/while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/Add_3?
2model/ConvLSTM2D_1/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model/ConvLSTM2D_1/while/clip_by_value_1/Minimum/y?
0model/ConvLSTM2D_1/while/clip_by_value_1/MinimumMinimum"model/ConvLSTM2D_1/while/Add_3:z:0;model/ConvLSTM2D_1/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 22
0model/ConvLSTM2D_1/while/clip_by_value_1/Minimum?
*model/ConvLSTM2D_1/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model/ConvLSTM2D_1/while/clip_by_value_1/y?
(model/ConvLSTM2D_1/while/clip_by_value_1Maximum4model/ConvLSTM2D_1/while/clip_by_value_1/Minimum:z:03model/ConvLSTM2D_1/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(model/ConvLSTM2D_1/while/clip_by_value_1?
model/ConvLSTM2D_1/while/mul_2Mul,model/ConvLSTM2D_1/while/clip_by_value_1:z:0&model_convlstm2d_1_while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/mul_2?
model/ConvLSTM2D_1/while/add_4AddV2+model/ConvLSTM2D_1/while/BiasAdd_2:output:0/model/ConvLSTM2D_1/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/add_4?
model/ConvLSTM2D_1/while/ReluRelu"model/ConvLSTM2D_1/while/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_1/while/Relu?
model/ConvLSTM2D_1/while/mul_3Mul*model/ConvLSTM2D_1/while/clip_by_value:z:0+model/ConvLSTM2D_1/while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/mul_3?
model/ConvLSTM2D_1/while/add_5AddV2"model/ConvLSTM2D_1/while/mul_2:z:0"model/ConvLSTM2D_1/while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/add_5?
model/ConvLSTM2D_1/while/add_6AddV2+model/ConvLSTM2D_1/while/BiasAdd_3:output:0/model/ConvLSTM2D_1/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/add_6?
 model/ConvLSTM2D_1/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model/ConvLSTM2D_1/while/Const_4?
 model/ConvLSTM2D_1/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model/ConvLSTM2D_1/while/Const_5?
model/ConvLSTM2D_1/while/Mul_4Mul"model/ConvLSTM2D_1/while/add_6:z:0)model/ConvLSTM2D_1/while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/Mul_4?
model/ConvLSTM2D_1/while/Add_7Add"model/ConvLSTM2D_1/while/Mul_4:z:0)model/ConvLSTM2D_1/while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/Add_7?
2model/ConvLSTM2D_1/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model/ConvLSTM2D_1/while/clip_by_value_2/Minimum/y?
0model/ConvLSTM2D_1/while/clip_by_value_2/MinimumMinimum"model/ConvLSTM2D_1/while/Add_7:z:0;model/ConvLSTM2D_1/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 22
0model/ConvLSTM2D_1/while/clip_by_value_2/Minimum?
*model/ConvLSTM2D_1/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model/ConvLSTM2D_1/while/clip_by_value_2/y?
(model/ConvLSTM2D_1/while/clip_by_value_2Maximum4model/ConvLSTM2D_1/while/clip_by_value_2/Minimum:z:03model/ConvLSTM2D_1/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(model/ConvLSTM2D_1/while/clip_by_value_2?
model/ConvLSTM2D_1/while/Relu_1Relu"model/ConvLSTM2D_1/while/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2!
model/ConvLSTM2D_1/while/Relu_1?
model/ConvLSTM2D_1/while/mul_5Mul,model/ConvLSTM2D_1/while/clip_by_value_2:z:0-model/ConvLSTM2D_1/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_1/while/mul_5?
=model/ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&model_convlstm2d_1_while_placeholder_1$model_convlstm2d_1_while_placeholder"model/ConvLSTM2D_1/while/mul_5:z:0*
_output_shapes
: *
element_dtype02?
=model/ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItem?
 model/ConvLSTM2D_1/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/ConvLSTM2D_1/while/add_8/y?
model/ConvLSTM2D_1/while/add_8AddV2$model_convlstm2d_1_while_placeholder)model/ConvLSTM2D_1/while/add_8/y:output:0*
T0*
_output_shapes
: 2 
model/ConvLSTM2D_1/while/add_8?
 model/ConvLSTM2D_1/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/ConvLSTM2D_1/while/add_9/y?
model/ConvLSTM2D_1/while/add_9AddV2>model_convlstm2d_1_while_model_convlstm2d_1_while_loop_counter)model/ConvLSTM2D_1/while/add_9/y:output:0*
T0*
_output_shapes
: 2 
model/ConvLSTM2D_1/while/add_9?
!model/ConvLSTM2D_1/while/IdentityIdentity"model/ConvLSTM2D_1/while/add_9:z:0.^model/ConvLSTM2D_1/while/split/ReadVariableOp0^model/ConvLSTM2D_1/while/split_1/ReadVariableOp0^model/ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2#
!model/ConvLSTM2D_1/while/Identity?
#model/ConvLSTM2D_1/while/Identity_1IdentityDmodel_convlstm2d_1_while_model_convlstm2d_1_while_maximum_iterations.^model/ConvLSTM2D_1/while/split/ReadVariableOp0^model/ConvLSTM2D_1/while/split_1/ReadVariableOp0^model/ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/ConvLSTM2D_1/while/Identity_1?
#model/ConvLSTM2D_1/while/Identity_2Identity"model/ConvLSTM2D_1/while/add_8:z:0.^model/ConvLSTM2D_1/while/split/ReadVariableOp0^model/ConvLSTM2D_1/while/split_1/ReadVariableOp0^model/ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/ConvLSTM2D_1/while/Identity_2?
#model/ConvLSTM2D_1/while/Identity_3IdentityMmodel/ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^model/ConvLSTM2D_1/while/split/ReadVariableOp0^model/ConvLSTM2D_1/while/split_1/ReadVariableOp0^model/ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/ConvLSTM2D_1/while/Identity_3?
#model/ConvLSTM2D_1/while/Identity_4Identity"model/ConvLSTM2D_1/while/mul_5:z:0.^model/ConvLSTM2D_1/while/split/ReadVariableOp0^model/ConvLSTM2D_1/while/split_1/ReadVariableOp0^model/ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2%
#model/ConvLSTM2D_1/while/Identity_4?
#model/ConvLSTM2D_1/while/Identity_5Identity"model/ConvLSTM2D_1/while/add_5:z:0.^model/ConvLSTM2D_1/while/split/ReadVariableOp0^model/ConvLSTM2D_1/while/split_1/ReadVariableOp0^model/ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2%
#model/ConvLSTM2D_1/while/Identity_5"O
!model_convlstm2d_1_while_identity*model/ConvLSTM2D_1/while/Identity:output:0"S
#model_convlstm2d_1_while_identity_1,model/ConvLSTM2D_1/while/Identity_1:output:0"S
#model_convlstm2d_1_while_identity_2,model/ConvLSTM2D_1/while/Identity_2:output:0"S
#model_convlstm2d_1_while_identity_3,model/ConvLSTM2D_1/while/Identity_3:output:0"S
#model_convlstm2d_1_while_identity_4,model/ConvLSTM2D_1/while/Identity_4:output:0"S
#model_convlstm2d_1_while_identity_5,model/ConvLSTM2D_1/while/Identity_5:output:0"x
9model_convlstm2d_1_while_model_convlstm2d_1_strided_slice;model_convlstm2d_1_while_model_convlstm2d_1_strided_slice_0"v
8model_convlstm2d_1_while_split_1_readvariableop_resource:model_convlstm2d_1_while_split_1_readvariableop_resource_0"v
8model_convlstm2d_1_while_split_2_readvariableop_resource:model_convlstm2d_1_while_split_2_readvariableop_resource_0"r
6model_convlstm2d_1_while_split_readvariableop_resource8model_convlstm2d_1_while_split_readvariableop_resource_0"?
wmodel_convlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_1_tensorarrayunstack_tensorlistfromtensorymodel_convlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2^
-model/ConvLSTM2D_1/while/split/ReadVariableOp-model/ConvLSTM2D_1/while/split/ReadVariableOp2b
/model/ConvLSTM2D_1/while/split_1/ReadVariableOp/model/ConvLSTM2D_1/while/split_1/ReadVariableOp2b
/model/ConvLSTM2D_1/while/split_2/ReadVariableOp/model/ConvLSTM2D_1/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?n
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35786

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35660*
condR
while_cond_35659*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
while_cond_36305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_36305___redundant_placeholder03
/while_while_cond_36305___redundant_placeholder13
/while_while_cond_36305___redundant_placeholder23
/while_while_cond_36305___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?h
?
while_body_32961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0: ?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource: ?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?D
?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_31889

inputs

states
states_18
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd :?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd 
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates
?5
?

__inference__traced_save_37779
file_prefix8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop0
,savev2_convlstm3d_kernel_read_readvariableop.
*savev2_convlstm3d_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop2
.savev2_convlstm2d_1_kernel_read_readvariableop<
8savev2_convlstm2d_1_recurrent_kernel_read_readvariableop0
,savev2_convlstm2d_1_bias_read_readvariableop2
.savev2_convlstm2d_2_kernel_read_readvariableop<
8savev2_convlstm2d_2_recurrent_kernel_read_readvariableop0
,savev2_convlstm2d_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?	
value?	B?	B5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/5/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/6/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/7/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*A
value8B6B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:04savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop,savev2_convlstm3d_kernel_read_readvariableop*savev2_convlstm3d_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop.savev2_convlstm2d_1_kernel_read_readvariableop8savev2_convlstm2d_1_recurrent_kernel_read_readvariableop,savev2_convlstm2d_1_bias_read_readvariableop.savev2_convlstm2d_2_kernel_read_readvariableop8savev2_convlstm2d_2_recurrent_kernel_read_readvariableop,savev2_convlstm2d_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *%
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : : :: : : : :?: ?:?: ?: ?:?: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :0	,
*
_output_shapes
: : 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:?:-)
'
_output_shapes
: ?:!

_output_shapes	
:?:-)
'
_output_shapes
: ?:-)
'
_output_shapes
: ?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?h
?
while_body_35220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?D
?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_31077

inputs

states
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd:?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates
?$
?
@__inference_model_layer_call_and_return_conditional_losses_34027
input_1-
convlstm2d_1_33989:?-
convlstm2d_1_33991: ?!
convlstm2d_1_33993:	?'
batch_normalization_33996: '
batch_normalization_33998: '
batch_normalization_34000: '
batch_normalization_34002: -
convlstm2d_2_34005: ?-
convlstm2d_2_34007: ?!
convlstm2d_2_34009:	?)
batch_normalization_1_34012: )
batch_normalization_1_34014: )
batch_normalization_1_34016: )
batch_normalization_1_34018: .
convlstm3d_34021: 
convlstm3d_34023:
identity??$ConvLSTM2D_1/StatefulPartitionedCall?$ConvLSTM2D_2/StatefulPartitionedCall?"ConvLSTM3D/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?
$ConvLSTM2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_1convlstm2d_1_33989convlstm2d_1_33991convlstm2d_1_33993*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_337842&
$ConvLSTM2D_1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_1/StatefulPartitionedCall:output:0batch_normalization_33996batch_normalization_33998batch_normalization_34000batch_normalization_34002*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_335402-
+batch_normalization/StatefulPartitionedCall?
$ConvLSTM2D_2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0convlstm2d_2_34005convlstm2d_2_34007convlstm2d_2_34009*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_334822&
$ConvLSTM2D_2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_2/StatefulPartitionedCall:output:0batch_normalization_1_34012batch_normalization_1_34014batch_normalization_1_34016batch_normalization_1_34018*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_332362/
-batch_normalization_1/StatefulPartitionedCall?
"ConvLSTM3D/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0convlstm3d_34021convlstm3d_34023*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_331352$
"ConvLSTM3D/StatefulPartitionedCall?
IdentityIdentity+ConvLSTM3D/StatefulPartitionedCall:output:0%^ConvLSTM2D_1/StatefulPartitionedCall%^ConvLSTM2D_2/StatefulPartitionedCall#^ConvLSTM3D/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2L
$ConvLSTM2D_1/StatefulPartitionedCall$ConvLSTM2D_1/StatefulPartitionedCall2L
$ConvLSTM2D_2/StatefulPartitionedCall$ConvLSTM2D_2/StatefulPartitionedCall2H
"ConvLSTM3D/StatefulPartitionedCall"ConvLSTM3D/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????dd
!
_user_specified_name	input_1
?D
?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_31265

inputs

states
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd:?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates
?h
?
while_body_35660
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
,__inference_ConvLSTM2D_1_layer_call_fn_36017
inputs_0"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_311592
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????dd
"
_user_specified_name
inputs/0
?h
?
while_body_36972
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0: ?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource: ?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
%__inference_model_layer_call_fn_35089

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: $
	unknown_6: ?$
	unknown_7: ?
	unknown_8:	?
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: (

unknown_13: 

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_331422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
#model_ConvLSTM2D_2_while_cond_30825B
>model_convlstm2d_2_while_model_convlstm2d_2_while_loop_counterH
Dmodel_convlstm2d_2_while_model_convlstm2d_2_while_maximum_iterations(
$model_convlstm2d_2_while_placeholder*
&model_convlstm2d_2_while_placeholder_1*
&model_convlstm2d_2_while_placeholder_2*
&model_convlstm2d_2_while_placeholder_3B
>model_convlstm2d_2_while_less_model_convlstm2d_2_strided_sliceY
Umodel_convlstm2d_2_while_model_convlstm2d_2_while_cond_30825___redundant_placeholder0Y
Umodel_convlstm2d_2_while_model_convlstm2d_2_while_cond_30825___redundant_placeholder1Y
Umodel_convlstm2d_2_while_model_convlstm2d_2_while_cond_30825___redundant_placeholder2Y
Umodel_convlstm2d_2_while_model_convlstm2d_2_while_cond_30825___redundant_placeholder3%
!model_convlstm2d_2_while_identity
?
model/ConvLSTM2D_2/while/LessLess$model_convlstm2d_2_while_placeholder>model_convlstm2d_2_while_less_model_convlstm2d_2_strided_slice*
T0*
_output_shapes
: 2
model/ConvLSTM2D_2/while/Less?
!model/ConvLSTM2D_2/while/IdentityIdentity!model/ConvLSTM2D_2/while/Less:z:0*
T0
*
_output_shapes
: 2#
!model/ConvLSTM2D_2/while/Identity"O
!model_convlstm2d_2_while_identity*model/ConvLSTM2D_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?n
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_33784

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_33658*
condR
while_cond_33657*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_33114

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?D
?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_37397

inputs
states_0
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd:?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?+
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_33540

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
1__inference_conv_lst_m2d_cell_layer_call_fn_37489

inputs
states_0
states_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_310772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd:?????????dd :?????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?
?
%__inference_model_layer_call_fn_33177
input_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: $
	unknown_6: ?$
	unknown_7: ?
	unknown_8:	?
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: (

unknown_13: 

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_331422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????dd
!
_user_specified_name	input_1
?
?
5__inference_batch_normalization_1_layer_call_fn_37302

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_332362
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?p
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36432
inputs_08
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_36306*
condR
while_cond_36305*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????dd 
"
_user_specified_name
inputs/0
?
?
while_cond_32702
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_32702___redundant_placeholder03
/while_while_cond_32702___redundant_placeholder13
/while_while_cond_32702___redundant_placeholder23
/while_while_cond_32702___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?p
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_33482

inputs8
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_33356*
condR
while_cond_33355*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_33135

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd2	
BiasAddv
SigmoidSigmoidBiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:&??????????????????dd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_35126

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: $
	unknown_6: ?$
	unknown_7: ?
	unknown_8:	?
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: (

unknown_13: 

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_338732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?,
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37196

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?n
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35346
inputs_08
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35220*
condR
while_cond_35219*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????dd
"
_user_specified_name
inputs/0
?h
?
while_body_36750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0: ?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource: ?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?h
?
while_body_36306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0: ?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource: ?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?#
?
while_body_31903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_31927_0: ?(
while_31929_0: ?
while_31931_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_31927: ?&
while_31929: ?
while_31931:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_31927_0while_31929_0while_31931_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_318892
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1~
while/IdentityIdentitywhile/add_1:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5"
while_31927while_31927_0"
while_31929while_31929_0"
while_31931while_31931_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?n
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_32829

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_32703*
condR
while_cond_32702*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
,__inference_ConvLSTM2D_2_layer_call_fn_37131

inputs"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_330872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
while_cond_35219
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_35219___redundant_placeholder03
/while_while_cond_35219___redundant_placeholder13
/while_while_cond_35219___redundant_placeholder23
/while_while_cond_35219___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
??
?
ConvLSTM2D_2_while_body_343986
2convlstm2d_2_while_convlstm2d_2_while_loop_counter<
8convlstm2d_2_while_convlstm2d_2_while_maximum_iterations"
convlstm2d_2_while_placeholder$
 convlstm2d_2_while_placeholder_1$
 convlstm2d_2_while_placeholder_2$
 convlstm2d_2_while_placeholder_33
/convlstm2d_2_while_convlstm2d_2_strided_slice_0q
mconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0M
2convlstm2d_2_while_split_readvariableop_resource_0: ?O
4convlstm2d_2_while_split_1_readvariableop_resource_0: ?C
4convlstm2d_2_while_split_2_readvariableop_resource_0:	?
convlstm2d_2_while_identity!
convlstm2d_2_while_identity_1!
convlstm2d_2_while_identity_2!
convlstm2d_2_while_identity_3!
convlstm2d_2_while_identity_4!
convlstm2d_2_while_identity_51
-convlstm2d_2_while_convlstm2d_2_strided_sliceo
kconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensorK
0convlstm2d_2_while_split_readvariableop_resource: ?M
2convlstm2d_2_while_split_1_readvariableop_resource: ?A
2convlstm2d_2_while_split_2_readvariableop_resource:	???'ConvLSTM2D_2/while/split/ReadVariableOp?)ConvLSTM2D_2/while/split_1/ReadVariableOp?)ConvLSTM2D_2/while/split_2/ReadVariableOp?
DConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2F
DConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0convlstm2d_2_while_placeholderMConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype028
6ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem?
"ConvLSTM2D_2/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_2/while/split/split_dim?
'ConvLSTM2D_2/while/split/ReadVariableOpReadVariableOp2convlstm2d_2_while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02)
'ConvLSTM2D_2/while/split/ReadVariableOp?
ConvLSTM2D_2/while/splitSplit+ConvLSTM2D_2/while/split/split_dim:output:0/ConvLSTM2D_2/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/while/split?
$ConvLSTM2D_2/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$ConvLSTM2D_2/while/split_1/split_dim?
)ConvLSTM2D_2/while/split_1/ReadVariableOpReadVariableOp4convlstm2d_2_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02+
)ConvLSTM2D_2/while/split_1/ReadVariableOp?
ConvLSTM2D_2/while/split_1Split-ConvLSTM2D_2/while/split_1/split_dim:output:01ConvLSTM2D_2/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/while/split_1?
$ConvLSTM2D_2/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$ConvLSTM2D_2/while/split_2/split_dim?
)ConvLSTM2D_2/while/split_2/ReadVariableOpReadVariableOp4convlstm2d_2_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)ConvLSTM2D_2/while/split_2/ReadVariableOp?
ConvLSTM2D_2/while/split_2Split-ConvLSTM2D_2/while/split_2/split_dim:output:01ConvLSTM2D_2/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_2/while/split_2?
ConvLSTM2D_2/while/convolutionConv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2 
ConvLSTM2D_2/while/convolution?
ConvLSTM2D_2/while/BiasAddBiasAdd'ConvLSTM2D_2/while/convolution:output:0#ConvLSTM2D_2/while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd?
 ConvLSTM2D_2/while/convolution_1Conv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_1?
ConvLSTM2D_2/while/BiasAdd_1BiasAdd)ConvLSTM2D_2/while/convolution_1:output:0#ConvLSTM2D_2/while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd_1?
 ConvLSTM2D_2/while/convolution_2Conv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_2?
ConvLSTM2D_2/while/BiasAdd_2BiasAdd)ConvLSTM2D_2/while/convolution_2:output:0#ConvLSTM2D_2/while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd_2?
 ConvLSTM2D_2/while/convolution_3Conv2D=ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_2/while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_3?
ConvLSTM2D_2/while/BiasAdd_3BiasAdd)ConvLSTM2D_2/while/convolution_3:output:0#ConvLSTM2D_2/while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/BiasAdd_3?
 ConvLSTM2D_2/while/convolution_4Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_4?
 ConvLSTM2D_2/while/convolution_5Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_5?
 ConvLSTM2D_2/while/convolution_6Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_6?
 ConvLSTM2D_2/while/convolution_7Conv2D convlstm2d_2_while_placeholder_2#ConvLSTM2D_2/while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_2/while/convolution_7?
ConvLSTM2D_2/while/addAddV2#ConvLSTM2D_2/while/BiasAdd:output:0)ConvLSTM2D_2/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/addy
ConvLSTM2D_2/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/while/Const}
ConvLSTM2D_2/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/while/Const_1?
ConvLSTM2D_2/while/MulMulConvLSTM2D_2/while/add:z:0!ConvLSTM2D_2/while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Mul?
ConvLSTM2D_2/while/Add_1AddConvLSTM2D_2/while/Mul:z:0#ConvLSTM2D_2/while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Add_1?
*ConvLSTM2D_2/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*ConvLSTM2D_2/while/clip_by_value/Minimum/y?
(ConvLSTM2D_2/while/clip_by_value/MinimumMinimumConvLSTM2D_2/while/Add_1:z:03ConvLSTM2D_2/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(ConvLSTM2D_2/while/clip_by_value/Minimum?
"ConvLSTM2D_2/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"ConvLSTM2D_2/while/clip_by_value/y?
 ConvLSTM2D_2/while/clip_by_valueMaximum,ConvLSTM2D_2/while/clip_by_value/Minimum:z:0+ConvLSTM2D_2/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2"
 ConvLSTM2D_2/while/clip_by_value?
ConvLSTM2D_2/while/add_2AddV2%ConvLSTM2D_2/while/BiasAdd_1:output:0)ConvLSTM2D_2/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_2}
ConvLSTM2D_2/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/while/Const_2}
ConvLSTM2D_2/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/while/Const_3?
ConvLSTM2D_2/while/Mul_1MulConvLSTM2D_2/while/add_2:z:0#ConvLSTM2D_2/while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Mul_1?
ConvLSTM2D_2/while/Add_3AddConvLSTM2D_2/while/Mul_1:z:0#ConvLSTM2D_2/while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Add_3?
,ConvLSTM2D_2/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_2/while/clip_by_value_1/Minimum/y?
*ConvLSTM2D_2/while/clip_by_value_1/MinimumMinimumConvLSTM2D_2/while/Add_3:z:05ConvLSTM2D_2/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_2/while/clip_by_value_1/Minimum?
$ConvLSTM2D_2/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_2/while/clip_by_value_1/y?
"ConvLSTM2D_2/while/clip_by_value_1Maximum.ConvLSTM2D_2/while/clip_by_value_1/Minimum:z:0-ConvLSTM2D_2/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_2/while/clip_by_value_1?
ConvLSTM2D_2/while/mul_2Mul&ConvLSTM2D_2/while/clip_by_value_1:z:0 convlstm2d_2_while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/mul_2?
ConvLSTM2D_2/while/add_4AddV2%ConvLSTM2D_2/while/BiasAdd_2:output:0)ConvLSTM2D_2/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_4?
ConvLSTM2D_2/while/ReluReluConvLSTM2D_2/while/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Relu?
ConvLSTM2D_2/while/mul_3Mul$ConvLSTM2D_2/while/clip_by_value:z:0%ConvLSTM2D_2/while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/mul_3?
ConvLSTM2D_2/while/add_5AddV2ConvLSTM2D_2/while/mul_2:z:0ConvLSTM2D_2/while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_5?
ConvLSTM2D_2/while/add_6AddV2%ConvLSTM2D_2/while/BiasAdd_3:output:0)ConvLSTM2D_2/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/add_6}
ConvLSTM2D_2/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/while/Const_4}
ConvLSTM2D_2/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/while/Const_5?
ConvLSTM2D_2/while/Mul_4MulConvLSTM2D_2/while/add_6:z:0#ConvLSTM2D_2/while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Mul_4?
ConvLSTM2D_2/while/Add_7AddConvLSTM2D_2/while/Mul_4:z:0#ConvLSTM2D_2/while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Add_7?
,ConvLSTM2D_2/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_2/while/clip_by_value_2/Minimum/y?
*ConvLSTM2D_2/while/clip_by_value_2/MinimumMinimumConvLSTM2D_2/while/Add_7:z:05ConvLSTM2D_2/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_2/while/clip_by_value_2/Minimum?
$ConvLSTM2D_2/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_2/while/clip_by_value_2/y?
"ConvLSTM2D_2/while/clip_by_value_2Maximum.ConvLSTM2D_2/while/clip_by_value_2/Minimum:z:0-ConvLSTM2D_2/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_2/while/clip_by_value_2?
ConvLSTM2D_2/while/Relu_1ReluConvLSTM2D_2/while/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Relu_1?
ConvLSTM2D_2/while/mul_5Mul&ConvLSTM2D_2/while/clip_by_value_2:z:0'ConvLSTM2D_2/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/mul_5?
7ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem convlstm2d_2_while_placeholder_1convlstm2d_2_while_placeholderConvLSTM2D_2/while/mul_5:z:0*
_output_shapes
: *
element_dtype029
7ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItemz
ConvLSTM2D_2/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_2/while/add_8/y?
ConvLSTM2D_2/while/add_8AddV2convlstm2d_2_while_placeholder#ConvLSTM2D_2/while/add_8/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/add_8z
ConvLSTM2D_2/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_2/while/add_9/y?
ConvLSTM2D_2/while/add_9AddV22convlstm2d_2_while_convlstm2d_2_while_loop_counter#ConvLSTM2D_2/while/add_9/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/add_9?
ConvLSTM2D_2/while/IdentityIdentityConvLSTM2D_2/while/add_9:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity?
ConvLSTM2D_2/while/Identity_1Identity8convlstm2d_2_while_convlstm2d_2_while_maximum_iterations(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity_1?
ConvLSTM2D_2/while/Identity_2IdentityConvLSTM2D_2/while/add_8:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity_2?
ConvLSTM2D_2/while/Identity_3IdentityGConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity_3?
ConvLSTM2D_2/while/Identity_4IdentityConvLSTM2D_2/while/mul_5:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Identity_4?
ConvLSTM2D_2/while/Identity_5IdentityConvLSTM2D_2/while/add_5:z:0(^ConvLSTM2D_2/while/split/ReadVariableOp*^ConvLSTM2D_2/while/split_1/ReadVariableOp*^ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/while/Identity_5"`
-convlstm2d_2_while_convlstm2d_2_strided_slice/convlstm2d_2_while_convlstm2d_2_strided_slice_0"C
convlstm2d_2_while_identity$ConvLSTM2D_2/while/Identity:output:0"G
convlstm2d_2_while_identity_1&ConvLSTM2D_2/while/Identity_1:output:0"G
convlstm2d_2_while_identity_2&ConvLSTM2D_2/while/Identity_2:output:0"G
convlstm2d_2_while_identity_3&ConvLSTM2D_2/while/Identity_3:output:0"G
convlstm2d_2_while_identity_4&ConvLSTM2D_2/while/Identity_4:output:0"G
convlstm2d_2_while_identity_5&ConvLSTM2D_2/while/Identity_5:output:0"j
2convlstm2d_2_while_split_1_readvariableop_resource4convlstm2d_2_while_split_1_readvariableop_resource_0"j
2convlstm2d_2_while_split_2_readvariableop_resource4convlstm2d_2_while_split_2_readvariableop_resource_0"f
0convlstm2d_2_while_split_readvariableop_resource2convlstm2d_2_while_split_readvariableop_resource_0"?
kconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensormconvlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2R
'ConvLSTM2D_2/while/split/ReadVariableOp'ConvLSTM2D_2/while/split/ReadVariableOp2V
)ConvLSTM2D_2/while/split_1/ReadVariableOp)ConvLSTM2D_2/while/split_1/ReadVariableOp2V
)ConvLSTM2D_2/while/split_2/ReadVariableOp)ConvLSTM2D_2/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
1__inference_conv_lst_m2d_cell_layer_call_fn_37506

inputs
states_0
states_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_312652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd:?????????dd :?????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?D
?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_37581

inputs
states_0
states_18
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd :?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd 
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?	
?
3__inference_batch_normalization_layer_call_fn_36184

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8???????????????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_317072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
ǖ
?
#model_ConvLSTM2D_2_while_body_30826B
>model_convlstm2d_2_while_model_convlstm2d_2_while_loop_counterH
Dmodel_convlstm2d_2_while_model_convlstm2d_2_while_maximum_iterations(
$model_convlstm2d_2_while_placeholder*
&model_convlstm2d_2_while_placeholder_1*
&model_convlstm2d_2_while_placeholder_2*
&model_convlstm2d_2_while_placeholder_3?
;model_convlstm2d_2_while_model_convlstm2d_2_strided_slice_0}
ymodel_convlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0S
8model_convlstm2d_2_while_split_readvariableop_resource_0: ?U
:model_convlstm2d_2_while_split_1_readvariableop_resource_0: ?I
:model_convlstm2d_2_while_split_2_readvariableop_resource_0:	?%
!model_convlstm2d_2_while_identity'
#model_convlstm2d_2_while_identity_1'
#model_convlstm2d_2_while_identity_2'
#model_convlstm2d_2_while_identity_3'
#model_convlstm2d_2_while_identity_4'
#model_convlstm2d_2_while_identity_5=
9model_convlstm2d_2_while_model_convlstm2d_2_strided_slice{
wmodel_convlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_2_tensorarrayunstack_tensorlistfromtensorQ
6model_convlstm2d_2_while_split_readvariableop_resource: ?S
8model_convlstm2d_2_while_split_1_readvariableop_resource: ?G
8model_convlstm2d_2_while_split_2_readvariableop_resource:	???-model/ConvLSTM2D_2/while/split/ReadVariableOp?/model/ConvLSTM2D_2/while/split_1/ReadVariableOp?/model/ConvLSTM2D_2/while/split_2/ReadVariableOp?
Jmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2L
Jmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shape?
<model/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemymodel_convlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0$model_convlstm2d_2_while_placeholderSmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02>
<model/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem?
(model/ConvLSTM2D_2/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/ConvLSTM2D_2/while/split/split_dim?
-model/ConvLSTM2D_2/while/split/ReadVariableOpReadVariableOp8model_convlstm2d_2_while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02/
-model/ConvLSTM2D_2/while/split/ReadVariableOp?
model/ConvLSTM2D_2/while/splitSplit1model/ConvLSTM2D_2/while/split/split_dim:output:05model/ConvLSTM2D_2/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2 
model/ConvLSTM2D_2/while/split?
*model/ConvLSTM2D_2/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2,
*model/ConvLSTM2D_2/while/split_1/split_dim?
/model/ConvLSTM2D_2/while/split_1/ReadVariableOpReadVariableOp:model_convlstm2d_2_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype021
/model/ConvLSTM2D_2/while/split_1/ReadVariableOp?
 model/ConvLSTM2D_2/while/split_1Split3model/ConvLSTM2D_2/while/split_1/split_dim:output:07model/ConvLSTM2D_2/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2"
 model/ConvLSTM2D_2/while/split_1?
*model/ConvLSTM2D_2/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*model/ConvLSTM2D_2/while/split_2/split_dim?
/model/ConvLSTM2D_2/while/split_2/ReadVariableOpReadVariableOp:model_convlstm2d_2_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype021
/model/ConvLSTM2D_2/while/split_2/ReadVariableOp?
 model/ConvLSTM2D_2/while/split_2Split3model/ConvLSTM2D_2/while/split_2/split_dim:output:07model/ConvLSTM2D_2/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2"
 model/ConvLSTM2D_2/while/split_2?
$model/ConvLSTM2D_2/while/convolutionConv2DCmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_2/while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2&
$model/ConvLSTM2D_2/while/convolution?
 model/ConvLSTM2D_2/while/BiasAddBiasAdd-model/ConvLSTM2D_2/while/convolution:output:0)model/ConvLSTM2D_2/while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2"
 model/ConvLSTM2D_2/while/BiasAdd?
&model/ConvLSTM2D_2/while/convolution_1Conv2DCmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_2/while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_1?
"model/ConvLSTM2D_2/while/BiasAdd_1BiasAdd/model/ConvLSTM2D_2/while/convolution_1:output:0)model/ConvLSTM2D_2/while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_2/while/BiasAdd_1?
&model/ConvLSTM2D_2/while/convolution_2Conv2DCmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_2/while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_2?
"model/ConvLSTM2D_2/while/BiasAdd_2BiasAdd/model/ConvLSTM2D_2/while/convolution_2:output:0)model/ConvLSTM2D_2/while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_2/while/BiasAdd_2?
&model/ConvLSTM2D_2/while/convolution_3Conv2DCmodel/ConvLSTM2D_2/while/TensorArrayV2Read/TensorListGetItem:item:0'model/ConvLSTM2D_2/while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_3?
"model/ConvLSTM2D_2/while/BiasAdd_3BiasAdd/model/ConvLSTM2D_2/while/convolution_3:output:0)model/ConvLSTM2D_2/while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2$
"model/ConvLSTM2D_2/while/BiasAdd_3?
&model/ConvLSTM2D_2/while/convolution_4Conv2D&model_convlstm2d_2_while_placeholder_2)model/ConvLSTM2D_2/while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_4?
&model/ConvLSTM2D_2/while/convolution_5Conv2D&model_convlstm2d_2_while_placeholder_2)model/ConvLSTM2D_2/while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_5?
&model/ConvLSTM2D_2/while/convolution_6Conv2D&model_convlstm2d_2_while_placeholder_2)model/ConvLSTM2D_2/while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_6?
&model/ConvLSTM2D_2/while/convolution_7Conv2D&model_convlstm2d_2_while_placeholder_2)model/ConvLSTM2D_2/while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2(
&model/ConvLSTM2D_2/while/convolution_7?
model/ConvLSTM2D_2/while/addAddV2)model/ConvLSTM2D_2/while/BiasAdd:output:0/model/ConvLSTM2D_2/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/while/add?
model/ConvLSTM2D_2/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2 
model/ConvLSTM2D_2/while/Const?
 model/ConvLSTM2D_2/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model/ConvLSTM2D_2/while/Const_1?
model/ConvLSTM2D_2/while/MulMul model/ConvLSTM2D_2/while/add:z:0'model/ConvLSTM2D_2/while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/while/Mul?
model/ConvLSTM2D_2/while/Add_1Add model/ConvLSTM2D_2/while/Mul:z:0)model/ConvLSTM2D_2/while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/Add_1?
0model/ConvLSTM2D_2/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??22
0model/ConvLSTM2D_2/while/clip_by_value/Minimum/y?
.model/ConvLSTM2D_2/while/clip_by_value/MinimumMinimum"model/ConvLSTM2D_2/while/Add_1:z:09model/ConvLSTM2D_2/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 20
.model/ConvLSTM2D_2/while/clip_by_value/Minimum?
(model/ConvLSTM2D_2/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2*
(model/ConvLSTM2D_2/while/clip_by_value/y?
&model/ConvLSTM2D_2/while/clip_by_valueMaximum2model/ConvLSTM2D_2/while/clip_by_value/Minimum:z:01model/ConvLSTM2D_2/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2(
&model/ConvLSTM2D_2/while/clip_by_value?
model/ConvLSTM2D_2/while/add_2AddV2+model/ConvLSTM2D_2/while/BiasAdd_1:output:0/model/ConvLSTM2D_2/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/add_2?
 model/ConvLSTM2D_2/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model/ConvLSTM2D_2/while/Const_2?
 model/ConvLSTM2D_2/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model/ConvLSTM2D_2/while/Const_3?
model/ConvLSTM2D_2/while/Mul_1Mul"model/ConvLSTM2D_2/while/add_2:z:0)model/ConvLSTM2D_2/while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/Mul_1?
model/ConvLSTM2D_2/while/Add_3Add"model/ConvLSTM2D_2/while/Mul_1:z:0)model/ConvLSTM2D_2/while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/Add_3?
2model/ConvLSTM2D_2/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model/ConvLSTM2D_2/while/clip_by_value_1/Minimum/y?
0model/ConvLSTM2D_2/while/clip_by_value_1/MinimumMinimum"model/ConvLSTM2D_2/while/Add_3:z:0;model/ConvLSTM2D_2/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 22
0model/ConvLSTM2D_2/while/clip_by_value_1/Minimum?
*model/ConvLSTM2D_2/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model/ConvLSTM2D_2/while/clip_by_value_1/y?
(model/ConvLSTM2D_2/while/clip_by_value_1Maximum4model/ConvLSTM2D_2/while/clip_by_value_1/Minimum:z:03model/ConvLSTM2D_2/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(model/ConvLSTM2D_2/while/clip_by_value_1?
model/ConvLSTM2D_2/while/mul_2Mul,model/ConvLSTM2D_2/while/clip_by_value_1:z:0&model_convlstm2d_2_while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/mul_2?
model/ConvLSTM2D_2/while/add_4AddV2+model/ConvLSTM2D_2/while/BiasAdd_2:output:0/model/ConvLSTM2D_2/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/add_4?
model/ConvLSTM2D_2/while/ReluRelu"model/ConvLSTM2D_2/while/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
model/ConvLSTM2D_2/while/Relu?
model/ConvLSTM2D_2/while/mul_3Mul*model/ConvLSTM2D_2/while/clip_by_value:z:0+model/ConvLSTM2D_2/while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/mul_3?
model/ConvLSTM2D_2/while/add_5AddV2"model/ConvLSTM2D_2/while/mul_2:z:0"model/ConvLSTM2D_2/while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/add_5?
model/ConvLSTM2D_2/while/add_6AddV2+model/ConvLSTM2D_2/while/BiasAdd_3:output:0/model/ConvLSTM2D_2/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/add_6?
 model/ConvLSTM2D_2/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2"
 model/ConvLSTM2D_2/while/Const_4?
 model/ConvLSTM2D_2/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 model/ConvLSTM2D_2/while/Const_5?
model/ConvLSTM2D_2/while/Mul_4Mul"model/ConvLSTM2D_2/while/add_6:z:0)model/ConvLSTM2D_2/while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/Mul_4?
model/ConvLSTM2D_2/while/Add_7Add"model/ConvLSTM2D_2/while/Mul_4:z:0)model/ConvLSTM2D_2/while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/Add_7?
2model/ConvLSTM2D_2/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??24
2model/ConvLSTM2D_2/while/clip_by_value_2/Minimum/y?
0model/ConvLSTM2D_2/while/clip_by_value_2/MinimumMinimum"model/ConvLSTM2D_2/while/Add_7:z:0;model/ConvLSTM2D_2/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 22
0model/ConvLSTM2D_2/while/clip_by_value_2/Minimum?
*model/ConvLSTM2D_2/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2,
*model/ConvLSTM2D_2/while/clip_by_value_2/y?
(model/ConvLSTM2D_2/while/clip_by_value_2Maximum4model/ConvLSTM2D_2/while/clip_by_value_2/Minimum:z:03model/ConvLSTM2D_2/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(model/ConvLSTM2D_2/while/clip_by_value_2?
model/ConvLSTM2D_2/while/Relu_1Relu"model/ConvLSTM2D_2/while/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2!
model/ConvLSTM2D_2/while/Relu_1?
model/ConvLSTM2D_2/while/mul_5Mul,model/ConvLSTM2D_2/while/clip_by_value_2:z:0-model/ConvLSTM2D_2/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2 
model/ConvLSTM2D_2/while/mul_5?
=model/ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem&model_convlstm2d_2_while_placeholder_1$model_convlstm2d_2_while_placeholder"model/ConvLSTM2D_2/while/mul_5:z:0*
_output_shapes
: *
element_dtype02?
=model/ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItem?
 model/ConvLSTM2D_2/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/ConvLSTM2D_2/while/add_8/y?
model/ConvLSTM2D_2/while/add_8AddV2$model_convlstm2d_2_while_placeholder)model/ConvLSTM2D_2/while/add_8/y:output:0*
T0*
_output_shapes
: 2 
model/ConvLSTM2D_2/while/add_8?
 model/ConvLSTM2D_2/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2"
 model/ConvLSTM2D_2/while/add_9/y?
model/ConvLSTM2D_2/while/add_9AddV2>model_convlstm2d_2_while_model_convlstm2d_2_while_loop_counter)model/ConvLSTM2D_2/while/add_9/y:output:0*
T0*
_output_shapes
: 2 
model/ConvLSTM2D_2/while/add_9?
!model/ConvLSTM2D_2/while/IdentityIdentity"model/ConvLSTM2D_2/while/add_9:z:0.^model/ConvLSTM2D_2/while/split/ReadVariableOp0^model/ConvLSTM2D_2/while/split_1/ReadVariableOp0^model/ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2#
!model/ConvLSTM2D_2/while/Identity?
#model/ConvLSTM2D_2/while/Identity_1IdentityDmodel_convlstm2d_2_while_model_convlstm2d_2_while_maximum_iterations.^model/ConvLSTM2D_2/while/split/ReadVariableOp0^model/ConvLSTM2D_2/while/split_1/ReadVariableOp0^model/ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/ConvLSTM2D_2/while/Identity_1?
#model/ConvLSTM2D_2/while/Identity_2Identity"model/ConvLSTM2D_2/while/add_8:z:0.^model/ConvLSTM2D_2/while/split/ReadVariableOp0^model/ConvLSTM2D_2/while/split_1/ReadVariableOp0^model/ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/ConvLSTM2D_2/while/Identity_2?
#model/ConvLSTM2D_2/while/Identity_3IdentityMmodel/ConvLSTM2D_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0.^model/ConvLSTM2D_2/while/split/ReadVariableOp0^model/ConvLSTM2D_2/while/split_1/ReadVariableOp0^model/ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2%
#model/ConvLSTM2D_2/while/Identity_3?
#model/ConvLSTM2D_2/while/Identity_4Identity"model/ConvLSTM2D_2/while/mul_5:z:0.^model/ConvLSTM2D_2/while/split/ReadVariableOp0^model/ConvLSTM2D_2/while/split_1/ReadVariableOp0^model/ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2%
#model/ConvLSTM2D_2/while/Identity_4?
#model/ConvLSTM2D_2/while/Identity_5Identity"model/ConvLSTM2D_2/while/add_5:z:0.^model/ConvLSTM2D_2/while/split/ReadVariableOp0^model/ConvLSTM2D_2/while/split_1/ReadVariableOp0^model/ConvLSTM2D_2/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2%
#model/ConvLSTM2D_2/while/Identity_5"O
!model_convlstm2d_2_while_identity*model/ConvLSTM2D_2/while/Identity:output:0"S
#model_convlstm2d_2_while_identity_1,model/ConvLSTM2D_2/while/Identity_1:output:0"S
#model_convlstm2d_2_while_identity_2,model/ConvLSTM2D_2/while/Identity_2:output:0"S
#model_convlstm2d_2_while_identity_3,model/ConvLSTM2D_2/while/Identity_3:output:0"S
#model_convlstm2d_2_while_identity_4,model/ConvLSTM2D_2/while/Identity_4:output:0"S
#model_convlstm2d_2_while_identity_5,model/ConvLSTM2D_2/while/Identity_5:output:0"x
9model_convlstm2d_2_while_model_convlstm2d_2_strided_slice;model_convlstm2d_2_while_model_convlstm2d_2_strided_slice_0"v
8model_convlstm2d_2_while_split_1_readvariableop_resource:model_convlstm2d_2_while_split_1_readvariableop_resource_0"v
8model_convlstm2d_2_while_split_2_readvariableop_resource:model_convlstm2d_2_while_split_2_readvariableop_resource_0"r
6model_convlstm2d_2_while_split_readvariableop_resource8model_convlstm2d_2_while_split_readvariableop_resource_0"?
wmodel_convlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_2_tensorarrayunstack_tensorlistfromtensorymodel_convlstm2d_2_while_tensorarrayv2read_tensorlistgetitem_model_convlstm2d_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2^
-model/ConvLSTM2D_2/while/split/ReadVariableOp-model/ConvLSTM2D_2/while/split/ReadVariableOp2b
/model/ConvLSTM2D_2/while/split_1/ReadVariableOp/model/ConvLSTM2D_2/while/split_1/ReadVariableOp2b
/model/ConvLSTM2D_2/while/split_2/ReadVariableOp/model/ConvLSTM2D_2/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
3__inference_batch_normalization_layer_call_fn_36197

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_328562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_37313

inputs<
conv3d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv3D/ReadVariableOp?
Conv3D/ReadVariableOpReadVariableOpconv3d_readvariableop_resource**
_output_shapes
: *
dtype02
Conv3D/ReadVariableOp?
Conv3DConv3DinputsConv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd*
paddingSAME*
strides	
2
Conv3D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv3D:output:0BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd2	
BiasAddv
SigmoidSigmoidBiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^Conv3D/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,:&??????????????????dd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv3D/ReadVariableOpConv3D/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
,__inference_ConvLSTM2D_1_layer_call_fn_36050

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_337842
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?+
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_33236

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
ConvLSTM2D_2_while_cond_348886
2convlstm2d_2_while_convlstm2d_2_while_loop_counter<
8convlstm2d_2_while_convlstm2d_2_while_maximum_iterations"
convlstm2d_2_while_placeholder$
 convlstm2d_2_while_placeholder_1$
 convlstm2d_2_while_placeholder_2$
 convlstm2d_2_while_placeholder_36
2convlstm2d_2_while_less_convlstm2d_2_strided_sliceM
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34888___redundant_placeholder0M
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34888___redundant_placeholder1M
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34888___redundant_placeholder2M
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34888___redundant_placeholder3
convlstm2d_2_while_identity
?
ConvLSTM2D_2/while/LessLessconvlstm2d_2_while_placeholder2convlstm2d_2_while_less_convlstm2d_2_strided_slice*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Less?
ConvLSTM2D_2/while/IdentityIdentityConvLSTM2D_2/while/Less:z:0*
T0
*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity"C
convlstm2d_2_while_identity$ConvLSTM2D_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?#
?
while_body_32141
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_32165_0: ?(
while_32167_0: ?
while_32169_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_32165: ?&
while_32167: ?
while_32169:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_32165_0while_32167_0while_32169_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_320772
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1~
while/IdentityIdentitywhile/add_1:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5"
while_32165while_32165_0"
while_32167while_32167_0"
while_32169while_32169_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?h
?
while_body_33356
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0: ?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource: ?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
while_cond_36527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_36527___redundant_placeholder03
/while_while_cond_36527___redundant_placeholder13
/while_while_cond_36527___redundant_placeholder23
/while_while_cond_36527___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?D
?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_37472

inputs
states_0
states_18
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd:?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?
?
3__inference_batch_normalization_layer_call_fn_36210

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_335402
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?p
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_37098

inputs8
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_36972*
condR
while_cond_36971*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?+
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36158

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?p
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36876

inputs8
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_36750*
condR
while_cond_36749*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
while_cond_31090
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_31090___redundant_placeholder03
/while_while_cond_31090___redundant_placeholder13
/while_while_cond_31090___redundant_placeholder23
/while_while_cond_31090___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
,__inference_ConvLSTM2D_2_layer_call_fn_37120
inputs_0"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_322092
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????dd 
"
_user_specified_name
inputs/0
?p
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_33087

inputs8
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_32961*
condR
while_cond_32960*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
while_cond_35879
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_35879___redundant_placeholder03
/while_while_cond_35879___redundant_placeholder13
/while_while_cond_35879___redundant_placeholder23
/while_while_cond_35879___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?6
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_31159

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_310772
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_31091*
condR
while_cond_31090*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^StatefulPartitionedCall^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
while_cond_33355
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_33355___redundant_placeholder03
/while_while_cond_33355___redundant_placeholder13
/while_while_cond_33355___redundant_placeholder23
/while_while_cond_33355___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
while_cond_31326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_31326___redundant_placeholder03
/while_while_cond_31326___redundant_placeholder13
/while_while_cond_31326___redundant_placeholder23
/while_while_cond_31326___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
??
?
ConvLSTM2D_1_while_body_346416
2convlstm2d_1_while_convlstm2d_1_while_loop_counter<
8convlstm2d_1_while_convlstm2d_1_while_maximum_iterations"
convlstm2d_1_while_placeholder$
 convlstm2d_1_while_placeholder_1$
 convlstm2d_1_while_placeholder_2$
 convlstm2d_1_while_placeholder_33
/convlstm2d_1_while_convlstm2d_1_strided_slice_0q
mconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0M
2convlstm2d_1_while_split_readvariableop_resource_0:?O
4convlstm2d_1_while_split_1_readvariableop_resource_0: ?C
4convlstm2d_1_while_split_2_readvariableop_resource_0:	?
convlstm2d_1_while_identity!
convlstm2d_1_while_identity_1!
convlstm2d_1_while_identity_2!
convlstm2d_1_while_identity_3!
convlstm2d_1_while_identity_4!
convlstm2d_1_while_identity_51
-convlstm2d_1_while_convlstm2d_1_strided_sliceo
kconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensorK
0convlstm2d_1_while_split_readvariableop_resource:?M
2convlstm2d_1_while_split_1_readvariableop_resource: ?A
2convlstm2d_1_while_split_2_readvariableop_resource:	???'ConvLSTM2D_1/while/split/ReadVariableOp?)ConvLSTM2D_1/while/split_1/ReadVariableOp?)ConvLSTM2D_1/while/split_2/ReadVariableOp?
DConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      2F
DConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0convlstm2d_1_while_placeholderMConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype028
6ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem?
"ConvLSTM2D_1/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_1/while/split/split_dim?
'ConvLSTM2D_1/while/split/ReadVariableOpReadVariableOp2convlstm2d_1_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02)
'ConvLSTM2D_1/while/split/ReadVariableOp?
ConvLSTM2D_1/while/splitSplit+ConvLSTM2D_1/while/split/split_dim:output:0/ConvLSTM2D_1/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
ConvLSTM2D_1/while/split?
$ConvLSTM2D_1/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$ConvLSTM2D_1/while/split_1/split_dim?
)ConvLSTM2D_1/while/split_1/ReadVariableOpReadVariableOp4convlstm2d_1_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02+
)ConvLSTM2D_1/while/split_1/ReadVariableOp?
ConvLSTM2D_1/while/split_1Split-ConvLSTM2D_1/while/split_1/split_dim:output:01ConvLSTM2D_1/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_1/while/split_1?
$ConvLSTM2D_1/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$ConvLSTM2D_1/while/split_2/split_dim?
)ConvLSTM2D_1/while/split_2/ReadVariableOpReadVariableOp4convlstm2d_1_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)ConvLSTM2D_1/while/split_2/ReadVariableOp?
ConvLSTM2D_1/while/split_2Split-ConvLSTM2D_1/while/split_2/split_dim:output:01ConvLSTM2D_1/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_1/while/split_2?
ConvLSTM2D_1/while/convolutionConv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2 
ConvLSTM2D_1/while/convolution?
ConvLSTM2D_1/while/BiasAddBiasAdd'ConvLSTM2D_1/while/convolution:output:0#ConvLSTM2D_1/while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd?
 ConvLSTM2D_1/while/convolution_1Conv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_1?
ConvLSTM2D_1/while/BiasAdd_1BiasAdd)ConvLSTM2D_1/while/convolution_1:output:0#ConvLSTM2D_1/while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd_1?
 ConvLSTM2D_1/while/convolution_2Conv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_2?
ConvLSTM2D_1/while/BiasAdd_2BiasAdd)ConvLSTM2D_1/while/convolution_2:output:0#ConvLSTM2D_1/while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd_2?
 ConvLSTM2D_1/while/convolution_3Conv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_3?
ConvLSTM2D_1/while/BiasAdd_3BiasAdd)ConvLSTM2D_1/while/convolution_3:output:0#ConvLSTM2D_1/while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd_3?
 ConvLSTM2D_1/while/convolution_4Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_4?
 ConvLSTM2D_1/while/convolution_5Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_5?
 ConvLSTM2D_1/while/convolution_6Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_6?
 ConvLSTM2D_1/while/convolution_7Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_7?
ConvLSTM2D_1/while/addAddV2#ConvLSTM2D_1/while/BiasAdd:output:0)ConvLSTM2D_1/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/addy
ConvLSTM2D_1/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/while/Const}
ConvLSTM2D_1/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/while/Const_1?
ConvLSTM2D_1/while/MulMulConvLSTM2D_1/while/add:z:0!ConvLSTM2D_1/while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Mul?
ConvLSTM2D_1/while/Add_1AddConvLSTM2D_1/while/Mul:z:0#ConvLSTM2D_1/while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Add_1?
*ConvLSTM2D_1/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*ConvLSTM2D_1/while/clip_by_value/Minimum/y?
(ConvLSTM2D_1/while/clip_by_value/MinimumMinimumConvLSTM2D_1/while/Add_1:z:03ConvLSTM2D_1/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(ConvLSTM2D_1/while/clip_by_value/Minimum?
"ConvLSTM2D_1/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"ConvLSTM2D_1/while/clip_by_value/y?
 ConvLSTM2D_1/while/clip_by_valueMaximum,ConvLSTM2D_1/while/clip_by_value/Minimum:z:0+ConvLSTM2D_1/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2"
 ConvLSTM2D_1/while/clip_by_value?
ConvLSTM2D_1/while/add_2AddV2%ConvLSTM2D_1/while/BiasAdd_1:output:0)ConvLSTM2D_1/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_2}
ConvLSTM2D_1/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/while/Const_2}
ConvLSTM2D_1/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/while/Const_3?
ConvLSTM2D_1/while/Mul_1MulConvLSTM2D_1/while/add_2:z:0#ConvLSTM2D_1/while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Mul_1?
ConvLSTM2D_1/while/Add_3AddConvLSTM2D_1/while/Mul_1:z:0#ConvLSTM2D_1/while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Add_3?
,ConvLSTM2D_1/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_1/while/clip_by_value_1/Minimum/y?
*ConvLSTM2D_1/while/clip_by_value_1/MinimumMinimumConvLSTM2D_1/while/Add_3:z:05ConvLSTM2D_1/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_1/while/clip_by_value_1/Minimum?
$ConvLSTM2D_1/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_1/while/clip_by_value_1/y?
"ConvLSTM2D_1/while/clip_by_value_1Maximum.ConvLSTM2D_1/while/clip_by_value_1/Minimum:z:0-ConvLSTM2D_1/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_1/while/clip_by_value_1?
ConvLSTM2D_1/while/mul_2Mul&ConvLSTM2D_1/while/clip_by_value_1:z:0 convlstm2d_1_while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/mul_2?
ConvLSTM2D_1/while/add_4AddV2%ConvLSTM2D_1/while/BiasAdd_2:output:0)ConvLSTM2D_1/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_4?
ConvLSTM2D_1/while/ReluReluConvLSTM2D_1/while/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Relu?
ConvLSTM2D_1/while/mul_3Mul$ConvLSTM2D_1/while/clip_by_value:z:0%ConvLSTM2D_1/while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/mul_3?
ConvLSTM2D_1/while/add_5AddV2ConvLSTM2D_1/while/mul_2:z:0ConvLSTM2D_1/while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_5?
ConvLSTM2D_1/while/add_6AddV2%ConvLSTM2D_1/while/BiasAdd_3:output:0)ConvLSTM2D_1/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_6}
ConvLSTM2D_1/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/while/Const_4}
ConvLSTM2D_1/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/while/Const_5?
ConvLSTM2D_1/while/Mul_4MulConvLSTM2D_1/while/add_6:z:0#ConvLSTM2D_1/while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Mul_4?
ConvLSTM2D_1/while/Add_7AddConvLSTM2D_1/while/Mul_4:z:0#ConvLSTM2D_1/while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Add_7?
,ConvLSTM2D_1/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_1/while/clip_by_value_2/Minimum/y?
*ConvLSTM2D_1/while/clip_by_value_2/MinimumMinimumConvLSTM2D_1/while/Add_7:z:05ConvLSTM2D_1/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_1/while/clip_by_value_2/Minimum?
$ConvLSTM2D_1/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_1/while/clip_by_value_2/y?
"ConvLSTM2D_1/while/clip_by_value_2Maximum.ConvLSTM2D_1/while/clip_by_value_2/Minimum:z:0-ConvLSTM2D_1/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_1/while/clip_by_value_2?
ConvLSTM2D_1/while/Relu_1ReluConvLSTM2D_1/while/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Relu_1?
ConvLSTM2D_1/while/mul_5Mul&ConvLSTM2D_1/while/clip_by_value_2:z:0'ConvLSTM2D_1/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/mul_5?
7ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem convlstm2d_1_while_placeholder_1convlstm2d_1_while_placeholderConvLSTM2D_1/while/mul_5:z:0*
_output_shapes
: *
element_dtype029
7ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItemz
ConvLSTM2D_1/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_1/while/add_8/y?
ConvLSTM2D_1/while/add_8AddV2convlstm2d_1_while_placeholder#ConvLSTM2D_1/while/add_8/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/add_8z
ConvLSTM2D_1/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_1/while/add_9/y?
ConvLSTM2D_1/while/add_9AddV22convlstm2d_1_while_convlstm2d_1_while_loop_counter#ConvLSTM2D_1/while/add_9/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/add_9?
ConvLSTM2D_1/while/IdentityIdentityConvLSTM2D_1/while/add_9:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity?
ConvLSTM2D_1/while/Identity_1Identity8convlstm2d_1_while_convlstm2d_1_while_maximum_iterations(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity_1?
ConvLSTM2D_1/while/Identity_2IdentityConvLSTM2D_1/while/add_8:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity_2?
ConvLSTM2D_1/while/Identity_3IdentityGConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity_3?
ConvLSTM2D_1/while/Identity_4IdentityConvLSTM2D_1/while/mul_5:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Identity_4?
ConvLSTM2D_1/while/Identity_5IdentityConvLSTM2D_1/while/add_5:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Identity_5"`
-convlstm2d_1_while_convlstm2d_1_strided_slice/convlstm2d_1_while_convlstm2d_1_strided_slice_0"C
convlstm2d_1_while_identity$ConvLSTM2D_1/while/Identity:output:0"G
convlstm2d_1_while_identity_1&ConvLSTM2D_1/while/Identity_1:output:0"G
convlstm2d_1_while_identity_2&ConvLSTM2D_1/while/Identity_2:output:0"G
convlstm2d_1_while_identity_3&ConvLSTM2D_1/while/Identity_3:output:0"G
convlstm2d_1_while_identity_4&ConvLSTM2D_1/while/Identity_4:output:0"G
convlstm2d_1_while_identity_5&ConvLSTM2D_1/while/Identity_5:output:0"j
2convlstm2d_1_while_split_1_readvariableop_resource4convlstm2d_1_while_split_1_readvariableop_resource_0"j
2convlstm2d_1_while_split_2_readvariableop_resource4convlstm2d_1_while_split_2_readvariableop_resource_0"f
0convlstm2d_1_while_split_readvariableop_resource2convlstm2d_1_while_split_readvariableop_resource_0"?
kconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensormconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2R
'ConvLSTM2D_1/while/split/ReadVariableOp'ConvLSTM2D_1/while/split/ReadVariableOp2V
)ConvLSTM2D_1/while/split_1/ReadVariableOp)ConvLSTM2D_1/while/split_1/ReadVariableOp2V
)ConvLSTM2D_1/while/split_2/ReadVariableOp)ConvLSTM2D_1/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_32856

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:&??????????????????dd : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?
?
,__inference_ConvLSTM2D_2_layer_call_fn_37142

inputs"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_334822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
??
?
ConvLSTM2D_1_while_body_341646
2convlstm2d_1_while_convlstm2d_1_while_loop_counter<
8convlstm2d_1_while_convlstm2d_1_while_maximum_iterations"
convlstm2d_1_while_placeholder$
 convlstm2d_1_while_placeholder_1$
 convlstm2d_1_while_placeholder_2$
 convlstm2d_1_while_placeholder_33
/convlstm2d_1_while_convlstm2d_1_strided_slice_0q
mconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0M
2convlstm2d_1_while_split_readvariableop_resource_0:?O
4convlstm2d_1_while_split_1_readvariableop_resource_0: ?C
4convlstm2d_1_while_split_2_readvariableop_resource_0:	?
convlstm2d_1_while_identity!
convlstm2d_1_while_identity_1!
convlstm2d_1_while_identity_2!
convlstm2d_1_while_identity_3!
convlstm2d_1_while_identity_4!
convlstm2d_1_while_identity_51
-convlstm2d_1_while_convlstm2d_1_strided_sliceo
kconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensorK
0convlstm2d_1_while_split_readvariableop_resource:?M
2convlstm2d_1_while_split_1_readvariableop_resource: ?A
2convlstm2d_1_while_split_2_readvariableop_resource:	???'ConvLSTM2D_1/while/split/ReadVariableOp?)ConvLSTM2D_1/while/split_1/ReadVariableOp?)ConvLSTM2D_1/while/split_2/ReadVariableOp?
DConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      2F
DConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shape?
6ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0convlstm2d_1_while_placeholderMConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype028
6ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem?
"ConvLSTM2D_1/while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_1/while/split/split_dim?
'ConvLSTM2D_1/while/split/ReadVariableOpReadVariableOp2convlstm2d_1_while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02)
'ConvLSTM2D_1/while/split/ReadVariableOp?
ConvLSTM2D_1/while/splitSplit+ConvLSTM2D_1/while/split/split_dim:output:0/ConvLSTM2D_1/while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
ConvLSTM2D_1/while/split?
$ConvLSTM2D_1/while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2&
$ConvLSTM2D_1/while/split_1/split_dim?
)ConvLSTM2D_1/while/split_1/ReadVariableOpReadVariableOp4convlstm2d_1_while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02+
)ConvLSTM2D_1/while/split_1/ReadVariableOp?
ConvLSTM2D_1/while/split_1Split-ConvLSTM2D_1/while/split_1/split_dim:output:01ConvLSTM2D_1/while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_1/while/split_1?
$ConvLSTM2D_1/while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$ConvLSTM2D_1/while/split_2/split_dim?
)ConvLSTM2D_1/while/split_2/ReadVariableOpReadVariableOp4convlstm2d_1_while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02+
)ConvLSTM2D_1/while/split_2/ReadVariableOp?
ConvLSTM2D_1/while/split_2Split-ConvLSTM2D_1/while/split_2/split_dim:output:01ConvLSTM2D_1/while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_1/while/split_2?
ConvLSTM2D_1/while/convolutionConv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2 
ConvLSTM2D_1/while/convolution?
ConvLSTM2D_1/while/BiasAddBiasAdd'ConvLSTM2D_1/while/convolution:output:0#ConvLSTM2D_1/while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd?
 ConvLSTM2D_1/while/convolution_1Conv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_1?
ConvLSTM2D_1/while/BiasAdd_1BiasAdd)ConvLSTM2D_1/while/convolution_1:output:0#ConvLSTM2D_1/while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd_1?
 ConvLSTM2D_1/while/convolution_2Conv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_2?
ConvLSTM2D_1/while/BiasAdd_2BiasAdd)ConvLSTM2D_1/while/convolution_2:output:0#ConvLSTM2D_1/while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd_2?
 ConvLSTM2D_1/while/convolution_3Conv2D=ConvLSTM2D_1/while/TensorArrayV2Read/TensorListGetItem:item:0!ConvLSTM2D_1/while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_3?
ConvLSTM2D_1/while/BiasAdd_3BiasAdd)ConvLSTM2D_1/while/convolution_3:output:0#ConvLSTM2D_1/while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/BiasAdd_3?
 ConvLSTM2D_1/while/convolution_4Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_4?
 ConvLSTM2D_1/while/convolution_5Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_5?
 ConvLSTM2D_1/while/convolution_6Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_6?
 ConvLSTM2D_1/while/convolution_7Conv2D convlstm2d_1_while_placeholder_2#ConvLSTM2D_1/while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2"
 ConvLSTM2D_1/while/convolution_7?
ConvLSTM2D_1/while/addAddV2#ConvLSTM2D_1/while/BiasAdd:output:0)ConvLSTM2D_1/while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/addy
ConvLSTM2D_1/while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/while/Const}
ConvLSTM2D_1/while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/while/Const_1?
ConvLSTM2D_1/while/MulMulConvLSTM2D_1/while/add:z:0!ConvLSTM2D_1/while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Mul?
ConvLSTM2D_1/while/Add_1AddConvLSTM2D_1/while/Mul:z:0#ConvLSTM2D_1/while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Add_1?
*ConvLSTM2D_1/while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2,
*ConvLSTM2D_1/while/clip_by_value/Minimum/y?
(ConvLSTM2D_1/while/clip_by_value/MinimumMinimumConvLSTM2D_1/while/Add_1:z:03ConvLSTM2D_1/while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2*
(ConvLSTM2D_1/while/clip_by_value/Minimum?
"ConvLSTM2D_1/while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"ConvLSTM2D_1/while/clip_by_value/y?
 ConvLSTM2D_1/while/clip_by_valueMaximum,ConvLSTM2D_1/while/clip_by_value/Minimum:z:0+ConvLSTM2D_1/while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2"
 ConvLSTM2D_1/while/clip_by_value?
ConvLSTM2D_1/while/add_2AddV2%ConvLSTM2D_1/while/BiasAdd_1:output:0)ConvLSTM2D_1/while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_2}
ConvLSTM2D_1/while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/while/Const_2}
ConvLSTM2D_1/while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/while/Const_3?
ConvLSTM2D_1/while/Mul_1MulConvLSTM2D_1/while/add_2:z:0#ConvLSTM2D_1/while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Mul_1?
ConvLSTM2D_1/while/Add_3AddConvLSTM2D_1/while/Mul_1:z:0#ConvLSTM2D_1/while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Add_3?
,ConvLSTM2D_1/while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_1/while/clip_by_value_1/Minimum/y?
*ConvLSTM2D_1/while/clip_by_value_1/MinimumMinimumConvLSTM2D_1/while/Add_3:z:05ConvLSTM2D_1/while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_1/while/clip_by_value_1/Minimum?
$ConvLSTM2D_1/while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_1/while/clip_by_value_1/y?
"ConvLSTM2D_1/while/clip_by_value_1Maximum.ConvLSTM2D_1/while/clip_by_value_1/Minimum:z:0-ConvLSTM2D_1/while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_1/while/clip_by_value_1?
ConvLSTM2D_1/while/mul_2Mul&ConvLSTM2D_1/while/clip_by_value_1:z:0 convlstm2d_1_while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/mul_2?
ConvLSTM2D_1/while/add_4AddV2%ConvLSTM2D_1/while/BiasAdd_2:output:0)ConvLSTM2D_1/while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_4?
ConvLSTM2D_1/while/ReluReluConvLSTM2D_1/while/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Relu?
ConvLSTM2D_1/while/mul_3Mul$ConvLSTM2D_1/while/clip_by_value:z:0%ConvLSTM2D_1/while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/mul_3?
ConvLSTM2D_1/while/add_5AddV2ConvLSTM2D_1/while/mul_2:z:0ConvLSTM2D_1/while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_5?
ConvLSTM2D_1/while/add_6AddV2%ConvLSTM2D_1/while/BiasAdd_3:output:0)ConvLSTM2D_1/while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/add_6}
ConvLSTM2D_1/while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/while/Const_4}
ConvLSTM2D_1/while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/while/Const_5?
ConvLSTM2D_1/while/Mul_4MulConvLSTM2D_1/while/add_6:z:0#ConvLSTM2D_1/while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Mul_4?
ConvLSTM2D_1/while/Add_7AddConvLSTM2D_1/while/Mul_4:z:0#ConvLSTM2D_1/while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Add_7?
,ConvLSTM2D_1/while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2.
,ConvLSTM2D_1/while/clip_by_value_2/Minimum/y?
*ConvLSTM2D_1/while/clip_by_value_2/MinimumMinimumConvLSTM2D_1/while/Add_7:z:05ConvLSTM2D_1/while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2,
*ConvLSTM2D_1/while/clip_by_value_2/Minimum?
$ConvLSTM2D_1/while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$ConvLSTM2D_1/while/clip_by_value_2/y?
"ConvLSTM2D_1/while/clip_by_value_2Maximum.ConvLSTM2D_1/while/clip_by_value_2/Minimum:z:0-ConvLSTM2D_1/while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_1/while/clip_by_value_2?
ConvLSTM2D_1/while/Relu_1ReluConvLSTM2D_1/while/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Relu_1?
ConvLSTM2D_1/while/mul_5Mul&ConvLSTM2D_1/while/clip_by_value_2:z:0'ConvLSTM2D_1/while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/mul_5?
7ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem convlstm2d_1_while_placeholder_1convlstm2d_1_while_placeholderConvLSTM2D_1/while/mul_5:z:0*
_output_shapes
: *
element_dtype029
7ConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItemz
ConvLSTM2D_1/while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_1/while/add_8/y?
ConvLSTM2D_1/while/add_8AddV2convlstm2d_1_while_placeholder#ConvLSTM2D_1/while/add_8/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/add_8z
ConvLSTM2D_1/while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_1/while/add_9/y?
ConvLSTM2D_1/while/add_9AddV22convlstm2d_1_while_convlstm2d_1_while_loop_counter#ConvLSTM2D_1/while/add_9/y:output:0*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/add_9?
ConvLSTM2D_1/while/IdentityIdentityConvLSTM2D_1/while/add_9:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity?
ConvLSTM2D_1/while/Identity_1Identity8convlstm2d_1_while_convlstm2d_1_while_maximum_iterations(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity_1?
ConvLSTM2D_1/while/Identity_2IdentityConvLSTM2D_1/while/add_8:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity_2?
ConvLSTM2D_1/while/Identity_3IdentityGConvLSTM2D_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity_3?
ConvLSTM2D_1/while/Identity_4IdentityConvLSTM2D_1/while/mul_5:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Identity_4?
ConvLSTM2D_1/while/Identity_5IdentityConvLSTM2D_1/while/add_5:z:0(^ConvLSTM2D_1/while/split/ReadVariableOp*^ConvLSTM2D_1/while/split_1/ReadVariableOp*^ConvLSTM2D_1/while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/while/Identity_5"`
-convlstm2d_1_while_convlstm2d_1_strided_slice/convlstm2d_1_while_convlstm2d_1_strided_slice_0"C
convlstm2d_1_while_identity$ConvLSTM2D_1/while/Identity:output:0"G
convlstm2d_1_while_identity_1&ConvLSTM2D_1/while/Identity_1:output:0"G
convlstm2d_1_while_identity_2&ConvLSTM2D_1/while/Identity_2:output:0"G
convlstm2d_1_while_identity_3&ConvLSTM2D_1/while/Identity_3:output:0"G
convlstm2d_1_while_identity_4&ConvLSTM2D_1/while/Identity_4:output:0"G
convlstm2d_1_while_identity_5&ConvLSTM2D_1/while/Identity_5:output:0"j
2convlstm2d_1_while_split_1_readvariableop_resource4convlstm2d_1_while_split_1_readvariableop_resource_0"j
2convlstm2d_1_while_split_2_readvariableop_resource4convlstm2d_1_while_split_2_readvariableop_resource_0"f
0convlstm2d_1_while_split_readvariableop_resource2convlstm2d_1_while_split_readvariableop_resource_0"?
kconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensormconvlstm2d_1_while_tensorarrayv2read_tensorlistgetitem_convlstm2d_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2R
'ConvLSTM2D_1/while/split/ReadVariableOp'ConvLSTM2D_1/while/split/ReadVariableOp2V
)ConvLSTM2D_1/while/split_1/ReadVariableOp)ConvLSTM2D_1/while/split_1/ReadVariableOp2V
)ConvLSTM2D_1/while/split_2/ReadVariableOp)ConvLSTM2D_1/while/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?	
?
5__inference_batch_normalization_1_layer_call_fn_37276

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8???????????????????????????????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_325252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
͟
?
@__inference_model_layer_call_and_return_conditional_losses_35052

inputsE
*convlstm2d_1_split_readvariableop_resource:?G
,convlstm2d_1_split_1_readvariableop_resource: ?;
,convlstm2d_1_split_2_readvariableop_resource:	?I
;batch_normalization_assignmovingavg_readvariableop_resource: K
=batch_normalization_assignmovingavg_1_readvariableop_resource: G
9batch_normalization_batchnorm_mul_readvariableop_resource: C
5batch_normalization_batchnorm_readvariableop_resource: E
*convlstm2d_2_split_readvariableop_resource: ?G
,convlstm2d_2_split_1_readvariableop_resource: ?;
,convlstm2d_2_split_2_readvariableop_resource:	?K
=batch_normalization_1_assignmovingavg_readvariableop_resource: M
?batch_normalization_1_assignmovingavg_1_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: E
7batch_normalization_1_batchnorm_readvariableop_resource: G
)convlstm3d_conv3d_readvariableop_resource: 8
*convlstm3d_biasadd_readvariableop_resource:
identity??!ConvLSTM2D_1/split/ReadVariableOp?#ConvLSTM2D_1/split_1/ReadVariableOp?#ConvLSTM2D_1/split_2/ReadVariableOp?ConvLSTM2D_1/while?!ConvLSTM2D_2/split/ReadVariableOp?#ConvLSTM2D_2/split_1/ReadVariableOp?#ConvLSTM2D_2/split_2/ReadVariableOp?ConvLSTM2D_2/while?!ConvLSTM3D/BiasAdd/ReadVariableOp? ConvLSTM3D/Conv3D/ReadVariableOp?#batch_normalization/AssignMovingAvg?2batch_normalization/AssignMovingAvg/ReadVariableOp?%batch_normalization/AssignMovingAvg_1?4batch_normalization/AssignMovingAvg_1/ReadVariableOp?,batch_normalization/batchnorm/ReadVariableOp?0batch_normalization/batchnorm/mul/ReadVariableOp?%batch_normalization_1/AssignMovingAvg?4batch_normalization_1/AssignMovingAvg/ReadVariableOp?'batch_normalization_1/AssignMovingAvg_1?6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?2batch_normalization_1/batchnorm/mul/ReadVariableOp?
ConvLSTM2D_1/zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM2D_1/zeros_like?
"ConvLSTM2D_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_1/Sum/reduction_indices?
ConvLSTM2D_1/SumSumConvLSTM2D_1/zeros_like:y:0+ConvLSTM2D_1/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
ConvLSTM2D_1/Sum?
ConvLSTM2D_1/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
ConvLSTM2D_1/zeros?
ConvLSTM2D_1/convolutionConv2DConvLSTM2D_1/Sum:output:0ConvLSTM2D_1/zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution?
ConvLSTM2D_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_1/transpose/perm?
ConvLSTM2D_1/transpose	Transposeinputs$ConvLSTM2D_1/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM2D_1/transposer
ConvLSTM2D_1/ShapeShapeConvLSTM2D_1/transpose:y:0*
T0*
_output_shapes
:2
ConvLSTM2D_1/Shape?
 ConvLSTM2D_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 ConvLSTM2D_1/strided_slice/stack?
"ConvLSTM2D_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_1/strided_slice/stack_1?
"ConvLSTM2D_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_1/strided_slice/stack_2?
ConvLSTM2D_1/strided_sliceStridedSliceConvLSTM2D_1/Shape:output:0)ConvLSTM2D_1/strided_slice/stack:output:0+ConvLSTM2D_1/strided_slice/stack_1:output:0+ConvLSTM2D_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ConvLSTM2D_1/strided_slice?
(ConvLSTM2D_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(ConvLSTM2D_1/TensorArrayV2/element_shape?
ConvLSTM2D_1/TensorArrayV2TensorListReserve1ConvLSTM2D_1/TensorArrayV2/element_shape:output:0#ConvLSTM2D_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_1/TensorArrayV2?
BConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      2D
BConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
4ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorConvLSTM2D_1/transpose:y:0KConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor?
"ConvLSTM2D_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"ConvLSTM2D_1/strided_slice_1/stack?
$ConvLSTM2D_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_1/strided_slice_1/stack_1?
$ConvLSTM2D_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_1/strided_slice_1/stack_2?
ConvLSTM2D_1/strided_slice_1StridedSliceConvLSTM2D_1/transpose:y:0+ConvLSTM2D_1/strided_slice_1/stack:output:0-ConvLSTM2D_1/strided_slice_1/stack_1:output:0-ConvLSTM2D_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
ConvLSTM2D_1/strided_slice_1~
ConvLSTM2D_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_1/split/split_dim?
!ConvLSTM2D_1/split/ReadVariableOpReadVariableOp*convlstm2d_1_split_readvariableop_resource*'
_output_shapes
:?*
dtype02#
!ConvLSTM2D_1/split/ReadVariableOp?
ConvLSTM2D_1/splitSplit%ConvLSTM2D_1/split/split_dim:output:0)ConvLSTM2D_1/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
ConvLSTM2D_1/split?
ConvLSTM2D_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ConvLSTM2D_1/split_1/split_dim?
#ConvLSTM2D_1/split_1/ReadVariableOpReadVariableOp,convlstm2d_1_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02%
#ConvLSTM2D_1/split_1/ReadVariableOp?
ConvLSTM2D_1/split_1Split'ConvLSTM2D_1/split_1/split_dim:output:0+ConvLSTM2D_1/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_1/split_1?
ConvLSTM2D_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
ConvLSTM2D_1/split_2/split_dim?
#ConvLSTM2D_1/split_2/ReadVariableOpReadVariableOp,convlstm2d_1_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#ConvLSTM2D_1/split_2/ReadVariableOp?
ConvLSTM2D_1/split_2Split'ConvLSTM2D_1/split_2/split_dim:output:0+ConvLSTM2D_1/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_1/split_2?
ConvLSTM2D_1/convolution_1Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_1?
ConvLSTM2D_1/BiasAddBiasAdd#ConvLSTM2D_1/convolution_1:output:0ConvLSTM2D_1/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd?
ConvLSTM2D_1/convolution_2Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_2?
ConvLSTM2D_1/BiasAdd_1BiasAdd#ConvLSTM2D_1/convolution_2:output:0ConvLSTM2D_1/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd_1?
ConvLSTM2D_1/convolution_3Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_3?
ConvLSTM2D_1/BiasAdd_2BiasAdd#ConvLSTM2D_1/convolution_3:output:0ConvLSTM2D_1/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd_2?
ConvLSTM2D_1/convolution_4Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_4?
ConvLSTM2D_1/BiasAdd_3BiasAdd#ConvLSTM2D_1/convolution_4:output:0ConvLSTM2D_1/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd_3?
ConvLSTM2D_1/convolution_5Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_5?
ConvLSTM2D_1/convolution_6Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_6?
ConvLSTM2D_1/convolution_7Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_7?
ConvLSTM2D_1/convolution_8Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_8?
ConvLSTM2D_1/addAddV2ConvLSTM2D_1/BiasAdd:output:0#ConvLSTM2D_1/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/addm
ConvLSTM2D_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/Constq
ConvLSTM2D_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/Const_1?
ConvLSTM2D_1/MulMulConvLSTM2D_1/add:z:0ConvLSTM2D_1/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Mul?
ConvLSTM2D_1/Add_1AddConvLSTM2D_1/Mul:z:0ConvLSTM2D_1/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Add_1?
$ConvLSTM2D_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$ConvLSTM2D_1/clip_by_value/Minimum/y?
"ConvLSTM2D_1/clip_by_value/MinimumMinimumConvLSTM2D_1/Add_1:z:0-ConvLSTM2D_1/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_1/clip_by_value/Minimum?
ConvLSTM2D_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConvLSTM2D_1/clip_by_value/y?
ConvLSTM2D_1/clip_by_valueMaximum&ConvLSTM2D_1/clip_by_value/Minimum:z:0%ConvLSTM2D_1/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/clip_by_value?
ConvLSTM2D_1/add_2AddV2ConvLSTM2D_1/BiasAdd_1:output:0#ConvLSTM2D_1/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_2q
ConvLSTM2D_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/Const_2q
ConvLSTM2D_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/Const_3?
ConvLSTM2D_1/Mul_1MulConvLSTM2D_1/add_2:z:0ConvLSTM2D_1/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Mul_1?
ConvLSTM2D_1/Add_3AddConvLSTM2D_1/Mul_1:z:0ConvLSTM2D_1/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Add_3?
&ConvLSTM2D_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_1/clip_by_value_1/Minimum/y?
$ConvLSTM2D_1/clip_by_value_1/MinimumMinimumConvLSTM2D_1/Add_3:z:0/ConvLSTM2D_1/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_1/clip_by_value_1/Minimum?
ConvLSTM2D_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_1/clip_by_value_1/y?
ConvLSTM2D_1/clip_by_value_1Maximum(ConvLSTM2D_1/clip_by_value_1/Minimum:z:0'ConvLSTM2D_1/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/clip_by_value_1?
ConvLSTM2D_1/mul_2Mul ConvLSTM2D_1/clip_by_value_1:z:0!ConvLSTM2D_1/convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/mul_2?
ConvLSTM2D_1/add_4AddV2ConvLSTM2D_1/BiasAdd_2:output:0#ConvLSTM2D_1/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_4?
ConvLSTM2D_1/ReluReluConvLSTM2D_1/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Relu?
ConvLSTM2D_1/mul_3MulConvLSTM2D_1/clip_by_value:z:0ConvLSTM2D_1/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/mul_3?
ConvLSTM2D_1/add_5AddV2ConvLSTM2D_1/mul_2:z:0ConvLSTM2D_1/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_5?
ConvLSTM2D_1/add_6AddV2ConvLSTM2D_1/BiasAdd_3:output:0#ConvLSTM2D_1/convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_6q
ConvLSTM2D_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/Const_4q
ConvLSTM2D_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/Const_5?
ConvLSTM2D_1/Mul_4MulConvLSTM2D_1/add_6:z:0ConvLSTM2D_1/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Mul_4?
ConvLSTM2D_1/Add_7AddConvLSTM2D_1/Mul_4:z:0ConvLSTM2D_1/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Add_7?
&ConvLSTM2D_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_1/clip_by_value_2/Minimum/y?
$ConvLSTM2D_1/clip_by_value_2/MinimumMinimumConvLSTM2D_1/Add_7:z:0/ConvLSTM2D_1/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_1/clip_by_value_2/Minimum?
ConvLSTM2D_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_1/clip_by_value_2/y?
ConvLSTM2D_1/clip_by_value_2Maximum(ConvLSTM2D_1/clip_by_value_2/Minimum:z:0'ConvLSTM2D_1/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/clip_by_value_2?
ConvLSTM2D_1/Relu_1ReluConvLSTM2D_1/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Relu_1?
ConvLSTM2D_1/mul_5Mul ConvLSTM2D_1/clip_by_value_2:z:0!ConvLSTM2D_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/mul_5?
*ConvLSTM2D_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2,
*ConvLSTM2D_1/TensorArrayV2_1/element_shape?
ConvLSTM2D_1/TensorArrayV2_1TensorListReserve3ConvLSTM2D_1/TensorArrayV2_1/element_shape:output:0#ConvLSTM2D_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_1/TensorArrayV2_1h
ConvLSTM2D_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
ConvLSTM2D_1/time?
%ConvLSTM2D_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%ConvLSTM2D_1/while/maximum_iterations?
ConvLSTM2D_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
ConvLSTM2D_1/while/loop_counter?
ConvLSTM2D_1/whileWhile(ConvLSTM2D_1/while/loop_counter:output:0.ConvLSTM2D_1/while/maximum_iterations:output:0ConvLSTM2D_1/time:output:0%ConvLSTM2D_1/TensorArrayV2_1:handle:0!ConvLSTM2D_1/convolution:output:0!ConvLSTM2D_1/convolution:output:0#ConvLSTM2D_1/strided_slice:output:0DConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0*convlstm2d_1_split_readvariableop_resource,convlstm2d_1_split_1_readvariableop_resource,convlstm2d_1_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*)
body!R
ConvLSTM2D_1_while_body_34641*)
cond!R
ConvLSTM2D_1_while_cond_34640*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
ConvLSTM2D_1/while?
=ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2?
=ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shape?
/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStackTensorListStackConvLSTM2D_1/while:output:3FConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype021
/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack?
"ConvLSTM2D_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"ConvLSTM2D_1/strided_slice_2/stack?
$ConvLSTM2D_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$ConvLSTM2D_1/strided_slice_2/stack_1?
$ConvLSTM2D_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_1/strided_slice_2/stack_2?
ConvLSTM2D_1/strided_slice_2StridedSlice8ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack:tensor:0+ConvLSTM2D_1/strided_slice_2/stack:output:0-ConvLSTM2D_1/strided_slice_2/stack_1:output:0-ConvLSTM2D_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
ConvLSTM2D_1/strided_slice_2?
ConvLSTM2D_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_1/transpose_1/perm?
ConvLSTM2D_1/transpose_1	Transpose8ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack:tensor:0&ConvLSTM2D_1/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_1/transpose_1?
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             24
2batch_normalization/moments/mean/reduction_indices?
 batch_normalization/moments/meanMeanConvLSTM2D_1/transpose_1:y:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2"
 batch_normalization/moments/mean?
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0**
_output_shapes
: 2*
(batch_normalization/moments/StopGradient?
-batch_normalization/moments/SquaredDifferenceSquaredDifferenceConvLSTM2D_1/transpose_1:y:01batch_normalization/moments/StopGradient:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2/
-batch_normalization/moments/SquaredDifference?
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             28
6batch_normalization/moments/variance/reduction_indices?
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2&
$batch_normalization/moments/variance?
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2%
#batch_normalization/moments/Squeeze?
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1?
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2+
)batch_normalization/AssignMovingAvg/decay?
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp?
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes
: 2)
'batch_normalization/AssignMovingAvg/sub?
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2)
'batch_normalization/AssignMovingAvg/mul?
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02%
#batch_normalization/AssignMovingAvg?
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization/AssignMovingAvg_1/decay?
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOp?
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2+
)batch_normalization/AssignMovingAvg_1/sub?
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2+
)batch_normalization/AssignMovingAvg_1/mul?
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization/AssignMovingAvg_1?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/Rsqrt?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1MulConvLSTM2D_1/transpose_1:y:0%batch_normalization/batchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2%
#batch_normalization/batchnorm/mul_1?
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/mul_2?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,batch_normalization/batchnorm/ReadVariableOp?
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2%
#batch_normalization/batchnorm/add_1?
ConvLSTM2D_2/zeros_like	ZerosLike'batch_normalization/batchnorm/add_1:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_2/zeros_like?
"ConvLSTM2D_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_2/Sum/reduction_indices?
ConvLSTM2D_2/SumSumConvLSTM2D_2/zeros_like:y:0+ConvLSTM2D_2/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Sum?
"ConvLSTM2D_2/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2$
"ConvLSTM2D_2/zeros/shape_as_tensory
ConvLSTM2D_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConvLSTM2D_2/zeros/Const?
ConvLSTM2D_2/zerosFill+ConvLSTM2D_2/zeros/shape_as_tensor:output:0!ConvLSTM2D_2/zeros/Const:output:0*
T0*&
_output_shapes
:  2
ConvLSTM2D_2/zeros?
ConvLSTM2D_2/convolutionConv2DConvLSTM2D_2/Sum:output:0ConvLSTM2D_2/zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution?
ConvLSTM2D_2/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_2/transpose/perm?
ConvLSTM2D_2/transpose	Transpose'batch_normalization/batchnorm/add_1:z:0$ConvLSTM2D_2/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_2/transposer
ConvLSTM2D_2/ShapeShapeConvLSTM2D_2/transpose:y:0*
T0*
_output_shapes
:2
ConvLSTM2D_2/Shape?
 ConvLSTM2D_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 ConvLSTM2D_2/strided_slice/stack?
"ConvLSTM2D_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_2/strided_slice/stack_1?
"ConvLSTM2D_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_2/strided_slice/stack_2?
ConvLSTM2D_2/strided_sliceStridedSliceConvLSTM2D_2/Shape:output:0)ConvLSTM2D_2/strided_slice/stack:output:0+ConvLSTM2D_2/strided_slice/stack_1:output:0+ConvLSTM2D_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ConvLSTM2D_2/strided_slice?
(ConvLSTM2D_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(ConvLSTM2D_2/TensorArrayV2/element_shape?
ConvLSTM2D_2/TensorArrayV2TensorListReserve1ConvLSTM2D_2/TensorArrayV2/element_shape:output:0#ConvLSTM2D_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_2/TensorArrayV2?
BConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2D
BConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
4ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorConvLSTM2D_2/transpose:y:0KConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor?
"ConvLSTM2D_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"ConvLSTM2D_2/strided_slice_1/stack?
$ConvLSTM2D_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_2/strided_slice_1/stack_1?
$ConvLSTM2D_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_2/strided_slice_1/stack_2?
ConvLSTM2D_2/strided_slice_1StridedSliceConvLSTM2D_2/transpose:y:0+ConvLSTM2D_2/strided_slice_1/stack:output:0-ConvLSTM2D_2/strided_slice_1/stack_1:output:0-ConvLSTM2D_2/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
ConvLSTM2D_2/strided_slice_1~
ConvLSTM2D_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_2/split/split_dim?
!ConvLSTM2D_2/split/ReadVariableOpReadVariableOp*convlstm2d_2_split_readvariableop_resource*'
_output_shapes
: ?*
dtype02#
!ConvLSTM2D_2/split/ReadVariableOp?
ConvLSTM2D_2/splitSplit%ConvLSTM2D_2/split/split_dim:output:0)ConvLSTM2D_2/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/split?
ConvLSTM2D_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ConvLSTM2D_2/split_1/split_dim?
#ConvLSTM2D_2/split_1/ReadVariableOpReadVariableOp,convlstm2d_2_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02%
#ConvLSTM2D_2/split_1/ReadVariableOp?
ConvLSTM2D_2/split_1Split'ConvLSTM2D_2/split_1/split_dim:output:0+ConvLSTM2D_2/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/split_1?
ConvLSTM2D_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
ConvLSTM2D_2/split_2/split_dim?
#ConvLSTM2D_2/split_2/ReadVariableOpReadVariableOp,convlstm2d_2_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#ConvLSTM2D_2/split_2/ReadVariableOp?
ConvLSTM2D_2/split_2Split'ConvLSTM2D_2/split_2/split_dim:output:0+ConvLSTM2D_2/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_2/split_2?
ConvLSTM2D_2/convolution_1Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_1?
ConvLSTM2D_2/BiasAddBiasAdd#ConvLSTM2D_2/convolution_1:output:0ConvLSTM2D_2/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd?
ConvLSTM2D_2/convolution_2Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_2?
ConvLSTM2D_2/BiasAdd_1BiasAdd#ConvLSTM2D_2/convolution_2:output:0ConvLSTM2D_2/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd_1?
ConvLSTM2D_2/convolution_3Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_3?
ConvLSTM2D_2/BiasAdd_2BiasAdd#ConvLSTM2D_2/convolution_3:output:0ConvLSTM2D_2/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd_2?
ConvLSTM2D_2/convolution_4Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_4?
ConvLSTM2D_2/BiasAdd_3BiasAdd#ConvLSTM2D_2/convolution_4:output:0ConvLSTM2D_2/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd_3?
ConvLSTM2D_2/convolution_5Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_5?
ConvLSTM2D_2/convolution_6Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_6?
ConvLSTM2D_2/convolution_7Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_7?
ConvLSTM2D_2/convolution_8Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_8?
ConvLSTM2D_2/addAddV2ConvLSTM2D_2/BiasAdd:output:0#ConvLSTM2D_2/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/addm
ConvLSTM2D_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/Constq
ConvLSTM2D_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/Const_1?
ConvLSTM2D_2/MulMulConvLSTM2D_2/add:z:0ConvLSTM2D_2/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Mul?
ConvLSTM2D_2/Add_1AddConvLSTM2D_2/Mul:z:0ConvLSTM2D_2/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Add_1?
$ConvLSTM2D_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$ConvLSTM2D_2/clip_by_value/Minimum/y?
"ConvLSTM2D_2/clip_by_value/MinimumMinimumConvLSTM2D_2/Add_1:z:0-ConvLSTM2D_2/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_2/clip_by_value/Minimum?
ConvLSTM2D_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConvLSTM2D_2/clip_by_value/y?
ConvLSTM2D_2/clip_by_valueMaximum&ConvLSTM2D_2/clip_by_value/Minimum:z:0%ConvLSTM2D_2/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/clip_by_value?
ConvLSTM2D_2/add_2AddV2ConvLSTM2D_2/BiasAdd_1:output:0#ConvLSTM2D_2/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_2q
ConvLSTM2D_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/Const_2q
ConvLSTM2D_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/Const_3?
ConvLSTM2D_2/Mul_1MulConvLSTM2D_2/add_2:z:0ConvLSTM2D_2/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Mul_1?
ConvLSTM2D_2/Add_3AddConvLSTM2D_2/Mul_1:z:0ConvLSTM2D_2/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Add_3?
&ConvLSTM2D_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_2/clip_by_value_1/Minimum/y?
$ConvLSTM2D_2/clip_by_value_1/MinimumMinimumConvLSTM2D_2/Add_3:z:0/ConvLSTM2D_2/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_2/clip_by_value_1/Minimum?
ConvLSTM2D_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_2/clip_by_value_1/y?
ConvLSTM2D_2/clip_by_value_1Maximum(ConvLSTM2D_2/clip_by_value_1/Minimum:z:0'ConvLSTM2D_2/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/clip_by_value_1?
ConvLSTM2D_2/mul_2Mul ConvLSTM2D_2/clip_by_value_1:z:0!ConvLSTM2D_2/convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/mul_2?
ConvLSTM2D_2/add_4AddV2ConvLSTM2D_2/BiasAdd_2:output:0#ConvLSTM2D_2/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_4?
ConvLSTM2D_2/ReluReluConvLSTM2D_2/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Relu?
ConvLSTM2D_2/mul_3MulConvLSTM2D_2/clip_by_value:z:0ConvLSTM2D_2/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/mul_3?
ConvLSTM2D_2/add_5AddV2ConvLSTM2D_2/mul_2:z:0ConvLSTM2D_2/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_5?
ConvLSTM2D_2/add_6AddV2ConvLSTM2D_2/BiasAdd_3:output:0#ConvLSTM2D_2/convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_6q
ConvLSTM2D_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/Const_4q
ConvLSTM2D_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/Const_5?
ConvLSTM2D_2/Mul_4MulConvLSTM2D_2/add_6:z:0ConvLSTM2D_2/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Mul_4?
ConvLSTM2D_2/Add_7AddConvLSTM2D_2/Mul_4:z:0ConvLSTM2D_2/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Add_7?
&ConvLSTM2D_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_2/clip_by_value_2/Minimum/y?
$ConvLSTM2D_2/clip_by_value_2/MinimumMinimumConvLSTM2D_2/Add_7:z:0/ConvLSTM2D_2/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_2/clip_by_value_2/Minimum?
ConvLSTM2D_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_2/clip_by_value_2/y?
ConvLSTM2D_2/clip_by_value_2Maximum(ConvLSTM2D_2/clip_by_value_2/Minimum:z:0'ConvLSTM2D_2/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/clip_by_value_2?
ConvLSTM2D_2/Relu_1ReluConvLSTM2D_2/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Relu_1?
ConvLSTM2D_2/mul_5Mul ConvLSTM2D_2/clip_by_value_2:z:0!ConvLSTM2D_2/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/mul_5?
*ConvLSTM2D_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2,
*ConvLSTM2D_2/TensorArrayV2_1/element_shape?
ConvLSTM2D_2/TensorArrayV2_1TensorListReserve3ConvLSTM2D_2/TensorArrayV2_1/element_shape:output:0#ConvLSTM2D_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_2/TensorArrayV2_1h
ConvLSTM2D_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
ConvLSTM2D_2/time?
%ConvLSTM2D_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%ConvLSTM2D_2/while/maximum_iterations?
ConvLSTM2D_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
ConvLSTM2D_2/while/loop_counter?
ConvLSTM2D_2/whileWhile(ConvLSTM2D_2/while/loop_counter:output:0.ConvLSTM2D_2/while/maximum_iterations:output:0ConvLSTM2D_2/time:output:0%ConvLSTM2D_2/TensorArrayV2_1:handle:0!ConvLSTM2D_2/convolution:output:0!ConvLSTM2D_2/convolution:output:0#ConvLSTM2D_2/strided_slice:output:0DConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0*convlstm2d_2_split_readvariableop_resource,convlstm2d_2_split_1_readvariableop_resource,convlstm2d_2_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*)
body!R
ConvLSTM2D_2_while_body_34889*)
cond!R
ConvLSTM2D_2_while_cond_34888*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
ConvLSTM2D_2/while?
=ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2?
=ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shape?
/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStackTensorListStackConvLSTM2D_2/while:output:3FConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype021
/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack?
"ConvLSTM2D_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"ConvLSTM2D_2/strided_slice_2/stack?
$ConvLSTM2D_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$ConvLSTM2D_2/strided_slice_2/stack_1?
$ConvLSTM2D_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_2/strided_slice_2/stack_2?
ConvLSTM2D_2/strided_slice_2StridedSlice8ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack:tensor:0+ConvLSTM2D_2/strided_slice_2/stack:output:0-ConvLSTM2D_2/strided_slice_2/stack_1:output:0-ConvLSTM2D_2/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
ConvLSTM2D_2/strided_slice_2?
ConvLSTM2D_2/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_2/transpose_1/perm?
ConvLSTM2D_2/transpose_1	Transpose8ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack:tensor:0&ConvLSTM2D_2/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_2/transpose_1?
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             26
4batch_normalization_1/moments/mean/reduction_indices?
"batch_normalization_1/moments/meanMeanConvLSTM2D_2/transpose_1:y:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2$
"batch_normalization_1/moments/mean?
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0**
_output_shapes
: 2,
*batch_normalization_1/moments/StopGradient?
/batch_normalization_1/moments/SquaredDifferenceSquaredDifferenceConvLSTM2D_2/transpose_1:y:03batch_normalization_1/moments/StopGradient:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 21
/batch_normalization_1/moments/SquaredDifference?
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2:
8batch_normalization_1/moments/variance/reduction_indices?
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2(
&batch_normalization_1/moments/variance?
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization_1/moments/Squeeze?
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1?
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2-
+batch_normalization_1/AssignMovingAvg/decay?
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOp?
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes
: 2+
)batch_normalization_1/AssignMovingAvg/sub?
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2+
)batch_normalization_1/AssignMovingAvg/mul?
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_1/AssignMovingAvg?
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2/
-batch_normalization_1/AssignMovingAvg_1/decay?
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2-
+batch_normalization_1/AssignMovingAvg_1/sub?
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2-
+batch_normalization_1/AssignMovingAvg_1/mul?
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02)
'batch_normalization_1/AssignMovingAvg_1?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/Rsqrt?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOp?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulConvLSTM2D_2/transpose_1:y:0'batch_normalization_1/batchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2'
%batch_normalization_1/batchnorm/mul_1?
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/mul_2?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_1/batchnorm/ReadVariableOp?
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2'
%batch_normalization_1/batchnorm/add_1?
 ConvLSTM3D/Conv3D/ReadVariableOpReadVariableOp)convlstm3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 ConvLSTM3D/Conv3D/ReadVariableOp?
ConvLSTM3D/Conv3DConv3D)batch_normalization_1/batchnorm/add_1:z:0(ConvLSTM3D/Conv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd*
paddingSAME*
strides	
2
ConvLSTM3D/Conv3D?
!ConvLSTM3D/BiasAdd/ReadVariableOpReadVariableOp*convlstm3d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!ConvLSTM3D/BiasAdd/ReadVariableOp?
ConvLSTM3D/BiasAddBiasAddConvLSTM3D/Conv3D:output:0)ConvLSTM3D/BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM3D/BiasAdd?
ConvLSTM3D/SigmoidSigmoidConvLSTM3D/BiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM3D/Sigmoid?
IdentityIdentityConvLSTM3D/Sigmoid:y:0"^ConvLSTM2D_1/split/ReadVariableOp$^ConvLSTM2D_1/split_1/ReadVariableOp$^ConvLSTM2D_1/split_2/ReadVariableOp^ConvLSTM2D_1/while"^ConvLSTM2D_2/split/ReadVariableOp$^ConvLSTM2D_2/split_1/ReadVariableOp$^ConvLSTM2D_2/split_2/ReadVariableOp^ConvLSTM2D_2/while"^ConvLSTM3D/BiasAdd/ReadVariableOp!^ConvLSTM3D/Conv3D/ReadVariableOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2F
!ConvLSTM2D_1/split/ReadVariableOp!ConvLSTM2D_1/split/ReadVariableOp2J
#ConvLSTM2D_1/split_1/ReadVariableOp#ConvLSTM2D_1/split_1/ReadVariableOp2J
#ConvLSTM2D_1/split_2/ReadVariableOp#ConvLSTM2D_1/split_2/ReadVariableOp2(
ConvLSTM2D_1/whileConvLSTM2D_1/while2F
!ConvLSTM2D_2/split/ReadVariableOp!ConvLSTM2D_2/split/ReadVariableOp2J
#ConvLSTM2D_2/split_1/ReadVariableOp#ConvLSTM2D_2/split_1/ReadVariableOp2J
#ConvLSTM2D_2/split_2/ReadVariableOp#ConvLSTM2D_2/split_2/ReadVariableOp2(
ConvLSTM2D_2/whileConvLSTM2D_2/while2F
!ConvLSTM3D/BiasAdd/ReadVariableOp!ConvLSTM3D/BiasAdd/ReadVariableOp2D
 ConvLSTM3D/Conv3D/ReadVariableOp ConvLSTM3D/Conv3D/ReadVariableOp2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?h
?
while_body_35440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?h
?
while_body_32703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?$
?
@__inference_model_layer_call_and_return_conditional_losses_33986
input_1-
convlstm2d_1_33948:?-
convlstm2d_1_33950: ?!
convlstm2d_1_33952:	?'
batch_normalization_33955: '
batch_normalization_33957: '
batch_normalization_33959: '
batch_normalization_33961: -
convlstm2d_2_33964: ?-
convlstm2d_2_33966: ?!
convlstm2d_2_33968:	?)
batch_normalization_1_33971: )
batch_normalization_1_33973: )
batch_normalization_1_33975: )
batch_normalization_1_33977: .
convlstm3d_33980: 
convlstm3d_33982:
identity??$ConvLSTM2D_1/StatefulPartitionedCall?$ConvLSTM2D_2/StatefulPartitionedCall?"ConvLSTM3D/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?
$ConvLSTM2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_1convlstm2d_1_33948convlstm2d_1_33950convlstm2d_1_33952*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_328292&
$ConvLSTM2D_1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_1/StatefulPartitionedCall:output:0batch_normalization_33955batch_normalization_33957batch_normalization_33959batch_normalization_33961*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_328562-
+batch_normalization/StatefulPartitionedCall?
$ConvLSTM2D_2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0convlstm2d_2_33964convlstm2d_2_33966convlstm2d_2_33968*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_330872&
$ConvLSTM2D_2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_2/StatefulPartitionedCall:output:0batch_normalization_1_33971batch_normalization_1_33973batch_normalization_1_33975batch_normalization_1_33977*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_331142/
-batch_normalization_1/StatefulPartitionedCall?
"ConvLSTM3D/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0convlstm3d_33980convlstm3d_33982*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_331352$
"ConvLSTM3D/StatefulPartitionedCall?
IdentityIdentity+ConvLSTM3D/StatefulPartitionedCall:output:0%^ConvLSTM2D_1/StatefulPartitionedCall%^ConvLSTM2D_2/StatefulPartitionedCall#^ConvLSTM3D/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2L
$ConvLSTM2D_1/StatefulPartitionedCall$ConvLSTM2D_1/StatefulPartitionedCall2L
$ConvLSTM2D_2/StatefulPartitionedCall$ConvLSTM2D_2/StatefulPartitionedCall2H
"ConvLSTM3D/StatefulPartitionedCall"ConvLSTM3D/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????dd
!
_user_specified_name	input_1
?
?
%__inference_model_layer_call_fn_33945
input_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: $
	unknown_6: ?$
	unknown_7: ?
	unknown_8:	?
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: (

unknown_13: 

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_338732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????dd
!
_user_specified_name	input_1
?D
?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_37656

inputs
states_0
states_18
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstates_0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstates_0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstates_0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstates_0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd :?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd 
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?,
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_31707

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
3__inference_conv_lst_m2d_cell_1_layer_call_fn_37690

inputs
states_0
states_1"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_320772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd :?????????dd :?????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????dd 
 
_user_specified_nameinputs:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/0:YU
/
_output_shapes
:?????????dd 
"
_user_specified_name
states/1
?#
?
while_body_31091
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0(
while_31115_0:?(
while_31117_0: ?
while_31119_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor&
while_31115:?&
while_31117: ?
while_31119:	???while/StatefulPartitionedCall?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_31115_0while_31117_0while_31119_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_310772
while/StatefulPartitionedCall?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder&while/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1~
while/IdentityIdentitywhile/add_1:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add:z:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identity&while/StatefulPartitionedCall:output:1^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identity&while/StatefulPartitionedCall:output:2^while/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5"
while_31115while_31115_0"
while_31117while_31117_0"
while_31119while_31119_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 2>
while/StatefulPartitionedCallwhile/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?
?
#model_ConvLSTM2D_1_while_cond_30591B
>model_convlstm2d_1_while_model_convlstm2d_1_while_loop_counterH
Dmodel_convlstm2d_1_while_model_convlstm2d_1_while_maximum_iterations(
$model_convlstm2d_1_while_placeholder*
&model_convlstm2d_1_while_placeholder_1*
&model_convlstm2d_1_while_placeholder_2*
&model_convlstm2d_1_while_placeholder_3B
>model_convlstm2d_1_while_less_model_convlstm2d_1_strided_sliceY
Umodel_convlstm2d_1_while_model_convlstm2d_1_while_cond_30591___redundant_placeholder0Y
Umodel_convlstm2d_1_while_model_convlstm2d_1_while_cond_30591___redundant_placeholder1Y
Umodel_convlstm2d_1_while_model_convlstm2d_1_while_cond_30591___redundant_placeholder2Y
Umodel_convlstm2d_1_while_model_convlstm2d_1_while_cond_30591___redundant_placeholder3%
!model_convlstm2d_1_while_identity
?
model/ConvLSTM2D_1/while/LessLess$model_convlstm2d_1_while_placeholder>model_convlstm2d_1_while_less_model_convlstm2d_1_strided_slice*
T0*
_output_shapes
: 2
model/ConvLSTM2D_1/while/Less?
!model/ConvLSTM2D_1/while/IdentityIdentity!model/ConvLSTM2D_1/while/Less:z:0*
T0
*
_output_shapes
: 2#
!model/ConvLSTM2D_1/while/Identity"O
!model_convlstm2d_1_while_identity*model/ConvLSTM2D_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?6
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_31395

inputs"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *U
fPRN
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_312652
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_31327*
condR
while_cond_31326*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^StatefulPartitionedCall^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
ConvLSTM2D_1_while_cond_346406
2convlstm2d_1_while_convlstm2d_1_while_loop_counter<
8convlstm2d_1_while_convlstm2d_1_while_maximum_iterations"
convlstm2d_1_while_placeholder$
 convlstm2d_1_while_placeholder_1$
 convlstm2d_1_while_placeholder_2$
 convlstm2d_1_while_placeholder_36
2convlstm2d_1_while_less_convlstm2d_1_strided_sliceM
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34640___redundant_placeholder0M
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34640___redundant_placeholder1M
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34640___redundant_placeholder2M
Iconvlstm2d_1_while_convlstm2d_1_while_cond_34640___redundant_placeholder3
convlstm2d_1_while_identity
?
ConvLSTM2D_1/while/LessLessconvlstm2d_1_while_placeholder2convlstm2d_1_while_less_convlstm2d_1_strided_slice*
T0*
_output_shapes
: 2
ConvLSTM2D_1/while/Less?
ConvLSTM2D_1/while/IdentityIdentityConvLSTM2D_1/while/Less:z:0*
T0
*
_output_shapes
: 2
ConvLSTM2D_1/while/Identity"C
convlstm2d_1_while_identity$ConvLSTM2D_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
ConvLSTM2D_2_while_cond_343976
2convlstm2d_2_while_convlstm2d_2_while_loop_counter<
8convlstm2d_2_while_convlstm2d_2_while_maximum_iterations"
convlstm2d_2_while_placeholder$
 convlstm2d_2_while_placeholder_1$
 convlstm2d_2_while_placeholder_2$
 convlstm2d_2_while_placeholder_36
2convlstm2d_2_while_less_convlstm2d_2_strided_sliceM
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34397___redundant_placeholder0M
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34397___redundant_placeholder1M
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34397___redundant_placeholder2M
Iconvlstm2d_2_while_convlstm2d_2_while_cond_34397___redundant_placeholder3
convlstm2d_2_while_identity
?
ConvLSTM2D_2/while/LessLessconvlstm2d_2_while_placeholder2convlstm2d_2_while_less_convlstm2d_2_strided_slice*
T0*
_output_shapes
: 2
ConvLSTM2D_2/while/Less?
ConvLSTM2D_2/while/IdentityIdentityConvLSTM2D_2/while/Less:z:0*
T0
*
_output_shapes
: 2
ConvLSTM2D_2/while/Identity"C
convlstm2d_2_while_identity$ConvLSTM2D_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?
?
,__inference_ConvLSTM2D_2_layer_call_fn_37109
inputs_0"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_319712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????dd 
"
_user_specified_name
inputs/0
?
?
,__inference_ConvLSTM2D_1_layer_call_fn_36028
inputs_0"
unknown:?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_313952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
<
_output_shapes*
(:&??????????????????dd
"
_user_specified_name
inputs/0
?D
?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_32077

inputs

states
states_18
split_readvariableop_resource: ?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity

identity_1

identity_2??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOpd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolutionConv2Dinputssplit:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution
BiasAddBiasAddconvolution:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_1Conv2Dinputssplit:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
	BiasAdd_1BiasAddconvolution_1:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_2Conv2Dinputssplit:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_2BiasAddconvolution_2:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_3Conv2Dinputssplit:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_3BiasAddconvolution_3:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_4Conv2Dstatessplit_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
convolution_5Conv2Dstatessplit_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dstatessplit_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dstatessplit_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7w
addAddV2BiasAdd:output:0convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1n
mul_2Mulclip_by_value_1:z:0states_1*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
IdentityIdentity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity?

Identity_1Identity	mul_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_1?

Identity_2Identity	add_5:z:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W:?????????dd :?????????dd :?????????dd : : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp:W S
/
_output_shapes
:?????????dd 
 
_user_specified_nameinputs:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates:WS
/
_output_shapes
:?????????dd 
 
_user_specified_namestates
?	
?
3__inference_batch_normalization_layer_call_fn_36171

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8???????????????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_316472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
while_cond_36749
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_36749___redundant_placeholder03
/while_while_cond_36749___redundant_placeholder13
/while_while_cond_36749___redundant_placeholder23
/while_while_cond_36749___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?h
?
while_body_35880
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0:?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource:?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
:?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: 
?	
?
5__inference_batch_normalization_1_layer_call_fn_37263

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::8???????????????????????????????????? *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_324652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36070

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
while_cond_32960
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_32960___redundant_placeholder03
/while_while_cond_32960___redundant_placeholder13
/while_while_cond_32960___redundant_placeholder23
/while_while_cond_32960___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?n
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_36006

inputs8
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35880*
condR
while_cond_35879*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?
?
while_cond_36971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_36971___redundant_placeholder03
/while_while_cond_36971___redundant_placeholder13
/while_while_cond_36971___redundant_placeholder23
/while_while_cond_36971___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : :?????????dd :?????????dd : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
:
?n
?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35566
inputs_08
split_readvariableop_resource:?:
split_1_readvariableop_resource: ?.
split_2_readvariableop_resource:	?
identity??split/ReadVariableOp?split_1/ReadVariableOp?split_2/ReadVariableOp?whilev

zeros_like	ZerosLikeinputs_0*
T0*<
_output_shapes*
(:&??????????????????dd2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
Sums
zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
strided_slice_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*'
_output_shapes
:?*
dtype02
split/ReadVariableOp?
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02
split_1/ReadVariableOp?
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2	
split_1h
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2/ReadVariableOpReadVariableOpsplit_2_readvariableop_resource*
_output_shapes	
:?*
dtype02
split_2/ReadVariableOp?
split_2Splitsplit_2/split_dim:output:0split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2	
split_2?
convolution_1Conv2Dstrided_slice_1:output:0split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_1?
BiasAddBiasAddconvolution_1:output:0split_2:output:0*
T0*/
_output_shapes
:?????????dd 2	
BiasAdd?
convolution_2Conv2Dstrided_slice_1:output:0split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_2?
	BiasAdd_1BiasAddconvolution_2:output:0split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_1?
convolution_3Conv2Dstrided_slice_1:output:0split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_3?
	BiasAdd_2BiasAddconvolution_3:output:0split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_2?
convolution_4Conv2Dstrided_slice_1:output:0split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_4?
	BiasAdd_3BiasAddconvolution_4:output:0split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
	BiasAdd_3?
convolution_5Conv2Dconvolution:output:0split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_5?
convolution_6Conv2Dconvolution:output:0split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_6?
convolution_7Conv2Dconvolution:output:0split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_7?
convolution_8Conv2Dconvolution:output:0split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution_8w
addAddV2BiasAdd:output:0convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
addS
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConstW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_1d
MulMuladd:z:0Const:output:0*
T0*/
_output_shapes
:?????????dd 2
Mulj
Add_1AddMul:z:0Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_1w
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value/Minimum/y?
clip_by_value/MinimumMinimum	Add_1:z:0 clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value/Minimumg
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value/y?
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value}
add_2AddV2BiasAdd_1:output:0convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
add_2W
Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_2W
Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_3l
Mul_1Mul	add_2:z:0Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_1l
Add_3Add	Mul_1:z:0Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_3{
clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_1/Minimum/y?
clip_by_value_1/MinimumMinimum	Add_3:z:0"clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1/Minimumk
clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_1/y?
clip_by_value_1Maximumclip_by_value_1/Minimum:z:0clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_1z
mul_2Mulclip_by_value_1:z:0convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
mul_2}
add_4AddV2BiasAdd_2:output:0convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
add_4Y
ReluRelu	add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
Reluv
mul_3Mulclip_by_value:z:0Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_3g
add_5AddV2	mul_2:z:0	mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
add_5}
add_6AddV2BiasAdd_3:output:0convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
add_6W
Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2	
Const_4W
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2	
Const_5l
Mul_4Mul	add_6:z:0Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
Mul_4l
Add_7Add	Mul_4:z:0Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
Add_7{
clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
clip_by_value_2/Minimum/y?
clip_by_value_2/MinimumMinimum	Add_7:z:0"clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2/Minimumk
clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
clip_by_value_2/y?
clip_by_value_2Maximumclip_by_value_2/Minimum:z:0clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
clip_by_value_2]
Relu_1Relu	add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
Relu_1z
mul_5Mulclip_by_value_2:z:0Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
mul_5?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0split_readvariableop_resourcesplit_1_readvariableop_resourcesplit_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_35440*
condR
while_cond_35439*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^split/ReadVariableOp^split_1/ReadVariableOp^split_2/ReadVariableOp^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd: : : 2,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp20
split_2/ReadVariableOpsplit_2/ReadVariableOp2
whilewhile:f b
<
_output_shapes*
(:&??????????????????dd
"
_user_specified_name
inputs/0
?$
?
@__inference_model_layer_call_and_return_conditional_losses_33142

inputs-
convlstm2d_1_32830:?-
convlstm2d_1_32832: ?!
convlstm2d_1_32834:	?'
batch_normalization_32857: '
batch_normalization_32859: '
batch_normalization_32861: '
batch_normalization_32863: -
convlstm2d_2_33088: ?-
convlstm2d_2_33090: ?!
convlstm2d_2_33092:	?)
batch_normalization_1_33115: )
batch_normalization_1_33117: )
batch_normalization_1_33119: )
batch_normalization_1_33121: .
convlstm3d_33136: 
convlstm3d_33138:
identity??$ConvLSTM2D_1/StatefulPartitionedCall?$ConvLSTM2D_2/StatefulPartitionedCall?"ConvLSTM3D/StatefulPartitionedCall?+batch_normalization/StatefulPartitionedCall?-batch_normalization_1/StatefulPartitionedCall?
$ConvLSTM2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsconvlstm2d_1_32830convlstm2d_1_32832convlstm2d_1_32834*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_328292&
$ConvLSTM2D_1/StatefulPartitionedCall?
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_1/StatefulPartitionedCall:output:0batch_normalization_32857batch_normalization_32859batch_normalization_32861batch_normalization_32863*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_328562-
+batch_normalization/StatefulPartitionedCall?
$ConvLSTM2D_2/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0convlstm2d_2_33088convlstm2d_2_33090convlstm2d_2_33092*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_330872&
$ConvLSTM2D_2/StatefulPartitionedCall?
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall-ConvLSTM2D_2/StatefulPartitionedCall:output:0batch_normalization_1_33115batch_normalization_1_33117batch_normalization_1_33119batch_normalization_1_33121*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_331142/
-batch_normalization_1/StatefulPartitionedCall?
"ConvLSTM3D/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0convlstm3d_33136convlstm3d_33138*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_331352$
"ConvLSTM3D/StatefulPartitionedCall?
IdentityIdentity+ConvLSTM3D/StatefulPartitionedCall:output:0%^ConvLSTM2D_1/StatefulPartitionedCall%^ConvLSTM2D_2/StatefulPartitionedCall#^ConvLSTM3D/StatefulPartitionedCall,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2L
$ConvLSTM2D_1/StatefulPartitionedCall$ConvLSTM2D_1/StatefulPartitionedCall2L
$ConvLSTM2D_2/StatefulPartitionedCall$ConvLSTM2D_2/StatefulPartitionedCall2H
"ConvLSTM3D/StatefulPartitionedCall"ConvLSTM3D/StatefulPartitionedCall2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?,
?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36104

inputs5
'assignmovingavg_readvariableop_resource: 7
)assignmovingavg_1_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: /
!batchnorm_readvariableop_resource: 
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/mean?
moments/StopGradientStopGradientmoments/mean:output:0*
T0**
_output_shapes
: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0**
_output_shapes
: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1s
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg/mul?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvgw
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
: 2
AssignMovingAvg_1/mul?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype02
AssignMovingAvg_1g
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_34070
input_1"
unknown:?$
	unknown_0: ?
	unknown_1:	?
	unknown_2: 
	unknown_3: 
	unknown_4: 
	unknown_5: $
	unknown_6: ?$
	unknown_7: ?
	unknown_8:	?
	unknown_9: 

unknown_10: 

unknown_11: 

unknown_12: (

unknown_13: 

unknown_14:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:&??????????????????dd*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_309752
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
<
_output_shapes*
(:&??????????????????dd
!
_user_specified_name	input_1
?
?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37162

inputs/
!batchnorm_readvariableop_resource: 3
%batchnorm_mul_readvariableop_resource: 1
#batchnorm_readvariableop_1_resource: 1
#batchnorm_readvariableop_2_resource: 
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOp?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mul?
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*N
_output_shapes<
::8???????????????????????????????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*N
_output_shapes<
::8???????????????????????????????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:8???????????????????????????????????? : : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:v r
N
_output_shapes<
::8???????????????????????????????????? 
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_34547

inputsE
*convlstm2d_1_split_readvariableop_resource:?G
,convlstm2d_1_split_1_readvariableop_resource: ?;
,convlstm2d_1_split_2_readvariableop_resource:	?C
5batch_normalization_batchnorm_readvariableop_resource: G
9batch_normalization_batchnorm_mul_readvariableop_resource: E
7batch_normalization_batchnorm_readvariableop_1_resource: E
7batch_normalization_batchnorm_readvariableop_2_resource: E
*convlstm2d_2_split_readvariableop_resource: ?G
,convlstm2d_2_split_1_readvariableop_resource: ?;
,convlstm2d_2_split_2_readvariableop_resource:	?E
7batch_normalization_1_batchnorm_readvariableop_resource: I
;batch_normalization_1_batchnorm_mul_readvariableop_resource: G
9batch_normalization_1_batchnorm_readvariableop_1_resource: G
9batch_normalization_1_batchnorm_readvariableop_2_resource: G
)convlstm3d_conv3d_readvariableop_resource: 8
*convlstm3d_biasadd_readvariableop_resource:
identity??!ConvLSTM2D_1/split/ReadVariableOp?#ConvLSTM2D_1/split_1/ReadVariableOp?#ConvLSTM2D_1/split_2/ReadVariableOp?ConvLSTM2D_1/while?!ConvLSTM2D_2/split/ReadVariableOp?#ConvLSTM2D_2/split_1/ReadVariableOp?#ConvLSTM2D_2/split_2/ReadVariableOp?ConvLSTM2D_2/while?!ConvLSTM3D/BiasAdd/ReadVariableOp? ConvLSTM3D/Conv3D/ReadVariableOp?,batch_normalization/batchnorm/ReadVariableOp?.batch_normalization/batchnorm/ReadVariableOp_1?.batch_normalization/batchnorm/ReadVariableOp_2?0batch_normalization/batchnorm/mul/ReadVariableOp?.batch_normalization_1/batchnorm/ReadVariableOp?0batch_normalization_1/batchnorm/ReadVariableOp_1?0batch_normalization_1/batchnorm/ReadVariableOp_2?2batch_normalization_1/batchnorm/mul/ReadVariableOp?
ConvLSTM2D_1/zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM2D_1/zeros_like?
"ConvLSTM2D_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_1/Sum/reduction_indices?
ConvLSTM2D_1/SumSumConvLSTM2D_1/zeros_like:y:0+ConvLSTM2D_1/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd2
ConvLSTM2D_1/Sum?
ConvLSTM2D_1/zerosConst*&
_output_shapes
: *
dtype0*%
valueB *    2
ConvLSTM2D_1/zeros?
ConvLSTM2D_1/convolutionConv2DConvLSTM2D_1/Sum:output:0ConvLSTM2D_1/zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution?
ConvLSTM2D_1/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_1/transpose/perm?
ConvLSTM2D_1/transpose	Transposeinputs$ConvLSTM2D_1/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM2D_1/transposer
ConvLSTM2D_1/ShapeShapeConvLSTM2D_1/transpose:y:0*
T0*
_output_shapes
:2
ConvLSTM2D_1/Shape?
 ConvLSTM2D_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 ConvLSTM2D_1/strided_slice/stack?
"ConvLSTM2D_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_1/strided_slice/stack_1?
"ConvLSTM2D_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_1/strided_slice/stack_2?
ConvLSTM2D_1/strided_sliceStridedSliceConvLSTM2D_1/Shape:output:0)ConvLSTM2D_1/strided_slice/stack:output:0+ConvLSTM2D_1/strided_slice/stack_1:output:0+ConvLSTM2D_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ConvLSTM2D_1/strided_slice?
(ConvLSTM2D_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(ConvLSTM2D_1/TensorArrayV2/element_shape?
ConvLSTM2D_1/TensorArrayV2TensorListReserve1ConvLSTM2D_1/TensorArrayV2/element_shape:output:0#ConvLSTM2D_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_1/TensorArrayV2?
BConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d      2D
BConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shape?
4ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorConvLSTM2D_1/transpose:y:0KConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4ConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor?
"ConvLSTM2D_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"ConvLSTM2D_1/strided_slice_1/stack?
$ConvLSTM2D_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_1/strided_slice_1/stack_1?
$ConvLSTM2D_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_1/strided_slice_1/stack_2?
ConvLSTM2D_1/strided_slice_1StridedSliceConvLSTM2D_1/transpose:y:0+ConvLSTM2D_1/strided_slice_1/stack:output:0-ConvLSTM2D_1/strided_slice_1/stack_1:output:0-ConvLSTM2D_1/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd*
shrink_axis_mask2
ConvLSTM2D_1/strided_slice_1~
ConvLSTM2D_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_1/split/split_dim?
!ConvLSTM2D_1/split/ReadVariableOpReadVariableOp*convlstm2d_1_split_readvariableop_resource*'
_output_shapes
:?*
dtype02#
!ConvLSTM2D_1/split/ReadVariableOp?
ConvLSTM2D_1/splitSplit%ConvLSTM2D_1/split/split_dim:output:0)ConvLSTM2D_1/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H: : : : *
	num_split2
ConvLSTM2D_1/split?
ConvLSTM2D_1/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ConvLSTM2D_1/split_1/split_dim?
#ConvLSTM2D_1/split_1/ReadVariableOpReadVariableOp,convlstm2d_1_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02%
#ConvLSTM2D_1/split_1/ReadVariableOp?
ConvLSTM2D_1/split_1Split'ConvLSTM2D_1/split_1/split_dim:output:0+ConvLSTM2D_1/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_1/split_1?
ConvLSTM2D_1/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
ConvLSTM2D_1/split_2/split_dim?
#ConvLSTM2D_1/split_2/ReadVariableOpReadVariableOp,convlstm2d_1_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#ConvLSTM2D_1/split_2/ReadVariableOp?
ConvLSTM2D_1/split_2Split'ConvLSTM2D_1/split_2/split_dim:output:0+ConvLSTM2D_1/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_1/split_2?
ConvLSTM2D_1/convolution_1Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_1?
ConvLSTM2D_1/BiasAddBiasAdd#ConvLSTM2D_1/convolution_1:output:0ConvLSTM2D_1/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd?
ConvLSTM2D_1/convolution_2Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_2?
ConvLSTM2D_1/BiasAdd_1BiasAdd#ConvLSTM2D_1/convolution_2:output:0ConvLSTM2D_1/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd_1?
ConvLSTM2D_1/convolution_3Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_3?
ConvLSTM2D_1/BiasAdd_2BiasAdd#ConvLSTM2D_1/convolution_3:output:0ConvLSTM2D_1/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd_2?
ConvLSTM2D_1/convolution_4Conv2D%ConvLSTM2D_1/strided_slice_1:output:0ConvLSTM2D_1/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_4?
ConvLSTM2D_1/BiasAdd_3BiasAdd#ConvLSTM2D_1/convolution_4:output:0ConvLSTM2D_1/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/BiasAdd_3?
ConvLSTM2D_1/convolution_5Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_5?
ConvLSTM2D_1/convolution_6Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_6?
ConvLSTM2D_1/convolution_7Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_7?
ConvLSTM2D_1/convolution_8Conv2D!ConvLSTM2D_1/convolution:output:0ConvLSTM2D_1/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_1/convolution_8?
ConvLSTM2D_1/addAddV2ConvLSTM2D_1/BiasAdd:output:0#ConvLSTM2D_1/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/addm
ConvLSTM2D_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/Constq
ConvLSTM2D_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/Const_1?
ConvLSTM2D_1/MulMulConvLSTM2D_1/add:z:0ConvLSTM2D_1/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Mul?
ConvLSTM2D_1/Add_1AddConvLSTM2D_1/Mul:z:0ConvLSTM2D_1/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Add_1?
$ConvLSTM2D_1/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$ConvLSTM2D_1/clip_by_value/Minimum/y?
"ConvLSTM2D_1/clip_by_value/MinimumMinimumConvLSTM2D_1/Add_1:z:0-ConvLSTM2D_1/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_1/clip_by_value/Minimum?
ConvLSTM2D_1/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConvLSTM2D_1/clip_by_value/y?
ConvLSTM2D_1/clip_by_valueMaximum&ConvLSTM2D_1/clip_by_value/Minimum:z:0%ConvLSTM2D_1/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/clip_by_value?
ConvLSTM2D_1/add_2AddV2ConvLSTM2D_1/BiasAdd_1:output:0#ConvLSTM2D_1/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_2q
ConvLSTM2D_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/Const_2q
ConvLSTM2D_1/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/Const_3?
ConvLSTM2D_1/Mul_1MulConvLSTM2D_1/add_2:z:0ConvLSTM2D_1/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Mul_1?
ConvLSTM2D_1/Add_3AddConvLSTM2D_1/Mul_1:z:0ConvLSTM2D_1/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Add_3?
&ConvLSTM2D_1/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_1/clip_by_value_1/Minimum/y?
$ConvLSTM2D_1/clip_by_value_1/MinimumMinimumConvLSTM2D_1/Add_3:z:0/ConvLSTM2D_1/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_1/clip_by_value_1/Minimum?
ConvLSTM2D_1/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_1/clip_by_value_1/y?
ConvLSTM2D_1/clip_by_value_1Maximum(ConvLSTM2D_1/clip_by_value_1/Minimum:z:0'ConvLSTM2D_1/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/clip_by_value_1?
ConvLSTM2D_1/mul_2Mul ConvLSTM2D_1/clip_by_value_1:z:0!ConvLSTM2D_1/convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/mul_2?
ConvLSTM2D_1/add_4AddV2ConvLSTM2D_1/BiasAdd_2:output:0#ConvLSTM2D_1/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_4?
ConvLSTM2D_1/ReluReluConvLSTM2D_1/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Relu?
ConvLSTM2D_1/mul_3MulConvLSTM2D_1/clip_by_value:z:0ConvLSTM2D_1/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/mul_3?
ConvLSTM2D_1/add_5AddV2ConvLSTM2D_1/mul_2:z:0ConvLSTM2D_1/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_5?
ConvLSTM2D_1/add_6AddV2ConvLSTM2D_1/BiasAdd_3:output:0#ConvLSTM2D_1/convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/add_6q
ConvLSTM2D_1/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_1/Const_4q
ConvLSTM2D_1/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_1/Const_5?
ConvLSTM2D_1/Mul_4MulConvLSTM2D_1/add_6:z:0ConvLSTM2D_1/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Mul_4?
ConvLSTM2D_1/Add_7AddConvLSTM2D_1/Mul_4:z:0ConvLSTM2D_1/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Add_7?
&ConvLSTM2D_1/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_1/clip_by_value_2/Minimum/y?
$ConvLSTM2D_1/clip_by_value_2/MinimumMinimumConvLSTM2D_1/Add_7:z:0/ConvLSTM2D_1/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_1/clip_by_value_2/Minimum?
ConvLSTM2D_1/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_1/clip_by_value_2/y?
ConvLSTM2D_1/clip_by_value_2Maximum(ConvLSTM2D_1/clip_by_value_2/Minimum:z:0'ConvLSTM2D_1/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/clip_by_value_2?
ConvLSTM2D_1/Relu_1ReluConvLSTM2D_1/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/Relu_1?
ConvLSTM2D_1/mul_5Mul ConvLSTM2D_1/clip_by_value_2:z:0!ConvLSTM2D_1/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_1/mul_5?
*ConvLSTM2D_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2,
*ConvLSTM2D_1/TensorArrayV2_1/element_shape?
ConvLSTM2D_1/TensorArrayV2_1TensorListReserve3ConvLSTM2D_1/TensorArrayV2_1/element_shape:output:0#ConvLSTM2D_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_1/TensorArrayV2_1h
ConvLSTM2D_1/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
ConvLSTM2D_1/time?
%ConvLSTM2D_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%ConvLSTM2D_1/while/maximum_iterations?
ConvLSTM2D_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
ConvLSTM2D_1/while/loop_counter?
ConvLSTM2D_1/whileWhile(ConvLSTM2D_1/while/loop_counter:output:0.ConvLSTM2D_1/while/maximum_iterations:output:0ConvLSTM2D_1/time:output:0%ConvLSTM2D_1/TensorArrayV2_1:handle:0!ConvLSTM2D_1/convolution:output:0!ConvLSTM2D_1/convolution:output:0#ConvLSTM2D_1/strided_slice:output:0DConvLSTM2D_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0*convlstm2d_1_split_readvariableop_resource,convlstm2d_1_split_1_readvariableop_resource,convlstm2d_1_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*)
body!R
ConvLSTM2D_1_while_body_34164*)
cond!R
ConvLSTM2D_1_while_cond_34163*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
ConvLSTM2D_1/while?
=ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2?
=ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shape?
/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStackTensorListStackConvLSTM2D_1/while:output:3FConvLSTM2D_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype021
/ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack?
"ConvLSTM2D_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"ConvLSTM2D_1/strided_slice_2/stack?
$ConvLSTM2D_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$ConvLSTM2D_1/strided_slice_2/stack_1?
$ConvLSTM2D_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_1/strided_slice_2/stack_2?
ConvLSTM2D_1/strided_slice_2StridedSlice8ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack:tensor:0+ConvLSTM2D_1/strided_slice_2/stack:output:0-ConvLSTM2D_1/strided_slice_2/stack_1:output:0-ConvLSTM2D_1/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
ConvLSTM2D_1/strided_slice_2?
ConvLSTM2D_1/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_1/transpose_1/perm?
ConvLSTM2D_1/transpose_1	Transpose8ConvLSTM2D_1/TensorArrayV2Stack/TensorListStack:tensor:0&ConvLSTM2D_1/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_1/transpose_1?
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,batch_normalization/batchnorm/ReadVariableOp?
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2%
#batch_normalization/batchnorm/add/y?
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/add?
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/Rsqrt?
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp?
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/mul?
#batch_normalization/batchnorm/mul_1MulConvLSTM2D_1/transpose_1:y:0%batch_normalization/batchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2%
#batch_normalization/batchnorm/mul_1?
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1?
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/mul_2?
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2?
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/sub?
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2%
#batch_normalization/batchnorm/add_1?
ConvLSTM2D_2/zeros_like	ZerosLike'batch_normalization/batchnorm/add_1:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_2/zeros_like?
"ConvLSTM2D_2/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2$
"ConvLSTM2D_2/Sum/reduction_indices?
ConvLSTM2D_2/SumSumConvLSTM2D_2/zeros_like:y:0+ConvLSTM2D_2/Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Sum?
"ConvLSTM2D_2/zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2$
"ConvLSTM2D_2/zeros/shape_as_tensory
ConvLSTM2D_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConvLSTM2D_2/zeros/Const?
ConvLSTM2D_2/zerosFill+ConvLSTM2D_2/zeros/shape_as_tensor:output:0!ConvLSTM2D_2/zeros/Const:output:0*
T0*&
_output_shapes
:  2
ConvLSTM2D_2/zeros?
ConvLSTM2D_2/convolutionConv2DConvLSTM2D_2/Sum:output:0ConvLSTM2D_2/zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution?
ConvLSTM2D_2/transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_2/transpose/perm?
ConvLSTM2D_2/transpose	Transpose'batch_normalization/batchnorm/add_1:z:0$ConvLSTM2D_2/transpose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_2/transposer
ConvLSTM2D_2/ShapeShapeConvLSTM2D_2/transpose:y:0*
T0*
_output_shapes
:2
ConvLSTM2D_2/Shape?
 ConvLSTM2D_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2"
 ConvLSTM2D_2/strided_slice/stack?
"ConvLSTM2D_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_2/strided_slice/stack_1?
"ConvLSTM2D_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2$
"ConvLSTM2D_2/strided_slice/stack_2?
ConvLSTM2D_2/strided_sliceStridedSliceConvLSTM2D_2/Shape:output:0)ConvLSTM2D_2/strided_slice/stack:output:0+ConvLSTM2D_2/strided_slice/stack_1:output:0+ConvLSTM2D_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
ConvLSTM2D_2/strided_slice?
(ConvLSTM2D_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(ConvLSTM2D_2/TensorArrayV2/element_shape?
ConvLSTM2D_2/TensorArrayV2TensorListReserve1ConvLSTM2D_2/TensorArrayV2/element_shape:output:0#ConvLSTM2D_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_2/TensorArrayV2?
BConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2D
BConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shape?
4ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorConvLSTM2D_2/transpose:y:0KConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type026
4ConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor?
"ConvLSTM2D_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2$
"ConvLSTM2D_2/strided_slice_1/stack?
$ConvLSTM2D_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_2/strided_slice_1/stack_1?
$ConvLSTM2D_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_2/strided_slice_1/stack_2?
ConvLSTM2D_2/strided_slice_1StridedSliceConvLSTM2D_2/transpose:y:0+ConvLSTM2D_2/strided_slice_1/stack:output:0-ConvLSTM2D_2/strided_slice_1/stack_1:output:0-ConvLSTM2D_2/strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
ConvLSTM2D_2/strided_slice_1~
ConvLSTM2D_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
ConvLSTM2D_2/split/split_dim?
!ConvLSTM2D_2/split/ReadVariableOpReadVariableOp*convlstm2d_2_split_readvariableop_resource*'
_output_shapes
: ?*
dtype02#
!ConvLSTM2D_2/split/ReadVariableOp?
ConvLSTM2D_2/splitSplit%ConvLSTM2D_2/split/split_dim:output:0)ConvLSTM2D_2/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/split?
ConvLSTM2D_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2 
ConvLSTM2D_2/split_1/split_dim?
#ConvLSTM2D_2/split_1/ReadVariableOpReadVariableOp,convlstm2d_2_split_1_readvariableop_resource*'
_output_shapes
: ?*
dtype02%
#ConvLSTM2D_2/split_1/ReadVariableOp?
ConvLSTM2D_2/split_1Split'ConvLSTM2D_2/split_1/split_dim:output:0+ConvLSTM2D_2/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
ConvLSTM2D_2/split_1?
ConvLSTM2D_2/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
ConvLSTM2D_2/split_2/split_dim?
#ConvLSTM2D_2/split_2/ReadVariableOpReadVariableOp,convlstm2d_2_split_2_readvariableop_resource*
_output_shapes	
:?*
dtype02%
#ConvLSTM2D_2/split_2/ReadVariableOp?
ConvLSTM2D_2/split_2Split'ConvLSTM2D_2/split_2/split_dim:output:0+ConvLSTM2D_2/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
ConvLSTM2D_2/split_2?
ConvLSTM2D_2/convolution_1Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_1?
ConvLSTM2D_2/BiasAddBiasAdd#ConvLSTM2D_2/convolution_1:output:0ConvLSTM2D_2/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd?
ConvLSTM2D_2/convolution_2Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_2?
ConvLSTM2D_2/BiasAdd_1BiasAdd#ConvLSTM2D_2/convolution_2:output:0ConvLSTM2D_2/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd_1?
ConvLSTM2D_2/convolution_3Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_3?
ConvLSTM2D_2/BiasAdd_2BiasAdd#ConvLSTM2D_2/convolution_3:output:0ConvLSTM2D_2/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd_2?
ConvLSTM2D_2/convolution_4Conv2D%ConvLSTM2D_2/strided_slice_1:output:0ConvLSTM2D_2/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_4?
ConvLSTM2D_2/BiasAdd_3BiasAdd#ConvLSTM2D_2/convolution_4:output:0ConvLSTM2D_2/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/BiasAdd_3?
ConvLSTM2D_2/convolution_5Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_5?
ConvLSTM2D_2/convolution_6Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_6?
ConvLSTM2D_2/convolution_7Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_7?
ConvLSTM2D_2/convolution_8Conv2D!ConvLSTM2D_2/convolution:output:0ConvLSTM2D_2/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
ConvLSTM2D_2/convolution_8?
ConvLSTM2D_2/addAddV2ConvLSTM2D_2/BiasAdd:output:0#ConvLSTM2D_2/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/addm
ConvLSTM2D_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/Constq
ConvLSTM2D_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/Const_1?
ConvLSTM2D_2/MulMulConvLSTM2D_2/add:z:0ConvLSTM2D_2/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Mul?
ConvLSTM2D_2/Add_1AddConvLSTM2D_2/Mul:z:0ConvLSTM2D_2/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Add_1?
$ConvLSTM2D_2/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2&
$ConvLSTM2D_2/clip_by_value/Minimum/y?
"ConvLSTM2D_2/clip_by_value/MinimumMinimumConvLSTM2D_2/Add_1:z:0-ConvLSTM2D_2/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2$
"ConvLSTM2D_2/clip_by_value/Minimum?
ConvLSTM2D_2/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
ConvLSTM2D_2/clip_by_value/y?
ConvLSTM2D_2/clip_by_valueMaximum&ConvLSTM2D_2/clip_by_value/Minimum:z:0%ConvLSTM2D_2/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/clip_by_value?
ConvLSTM2D_2/add_2AddV2ConvLSTM2D_2/BiasAdd_1:output:0#ConvLSTM2D_2/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_2q
ConvLSTM2D_2/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/Const_2q
ConvLSTM2D_2/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/Const_3?
ConvLSTM2D_2/Mul_1MulConvLSTM2D_2/add_2:z:0ConvLSTM2D_2/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Mul_1?
ConvLSTM2D_2/Add_3AddConvLSTM2D_2/Mul_1:z:0ConvLSTM2D_2/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Add_3?
&ConvLSTM2D_2/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_2/clip_by_value_1/Minimum/y?
$ConvLSTM2D_2/clip_by_value_1/MinimumMinimumConvLSTM2D_2/Add_3:z:0/ConvLSTM2D_2/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_2/clip_by_value_1/Minimum?
ConvLSTM2D_2/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_2/clip_by_value_1/y?
ConvLSTM2D_2/clip_by_value_1Maximum(ConvLSTM2D_2/clip_by_value_1/Minimum:z:0'ConvLSTM2D_2/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/clip_by_value_1?
ConvLSTM2D_2/mul_2Mul ConvLSTM2D_2/clip_by_value_1:z:0!ConvLSTM2D_2/convolution:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/mul_2?
ConvLSTM2D_2/add_4AddV2ConvLSTM2D_2/BiasAdd_2:output:0#ConvLSTM2D_2/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_4?
ConvLSTM2D_2/ReluReluConvLSTM2D_2/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Relu?
ConvLSTM2D_2/mul_3MulConvLSTM2D_2/clip_by_value:z:0ConvLSTM2D_2/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/mul_3?
ConvLSTM2D_2/add_5AddV2ConvLSTM2D_2/mul_2:z:0ConvLSTM2D_2/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_5?
ConvLSTM2D_2/add_6AddV2ConvLSTM2D_2/BiasAdd_3:output:0#ConvLSTM2D_2/convolution_8:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/add_6q
ConvLSTM2D_2/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
ConvLSTM2D_2/Const_4q
ConvLSTM2D_2/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
ConvLSTM2D_2/Const_5?
ConvLSTM2D_2/Mul_4MulConvLSTM2D_2/add_6:z:0ConvLSTM2D_2/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Mul_4?
ConvLSTM2D_2/Add_7AddConvLSTM2D_2/Mul_4:z:0ConvLSTM2D_2/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Add_7?
&ConvLSTM2D_2/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2(
&ConvLSTM2D_2/clip_by_value_2/Minimum/y?
$ConvLSTM2D_2/clip_by_value_2/MinimumMinimumConvLSTM2D_2/Add_7:z:0/ConvLSTM2D_2/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2&
$ConvLSTM2D_2/clip_by_value_2/Minimum?
ConvLSTM2D_2/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2 
ConvLSTM2D_2/clip_by_value_2/y?
ConvLSTM2D_2/clip_by_value_2Maximum(ConvLSTM2D_2/clip_by_value_2/Minimum:z:0'ConvLSTM2D_2/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/clip_by_value_2?
ConvLSTM2D_2/Relu_1ReluConvLSTM2D_2/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/Relu_1?
ConvLSTM2D_2/mul_5Mul ConvLSTM2D_2/clip_by_value_2:z:0!ConvLSTM2D_2/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
ConvLSTM2D_2/mul_5?
*ConvLSTM2D_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2,
*ConvLSTM2D_2/TensorArrayV2_1/element_shape?
ConvLSTM2D_2/TensorArrayV2_1TensorListReserve3ConvLSTM2D_2/TensorArrayV2_1/element_shape:output:0#ConvLSTM2D_2/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
ConvLSTM2D_2/TensorArrayV2_1h
ConvLSTM2D_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
ConvLSTM2D_2/time?
%ConvLSTM2D_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2'
%ConvLSTM2D_2/while/maximum_iterations?
ConvLSTM2D_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2!
ConvLSTM2D_2/while/loop_counter?
ConvLSTM2D_2/whileWhile(ConvLSTM2D_2/while/loop_counter:output:0.ConvLSTM2D_2/while/maximum_iterations:output:0ConvLSTM2D_2/time:output:0%ConvLSTM2D_2/TensorArrayV2_1:handle:0!ConvLSTM2D_2/convolution:output:0!ConvLSTM2D_2/convolution:output:0#ConvLSTM2D_2/strided_slice:output:0DConvLSTM2D_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0*convlstm2d_2_split_readvariableop_resource,convlstm2d_2_split_1_readvariableop_resource,convlstm2d_2_split_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*)
body!R
ConvLSTM2D_2_while_body_34398*)
cond!R
ConvLSTM2D_2_while_cond_34397*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
ConvLSTM2D_2/while?
=ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2?
=ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shape?
/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStackTensorListStackConvLSTM2D_2/while:output:3FConvLSTM2D_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype021
/ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack?
"ConvLSTM2D_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2$
"ConvLSTM2D_2/strided_slice_2/stack?
$ConvLSTM2D_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2&
$ConvLSTM2D_2/strided_slice_2/stack_1?
$ConvLSTM2D_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2&
$ConvLSTM2D_2/strided_slice_2/stack_2?
ConvLSTM2D_2/strided_slice_2StridedSlice8ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack:tensor:0+ConvLSTM2D_2/strided_slice_2/stack:output:0-ConvLSTM2D_2/strided_slice_2/stack_1:output:0-ConvLSTM2D_2/strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
ConvLSTM2D_2/strided_slice_2?
ConvLSTM2D_2/transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
ConvLSTM2D_2/transpose_1/perm?
ConvLSTM2D_2/transpose_1	Transpose8ConvLSTM2D_2/TensorArrayV2Stack/TensorListStack:tensor:0&ConvLSTM2D_2/transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
ConvLSTM2D_2/transpose_1?
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_1/batchnorm/ReadVariableOp?
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%batch_normalization_1/batchnorm/add/y?
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/add?
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/Rsqrt?
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOp?
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/mul?
%batch_normalization_1/batchnorm/mul_1MulConvLSTM2D_2/transpose_1:y:0'batch_normalization_1/batchnorm/mul:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2'
%batch_normalization_1/batchnorm/mul_1?
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_1?
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/mul_2?
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_2?
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/sub?
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*<
_output_shapes*
(:&??????????????????dd 2'
%batch_normalization_1/batchnorm/add_1?
 ConvLSTM3D/Conv3D/ReadVariableOpReadVariableOp)convlstm3d_conv3d_readvariableop_resource**
_output_shapes
: *
dtype02"
 ConvLSTM3D/Conv3D/ReadVariableOp?
ConvLSTM3D/Conv3DConv3D)batch_normalization_1/batchnorm/add_1:z:0(ConvLSTM3D/Conv3D/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd*
paddingSAME*
strides	
2
ConvLSTM3D/Conv3D?
!ConvLSTM3D/BiasAdd/ReadVariableOpReadVariableOp*convlstm3d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!ConvLSTM3D/BiasAdd/ReadVariableOp?
ConvLSTM3D/BiasAddBiasAddConvLSTM3D/Conv3D:output:0)ConvLSTM3D/BiasAdd/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM3D/BiasAdd?
ConvLSTM3D/SigmoidSigmoidConvLSTM3D/BiasAdd:output:0*
T0*<
_output_shapes*
(:&??????????????????dd2
ConvLSTM3D/Sigmoid?
IdentityIdentityConvLSTM3D/Sigmoid:y:0"^ConvLSTM2D_1/split/ReadVariableOp$^ConvLSTM2D_1/split_1/ReadVariableOp$^ConvLSTM2D_1/split_2/ReadVariableOp^ConvLSTM2D_1/while"^ConvLSTM2D_2/split/ReadVariableOp$^ConvLSTM2D_2/split_1/ReadVariableOp$^ConvLSTM2D_2/split_2/ReadVariableOp^ConvLSTM2D_2/while"^ConvLSTM3D/BiasAdd/ReadVariableOp!^ConvLSTM3D/Conv3D/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp*
T0*<
_output_shapes*
(:&??????????????????dd2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:&??????????????????dd: : : : : : : : : : : : : : : : 2F
!ConvLSTM2D_1/split/ReadVariableOp!ConvLSTM2D_1/split/ReadVariableOp2J
#ConvLSTM2D_1/split_1/ReadVariableOp#ConvLSTM2D_1/split_1/ReadVariableOp2J
#ConvLSTM2D_1/split_2/ReadVariableOp#ConvLSTM2D_1/split_2/ReadVariableOp2(
ConvLSTM2D_1/whileConvLSTM2D_1/while2F
!ConvLSTM2D_2/split/ReadVariableOp!ConvLSTM2D_2/split/ReadVariableOp2J
#ConvLSTM2D_2/split_1/ReadVariableOp#ConvLSTM2D_2/split_1/ReadVariableOp2J
#ConvLSTM2D_2/split_2/ReadVariableOp#ConvLSTM2D_2/split_2/ReadVariableOp2(
ConvLSTM2D_2/whileConvLSTM2D_2/while2F
!ConvLSTM3D/BiasAdd/ReadVariableOp!ConvLSTM3D/BiasAdd/ReadVariableOp2D
 ConvLSTM3D/Conv3D/ReadVariableOp ConvLSTM3D/Conv3D/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp:d `
<
_output_shapes*
(:&??????????????????dd
 
_user_specified_nameinputs
?8
?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_32209

inputs"
unknown: ?$
	unknown_0: ?
	unknown_1:	?
identity??StatefulPartitionedCall?whilet

zeros_like	ZerosLikeinputs*
T0*<
_output_shapes*
(:&??????????????????dd 2

zeros_likep
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indices{
SumSumzeros_like:y:0Sum/reduction_indices:output:0*
T0*/
_output_shapes
:?????????dd 2
Sum?
zeros/shape_as_tensorConst*
_output_shapes
:*
dtype0*%
valueB"              2
zeros/shape_as_tensor_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Const}
zerosFillzeros/shape_as_tensor:output:0zeros/Const:output:0*
T0*&
_output_shapes
:  2
zeros?
convolutionConv2DSum:output:0zeros:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
convolution}
transpose/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_1?
StatefulPartitionedCallStatefulPartitionedCallstrided_slice_1:output:0convolution:output:0convolution:output:0unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *e
_output_shapesS
Q:?????????dd :?????????dd :?????????dd *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_320772
StatefulPartitionedCall?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0convolution:output:0convolution:output:0strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0unknown	unknown_0	unknown_1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*\
_output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_32141*
condR
while_cond_32140*[
output_shapesJ
H: : : : :?????????dd :?????????dd : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*<
_output_shapes*
(:&??????????????????dd *
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*/
_output_shapes
:?????????dd *
shrink_axis_mask2
strided_slice_2?
transpose_1/permConst*
_output_shapes
:*
dtype0*)
value B"                2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*<
_output_shapes*
(:&??????????????????dd 2
transpose_1?
IdentityIdentitytranspose_1:y:0^StatefulPartitionedCall^while*
T0*<
_output_shapes*
(:&??????????????????dd 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:&??????????????????dd : : : 22
StatefulPartitionedCallStatefulPartitionedCall2
whilewhile:d `
<
_output_shapes*
(:&??????????????????dd 
 
_user_specified_nameinputs
?h
?
while_body_36528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0@
%while_split_readvariableop_resource_0: ?B
'while_split_1_readvariableop_resource_0: ?6
'while_split_2_readvariableop_resource_0:	?
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor>
#while_split_readvariableop_resource: ?@
%while_split_1_readvariableop_resource: ?4
%while_split_2_readvariableop_resource:	???while/split/ReadVariableOp?while/split_1/ReadVariableOp?while/split_2/ReadVariableOp?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*%
valueB"????d   d       29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*/
_output_shapes
:?????????dd *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/split/ReadVariableOpReadVariableOp%while_split_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split/ReadVariableOp?
while/splitSplitwhile/split/split_dim:output:0"while/split/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/splitt
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1/ReadVariableOpReadVariableOp'while_split_1_readvariableop_resource_0*'
_output_shapes
: ?*
dtype02
while/split_1/ReadVariableOp?
while/split_1Split while/split_1/split_dim:output:0$while/split_1/ReadVariableOp:value:0*
T0*\
_output_shapesJ
H:  :  :  :  *
	num_split2
while/split_1t
while/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
while/split_2/split_dim?
while/split_2/ReadVariableOpReadVariableOp'while_split_2_readvariableop_resource_0*
_output_shapes	
:?*
dtype02
while/split_2/ReadVariableOp?
while/split_2Split while/split_2/split_dim:output:0$while/split_2/ReadVariableOp:value:0*
T0*,
_output_shapes
: : : : *
	num_split2
while/split_2?
while/convolutionConv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution?
while/BiasAddBiasAddwhile/convolution:output:0while/split_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd?
while/convolution_1Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_1?
while/BiasAdd_1BiasAddwhile/convolution_1:output:0while/split_2:output:1*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_1?
while/convolution_2Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_2?
while/BiasAdd_2BiasAddwhile/convolution_2:output:0while/split_2:output:2*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_2?
while/convolution_3Conv2D0while/TensorArrayV2Read/TensorListGetItem:item:0while/split:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_3?
while/BiasAdd_3BiasAddwhile/convolution_3:output:0while/split_2:output:3*
T0*/
_output_shapes
:?????????dd 2
while/BiasAdd_3?
while/convolution_4Conv2Dwhile_placeholder_2while/split_1:output:0*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_4?
while/convolution_5Conv2Dwhile_placeholder_2while/split_1:output:1*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_5?
while/convolution_6Conv2Dwhile_placeholder_2while/split_1:output:2*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_6?
while/convolution_7Conv2Dwhile_placeholder_2while/split_1:output:3*
T0*/
_output_shapes
:?????????dd *
paddingSAME*
strides
2
while/convolution_7?
	while/addAddV2while/BiasAdd:output:0while/convolution_4:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/add_
while/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Constc
while/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_1|
	while/MulMulwhile/add:z:0while/Const:output:0*
T0*/
_output_shapes
:?????????dd 2
	while/Mul?
while/Add_1Addwhile/Mul:z:0while/Const_1:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_1?
while/clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/clip_by_value/Minimum/y?
while/clip_by_value/MinimumMinimumwhile/Add_1:z:0&while/clip_by_value/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value/Minimums
while/clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value/y?
while/clip_by_valueMaximumwhile/clip_by_value/Minimum:z:0while/clip_by_value/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value?
while/add_2AddV2while/BiasAdd_1:output:0while/convolution_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_2c
while/Const_2Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_2c
while/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_3?
while/Mul_1Mulwhile/add_2:z:0while/Const_2:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_1?
while/Add_3Addwhile/Mul_1:z:0while/Const_3:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_3?
while/clip_by_value_1/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_1/Minimum/y?
while/clip_by_value_1/MinimumMinimumwhile/Add_3:z:0(while/clip_by_value_1/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1/Minimumw
while/clip_by_value_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_1/y?
while/clip_by_value_1Maximum!while/clip_by_value_1/Minimum:z:0 while/clip_by_value_1/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_1?
while/mul_2Mulwhile/clip_by_value_1:z:0while_placeholder_3*
T0*/
_output_shapes
:?????????dd 2
while/mul_2?
while/add_4AddV2while/BiasAdd_2:output:0while/convolution_6:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_4k

while/ReluReluwhile/add_4:z:0*
T0*/
_output_shapes
:?????????dd 2

while/Relu?
while/mul_3Mulwhile/clip_by_value:z:0while/Relu:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_3
while/add_5AddV2while/mul_2:z:0while/mul_3:z:0*
T0*/
_output_shapes
:?????????dd 2
while/add_5?
while/add_6AddV2while/BiasAdd_3:output:0while/convolution_7:output:0*
T0*/
_output_shapes
:?????????dd 2
while/add_6c
while/Const_4Const*
_output_shapes
: *
dtype0*
valueB
 *??L>2
while/Const_4c
while/Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *   ?2
while/Const_5?
while/Mul_4Mulwhile/add_6:z:0while/Const_4:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Mul_4?
while/Add_7Addwhile/Mul_4:z:0while/Const_5:output:0*
T0*/
_output_shapes
:?????????dd 2
while/Add_7?
while/clip_by_value_2/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2!
while/clip_by_value_2/Minimum/y?
while/clip_by_value_2/MinimumMinimumwhile/Add_7:z:0(while/clip_by_value_2/Minimum/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2/Minimumw
while/clip_by_value_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
while/clip_by_value_2/y?
while/clip_by_value_2Maximum!while/clip_by_value_2/Minimum:z:0 while/clip_by_value_2/y:output:0*
T0*/
_output_shapes
:?????????dd 2
while/clip_by_value_2o
while/Relu_1Reluwhile/add_5:z:0*
T0*/
_output_shapes
:?????????dd 2
while/Relu_1?
while/mul_5Mulwhile/clip_by_value_2:z:0while/Relu_1:activations:0*
T0*/
_output_shapes
:?????????dd 2
while/mul_5?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_5:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_8/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_8/yo
while/add_8AddV2while_placeholderwhile/add_8/y:output:0*
T0*
_output_shapes
: 2
while/add_8`
while/add_9/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_9/yv
while/add_9AddV2while_while_loop_counterwhile/add_9/y:output:0*
T0*
_output_shapes
: 2
while/add_9?
while/IdentityIdentitywhile/add_9:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity?
while/Identity_1Identitywhile_while_maximum_iterations^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1?
while/Identity_2Identitywhile/add_8:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3?
while/Identity_4Identitywhile/mul_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_4?
while/Identity_5Identitywhile/add_5:z:0^while/split/ReadVariableOp^while/split_1/ReadVariableOp^while/split_2/ReadVariableOp*
T0*/
_output_shapes
:?????????dd 2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"P
%while_split_1_readvariableop_resource'while_split_1_readvariableop_resource_0"P
%while_split_2_readvariableop_resource'while_split_2_readvariableop_resource_0"L
#while_split_readvariableop_resource%while_split_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H: : : : :?????????dd :?????????dd : : : : : 28
while/split/ReadVariableOpwhile/split/ReadVariableOp2<
while/split_1/ReadVariableOpwhile/split_1/ReadVariableOp2<
while/split_2/ReadVariableOpwhile/split_2/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :51
/
_output_shapes
:?????????dd :51
/
_output_shapes
:?????????dd :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
P
input_1E
serving_default_input_1:0&??????????????????ddS

ConvLSTM3DE
StatefulPartitionedCall:0&??????????????????ddtensorflow/serving/predict:??
?Y
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
trainable_variables
	regularization_losses

	variables
	keras_api

signatures
*r&call_and_return_all_conditional_losses
s_default_save_signature
t__call__"?V
_tf_keras_network?V{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "ConvLSTM2D", "config": {"name": "ConvLSTM2D_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "ConvLSTM2D_1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["ConvLSTM2D_1", 0, 0, {}]]]}, {"class_name": "ConvLSTM2D", "config": {"name": "ConvLSTM2D_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "ConvLSTM2D_2", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["ConvLSTM2D_2", 0, 0, {}]]]}, {"class_name": "Conv3D", "config": {"name": "ConvLSTM3D", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ConvLSTM3D", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["ConvLSTM3D", 0, 0]]}, "shared_object_id": 24, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 1]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100, 100, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null, 100, 100, 1]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "ConvLSTM2D", "config": {"name": "ConvLSTM2D_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "ConvLSTM2D_1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["ConvLSTM2D_1", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "ConvLSTM2D", "config": {"name": "ConvLSTM2D_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "name": "ConvLSTM2D_2", "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["ConvLSTM2D_2", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Conv3D", "config": {"name": "ConvLSTM3D", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "ConvLSTM3D", "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]], "shared_object_id": 23}], "input_layers": [["input_1", 0, 0]], "output_layers": [["ConvLSTM3D", 0, 0]]}}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?
cell

state_spec
trainable_variables
regularization_losses
	variables
	keras_api
*u&call_and_return_all_conditional_losses
v__call__"?
_tf_keras_rnn_layer?{"name": "ConvLSTM2D_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ConvLSTM2D", "config": {"name": "ConvLSTM2D_1", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 5, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 1]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 26}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100, 100, 1]}}
?

axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
*w&call_and_return_all_conditional_losses
x__call__"?	
_tf_keras_layer?	{"name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 9}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["ConvLSTM2D_1", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {"4": 32}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100, 100, 32]}}
?
cell

state_spec
trainable_variables
regularization_losses
 	variables
!	keras_api
*y&call_and_return_all_conditional_losses
z__call__"?
_tf_keras_rnn_layer?{"name": "ConvLSTM2D_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ConvLSTM2D", "config": {"name": "ConvLSTM2D_2", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "inbound_nodes": [[["batch_normalization", 0, 0, {}]]], "shared_object_id": 15, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100, 100, 32]}, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 28}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100, 100, 32]}}
?
"axis
	#gamma
$beta
%moving_mean
&moving_variance
'trainable_variables
(	variables
)regularization_losses
*	keras_api
*{&call_and_return_all_conditional_losses
|__call__"?	
_tf_keras_layer?	{"name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [4], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 17}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 19}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["ConvLSTM2D_2", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 5, "max_ndim": null, "min_ndim": null, "axes": {"4": 32}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100, 100, 32]}}
?

+kernel
,bias
-trainable_variables
.	variables
/regularization_losses
0	keras_api
*}&call_and_return_all_conditional_losses
~__call__"?	
_tf_keras_layer?	{"name": "ConvLSTM3D", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv3D", "config": {"name": "ConvLSTM3D", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1, 1]}, "groups": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_1", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 5, "axes": {"-1": 32}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100, 100, 32]}}
I
1iter
	2decay
3learning_rate
4momentum"
	optimizer
v
50
61
72
3
4
85
96
:7
#8
$9
+10
,11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
50
61
72
3
4
5
6
87
98
:9
#10
$11
%12
&13
+14
,15"
trackable_list_wrapper
?
trainable_variables
;layer_regularization_losses
<non_trainable_variables
=metrics
>layer_metrics
	regularization_losses

?layers

	variables
t__call__
s_default_save_signature
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
?


5kernel
6recurrent_kernel
7bias
@trainable_variables
A	variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv_lst_m2d_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ConvLSTM2DCell", "config": {"name": "conv_lst_m2d_cell", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 4}
 "
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
 "
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
?
trainable_variables
Dlayer_regularization_losses
Enon_trainable_variables
Fmetrics
Glayer_metrics
regularization_losses

Hstates

Ilayers
	variables
v__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':% 2batch_normalization/gamma
&:$ 2batch_normalization/beta
/:-  (2batch_normalization/moving_mean
3:1  (2#batch_normalization/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
Jlayer_regularization_losses
Knon_trainable_variables
	variables
Lmetrics
Mlayer_metrics
regularization_losses

Nlayers
x__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
?


8kernel
9recurrent_kernel
:bias
Otrainable_variables
P	variables
Qregularization_losses
R	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv_lst_m2d_cell_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ConvLSTM2DCell", "config": {"name": "conv_lst_m2d_cell_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "recurrent_activation": "hard_sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0}, "shared_object_id": 14}
 "
trackable_list_wrapper
5
80
91
:2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
80
91
:2"
trackable_list_wrapper
?
trainable_variables
Slayer_regularization_losses
Tnon_trainable_variables
Umetrics
Vlayer_metrics
regularization_losses

Wstates

Xlayers
 	variables
z__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
.
#0
$1"
trackable_list_wrapper
<
#0
$1
%2
&3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
'trainable_variables
Ylayer_regularization_losses
Znon_trainable_variables
(	variables
[metrics
\layer_metrics
)regularization_losses

]layers
|__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
/:- 2ConvLSTM3D/kernel
:2ConvLSTM3D/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
-trainable_variables
^layer_regularization_losses
_non_trainable_variables
.	variables
`metrics
alayer_metrics
/regularization_losses

blayers
~__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
.:,?2ConvLSTM2D_1/kernel
8:6 ?2ConvLSTM2D_1/recurrent_kernel
 :?2ConvLSTM2D_1/bias
.:, ?2ConvLSTM2D_2/kernel
8:6 ?2ConvLSTM2D_2/recurrent_kernel
 :?2ConvLSTM2D_2/bias
 "
trackable_list_wrapper
<
0
1
%2
&3"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
5
50
61
72"
trackable_list_wrapper
 "
trackable_list_wrapper
?
@trainable_variables
dlayer_regularization_losses
enon_trainable_variables
A	variables
fmetrics
glayer_metrics
Bregularization_losses

hlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
80
91
:2"
trackable_list_wrapper
5
80
91
:2"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Otrainable_variables
ilayer_regularization_losses
jnon_trainable_variables
P	variables
kmetrics
llayer_metrics
Qregularization_losses

mlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
	ntotal
	ocount
p	variables
q	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 31}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
n0
o1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
?2?
@__inference_model_layer_call_and_return_conditional_losses_34547
@__inference_model_layer_call_and_return_conditional_losses_35052
@__inference_model_layer_call_and_return_conditional_losses_33986
@__inference_model_layer_call_and_return_conditional_losses_34027?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_30975?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *;?8
6?3
input_1&??????????????????dd
?2?
%__inference_model_layer_call_fn_33177
%__inference_model_layer_call_fn_35089
%__inference_model_layer_call_fn_35126
%__inference_model_layer_call_fn_33945?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35346
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35566
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35786
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_36006?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_ConvLSTM2D_1_layer_call_fn_36017
,__inference_ConvLSTM2D_1_layer_call_fn_36028
,__inference_ConvLSTM2D_1_layer_call_fn_36039
,__inference_ConvLSTM2D_1_layer_call_fn_36050?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36070
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36104
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36124
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36158?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_batch_normalization_layer_call_fn_36171
3__inference_batch_normalization_layer_call_fn_36184
3__inference_batch_normalization_layer_call_fn_36197
3__inference_batch_normalization_layer_call_fn_36210?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36432
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36654
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36876
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_37098?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_ConvLSTM2D_2_layer_call_fn_37109
,__inference_ConvLSTM2D_2_layer_call_fn_37120
,__inference_ConvLSTM2D_2_layer_call_fn_37131
,__inference_ConvLSTM2D_2_layer_call_fn_37142?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37162
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37196
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37216
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37250?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
5__inference_batch_normalization_1_layer_call_fn_37263
5__inference_batch_normalization_1_layer_call_fn_37276
5__inference_batch_normalization_1_layer_call_fn_37289
5__inference_batch_normalization_1_layer_call_fn_37302?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_37313?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_ConvLSTM3D_layer_call_fn_37322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_34070input_1"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_37397
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_37472?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
1__inference_conv_lst_m2d_cell_layer_call_fn_37489
1__inference_conv_lst_m2d_cell_layer_call_fn_37506?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_37581
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_37656?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
3__inference_conv_lst_m2d_cell_1_layer_call_fn_37673
3__inference_conv_lst_m2d_cell_1_layer_call_fn_37690?
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 ?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35346?567W?T
M?J
<?9
7?4
inputs/0&??????????????????dd

 
p 

 
? ":?7
0?-
0&??????????????????dd 
? ?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35566?567W?T
M?J
<?9
7?4
inputs/0&??????????????????dd

 
p

 
? ":?7
0?-
0&??????????????????dd 
? ?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_35786?567P?M
F?C
5?2
inputs&??????????????????dd

 
p 

 
? ":?7
0?-
0&??????????????????dd 
? ?
G__inference_ConvLSTM2D_1_layer_call_and_return_conditional_losses_36006?567P?M
F?C
5?2
inputs&??????????????????dd

 
p

 
? ":?7
0?-
0&??????????????????dd 
? ?
,__inference_ConvLSTM2D_1_layer_call_fn_36017?567W?T
M?J
<?9
7?4
inputs/0&??????????????????dd

 
p 

 
? "-?*&??????????????????dd ?
,__inference_ConvLSTM2D_1_layer_call_fn_36028?567W?T
M?J
<?9
7?4
inputs/0&??????????????????dd

 
p

 
? "-?*&??????????????????dd ?
,__inference_ConvLSTM2D_1_layer_call_fn_36039?567P?M
F?C
5?2
inputs&??????????????????dd

 
p 

 
? "-?*&??????????????????dd ?
,__inference_ConvLSTM2D_1_layer_call_fn_36050?567P?M
F?C
5?2
inputs&??????????????????dd

 
p

 
? "-?*&??????????????????dd ?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36432?89:W?T
M?J
<?9
7?4
inputs/0&??????????????????dd 

 
p 

 
? ":?7
0?-
0&??????????????????dd 
? ?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36654?89:W?T
M?J
<?9
7?4
inputs/0&??????????????????dd 

 
p

 
? ":?7
0?-
0&??????????????????dd 
? ?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_36876?89:P?M
F?C
5?2
inputs&??????????????????dd 

 
p 

 
? ":?7
0?-
0&??????????????????dd 
? ?
G__inference_ConvLSTM2D_2_layer_call_and_return_conditional_losses_37098?89:P?M
F?C
5?2
inputs&??????????????????dd 

 
p

 
? ":?7
0?-
0&??????????????????dd 
? ?
,__inference_ConvLSTM2D_2_layer_call_fn_37109?89:W?T
M?J
<?9
7?4
inputs/0&??????????????????dd 

 
p 

 
? "-?*&??????????????????dd ?
,__inference_ConvLSTM2D_2_layer_call_fn_37120?89:W?T
M?J
<?9
7?4
inputs/0&??????????????????dd 

 
p

 
? "-?*&??????????????????dd ?
,__inference_ConvLSTM2D_2_layer_call_fn_37131?89:P?M
F?C
5?2
inputs&??????????????????dd 

 
p 

 
? "-?*&??????????????????dd ?
,__inference_ConvLSTM2D_2_layer_call_fn_37142?89:P?M
F?C
5?2
inputs&??????????????????dd 

 
p

 
? "-?*&??????????????????dd ?
E__inference_ConvLSTM3D_layer_call_and_return_conditional_losses_37313?+,D?A
:?7
5?2
inputs&??????????????????dd 
? ":?7
0?-
0&??????????????????dd
? ?
*__inference_ConvLSTM3D_layer_call_fn_37322y+,D?A
:?7
5?2
inputs&??????????????????dd 
? "-?*&??????????????????dd?
 __inference__wrapped_model_30975?56789:&#%$+,E?B
;?8
6?3
input_1&??????????????????dd
? "L?I
G

ConvLSTM3D9?6

ConvLSTM3D&??????????????????dd?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37162?&#%$Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p 
? "L?I
B??
08???????????????????????????????????? 
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37196?%&#$Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p
? "L?I
B??
08???????????????????????????????????? 
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37216?&#%$H?E
>?;
5?2
inputs&??????????????????dd 
p 
? ":?7
0?-
0&??????????????????dd 
? ?
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_37250?%&#$H?E
>?;
5?2
inputs&??????????????????dd 
p
? ":?7
0?-
0&??????????????????dd 
? ?
5__inference_batch_normalization_1_layer_call_fn_37263?&#%$Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p 
? "??<8???????????????????????????????????? ?
5__inference_batch_normalization_1_layer_call_fn_37276?%&#$Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p
? "??<8???????????????????????????????????? ?
5__inference_batch_normalization_1_layer_call_fn_37289&#%$H?E
>?;
5?2
inputs&??????????????????dd 
p 
? "-?*&??????????????????dd ?
5__inference_batch_normalization_1_layer_call_fn_37302%&#$H?E
>?;
5?2
inputs&??????????????????dd 
p
? "-?*&??????????????????dd ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36070?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p 
? "L?I
B??
08???????????????????????????????????? 
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36104?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p
? "L?I
B??
08???????????????????????????????????? 
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36124?H?E
>?;
5?2
inputs&??????????????????dd 
p 
? ":?7
0?-
0&??????????????????dd 
? ?
N__inference_batch_normalization_layer_call_and_return_conditional_losses_36158?H?E
>?;
5?2
inputs&??????????????????dd 
p
? ":?7
0?-
0&??????????????????dd 
? ?
3__inference_batch_normalization_layer_call_fn_36171?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p 
? "??<8???????????????????????????????????? ?
3__inference_batch_normalization_layer_call_fn_36184?Z?W
P?M
G?D
inputs8???????????????????????????????????? 
p
? "??<8???????????????????????????????????? ?
3__inference_batch_normalization_layer_call_fn_36197H?E
>?;
5?2
inputs&??????????????????dd 
p 
? "-?*&??????????????????dd ?
3__inference_batch_normalization_layer_call_fn_36210H?E
>?;
5?2
inputs&??????????????????dd 
p
? "-?*&??????????????????dd ?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_37581?89:???
???
(?%
inputs?????????dd 
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p 
? "???
??~
%?"
0/0?????????dd 
U?R
'?$
0/1/0?????????dd 
'?$
0/1/1?????????dd 
? ?
N__inference_conv_lst_m2d_cell_1_layer_call_and_return_conditional_losses_37656?89:???
???
(?%
inputs?????????dd 
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p
? "???
??~
%?"
0/0?????????dd 
U?R
'?$
0/1/0?????????dd 
'?$
0/1/1?????????dd 
? ?
3__inference_conv_lst_m2d_cell_1_layer_call_fn_37673?89:???
???
(?%
inputs?????????dd 
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p 
? "{?x
#? 
0?????????dd 
Q?N
%?"
1/0?????????dd 
%?"
1/1?????????dd ?
3__inference_conv_lst_m2d_cell_1_layer_call_fn_37690?89:???
???
(?%
inputs?????????dd 
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p
? "{?x
#? 
0?????????dd 
Q?N
%?"
1/0?????????dd 
%?"
1/1?????????dd ?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_37397?567???
???
(?%
inputs?????????dd
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p 
? "???
??~
%?"
0/0?????????dd 
U?R
'?$
0/1/0?????????dd 
'?$
0/1/1?????????dd 
? ?
L__inference_conv_lst_m2d_cell_layer_call_and_return_conditional_losses_37472?567???
???
(?%
inputs?????????dd
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p
? "???
??~
%?"
0/0?????????dd 
U?R
'?$
0/1/0?????????dd 
'?$
0/1/1?????????dd 
? ?
1__inference_conv_lst_m2d_cell_layer_call_fn_37489?567???
???
(?%
inputs?????????dd
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p 
? "{?x
#? 
0?????????dd 
Q?N
%?"
1/0?????????dd 
%?"
1/1?????????dd ?
1__inference_conv_lst_m2d_cell_layer_call_fn_37506?567???
???
(?%
inputs?????????dd
[?X
*?'
states/0?????????dd 
*?'
states/1?????????dd 
p
? "{?x
#? 
0?????????dd 
Q?N
%?"
1/0?????????dd 
%?"
1/1?????????dd ?
@__inference_model_layer_call_and_return_conditional_losses_33986?56789:&#%$+,M?J
C?@
6?3
input_1&??????????????????dd
p 

 
? ":?7
0?-
0&??????????????????dd
? ?
@__inference_model_layer_call_and_return_conditional_losses_34027?56789:%&#$+,M?J
C?@
6?3
input_1&??????????????????dd
p

 
? ":?7
0?-
0&??????????????????dd
? ?
@__inference_model_layer_call_and_return_conditional_losses_34547?56789:&#%$+,L?I
B??
5?2
inputs&??????????????????dd
p 

 
? ":?7
0?-
0&??????????????????dd
? ?
@__inference_model_layer_call_and_return_conditional_losses_35052?56789:%&#$+,L?I
B??
5?2
inputs&??????????????????dd
p

 
? ":?7
0?-
0&??????????????????dd
? ?
%__inference_model_layer_call_fn_33177?56789:&#%$+,M?J
C?@
6?3
input_1&??????????????????dd
p 

 
? "-?*&??????????????????dd?
%__inference_model_layer_call_fn_33945?56789:%&#$+,M?J
C?@
6?3
input_1&??????????????????dd
p

 
? "-?*&??????????????????dd?
%__inference_model_layer_call_fn_35089?56789:&#%$+,L?I
B??
5?2
inputs&??????????????????dd
p 

 
? "-?*&??????????????????dd?
%__inference_model_layer_call_fn_35126?56789:%&#$+,L?I
B??
5?2
inputs&??????????????????dd
p

 
? "-?*&??????????????????dd?
#__inference_signature_wrapper_34070?56789:&#%$+,P?M
? 
F?C
A
input_16?3
input_1&??????????????????dd"L?I
G

ConvLSTM3D9?6

ConvLSTM3D&??????????????????dd