??
??
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
~
dense_1764/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:' *"
shared_namedense_1764/kernel
w
%dense_1764/kernel/Read/ReadVariableOpReadVariableOpdense_1764/kernel*
_output_shapes

:' *
dtype0
v
dense_1764/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namedense_1764/bias
o
#dense_1764/bias/Read/ReadVariableOpReadVariableOpdense_1764/bias*
_output_shapes
: *
dtype0
~
dense_1765/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *"
shared_namedense_1765/kernel
w
%dense_1765/kernel/Read/ReadVariableOpReadVariableOpdense_1765/kernel*
_output_shapes

: *
dtype0
v
dense_1765/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1765/bias
o
#dense_1765/bias/Read/ReadVariableOpReadVariableOpdense_1765/bias*
_output_shapes
:*
dtype0
~
dense_1766/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1766/kernel
w
%dense_1766/kernel/Read/ReadVariableOpReadVariableOpdense_1766/kernel*
_output_shapes

:*
dtype0
v
dense_1766/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1766/bias
o
#dense_1766/bias/Read/ReadVariableOpReadVariableOpdense_1766/bias*
_output_shapes
:*
dtype0
~
dense_1767/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1767/kernel
w
%dense_1767/kernel/Read/ReadVariableOpReadVariableOpdense_1767/kernel*
_output_shapes

:*
dtype0
v
dense_1767/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1767/bias
o
#dense_1767/bias/Read/ReadVariableOpReadVariableOpdense_1767/bias*
_output_shapes
:*
dtype0
n
AdaBound/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdaBound/iter
g
!AdaBound/iter/Read/ReadVariableOpReadVariableOpAdaBound/iter*
_output_shapes
: *
dtype0	
t
AdaBound/base_lrVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdaBound/base_lr
m
$AdaBound/base_lr/Read/ReadVariableOpReadVariableOpAdaBound/base_lr*
_output_shapes
: *
dtype0
r
AdaBound/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdaBound/beta_1
k
#AdaBound/beta_1/Read/ReadVariableOpReadVariableOpAdaBound/beta_1*
_output_shapes
: *
dtype0
r
AdaBound/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdaBound/beta_2
k
#AdaBound/beta_2/Read/ReadVariableOpReadVariableOpAdaBound/beta_2*
_output_shapes
: *
dtype0
p
AdaBound/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdaBound/decay
i
"AdaBound/decay/Read/ReadVariableOpReadVariableOpAdaBound/decay*
_output_shapes
: *
dtype0
v
AdaBound/final_lrVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdaBound/final_lr
o
%AdaBound/final_lr/Read/ReadVariableOpReadVariableOpAdaBound/final_lr*
_output_shapes
: *
dtype0
p
AdaBound/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdaBound/gamma
i
"AdaBound/gamma/Read/ReadVariableOpReadVariableOpAdaBound/gamma*
_output_shapes
: *
dtype0
?
AdaBound/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdaBound/learning_rate
y
*AdaBound/learning_rate/Read/ReadVariableOpReadVariableOpAdaBound/learning_rate*
_output_shapes
: *
dtype0
~
AdaBound/weight_decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdaBound/weight_decay
w
)AdaBound/weight_decay/Read/ReadVariableOpReadVariableOpAdaBound/weight_decay*
_output_shapes
: *
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
t
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nametrue_positives
m
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes
:*
dtype0
v
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_negatives
o
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes
:*
dtype0
x
true_positives_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nametrue_positives_1
q
$true_positives_1/Read/ReadVariableOpReadVariableOptrue_positives_1*
_output_shapes
:*
dtype0
v
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefalse_positives
o
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes
:*
dtype0
?
AdaBound/dense_1764/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:' *-
shared_nameAdaBound/dense_1764/kernel/m
?
0AdaBound/dense_1764/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1764/kernel/m*
_output_shapes

:' *
dtype0
?
AdaBound/dense_1764/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdaBound/dense_1764/bias/m
?
.AdaBound/dense_1764/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1764/bias/m*
_output_shapes
: *
dtype0
?
AdaBound/dense_1765/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdaBound/dense_1765/kernel/m
?
0AdaBound/dense_1765/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1765/kernel/m*
_output_shapes

: *
dtype0
?
AdaBound/dense_1765/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1765/bias/m
?
.AdaBound/dense_1765/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1765/bias/m*
_output_shapes
:*
dtype0
?
AdaBound/dense_1766/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1766/kernel/m
?
0AdaBound/dense_1766/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1766/kernel/m*
_output_shapes

:*
dtype0
?
AdaBound/dense_1766/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1766/bias/m
?
.AdaBound/dense_1766/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1766/bias/m*
_output_shapes
:*
dtype0
?
AdaBound/dense_1767/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1767/kernel/m
?
0AdaBound/dense_1767/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1767/kernel/m*
_output_shapes

:*
dtype0
?
AdaBound/dense_1767/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1767/bias/m
?
.AdaBound/dense_1767/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1767/bias/m*
_output_shapes
:*
dtype0
?
AdaBound/dense_1764/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:' *-
shared_nameAdaBound/dense_1764/kernel/v
?
0AdaBound/dense_1764/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1764/kernel/v*
_output_shapes

:' *
dtype0
?
AdaBound/dense_1764/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdaBound/dense_1764/bias/v
?
.AdaBound/dense_1764/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1764/bias/v*
_output_shapes
: *
dtype0
?
AdaBound/dense_1765/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *-
shared_nameAdaBound/dense_1765/kernel/v
?
0AdaBound/dense_1765/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1765/kernel/v*
_output_shapes

: *
dtype0
?
AdaBound/dense_1765/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1765/bias/v
?
.AdaBound/dense_1765/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1765/bias/v*
_output_shapes
:*
dtype0
?
AdaBound/dense_1766/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1766/kernel/v
?
0AdaBound/dense_1766/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1766/kernel/v*
_output_shapes

:*
dtype0
?
AdaBound/dense_1766/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1766/bias/v
?
.AdaBound/dense_1766/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1766/bias/v*
_output_shapes
:*
dtype0
?
AdaBound/dense_1767/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1767/kernel/v
?
0AdaBound/dense_1767/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1767/kernel/v*
_output_shapes

:*
dtype0
?
AdaBound/dense_1767/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1767/bias/v
?
.AdaBound/dense_1767/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1767/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
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
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
 
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
?
$iter
%base_lr

&beta_1

'beta_2
	(decay
)final_lr
	*gamma
+learning_rate
,weight_decaymWmXmYmZm[m\m]m^v_v`vavbvcvdvevf
 
8
0
1
2
3
4
5
6
7
8
0
1
2
3
4
5
6
7
?
-layer_regularization_losses
regularization_losses

.layers
	variables
	trainable_variables
/non_trainable_variables
0metrics
1layer_metrics
 
][
VARIABLE_VALUEdense_1764/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1764/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
2layer_regularization_losses
regularization_losses

3layers
	variables
trainable_variables
4non_trainable_variables
5metrics
6layer_metrics
][
VARIABLE_VALUEdense_1765/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1765/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
7layer_regularization_losses
regularization_losses

8layers
	variables
trainable_variables
9non_trainable_variables
:metrics
;layer_metrics
][
VARIABLE_VALUEdense_1766/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1766/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
<layer_regularization_losses
regularization_losses

=layers
	variables
trainable_variables
>non_trainable_variables
?metrics
@layer_metrics
][
VARIABLE_VALUEdense_1767/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEdense_1767/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
Alayer_regularization_losses
 regularization_losses

Blayers
!	variables
"trainable_variables
Cnon_trainable_variables
Dmetrics
Elayer_metrics
LJ
VARIABLE_VALUEAdaBound/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEAdaBound/base_lr,optimizer/base_lr/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEAdaBound/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEAdaBound/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdaBound/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEAdaBound/final_lr-optimizer/final_lr/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdaBound/gamma*optimizer/gamma/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEAdaBound/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdaBound/weight_decay1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 

F0
G1
H2
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
 
 
 
 
4
	Itotal
	Jcount
K	variables
L	keras_api
W
M
thresholds
Ntrue_positives
Ofalse_negatives
P	variables
Q	keras_api
W
R
thresholds
Strue_positives
Tfalse_positives
U	variables
V	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

I0
J1

K	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

P	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE

S0
T1

U	variables
??
VARIABLE_VALUEAdaBound/dense_1764/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1764/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1765/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1765/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1766/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1766/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1767/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1767/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1764/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1764/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1765/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1765/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1766/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1766/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdaBound/dense_1767/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdaBound/dense_1767/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_encoderinputsPlaceholder*'
_output_shapes
:?????????'*
dtype0*
shape:?????????'
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_encoderinputsdense_1764/kerneldense_1764/biasdense_1765/kerneldense_1765/biasdense_1766/kerneldense_1766/biasdense_1767/kerneldense_1767/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_172902546
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%dense_1764/kernel/Read/ReadVariableOp#dense_1764/bias/Read/ReadVariableOp%dense_1765/kernel/Read/ReadVariableOp#dense_1765/bias/Read/ReadVariableOp%dense_1766/kernel/Read/ReadVariableOp#dense_1766/bias/Read/ReadVariableOp%dense_1767/kernel/Read/ReadVariableOp#dense_1767/bias/Read/ReadVariableOp!AdaBound/iter/Read/ReadVariableOp$AdaBound/base_lr/Read/ReadVariableOp#AdaBound/beta_1/Read/ReadVariableOp#AdaBound/beta_2/Read/ReadVariableOp"AdaBound/decay/Read/ReadVariableOp%AdaBound/final_lr/Read/ReadVariableOp"AdaBound/gamma/Read/ReadVariableOp*AdaBound/learning_rate/Read/ReadVariableOp)AdaBound/weight_decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_positives/Read/ReadVariableOp0AdaBound/dense_1764/kernel/m/Read/ReadVariableOp.AdaBound/dense_1764/bias/m/Read/ReadVariableOp0AdaBound/dense_1765/kernel/m/Read/ReadVariableOp.AdaBound/dense_1765/bias/m/Read/ReadVariableOp0AdaBound/dense_1766/kernel/m/Read/ReadVariableOp.AdaBound/dense_1766/bias/m/Read/ReadVariableOp0AdaBound/dense_1767/kernel/m/Read/ReadVariableOp.AdaBound/dense_1767/bias/m/Read/ReadVariableOp0AdaBound/dense_1764/kernel/v/Read/ReadVariableOp.AdaBound/dense_1764/bias/v/Read/ReadVariableOp0AdaBound/dense_1765/kernel/v/Read/ReadVariableOp.AdaBound/dense_1765/bias/v/Read/ReadVariableOp0AdaBound/dense_1766/kernel/v/Read/ReadVariableOp.AdaBound/dense_1766/bias/v/Read/ReadVariableOp0AdaBound/dense_1767/kernel/v/Read/ReadVariableOp.AdaBound/dense_1767/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU 2J 8? *+
f&R$
"__inference__traced_save_172902872
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1764/kerneldense_1764/biasdense_1765/kerneldense_1765/biasdense_1766/kerneldense_1766/biasdense_1767/kerneldense_1767/biasAdaBound/iterAdaBound/base_lrAdaBound/beta_1AdaBound/beta_2AdaBound/decayAdaBound/final_lrAdaBound/gammaAdaBound/learning_rateAdaBound/weight_decaytotalcounttrue_positivesfalse_negativestrue_positives_1false_positivesAdaBound/dense_1764/kernel/mAdaBound/dense_1764/bias/mAdaBound/dense_1765/kernel/mAdaBound/dense_1765/bias/mAdaBound/dense_1766/kernel/mAdaBound/dense_1766/bias/mAdaBound/dense_1767/kernel/mAdaBound/dense_1767/bias/mAdaBound/dense_1764/kernel/vAdaBound/dense_1764/bias/vAdaBound/dense_1765/kernel/vAdaBound/dense_1765/bias/vAdaBound/dense_1766/kernel/vAdaBound/dense_1766/bias/vAdaBound/dense_1767/kernel/vAdaBound/dense_1767/bias/v*3
Tin,
*2(*
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
GPU 2J 8? *.
f)R'
%__inference__traced_restore_172902999Ā
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172902485
encoderinputs&
dense_1764_172902464:' "
dense_1764_172902466: &
dense_1765_172902469: "
dense_1765_172902471:&
dense_1766_172902474:"
dense_1766_172902476:&
dense_1767_172902479:"
dense_1767_172902481:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallencoderinputsdense_1764_172902464dense_1764_172902466*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729022572$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172902469dense_1765_172902471*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729022742$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172902474dense_1766_172902476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729022912$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172902479dense_1767_172902481*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729023082$
"dense_1767/StatefulPartitionedCall?
IdentityIdentity+dense_1767/StatefulPartitionedCall:output:0#^dense_1764/StatefulPartitionedCall#^dense_1765/StatefulPartitionedCall#^dense_1766/StatefulPartitionedCall#^dense_1767/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2H
"dense_1764/StatefulPartitionedCall"dense_1764/StatefulPartitionedCall2H
"dense_1765/StatefulPartitionedCall"dense_1765/StatefulPartitionedCall2H
"dense_1766/StatefulPartitionedCall"dense_1766/StatefulPartitionedCall2H
"dense_1767/StatefulPartitionedCall"dense_1767/StatefulPartitionedCall:V R
'
_output_shapes
:?????????'
'
_user_specified_nameencoderinputs
?
?
.__inference_dense_1767_layer_call_fn_172902732

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729023082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
F__inference_encoder_layer_call_and_return_conditional_losses_172902610

inputs;
)dense_1764_matmul_readvariableop_resource:' 8
*dense_1764_biasadd_readvariableop_resource: ;
)dense_1765_matmul_readvariableop_resource: 8
*dense_1765_biasadd_readvariableop_resource:;
)dense_1766_matmul_readvariableop_resource:8
*dense_1766_biasadd_readvariableop_resource:;
)dense_1767_matmul_readvariableop_resource:8
*dense_1767_biasadd_readvariableop_resource:
identity??!dense_1764/BiasAdd/ReadVariableOp? dense_1764/MatMul/ReadVariableOp?!dense_1765/BiasAdd/ReadVariableOp? dense_1765/MatMul/ReadVariableOp?!dense_1766/BiasAdd/ReadVariableOp? dense_1766/MatMul/ReadVariableOp?!dense_1767/BiasAdd/ReadVariableOp? dense_1767/MatMul/ReadVariableOp?
 dense_1764/MatMul/ReadVariableOpReadVariableOp)dense_1764_matmul_readvariableop_resource*
_output_shapes

:' *
dtype02"
 dense_1764/MatMul/ReadVariableOp?
dense_1764/MatMulMatMulinputs(dense_1764/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_1764/MatMul?
!dense_1764/BiasAdd/ReadVariableOpReadVariableOp*dense_1764_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!dense_1764/BiasAdd/ReadVariableOp?
dense_1764/BiasAddBiasAdddense_1764/MatMul:product:0)dense_1764/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_1764/BiasAddy
dense_1764/ReluReludense_1764/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_1764/Relu?
 dense_1765/MatMul/ReadVariableOpReadVariableOp)dense_1765_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 dense_1765/MatMul/ReadVariableOp?
dense_1765/MatMulMatMuldense_1764/Relu:activations:0(dense_1765/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1765/MatMul?
!dense_1765/BiasAdd/ReadVariableOpReadVariableOp*dense_1765_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1765/BiasAdd/ReadVariableOp?
dense_1765/BiasAddBiasAdddense_1765/MatMul:product:0)dense_1765/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1765/BiasAddy
dense_1765/ReluReludense_1765/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1765/Relu?
 dense_1766/MatMul/ReadVariableOpReadVariableOp)dense_1766_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1766/MatMul/ReadVariableOp?
dense_1766/MatMulMatMuldense_1765/Relu:activations:0(dense_1766/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1766/MatMul?
!dense_1766/BiasAdd/ReadVariableOpReadVariableOp*dense_1766_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1766/BiasAdd/ReadVariableOp?
dense_1766/BiasAddBiasAdddense_1766/MatMul:product:0)dense_1766/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1766/BiasAddy
dense_1766/ReluReludense_1766/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1766/Relu?
 dense_1767/MatMul/ReadVariableOpReadVariableOp)dense_1767_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1767/MatMul/ReadVariableOp?
dense_1767/MatMulMatMuldense_1766/Relu:activations:0(dense_1767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1767/MatMul?
!dense_1767/BiasAdd/ReadVariableOpReadVariableOp*dense_1767_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1767/BiasAdd/ReadVariableOp?
dense_1767/BiasAddBiasAdddense_1767/MatMul:product:0)dense_1767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1767/BiasAddy
dense_1767/ReluReludense_1767/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1767/Relu?
IdentityIdentitydense_1767/Relu:activations:0"^dense_1764/BiasAdd/ReadVariableOp!^dense_1764/MatMul/ReadVariableOp"^dense_1765/BiasAdd/ReadVariableOp!^dense_1765/MatMul/ReadVariableOp"^dense_1766/BiasAdd/ReadVariableOp!^dense_1766/MatMul/ReadVariableOp"^dense_1767/BiasAdd/ReadVariableOp!^dense_1767/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2F
!dense_1764/BiasAdd/ReadVariableOp!dense_1764/BiasAdd/ReadVariableOp2D
 dense_1764/MatMul/ReadVariableOp dense_1764/MatMul/ReadVariableOp2F
!dense_1765/BiasAdd/ReadVariableOp!dense_1765/BiasAdd/ReadVariableOp2D
 dense_1765/MatMul/ReadVariableOp dense_1765/MatMul/ReadVariableOp2F
!dense_1766/BiasAdd/ReadVariableOp!dense_1766/BiasAdd/ReadVariableOp2D
 dense_1766/MatMul/ReadVariableOp dense_1766/MatMul/ReadVariableOp2F
!dense_1767/BiasAdd/ReadVariableOp!dense_1767/BiasAdd/ReadVariableOp2D
 dense_1767/MatMul/ReadVariableOp dense_1767/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?

?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172902257

inputs0
matmul_readvariableop_resource:' -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:' *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?	
?
+__inference_encoder_layer_call_fn_172902652

inputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_encoder_layer_call_and_return_conditional_losses_1729024212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?

?
I__inference_dense_1767_layer_call_and_return_conditional_losses_172902308

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
+__inference_encoder_layer_call_fn_172902461
encoderinputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallencoderinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_encoder_layer_call_and_return_conditional_losses_1729024212
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????'
'
_user_specified_nameencoderinputs
?)
?
F__inference_encoder_layer_call_and_return_conditional_losses_172902578

inputs;
)dense_1764_matmul_readvariableop_resource:' 8
*dense_1764_biasadd_readvariableop_resource: ;
)dense_1765_matmul_readvariableop_resource: 8
*dense_1765_biasadd_readvariableop_resource:;
)dense_1766_matmul_readvariableop_resource:8
*dense_1766_biasadd_readvariableop_resource:;
)dense_1767_matmul_readvariableop_resource:8
*dense_1767_biasadd_readvariableop_resource:
identity??!dense_1764/BiasAdd/ReadVariableOp? dense_1764/MatMul/ReadVariableOp?!dense_1765/BiasAdd/ReadVariableOp? dense_1765/MatMul/ReadVariableOp?!dense_1766/BiasAdd/ReadVariableOp? dense_1766/MatMul/ReadVariableOp?!dense_1767/BiasAdd/ReadVariableOp? dense_1767/MatMul/ReadVariableOp?
 dense_1764/MatMul/ReadVariableOpReadVariableOp)dense_1764_matmul_readvariableop_resource*
_output_shapes

:' *
dtype02"
 dense_1764/MatMul/ReadVariableOp?
dense_1764/MatMulMatMulinputs(dense_1764/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_1764/MatMul?
!dense_1764/BiasAdd/ReadVariableOpReadVariableOp*dense_1764_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!dense_1764/BiasAdd/ReadVariableOp?
dense_1764/BiasAddBiasAdddense_1764/MatMul:product:0)dense_1764/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_1764/BiasAddy
dense_1764/ReluReludense_1764/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_1764/Relu?
 dense_1765/MatMul/ReadVariableOpReadVariableOp)dense_1765_matmul_readvariableop_resource*
_output_shapes

: *
dtype02"
 dense_1765/MatMul/ReadVariableOp?
dense_1765/MatMulMatMuldense_1764/Relu:activations:0(dense_1765/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1765/MatMul?
!dense_1765/BiasAdd/ReadVariableOpReadVariableOp*dense_1765_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1765/BiasAdd/ReadVariableOp?
dense_1765/BiasAddBiasAdddense_1765/MatMul:product:0)dense_1765/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1765/BiasAddy
dense_1765/ReluReludense_1765/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1765/Relu?
 dense_1766/MatMul/ReadVariableOpReadVariableOp)dense_1766_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1766/MatMul/ReadVariableOp?
dense_1766/MatMulMatMuldense_1765/Relu:activations:0(dense_1766/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1766/MatMul?
!dense_1766/BiasAdd/ReadVariableOpReadVariableOp*dense_1766_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1766/BiasAdd/ReadVariableOp?
dense_1766/BiasAddBiasAdddense_1766/MatMul:product:0)dense_1766/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1766/BiasAddy
dense_1766/ReluReludense_1766/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1766/Relu?
 dense_1767/MatMul/ReadVariableOpReadVariableOp)dense_1767_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1767/MatMul/ReadVariableOp?
dense_1767/MatMulMatMuldense_1766/Relu:activations:0(dense_1767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1767/MatMul?
!dense_1767/BiasAdd/ReadVariableOpReadVariableOp*dense_1767_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1767/BiasAdd/ReadVariableOp?
dense_1767/BiasAddBiasAdddense_1767/MatMul:product:0)dense_1767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1767/BiasAddy
dense_1767/ReluReludense_1767/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1767/Relu?
IdentityIdentitydense_1767/Relu:activations:0"^dense_1764/BiasAdd/ReadVariableOp!^dense_1764/MatMul/ReadVariableOp"^dense_1765/BiasAdd/ReadVariableOp!^dense_1765/MatMul/ReadVariableOp"^dense_1766/BiasAdd/ReadVariableOp!^dense_1766/MatMul/ReadVariableOp"^dense_1767/BiasAdd/ReadVariableOp!^dense_1767/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2F
!dense_1764/BiasAdd/ReadVariableOp!dense_1764/BiasAdd/ReadVariableOp2D
 dense_1764/MatMul/ReadVariableOp dense_1764/MatMul/ReadVariableOp2F
!dense_1765/BiasAdd/ReadVariableOp!dense_1765/BiasAdd/ReadVariableOp2D
 dense_1765/MatMul/ReadVariableOp dense_1765/MatMul/ReadVariableOp2F
!dense_1766/BiasAdd/ReadVariableOp!dense_1766/BiasAdd/ReadVariableOp2D
 dense_1766/MatMul/ReadVariableOp dense_1766/MatMul/ReadVariableOp2F
!dense_1767/BiasAdd/ReadVariableOp!dense_1767/BiasAdd/ReadVariableOp2D
 dense_1767/MatMul/ReadVariableOp dense_1767/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?

?
I__inference_dense_1765_layer_call_and_return_conditional_losses_172902683

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
.__inference_dense_1766_layer_call_fn_172902712

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729022912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172902315

inputs&
dense_1764_172902258:' "
dense_1764_172902260: &
dense_1765_172902275: "
dense_1765_172902277:&
dense_1766_172902292:"
dense_1766_172902294:&
dense_1767_172902309:"
dense_1767_172902311:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1764_172902258dense_1764_172902260*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729022572$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172902275dense_1765_172902277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729022742$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172902292dense_1766_172902294*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729022912$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172902309dense_1767_172902311*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729023082$
"dense_1767/StatefulPartitionedCall?
IdentityIdentity+dense_1767/StatefulPartitionedCall:output:0#^dense_1764/StatefulPartitionedCall#^dense_1765/StatefulPartitionedCall#^dense_1766/StatefulPartitionedCall#^dense_1767/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2H
"dense_1764/StatefulPartitionedCall"dense_1764/StatefulPartitionedCall2H
"dense_1765/StatefulPartitionedCall"dense_1765/StatefulPartitionedCall2H
"dense_1766/StatefulPartitionedCall"dense_1766/StatefulPartitionedCall2H
"dense_1767/StatefulPartitionedCall"dense_1767/StatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172902509
encoderinputs&
dense_1764_172902488:' "
dense_1764_172902490: &
dense_1765_172902493: "
dense_1765_172902495:&
dense_1766_172902498:"
dense_1766_172902500:&
dense_1767_172902503:"
dense_1767_172902505:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallencoderinputsdense_1764_172902488dense_1764_172902490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729022572$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172902493dense_1765_172902495*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729022742$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172902498dense_1766_172902500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729022912$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172902503dense_1767_172902505*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729023082$
"dense_1767/StatefulPartitionedCall?
IdentityIdentity+dense_1767/StatefulPartitionedCall:output:0#^dense_1764/StatefulPartitionedCall#^dense_1765/StatefulPartitionedCall#^dense_1766/StatefulPartitionedCall#^dense_1767/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2H
"dense_1764/StatefulPartitionedCall"dense_1764/StatefulPartitionedCall2H
"dense_1765/StatefulPartitionedCall"dense_1765/StatefulPartitionedCall2H
"dense_1766/StatefulPartitionedCall"dense_1766/StatefulPartitionedCall2H
"dense_1767/StatefulPartitionedCall"dense_1767/StatefulPartitionedCall:V R
'
_output_shapes
:?????????'
'
_user_specified_nameencoderinputs
?

?
I__inference_dense_1765_layer_call_and_return_conditional_losses_172902274

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?
%__inference__traced_restore_172902999
file_prefix4
"assignvariableop_dense_1764_kernel:' 0
"assignvariableop_1_dense_1764_bias: 6
$assignvariableop_2_dense_1765_kernel: 0
"assignvariableop_3_dense_1765_bias:6
$assignvariableop_4_dense_1766_kernel:0
"assignvariableop_5_dense_1766_bias:6
$assignvariableop_6_dense_1767_kernel:0
"assignvariableop_7_dense_1767_bias:*
 assignvariableop_8_adabound_iter:	 -
#assignvariableop_9_adabound_base_lr: -
#assignvariableop_10_adabound_beta_1: -
#assignvariableop_11_adabound_beta_2: ,
"assignvariableop_12_adabound_decay: /
%assignvariableop_13_adabound_final_lr: ,
"assignvariableop_14_adabound_gamma: 4
*assignvariableop_15_adabound_learning_rate: 3
)assignvariableop_16_adabound_weight_decay: #
assignvariableop_17_total: #
assignvariableop_18_count: 0
"assignvariableop_19_true_positives:1
#assignvariableop_20_false_negatives:2
$assignvariableop_21_true_positives_1:1
#assignvariableop_22_false_positives:B
0assignvariableop_23_adabound_dense_1764_kernel_m:' <
.assignvariableop_24_adabound_dense_1764_bias_m: B
0assignvariableop_25_adabound_dense_1765_kernel_m: <
.assignvariableop_26_adabound_dense_1765_bias_m:B
0assignvariableop_27_adabound_dense_1766_kernel_m:<
.assignvariableop_28_adabound_dense_1766_bias_m:B
0assignvariableop_29_adabound_dense_1767_kernel_m:<
.assignvariableop_30_adabound_dense_1767_bias_m:B
0assignvariableop_31_adabound_dense_1764_kernel_v:' <
.assignvariableop_32_adabound_dense_1764_bias_v: B
0assignvariableop_33_adabound_dense_1765_kernel_v: <
.assignvariableop_34_adabound_dense_1765_bias_v:B
0assignvariableop_35_adabound_dense_1766_kernel_v:<
.assignvariableop_36_adabound_dense_1766_bias_v:B
0assignvariableop_37_adabound_dense_1767_kernel_v:<
.assignvariableop_38_adabound_dense_1767_bias_v:
identity_40??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/base_lr/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/final_lr/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/gamma/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_dense_1764_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_1764_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_dense_1765_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_1765_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp$assignvariableop_4_dense_1766_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_1766_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_dense_1767_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_1767_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_adabound_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_adabound_base_lrIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_adabound_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp#assignvariableop_11_adabound_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp"assignvariableop_12_adabound_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp%assignvariableop_13_adabound_final_lrIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_adabound_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adabound_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adabound_weight_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp"assignvariableop_19_true_positivesIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp#assignvariableop_20_false_negativesIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_true_positives_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp#assignvariableop_22_false_positivesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp0assignvariableop_23_adabound_dense_1764_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adabound_dense_1764_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp0assignvariableop_25_adabound_dense_1765_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adabound_dense_1765_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp0assignvariableop_27_adabound_dense_1766_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp.assignvariableop_28_adabound_dense_1766_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp0assignvariableop_29_adabound_dense_1767_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp.assignvariableop_30_adabound_dense_1767_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp0assignvariableop_31_adabound_dense_1764_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adabound_dense_1764_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp0assignvariableop_33_adabound_dense_1765_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp.assignvariableop_34_adabound_dense_1765_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adabound_dense_1766_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp.assignvariableop_36_adabound_dense_1766_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp0assignvariableop_37_adabound_dense_1767_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adabound_dense_1767_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39?
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
?	
?
+__inference_encoder_layer_call_fn_172902334
encoderinputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallencoderinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_encoder_layer_call_and_return_conditional_losses_1729023152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????'
'
_user_specified_nameencoderinputs
?R
?
"__inference__traced_save_172902872
file_prefix0
,savev2_dense_1764_kernel_read_readvariableop.
*savev2_dense_1764_bias_read_readvariableop0
,savev2_dense_1765_kernel_read_readvariableop.
*savev2_dense_1765_bias_read_readvariableop0
,savev2_dense_1766_kernel_read_readvariableop.
*savev2_dense_1766_bias_read_readvariableop0
,savev2_dense_1767_kernel_read_readvariableop.
*savev2_dense_1767_bias_read_readvariableop,
(savev2_adabound_iter_read_readvariableop	/
+savev2_adabound_base_lr_read_readvariableop.
*savev2_adabound_beta_1_read_readvariableop.
*savev2_adabound_beta_2_read_readvariableop-
)savev2_adabound_decay_read_readvariableop0
,savev2_adabound_final_lr_read_readvariableop-
)savev2_adabound_gamma_read_readvariableop5
1savev2_adabound_learning_rate_read_readvariableop4
0savev2_adabound_weight_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_positives_read_readvariableop;
7savev2_adabound_dense_1764_kernel_m_read_readvariableop9
5savev2_adabound_dense_1764_bias_m_read_readvariableop;
7savev2_adabound_dense_1765_kernel_m_read_readvariableop9
5savev2_adabound_dense_1765_bias_m_read_readvariableop;
7savev2_adabound_dense_1766_kernel_m_read_readvariableop9
5savev2_adabound_dense_1766_bias_m_read_readvariableop;
7savev2_adabound_dense_1767_kernel_m_read_readvariableop9
5savev2_adabound_dense_1767_bias_m_read_readvariableop;
7savev2_adabound_dense_1764_kernel_v_read_readvariableop9
5savev2_adabound_dense_1764_bias_v_read_readvariableop;
7savev2_adabound_dense_1765_kernel_v_read_readvariableop9
5savev2_adabound_dense_1765_bias_v_read_readvariableop;
7savev2_adabound_dense_1766_kernel_v_read_readvariableop9
5savev2_adabound_dense_1766_bias_v_read_readvariableop;
7savev2_adabound_dense_1767_kernel_v_read_readvariableop9
5savev2_adabound_dense_1767_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*?
value?B?(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/base_lr/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/final_lr/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/gamma/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_dense_1764_kernel_read_readvariableop*savev2_dense_1764_bias_read_readvariableop,savev2_dense_1765_kernel_read_readvariableop*savev2_dense_1765_bias_read_readvariableop,savev2_dense_1766_kernel_read_readvariableop*savev2_dense_1766_bias_read_readvariableop,savev2_dense_1767_kernel_read_readvariableop*savev2_dense_1767_bias_read_readvariableop(savev2_adabound_iter_read_readvariableop+savev2_adabound_base_lr_read_readvariableop*savev2_adabound_beta_1_read_readvariableop*savev2_adabound_beta_2_read_readvariableop)savev2_adabound_decay_read_readvariableop,savev2_adabound_final_lr_read_readvariableop)savev2_adabound_gamma_read_readvariableop1savev2_adabound_learning_rate_read_readvariableop0savev2_adabound_weight_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_positives_read_readvariableop7savev2_adabound_dense_1764_kernel_m_read_readvariableop5savev2_adabound_dense_1764_bias_m_read_readvariableop7savev2_adabound_dense_1765_kernel_m_read_readvariableop5savev2_adabound_dense_1765_bias_m_read_readvariableop7savev2_adabound_dense_1766_kernel_m_read_readvariableop5savev2_adabound_dense_1766_bias_m_read_readvariableop7savev2_adabound_dense_1767_kernel_m_read_readvariableop5savev2_adabound_dense_1767_bias_m_read_readvariableop7savev2_adabound_dense_1764_kernel_v_read_readvariableop5savev2_adabound_dense_1764_bias_v_read_readvariableop7savev2_adabound_dense_1765_kernel_v_read_readvariableop5savev2_adabound_dense_1765_bias_v_read_readvariableop7savev2_adabound_dense_1766_kernel_v_read_readvariableop5savev2_adabound_dense_1766_bias_v_read_readvariableop7savev2_adabound_dense_1767_kernel_v_read_readvariableop5savev2_adabound_dense_1767_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :' : : :::::: : : : : : : : : : : :::::' : : ::::::' : : :::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:' : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:' : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$  

_output_shapes

:' : !

_output_shapes
: :$" 

_output_shapes

: : #

_output_shapes
::$$ 

_output_shapes

:: %

_output_shapes
::$& 

_output_shapes

:: '

_output_shapes
::(

_output_shapes
: 
?

?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172902663

inputs0
matmul_readvariableop_resource:' -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:' *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????': : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?

?
I__inference_dense_1766_layer_call_and_return_conditional_losses_172902703

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172902421

inputs&
dense_1764_172902400:' "
dense_1764_172902402: &
dense_1765_172902405: "
dense_1765_172902407:&
dense_1766_172902410:"
dense_1766_172902412:&
dense_1767_172902415:"
dense_1767_172902417:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1764_172902400dense_1764_172902402*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729022572$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172902405dense_1765_172902407*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729022742$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172902410dense_1766_172902412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729022912$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172902415dense_1767_172902417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729023082$
"dense_1767/StatefulPartitionedCall?
IdentityIdentity+dense_1767/StatefulPartitionedCall:output:0#^dense_1764/StatefulPartitionedCall#^dense_1765/StatefulPartitionedCall#^dense_1766/StatefulPartitionedCall#^dense_1767/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2H
"dense_1764/StatefulPartitionedCall"dense_1764/StatefulPartitionedCall2H
"dense_1765/StatefulPartitionedCall"dense_1765/StatefulPartitionedCall2H
"dense_1766/StatefulPartitionedCall"dense_1766/StatefulPartitionedCall2H
"dense_1767/StatefulPartitionedCall"dense_1767/StatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?	
?
+__inference_encoder_layer_call_fn_172902631

inputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_encoder_layer_call_and_return_conditional_losses_1729023152
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?0
?
$__inference__wrapped_model_172902239
encoderinputsC
1encoder_dense_1764_matmul_readvariableop_resource:' @
2encoder_dense_1764_biasadd_readvariableop_resource: C
1encoder_dense_1765_matmul_readvariableop_resource: @
2encoder_dense_1765_biasadd_readvariableop_resource:C
1encoder_dense_1766_matmul_readvariableop_resource:@
2encoder_dense_1766_biasadd_readvariableop_resource:C
1encoder_dense_1767_matmul_readvariableop_resource:@
2encoder_dense_1767_biasadd_readvariableop_resource:
identity??)encoder/dense_1764/BiasAdd/ReadVariableOp?(encoder/dense_1764/MatMul/ReadVariableOp?)encoder/dense_1765/BiasAdd/ReadVariableOp?(encoder/dense_1765/MatMul/ReadVariableOp?)encoder/dense_1766/BiasAdd/ReadVariableOp?(encoder/dense_1766/MatMul/ReadVariableOp?)encoder/dense_1767/BiasAdd/ReadVariableOp?(encoder/dense_1767/MatMul/ReadVariableOp?
(encoder/dense_1764/MatMul/ReadVariableOpReadVariableOp1encoder_dense_1764_matmul_readvariableop_resource*
_output_shapes

:' *
dtype02*
(encoder/dense_1764/MatMul/ReadVariableOp?
encoder/dense_1764/MatMulMatMulencoderinputs0encoder/dense_1764/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
encoder/dense_1764/MatMul?
)encoder/dense_1764/BiasAdd/ReadVariableOpReadVariableOp2encoder_dense_1764_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02+
)encoder/dense_1764/BiasAdd/ReadVariableOp?
encoder/dense_1764/BiasAddBiasAdd#encoder/dense_1764/MatMul:product:01encoder/dense_1764/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
encoder/dense_1764/BiasAdd?
encoder/dense_1764/ReluRelu#encoder/dense_1764/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
encoder/dense_1764/Relu?
(encoder/dense_1765/MatMul/ReadVariableOpReadVariableOp1encoder_dense_1765_matmul_readvariableop_resource*
_output_shapes

: *
dtype02*
(encoder/dense_1765/MatMul/ReadVariableOp?
encoder/dense_1765/MatMulMatMul%encoder/dense_1764/Relu:activations:00encoder/dense_1765/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1765/MatMul?
)encoder/dense_1765/BiasAdd/ReadVariableOpReadVariableOp2encoder_dense_1765_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)encoder/dense_1765/BiasAdd/ReadVariableOp?
encoder/dense_1765/BiasAddBiasAdd#encoder/dense_1765/MatMul:product:01encoder/dense_1765/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1765/BiasAdd?
encoder/dense_1765/ReluRelu#encoder/dense_1765/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1765/Relu?
(encoder/dense_1766/MatMul/ReadVariableOpReadVariableOp1encoder_dense_1766_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(encoder/dense_1766/MatMul/ReadVariableOp?
encoder/dense_1766/MatMulMatMul%encoder/dense_1765/Relu:activations:00encoder/dense_1766/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1766/MatMul?
)encoder/dense_1766/BiasAdd/ReadVariableOpReadVariableOp2encoder_dense_1766_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)encoder/dense_1766/BiasAdd/ReadVariableOp?
encoder/dense_1766/BiasAddBiasAdd#encoder/dense_1766/MatMul:product:01encoder/dense_1766/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1766/BiasAdd?
encoder/dense_1766/ReluRelu#encoder/dense_1766/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1766/Relu?
(encoder/dense_1767/MatMul/ReadVariableOpReadVariableOp1encoder_dense_1767_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(encoder/dense_1767/MatMul/ReadVariableOp?
encoder/dense_1767/MatMulMatMul%encoder/dense_1766/Relu:activations:00encoder/dense_1767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1767/MatMul?
)encoder/dense_1767/BiasAdd/ReadVariableOpReadVariableOp2encoder_dense_1767_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)encoder/dense_1767/BiasAdd/ReadVariableOp?
encoder/dense_1767/BiasAddBiasAdd#encoder/dense_1767/MatMul:product:01encoder/dense_1767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1767/BiasAdd?
encoder/dense_1767/ReluRelu#encoder/dense_1767/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
encoder/dense_1767/Relu?
IdentityIdentity%encoder/dense_1767/Relu:activations:0*^encoder/dense_1764/BiasAdd/ReadVariableOp)^encoder/dense_1764/MatMul/ReadVariableOp*^encoder/dense_1765/BiasAdd/ReadVariableOp)^encoder/dense_1765/MatMul/ReadVariableOp*^encoder/dense_1766/BiasAdd/ReadVariableOp)^encoder/dense_1766/MatMul/ReadVariableOp*^encoder/dense_1767/BiasAdd/ReadVariableOp)^encoder/dense_1767/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 2V
)encoder/dense_1764/BiasAdd/ReadVariableOp)encoder/dense_1764/BiasAdd/ReadVariableOp2T
(encoder/dense_1764/MatMul/ReadVariableOp(encoder/dense_1764/MatMul/ReadVariableOp2V
)encoder/dense_1765/BiasAdd/ReadVariableOp)encoder/dense_1765/BiasAdd/ReadVariableOp2T
(encoder/dense_1765/MatMul/ReadVariableOp(encoder/dense_1765/MatMul/ReadVariableOp2V
)encoder/dense_1766/BiasAdd/ReadVariableOp)encoder/dense_1766/BiasAdd/ReadVariableOp2T
(encoder/dense_1766/MatMul/ReadVariableOp(encoder/dense_1766/MatMul/ReadVariableOp2V
)encoder/dense_1767/BiasAdd/ReadVariableOp)encoder/dense_1767/BiasAdd/ReadVariableOp2T
(encoder/dense_1767/MatMul/ReadVariableOp(encoder/dense_1767/MatMul/ReadVariableOp:V R
'
_output_shapes
:?????????'
'
_user_specified_nameencoderinputs
?	
?
'__inference_signature_wrapper_172902546
encoderinputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallencoderinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__wrapped_model_1729022392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????': : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????'
'
_user_specified_nameencoderinputs
?

?
I__inference_dense_1767_layer_call_and_return_conditional_losses_172902723

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_dense_1764_layer_call_fn_172902672

inputs
unknown:' 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729022572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????': : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
.__inference_dense_1765_layer_call_fn_172902692

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729022742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
I__inference_dense_1766_layer_call_and_return_conditional_losses_172902291

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
encoderinputs6
serving_default_encoderinputs:0?????????'>

dense_17670
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?7
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
*g&call_and_return_all_conditional_losses
h__call__
i_default_save_signature"?4
_tf_keras_network?4{"name": "encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}, "name": "encoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1764", "inbound_nodes": [[["encoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1765", "inbound_nodes": [[["dense_1764", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1766", "inbound_nodes": [[["dense_1765", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1767", "inbound_nodes": [[["dense_1766", 0, 0, {}]]]}], "input_layers": [["encoderinputs", 0, 0]], "output_layers": [["dense_1767", 0, 0]]}, "shared_object_id": 13, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 39]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 39]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 39]}, "float32", "encoderinputs"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}, "name": "encoderinputs", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1764", "inbound_nodes": [[["encoderinputs", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1765", "inbound_nodes": [[["dense_1764", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1766", "inbound_nodes": [[["dense_1765", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1767", "inbound_nodes": [[["dense_1766", 0, 0, {}]]], "shared_object_id": 12}], "input_layers": [["encoderinputs", 0, 0]], "output_layers": [["dense_1767", 0, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 15}, "metrics": [[{"class_name": "Recall", "config": {"name": "recall_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 16}, {"class_name": "Precision", "config": {"name": "precision_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 17}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBound", "config": {"name": "AdaBound", "learning_rate": 0.0010000000474974513, "base_lr": 0.0010000000474974513, "final_lr": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "gamma": 0.0010000000474974513, "weight_decay": 0.0, "epsilon": 1e-08, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "encoderinputs", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}}
?	

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*j&call_and_return_all_conditional_losses
k__call__"?
_tf_keras_layer?{"name": "dense_1764", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["encoderinputs", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 39}}, "shared_object_id": 18}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 39]}}
?	

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*l&call_and_return_all_conditional_losses
m__call__"?
_tf_keras_layer?{"name": "dense_1765", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1764", 0, 0, {}]]], "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?	

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
*n&call_and_return_all_conditional_losses
o__call__"?
_tf_keras_layer?{"name": "dense_1766", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1765", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?	

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
*p&call_and_return_all_conditional_losses
q__call__"?
_tf_keras_layer?{"name": "dense_1767", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1766", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?
$iter
%base_lr

&beta_1

'beta_2
	(decay
)final_lr
	*gamma
+learning_rate
,weight_decaymWmXmYmZm[m\m]m^v_v`vavbvcvdvevf"
	optimizer
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
?
-layer_regularization_losses
regularization_losses

.layers
	variables
	trainable_variables
/non_trainable_variables
0metrics
1layer_metrics
h__call__
i_default_save_signature
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
,
rserving_default"
signature_map
#:!' 2dense_1764/kernel
: 2dense_1764/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
2layer_regularization_losses
regularization_losses

3layers
	variables
trainable_variables
4non_trainable_variables
5metrics
6layer_metrics
k__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
#:! 2dense_1765/kernel
:2dense_1765/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
7layer_regularization_losses
regularization_losses

8layers
	variables
trainable_variables
9non_trainable_variables
:metrics
;layer_metrics
m__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
#:!2dense_1766/kernel
:2dense_1766/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
<layer_regularization_losses
regularization_losses

=layers
	variables
trainable_variables
>non_trainable_variables
?metrics
@layer_metrics
o__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
#:!2dense_1767/kernel
:2dense_1767/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Alayer_regularization_losses
 regularization_losses

Blayers
!	variables
"trainable_variables
Cnon_trainable_variables
Dmetrics
Elayer_metrics
q__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
:	 (2AdaBound/iter
: (2AdaBound/base_lr
: (2AdaBound/beta_1
: (2AdaBound/beta_2
: (2AdaBound/decay
: (2AdaBound/final_lr
: (2AdaBound/gamma
 : (2AdaBound/learning_rate
: (2AdaBound/weight_decay
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
5
F0
G1
H2"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
	Itotal
	Jcount
K	variables
L	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 22}
?
M
thresholds
Ntrue_positives
Ofalse_negatives
P	variables
Q	keras_api"?
_tf_keras_metric?{"class_name": "Recall", "name": "recall_225", "dtype": "float32", "config": {"name": "recall_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 16}
?
R
thresholds
Strue_positives
Tfalse_positives
U	variables
V	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "precision_225", "dtype": "float32", "config": {"name": "precision_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 17}
:  (2total
:  (2count
.
I0
J1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
,:*' 2AdaBound/dense_1764/kernel/m
&:$ 2AdaBound/dense_1764/bias/m
,:* 2AdaBound/dense_1765/kernel/m
&:$2AdaBound/dense_1765/bias/m
,:*2AdaBound/dense_1766/kernel/m
&:$2AdaBound/dense_1766/bias/m
,:*2AdaBound/dense_1767/kernel/m
&:$2AdaBound/dense_1767/bias/m
,:*' 2AdaBound/dense_1764/kernel/v
&:$ 2AdaBound/dense_1764/bias/v
,:* 2AdaBound/dense_1765/kernel/v
&:$2AdaBound/dense_1765/bias/v
,:*2AdaBound/dense_1766/kernel/v
&:$2AdaBound/dense_1766/bias/v
,:*2AdaBound/dense_1767/kernel/v
&:$2AdaBound/dense_1767/bias/v
?2?
F__inference_encoder_layer_call_and_return_conditional_losses_172902578
F__inference_encoder_layer_call_and_return_conditional_losses_172902610
F__inference_encoder_layer_call_and_return_conditional_losses_172902485
F__inference_encoder_layer_call_and_return_conditional_losses_172902509?
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
?2?
+__inference_encoder_layer_call_fn_172902334
+__inference_encoder_layer_call_fn_172902631
+__inference_encoder_layer_call_fn_172902652
+__inference_encoder_layer_call_fn_172902461?
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
$__inference__wrapped_model_172902239?
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
annotations? *,?)
'?$
encoderinputs?????????'
?2?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172902663?
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
.__inference_dense_1764_layer_call_fn_172902672?
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
I__inference_dense_1765_layer_call_and_return_conditional_losses_172902683?
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
.__inference_dense_1765_layer_call_fn_172902692?
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
I__inference_dense_1766_layer_call_and_return_conditional_losses_172902703?
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
.__inference_dense_1766_layer_call_fn_172902712?
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
I__inference_dense_1767_layer_call_and_return_conditional_losses_172902723?
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
.__inference_dense_1767_layer_call_fn_172902732?
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
'__inference_signature_wrapper_172902546encoderinputs"?
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
 ?
$__inference__wrapped_model_172902239{6?3
,?)
'?$
encoderinputs?????????'
? "7?4
2

dense_1767$?!

dense_1767??????????
I__inference_dense_1764_layer_call_and_return_conditional_losses_172902663\/?,
%?"
 ?
inputs?????????'
? "%?"
?
0????????? 
? ?
.__inference_dense_1764_layer_call_fn_172902672O/?,
%?"
 ?
inputs?????????'
? "?????????? ?
I__inference_dense_1765_layer_call_and_return_conditional_losses_172902683\/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ?
.__inference_dense_1765_layer_call_fn_172902692O/?,
%?"
 ?
inputs????????? 
? "???????????
I__inference_dense_1766_layer_call_and_return_conditional_losses_172902703\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1766_layer_call_fn_172902712O/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_dense_1767_layer_call_and_return_conditional_losses_172902723\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1767_layer_call_fn_172902732O/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_encoder_layer_call_and_return_conditional_losses_172902485q>?;
4?1
'?$
encoderinputs?????????'
p 

 
? "%?"
?
0?????????
? ?
F__inference_encoder_layer_call_and_return_conditional_losses_172902509q>?;
4?1
'?$
encoderinputs?????????'
p

 
? "%?"
?
0?????????
? ?
F__inference_encoder_layer_call_and_return_conditional_losses_172902578j7?4
-?*
 ?
inputs?????????'
p 

 
? "%?"
?
0?????????
? ?
F__inference_encoder_layer_call_and_return_conditional_losses_172902610j7?4
-?*
 ?
inputs?????????'
p

 
? "%?"
?
0?????????
? ?
+__inference_encoder_layer_call_fn_172902334d>?;
4?1
'?$
encoderinputs?????????'
p 

 
? "???????????
+__inference_encoder_layer_call_fn_172902461d>?;
4?1
'?$
encoderinputs?????????'
p

 
? "???????????
+__inference_encoder_layer_call_fn_172902631]7?4
-?*
 ?
inputs?????????'
p 

 
? "???????????
+__inference_encoder_layer_call_fn_172902652]7?4
-?*
 ?
inputs?????????'
p

 
? "???????????
'__inference_signature_wrapper_172902546?G?D
? 
=?:
8
encoderinputs'?$
encoderinputs?????????'"7?4
2

dense_1767$?!

dense_1767?????????