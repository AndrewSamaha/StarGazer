??
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
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
~
dense_1768/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1768/kernel
w
%dense_1768/kernel/Read/ReadVariableOpReadVariableOpdense_1768/kernel*
_output_shapes

:*
dtype0
v
dense_1768/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1768/bias
o
#dense_1768/bias/Read/ReadVariableOpReadVariableOpdense_1768/bias*
_output_shapes
:*
dtype0
~
dense_1769/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1769/kernel
w
%dense_1769/kernel/Read/ReadVariableOpReadVariableOpdense_1769/kernel*
_output_shapes

:*
dtype0
v
dense_1769/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1769/bias
o
#dense_1769/bias/Read/ReadVariableOpReadVariableOpdense_1769/bias*
_output_shapes
:*
dtype0
~
dense_1770/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namedense_1770/kernel
w
%dense_1770/kernel/Read/ReadVariableOpReadVariableOpdense_1770/kernel*
_output_shapes

:*
dtype0
v
dense_1770/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namedense_1770/bias
o
#dense_1770/bias/Read/ReadVariableOpReadVariableOpdense_1770/bias*
_output_shapes
:*
dtype0
x
outputs/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:'*
shared_nameoutputs/kernel
q
"outputs/kernel/Read/ReadVariableOpReadVariableOpoutputs/kernel*
_output_shapes

:'*
dtype0
p
outputs/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*
shared_nameoutputs/bias
i
 outputs/bias/Read/ReadVariableOpReadVariableOpoutputs/bias*
_output_shapes
:'*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
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
AdaBound/dense_1768/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1768/kernel/m
?
0AdaBound/dense_1768/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1768/kernel/m*
_output_shapes

:*
dtype0
?
AdaBound/dense_1768/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1768/bias/m
?
.AdaBound/dense_1768/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1768/bias/m*
_output_shapes
:*
dtype0
?
AdaBound/dense_1769/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1769/kernel/m
?
0AdaBound/dense_1769/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1769/kernel/m*
_output_shapes

:*
dtype0
?
AdaBound/dense_1769/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1769/bias/m
?
.AdaBound/dense_1769/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1769/bias/m*
_output_shapes
:*
dtype0
?
AdaBound/dense_1770/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1770/kernel/m
?
0AdaBound/dense_1770/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1770/kernel/m*
_output_shapes

:*
dtype0
?
AdaBound/dense_1770/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1770/bias/m
?
.AdaBound/dense_1770/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/dense_1770/bias/m*
_output_shapes
:*
dtype0
?
AdaBound/outputs/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:'**
shared_nameAdaBound/outputs/kernel/m
?
-AdaBound/outputs/kernel/m/Read/ReadVariableOpReadVariableOpAdaBound/outputs/kernel/m*
_output_shapes

:'*
dtype0
?
AdaBound/outputs/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*(
shared_nameAdaBound/outputs/bias/m

+AdaBound/outputs/bias/m/Read/ReadVariableOpReadVariableOpAdaBound/outputs/bias/m*
_output_shapes
:'*
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
?
AdaBound/dense_1768/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1768/kernel/v
?
0AdaBound/dense_1768/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1768/kernel/v*
_output_shapes

:*
dtype0
?
AdaBound/dense_1768/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1768/bias/v
?
.AdaBound/dense_1768/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1768/bias/v*
_output_shapes
:*
dtype0
?
AdaBound/dense_1769/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1769/kernel/v
?
0AdaBound/dense_1769/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1769/kernel/v*
_output_shapes

:*
dtype0
?
AdaBound/dense_1769/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1769/bias/v
?
.AdaBound/dense_1769/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1769/bias/v*
_output_shapes
:*
dtype0
?
AdaBound/dense_1770/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameAdaBound/dense_1770/kernel/v
?
0AdaBound/dense_1770/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1770/kernel/v*
_output_shapes

:*
dtype0
?
AdaBound/dense_1770/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdaBound/dense_1770/bias/v
?
.AdaBound/dense_1770/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/dense_1770/bias/v*
_output_shapes
:*
dtype0
?
AdaBound/outputs/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:'**
shared_nameAdaBound/outputs/kernel/v
?
-AdaBound/outputs/kernel/v/Read/ReadVariableOpReadVariableOpAdaBound/outputs/kernel/v*
_output_shapes

:'*
dtype0
?
AdaBound/outputs/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:'*(
shared_nameAdaBound/outputs/bias/v

+AdaBound/outputs/bias/v/Read/ReadVariableOpReadVariableOpAdaBound/outputs/bias/v*
_output_shapes
:'*
dtype0

NoOpNoOp
?`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?`
value?`B?` B?`
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
 
?

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
?
iter
base_lr

beta_1

beta_2
	 decay
!final_lr
	"gamma
#learning_rate
$weight_decay%m?&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?%v?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?
 
v
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415
v
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415
?
5layer_regularization_losses
regularization_losses

6layers
	variables
trainable_variables
7non_trainable_variables
8metrics
9layer_metrics
 
 
h

%kernel
&bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
h

'kernel
(bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
h

)kernel
*bias
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
h

+kernel
,bias
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
 
8
%0
&1
'2
(3
)4
*5
+6
,7
8
%0
&1
'2
(3
)4
*5
+6
,7
?
Jlayer_regularization_losses
regularization_losses

Klayers
	variables
trainable_variables
Lnon_trainable_variables
Mmetrics
Nlayer_metrics
 
h

-kernel
.bias
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
h

/kernel
0bias
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
h

1kernel
2bias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
h

3kernel
4bias
[regularization_losses
\	variables
]trainable_variables
^	keras_api
 
8
-0
.1
/2
03
14
25
36
47
8
-0
.1
/2
03
14
25
36
47
?
_layer_regularization_losses
regularization_losses

`layers
	variables
trainable_variables
anon_trainable_variables
bmetrics
clayer_metrics
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
MK
VARIABLE_VALUEdense_1764/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1764/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEdense_1765/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1765/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEdense_1766/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1766/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEdense_1767/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1767/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUEdense_1768/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_1768/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdense_1769/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_1769/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEdense_1770/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEdense_1770/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEoutputs/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEoutputs/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 

d0
e1
f2
 
 

%0
&1

%0
&1
?
glayer_regularization_losses
:regularization_losses

hlayers
;	variables
<trainable_variables
inon_trainable_variables
jmetrics
klayer_metrics
 

'0
(1

'0
(1
?
llayer_regularization_losses
>regularization_losses

mlayers
?	variables
@trainable_variables
nnon_trainable_variables
ometrics
player_metrics
 

)0
*1

)0
*1
?
qlayer_regularization_losses
Bregularization_losses

rlayers
C	variables
Dtrainable_variables
snon_trainable_variables
tmetrics
ulayer_metrics
 

+0
,1

+0
,1
?
vlayer_regularization_losses
Fregularization_losses

wlayers
G	variables
Htrainable_variables
xnon_trainable_variables
ymetrics
zlayer_metrics
 
#

0
1
2
3
4
 

{0
e1
f2
 
 

-0
.1

-0
.1
?
|layer_regularization_losses
Oregularization_losses

}layers
P	variables
Qtrainable_variables
~non_trainable_variables
metrics
?layer_metrics
 

/0
01

/0
01
?
 ?layer_regularization_losses
Sregularization_losses
?layers
T	variables
Utrainable_variables
?non_trainable_variables
?metrics
?layer_metrics
 

10
21

10
21
?
 ?layer_regularization_losses
Wregularization_losses
?layers
X	variables
Ytrainable_variables
?non_trainable_variables
?metrics
?layer_metrics
 

30
41

30
41
?
 ?layer_regularization_losses
[regularization_losses
?layers
\	variables
]trainable_variables
?non_trainable_variables
?metrics
?layer_metrics
 
#
0
1
2
3
4
 

?0
e1
f2
 
8

?total

?count
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api
\
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api
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
8

?total

?count
?	variables
?	keras_api
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
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
 
ca
VARIABLE_VALUEtrue_positives_1=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
fd
VARIABLE_VALUEtotal_1Ilayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_1Ilayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
fd
VARIABLE_VALUEtotal_2Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_2Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
tr
VARIABLE_VALUEAdaBound/dense_1764/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1764/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1765/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1765/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1766/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1766/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1767/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1767/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1768/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1768/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdaBound/dense_1769/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdaBound/dense_1769/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdaBound/dense_1770/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdaBound/dense_1770/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/outputs/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdaBound/outputs/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1764/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1764/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1765/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1765/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1766/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1766/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1767/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1767/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdaBound/dense_1768/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/dense_1768/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdaBound/dense_1769/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdaBound/dense_1769/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdaBound/dense_1770/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUEAdaBound/dense_1770/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdaBound/outputs/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEAdaBound/outputs/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
v
serving_default_imgPlaceholder*'
_output_shapes
:?????????'*
dtype0*
shape:?????????'
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_imgdense_1764/kerneldense_1764/biasdense_1765/kerneldense_1765/biasdense_1766/kerneldense_1766/biasdense_1767/kerneldense_1767/biasdense_1768/kerneldense_1768/biasdense_1769/kerneldense_1769/biasdense_1770/kerneldense_1770/biasoutputs/kerneloutputs/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *0
f+R)
'__inference_signature_wrapper_172905146
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!AdaBound/iter/Read/ReadVariableOp$AdaBound/base_lr/Read/ReadVariableOp#AdaBound/beta_1/Read/ReadVariableOp#AdaBound/beta_2/Read/ReadVariableOp"AdaBound/decay/Read/ReadVariableOp%AdaBound/final_lr/Read/ReadVariableOp"AdaBound/gamma/Read/ReadVariableOp*AdaBound/learning_rate/Read/ReadVariableOp)AdaBound/weight_decay/Read/ReadVariableOp%dense_1764/kernel/Read/ReadVariableOp#dense_1764/bias/Read/ReadVariableOp%dense_1765/kernel/Read/ReadVariableOp#dense_1765/bias/Read/ReadVariableOp%dense_1766/kernel/Read/ReadVariableOp#dense_1766/bias/Read/ReadVariableOp%dense_1767/kernel/Read/ReadVariableOp#dense_1767/bias/Read/ReadVariableOp%dense_1768/kernel/Read/ReadVariableOp#dense_1768/bias/Read/ReadVariableOp%dense_1769/kernel/Read/ReadVariableOp#dense_1769/bias/Read/ReadVariableOp%dense_1770/kernel/Read/ReadVariableOp#dense_1770/bias/Read/ReadVariableOp"outputs/kernel/Read/ReadVariableOp outputs/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp$true_positives_1/Read/ReadVariableOp#false_positives/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp0AdaBound/dense_1764/kernel/m/Read/ReadVariableOp.AdaBound/dense_1764/bias/m/Read/ReadVariableOp0AdaBound/dense_1765/kernel/m/Read/ReadVariableOp.AdaBound/dense_1765/bias/m/Read/ReadVariableOp0AdaBound/dense_1766/kernel/m/Read/ReadVariableOp.AdaBound/dense_1766/bias/m/Read/ReadVariableOp0AdaBound/dense_1767/kernel/m/Read/ReadVariableOp.AdaBound/dense_1767/bias/m/Read/ReadVariableOp0AdaBound/dense_1768/kernel/m/Read/ReadVariableOp.AdaBound/dense_1768/bias/m/Read/ReadVariableOp0AdaBound/dense_1769/kernel/m/Read/ReadVariableOp.AdaBound/dense_1769/bias/m/Read/ReadVariableOp0AdaBound/dense_1770/kernel/m/Read/ReadVariableOp.AdaBound/dense_1770/bias/m/Read/ReadVariableOp-AdaBound/outputs/kernel/m/Read/ReadVariableOp+AdaBound/outputs/bias/m/Read/ReadVariableOp0AdaBound/dense_1764/kernel/v/Read/ReadVariableOp.AdaBound/dense_1764/bias/v/Read/ReadVariableOp0AdaBound/dense_1765/kernel/v/Read/ReadVariableOp.AdaBound/dense_1765/bias/v/Read/ReadVariableOp0AdaBound/dense_1766/kernel/v/Read/ReadVariableOp.AdaBound/dense_1766/bias/v/Read/ReadVariableOp0AdaBound/dense_1767/kernel/v/Read/ReadVariableOp.AdaBound/dense_1767/bias/v/Read/ReadVariableOp0AdaBound/dense_1768/kernel/v/Read/ReadVariableOp.AdaBound/dense_1768/bias/v/Read/ReadVariableOp0AdaBound/dense_1769/kernel/v/Read/ReadVariableOp.AdaBound/dense_1769/bias/v/Read/ReadVariableOp0AdaBound/dense_1770/kernel/v/Read/ReadVariableOp.AdaBound/dense_1770/bias/v/Read/ReadVariableOp-AdaBound/outputs/kernel/v/Read/ReadVariableOp+AdaBound/outputs/bias/v/Read/ReadVariableOpConst*P
TinI
G2E	*
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
"__inference__traced_save_172905964
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameAdaBound/iterAdaBound/base_lrAdaBound/beta_1AdaBound/beta_2AdaBound/decayAdaBound/final_lrAdaBound/gammaAdaBound/learning_rateAdaBound/weight_decaydense_1764/kerneldense_1764/biasdense_1765/kerneldense_1765/biasdense_1766/kerneldense_1766/biasdense_1767/kerneldense_1767/biasdense_1768/kerneldense_1768/biasdense_1769/kerneldense_1769/biasdense_1770/kerneldense_1770/biasoutputs/kerneloutputs/biastotalcounttrue_positivesfalse_negativestrue_positives_1false_positivestotal_1count_1total_2count_2AdaBound/dense_1764/kernel/mAdaBound/dense_1764/bias/mAdaBound/dense_1765/kernel/mAdaBound/dense_1765/bias/mAdaBound/dense_1766/kernel/mAdaBound/dense_1766/bias/mAdaBound/dense_1767/kernel/mAdaBound/dense_1767/bias/mAdaBound/dense_1768/kernel/mAdaBound/dense_1768/bias/mAdaBound/dense_1769/kernel/mAdaBound/dense_1769/bias/mAdaBound/dense_1770/kernel/mAdaBound/dense_1770/bias/mAdaBound/outputs/kernel/mAdaBound/outputs/bias/mAdaBound/dense_1764/kernel/vAdaBound/dense_1764/bias/vAdaBound/dense_1765/kernel/vAdaBound/dense_1765/bias/vAdaBound/dense_1766/kernel/vAdaBound/dense_1766/bias/vAdaBound/dense_1767/kernel/vAdaBound/dense_1767/bias/vAdaBound/dense_1768/kernel/vAdaBound/dense_1768/bias/vAdaBound/dense_1769/kernel/vAdaBound/dense_1769/bias/vAdaBound/dense_1770/kernel/vAdaBound/dense_1770/bias/vAdaBound/outputs/kernel/vAdaBound/outputs/bias/v*O
TinH
F2D*
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
%__inference__traced_restore_172906175??
?

?
I__inference_dense_1770_layer_call_and_return_conditional_losses_172905711

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_dense_1764_layer_call_fn_172905600

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
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729042692
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
?
?
/__inference_autoencoder_layer_call_fn_172905303

inputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:'

unknown_14:'
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
 *'
_output_shapes
:?????????'*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_autoencoder_layer_call_and_return_conditional_losses_1729048332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172904497
encoderinputs&
dense_1764_172904476:' "
dense_1764_172904478: &
dense_1765_172904481: "
dense_1765_172904483:&
dense_1766_172904486:"
dense_1766_172904488:&
dense_1767_172904491:"
dense_1767_172904493:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallencoderinputsdense_1764_172904476dense_1764_172904478*
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
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729042692$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172904481dense_1765_172904483*
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
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729042862$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172904486dense_1766_172904488*
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
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729043032$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172904491dense_1767_172904493*
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
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729043202$
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
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172904327

inputs&
dense_1764_172904270:' "
dense_1764_172904272: &
dense_1765_172904287: "
dense_1765_172904289:&
dense_1766_172904304:"
dense_1766_172904306:&
dense_1767_172904321:"
dense_1767_172904323:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1764_172904270dense_1764_172904272*
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
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729042692$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172904287dense_1765_172904289*
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
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729042862$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172904304dense_1766_172904306*
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
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729043032$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172904321dense_1767_172904323*
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
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729043202$
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

?
I__inference_dense_1765_layer_call_and_return_conditional_losses_172904286

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
?
?
/__inference_autoencoder_layer_call_fn_172904868
img
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:'

unknown_14:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 *'
_output_shapes
:?????????'*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_autoencoder_layer_call_and_return_conditional_losses_1729048332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????'

_user_specified_nameimg
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172904521
encoderinputs&
dense_1764_172904500:' "
dense_1764_172904502: &
dense_1765_172904505: "
dense_1765_172904507:&
dense_1766_172904510:"
dense_1766_172904512:&
dense_1767_172904515:"
dense_1767_172904517:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallencoderinputsdense_1764_172904500dense_1764_172904502*
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
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729042692$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172904505dense_1765_172904507*
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
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729042862$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172904510dense_1766_172904512*
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
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729043032$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172904515dense_1767_172904517*
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
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729043202$
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
?
/__inference_autoencoder_layer_call_fn_172905340

inputs
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:'

unknown_14:'
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
 *'
_output_shapes
:?????????'*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_autoencoder_layer_call_and_return_conditional_losses_1729049452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?q
?
$__inference__wrapped_model_172904251
imgO
=autoencoder_encoder_dense_1764_matmul_readvariableop_resource:' L
>autoencoder_encoder_dense_1764_biasadd_readvariableop_resource: O
=autoencoder_encoder_dense_1765_matmul_readvariableop_resource: L
>autoencoder_encoder_dense_1765_biasadd_readvariableop_resource:O
=autoencoder_encoder_dense_1766_matmul_readvariableop_resource:L
>autoencoder_encoder_dense_1766_biasadd_readvariableop_resource:O
=autoencoder_encoder_dense_1767_matmul_readvariableop_resource:L
>autoencoder_encoder_dense_1767_biasadd_readvariableop_resource:O
=autoencoder_decoder_dense_1768_matmul_readvariableop_resource:L
>autoencoder_decoder_dense_1768_biasadd_readvariableop_resource:O
=autoencoder_decoder_dense_1769_matmul_readvariableop_resource:L
>autoencoder_decoder_dense_1769_biasadd_readvariableop_resource:O
=autoencoder_decoder_dense_1770_matmul_readvariableop_resource:L
>autoencoder_decoder_dense_1770_biasadd_readvariableop_resource:L
:autoencoder_decoder_outputs_matmul_readvariableop_resource:'I
;autoencoder_decoder_outputs_biasadd_readvariableop_resource:'
identity??5autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOp?4autoencoder/decoder/dense_1768/MatMul/ReadVariableOp?5autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOp?4autoencoder/decoder/dense_1769/MatMul/ReadVariableOp?5autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOp?4autoencoder/decoder/dense_1770/MatMul/ReadVariableOp?2autoencoder/decoder/outputs/BiasAdd/ReadVariableOp?1autoencoder/decoder/outputs/MatMul/ReadVariableOp?5autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOp?4autoencoder/encoder/dense_1764/MatMul/ReadVariableOp?5autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOp?4autoencoder/encoder/dense_1765/MatMul/ReadVariableOp?5autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOp?4autoencoder/encoder/dense_1766/MatMul/ReadVariableOp?5autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOp?4autoencoder/encoder/dense_1767/MatMul/ReadVariableOp?
4autoencoder/encoder/dense_1764/MatMul/ReadVariableOpReadVariableOp=autoencoder_encoder_dense_1764_matmul_readvariableop_resource*
_output_shapes

:' *
dtype026
4autoencoder/encoder/dense_1764/MatMul/ReadVariableOp?
%autoencoder/encoder/dense_1764/MatMulMatMulimg<autoencoder/encoder/dense_1764/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2'
%autoencoder/encoder/dense_1764/MatMul?
5autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_encoder_dense_1764_biasadd_readvariableop_resource*
_output_shapes
: *
dtype027
5autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOp?
&autoencoder/encoder/dense_1764/BiasAddBiasAdd/autoencoder/encoder/dense_1764/MatMul:product:0=autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2(
&autoencoder/encoder/dense_1764/BiasAdd?
#autoencoder/encoder/dense_1764/ReluRelu/autoencoder/encoder/dense_1764/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2%
#autoencoder/encoder/dense_1764/Relu?
4autoencoder/encoder/dense_1765/MatMul/ReadVariableOpReadVariableOp=autoencoder_encoder_dense_1765_matmul_readvariableop_resource*
_output_shapes

: *
dtype026
4autoencoder/encoder/dense_1765/MatMul/ReadVariableOp?
%autoencoder/encoder/dense_1765/MatMulMatMul1autoencoder/encoder/dense_1764/Relu:activations:0<autoencoder/encoder/dense_1765/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2'
%autoencoder/encoder/dense_1765/MatMul?
5autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_encoder_dense_1765_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOp?
&autoencoder/encoder/dense_1765/BiasAddBiasAdd/autoencoder/encoder/dense_1765/MatMul:product:0=autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&autoencoder/encoder/dense_1765/BiasAdd?
#autoencoder/encoder/dense_1765/ReluRelu/autoencoder/encoder/dense_1765/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#autoencoder/encoder/dense_1765/Relu?
4autoencoder/encoder/dense_1766/MatMul/ReadVariableOpReadVariableOp=autoencoder_encoder_dense_1766_matmul_readvariableop_resource*
_output_shapes

:*
dtype026
4autoencoder/encoder/dense_1766/MatMul/ReadVariableOp?
%autoencoder/encoder/dense_1766/MatMulMatMul1autoencoder/encoder/dense_1765/Relu:activations:0<autoencoder/encoder/dense_1766/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2'
%autoencoder/encoder/dense_1766/MatMul?
5autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_encoder_dense_1766_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOp?
&autoencoder/encoder/dense_1766/BiasAddBiasAdd/autoencoder/encoder/dense_1766/MatMul:product:0=autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&autoencoder/encoder/dense_1766/BiasAdd?
#autoencoder/encoder/dense_1766/ReluRelu/autoencoder/encoder/dense_1766/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#autoencoder/encoder/dense_1766/Relu?
4autoencoder/encoder/dense_1767/MatMul/ReadVariableOpReadVariableOp=autoencoder_encoder_dense_1767_matmul_readvariableop_resource*
_output_shapes

:*
dtype026
4autoencoder/encoder/dense_1767/MatMul/ReadVariableOp?
%autoencoder/encoder/dense_1767/MatMulMatMul1autoencoder/encoder/dense_1766/Relu:activations:0<autoencoder/encoder/dense_1767/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2'
%autoencoder/encoder/dense_1767/MatMul?
5autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_encoder_dense_1767_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOp?
&autoencoder/encoder/dense_1767/BiasAddBiasAdd/autoencoder/encoder/dense_1767/MatMul:product:0=autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&autoencoder/encoder/dense_1767/BiasAdd?
#autoencoder/encoder/dense_1767/ReluRelu/autoencoder/encoder/dense_1767/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#autoencoder/encoder/dense_1767/Relu?
4autoencoder/decoder/dense_1768/MatMul/ReadVariableOpReadVariableOp=autoencoder_decoder_dense_1768_matmul_readvariableop_resource*
_output_shapes

:*
dtype026
4autoencoder/decoder/dense_1768/MatMul/ReadVariableOp?
%autoencoder/decoder/dense_1768/MatMulMatMul1autoencoder/encoder/dense_1767/Relu:activations:0<autoencoder/decoder/dense_1768/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2'
%autoencoder/decoder/dense_1768/MatMul?
5autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_decoder_dense_1768_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOp?
&autoencoder/decoder/dense_1768/BiasAddBiasAdd/autoencoder/decoder/dense_1768/MatMul:product:0=autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&autoencoder/decoder/dense_1768/BiasAdd?
#autoencoder/decoder/dense_1768/ReluRelu/autoencoder/decoder/dense_1768/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#autoencoder/decoder/dense_1768/Relu?
4autoencoder/decoder/dense_1769/MatMul/ReadVariableOpReadVariableOp=autoencoder_decoder_dense_1769_matmul_readvariableop_resource*
_output_shapes

:*
dtype026
4autoencoder/decoder/dense_1769/MatMul/ReadVariableOp?
%autoencoder/decoder/dense_1769/MatMulMatMul1autoencoder/decoder/dense_1768/Relu:activations:0<autoencoder/decoder/dense_1769/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2'
%autoencoder/decoder/dense_1769/MatMul?
5autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_decoder_dense_1769_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOp?
&autoencoder/decoder/dense_1769/BiasAddBiasAdd/autoencoder/decoder/dense_1769/MatMul:product:0=autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&autoencoder/decoder/dense_1769/BiasAdd?
#autoencoder/decoder/dense_1769/ReluRelu/autoencoder/decoder/dense_1769/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#autoencoder/decoder/dense_1769/Relu?
4autoencoder/decoder/dense_1770/MatMul/ReadVariableOpReadVariableOp=autoencoder_decoder_dense_1770_matmul_readvariableop_resource*
_output_shapes

:*
dtype026
4autoencoder/decoder/dense_1770/MatMul/ReadVariableOp?
%autoencoder/decoder/dense_1770/MatMulMatMul1autoencoder/decoder/dense_1769/Relu:activations:0<autoencoder/decoder/dense_1770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2'
%autoencoder/decoder/dense_1770/MatMul?
5autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOpReadVariableOp>autoencoder_decoder_dense_1770_biasadd_readvariableop_resource*
_output_shapes
:*
dtype027
5autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOp?
&autoencoder/decoder/dense_1770/BiasAddBiasAdd/autoencoder/decoder/dense_1770/MatMul:product:0=autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2(
&autoencoder/decoder/dense_1770/BiasAdd?
#autoencoder/decoder/dense_1770/ReluRelu/autoencoder/decoder/dense_1770/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#autoencoder/decoder/dense_1770/Relu?
1autoencoder/decoder/outputs/MatMul/ReadVariableOpReadVariableOp:autoencoder_decoder_outputs_matmul_readvariableop_resource*
_output_shapes

:'*
dtype023
1autoencoder/decoder/outputs/MatMul/ReadVariableOp?
"autoencoder/decoder/outputs/MatMulMatMul1autoencoder/decoder/dense_1770/Relu:activations:09autoencoder/decoder/outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2$
"autoencoder/decoder/outputs/MatMul?
2autoencoder/decoder/outputs/BiasAdd/ReadVariableOpReadVariableOp;autoencoder_decoder_outputs_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype024
2autoencoder/decoder/outputs/BiasAdd/ReadVariableOp?
#autoencoder/decoder/outputs/BiasAddBiasAdd,autoencoder/decoder/outputs/MatMul:product:0:autoencoder/decoder/outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2%
#autoencoder/decoder/outputs/BiasAdd?
#autoencoder/decoder/outputs/SoftmaxSoftmax,autoencoder/decoder/outputs/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'2%
#autoencoder/decoder/outputs/Softmax?
IdentityIdentity-autoencoder/decoder/outputs/Softmax:softmax:06^autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOp5^autoencoder/decoder/dense_1768/MatMul/ReadVariableOp6^autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOp5^autoencoder/decoder/dense_1769/MatMul/ReadVariableOp6^autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOp5^autoencoder/decoder/dense_1770/MatMul/ReadVariableOp3^autoencoder/decoder/outputs/BiasAdd/ReadVariableOp2^autoencoder/decoder/outputs/MatMul/ReadVariableOp6^autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOp5^autoencoder/encoder/dense_1764/MatMul/ReadVariableOp6^autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOp5^autoencoder/encoder/dense_1765/MatMul/ReadVariableOp6^autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOp5^autoencoder/encoder/dense_1766/MatMul/ReadVariableOp6^autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOp5^autoencoder/encoder/dense_1767/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2n
5autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOp5autoencoder/decoder/dense_1768/BiasAdd/ReadVariableOp2l
4autoencoder/decoder/dense_1768/MatMul/ReadVariableOp4autoencoder/decoder/dense_1768/MatMul/ReadVariableOp2n
5autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOp5autoencoder/decoder/dense_1769/BiasAdd/ReadVariableOp2l
4autoencoder/decoder/dense_1769/MatMul/ReadVariableOp4autoencoder/decoder/dense_1769/MatMul/ReadVariableOp2n
5autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOp5autoencoder/decoder/dense_1770/BiasAdd/ReadVariableOp2l
4autoencoder/decoder/dense_1770/MatMul/ReadVariableOp4autoencoder/decoder/dense_1770/MatMul/ReadVariableOp2h
2autoencoder/decoder/outputs/BiasAdd/ReadVariableOp2autoencoder/decoder/outputs/BiasAdd/ReadVariableOp2f
1autoencoder/decoder/outputs/MatMul/ReadVariableOp1autoencoder/decoder/outputs/MatMul/ReadVariableOp2n
5autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOp5autoencoder/encoder/dense_1764/BiasAdd/ReadVariableOp2l
4autoencoder/encoder/dense_1764/MatMul/ReadVariableOp4autoencoder/encoder/dense_1764/MatMul/ReadVariableOp2n
5autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOp5autoencoder/encoder/dense_1765/BiasAdd/ReadVariableOp2l
4autoencoder/encoder/dense_1765/MatMul/ReadVariableOp4autoencoder/encoder/dense_1765/MatMul/ReadVariableOp2n
5autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOp5autoencoder/encoder/dense_1766/BiasAdd/ReadVariableOp2l
4autoencoder/encoder/dense_1766/MatMul/ReadVariableOp4autoencoder/encoder/dense_1766/MatMul/ReadVariableOp2n
5autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOp5autoencoder/encoder/dense_1767/BiasAdd/ReadVariableOp2l
4autoencoder/encoder/dense_1767/MatMul/ReadVariableOp4autoencoder/encoder/dense_1767/MatMul/ReadVariableOp:L H
'
_output_shapes
:?????????'

_user_specified_nameimg
?

?
I__inference_dense_1766_layer_call_and_return_conditional_losses_172905631

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
?
?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905093
img#
encoder_172905058:' 
encoder_172905060: #
encoder_172905062: 
encoder_172905064:#
encoder_172905066:
encoder_172905068:#
encoder_172905070:
encoder_172905072:#
decoder_172905075:
decoder_172905077:#
decoder_172905079:
decoder_172905081:#
decoder_172905083:
decoder_172905085:#
decoder_172905087:'
decoder_172905089:'
identity??decoder/StatefulPartitionedCall?encoder/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCallimgencoder_172905058encoder_172905060encoder_172905062encoder_172905064encoder_172905066encoder_172905068encoder_172905070encoder_172905072*
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
F__inference_encoder_layer_call_and_return_conditional_losses_1729044332!
encoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_172905075decoder_172905077decoder_172905079decoder_172905081decoder_172905083decoder_172905085decoder_172905087decoder_172905089*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729047032!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:L H
'
_output_shapes
:?????????'

_user_specified_nameimg
?

?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172905591

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
??
?)
%__inference__traced_restore_172906175
file_prefix(
assignvariableop_adabound_iter:	 -
#assignvariableop_1_adabound_base_lr: ,
"assignvariableop_2_adabound_beta_1: ,
"assignvariableop_3_adabound_beta_2: +
!assignvariableop_4_adabound_decay: .
$assignvariableop_5_adabound_final_lr: +
!assignvariableop_6_adabound_gamma: 3
)assignvariableop_7_adabound_learning_rate: 2
(assignvariableop_8_adabound_weight_decay: 6
$assignvariableop_9_dense_1764_kernel:' 1
#assignvariableop_10_dense_1764_bias: 7
%assignvariableop_11_dense_1765_kernel: 1
#assignvariableop_12_dense_1765_bias:7
%assignvariableop_13_dense_1766_kernel:1
#assignvariableop_14_dense_1766_bias:7
%assignvariableop_15_dense_1767_kernel:1
#assignvariableop_16_dense_1767_bias:7
%assignvariableop_17_dense_1768_kernel:1
#assignvariableop_18_dense_1768_bias:7
%assignvariableop_19_dense_1769_kernel:1
#assignvariableop_20_dense_1769_bias:7
%assignvariableop_21_dense_1770_kernel:1
#assignvariableop_22_dense_1770_bias:4
"assignvariableop_23_outputs_kernel:'.
 assignvariableop_24_outputs_bias:'#
assignvariableop_25_total: #
assignvariableop_26_count: 0
"assignvariableop_27_true_positives:1
#assignvariableop_28_false_negatives:2
$assignvariableop_29_true_positives_1:1
#assignvariableop_30_false_positives:%
assignvariableop_31_total_1: %
assignvariableop_32_count_1: %
assignvariableop_33_total_2: %
assignvariableop_34_count_2: B
0assignvariableop_35_adabound_dense_1764_kernel_m:' <
.assignvariableop_36_adabound_dense_1764_bias_m: B
0assignvariableop_37_adabound_dense_1765_kernel_m: <
.assignvariableop_38_adabound_dense_1765_bias_m:B
0assignvariableop_39_adabound_dense_1766_kernel_m:<
.assignvariableop_40_adabound_dense_1766_bias_m:B
0assignvariableop_41_adabound_dense_1767_kernel_m:<
.assignvariableop_42_adabound_dense_1767_bias_m:B
0assignvariableop_43_adabound_dense_1768_kernel_m:<
.assignvariableop_44_adabound_dense_1768_bias_m:B
0assignvariableop_45_adabound_dense_1769_kernel_m:<
.assignvariableop_46_adabound_dense_1769_bias_m:B
0assignvariableop_47_adabound_dense_1770_kernel_m:<
.assignvariableop_48_adabound_dense_1770_bias_m:?
-assignvariableop_49_adabound_outputs_kernel_m:'9
+assignvariableop_50_adabound_outputs_bias_m:'B
0assignvariableop_51_adabound_dense_1764_kernel_v:' <
.assignvariableop_52_adabound_dense_1764_bias_v: B
0assignvariableop_53_adabound_dense_1765_kernel_v: <
.assignvariableop_54_adabound_dense_1765_bias_v:B
0assignvariableop_55_adabound_dense_1766_kernel_v:<
.assignvariableop_56_adabound_dense_1766_bias_v:B
0assignvariableop_57_adabound_dense_1767_kernel_v:<
.assignvariableop_58_adabound_dense_1767_bias_v:B
0assignvariableop_59_adabound_dense_1768_kernel_v:<
.assignvariableop_60_adabound_dense_1768_bias_v:B
0assignvariableop_61_adabound_dense_1769_kernel_v:<
.assignvariableop_62_adabound_dense_1769_bias_v:B
0assignvariableop_63_adabound_dense_1770_kernel_v:<
.assignvariableop_64_adabound_dense_1770_bias_v:?
-assignvariableop_65_adabound_outputs_kernel_v:'9
+assignvariableop_66_adabound_outputs_bias_v:'
identity_68??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?
value?B?DB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/base_lr/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/final_lr/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/gamma/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?
value?B?DB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*R
dtypesH
F2D	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_adabound_iterIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp#assignvariableop_1_adabound_base_lrIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_adabound_beta_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_adabound_beta_2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_adabound_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp$assignvariableop_5_adabound_final_lrIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_adabound_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp)assignvariableop_7_adabound_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp(assignvariableop_8_adabound_weight_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp$assignvariableop_9_dense_1764_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_1764_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp%assignvariableop_11_dense_1765_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_1765_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp%assignvariableop_13_dense_1766_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_1766_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp%assignvariableop_15_dense_1767_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp#assignvariableop_16_dense_1767_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp%assignvariableop_17_dense_1768_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_1768_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_dense_1769_kernelIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp#assignvariableop_20_dense_1769_biasIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp%assignvariableop_21_dense_1770_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp#assignvariableop_22_dense_1770_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp"assignvariableop_23_outputs_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp assignvariableop_24_outputs_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_totalIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_countIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp"assignvariableop_27_true_positivesIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp#assignvariableop_28_false_negativesIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp$assignvariableop_29_true_positives_1Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp#assignvariableop_30_false_positivesIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_1Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_2Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp0assignvariableop_35_adabound_dense_1764_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp.assignvariableop_36_adabound_dense_1764_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp0assignvariableop_37_adabound_dense_1765_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp.assignvariableop_38_adabound_dense_1765_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp0assignvariableop_39_adabound_dense_1766_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp.assignvariableop_40_adabound_dense_1766_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp0assignvariableop_41_adabound_dense_1767_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp.assignvariableop_42_adabound_dense_1767_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp0assignvariableop_43_adabound_dense_1768_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp.assignvariableop_44_adabound_dense_1768_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp0assignvariableop_45_adabound_dense_1769_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp.assignvariableop_46_adabound_dense_1769_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp0assignvariableop_47_adabound_dense_1770_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp.assignvariableop_48_adabound_dense_1770_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp-assignvariableop_49_adabound_outputs_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adabound_outputs_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp0assignvariableop_51_adabound_dense_1764_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp.assignvariableop_52_adabound_dense_1764_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp0assignvariableop_53_adabound_dense_1765_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp.assignvariableop_54_adabound_dense_1765_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp0assignvariableop_55_adabound_dense_1766_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp.assignvariableop_56_adabound_dense_1766_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp0assignvariableop_57_adabound_dense_1767_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp.assignvariableop_58_adabound_dense_1767_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp0assignvariableop_59_adabound_dense_1768_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp.assignvariableop_60_adabound_dense_1768_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp0assignvariableop_61_adabound_dense_1769_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp.assignvariableop_62_adabound_dense_1769_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp0assignvariableop_63_adabound_dense_1770_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp.assignvariableop_64_adabound_dense_1770_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp-assignvariableop_65_adabound_outputs_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp+assignvariableop_66_adabound_outputs_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_669
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_67Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_67?
Identity_68IdentityIdentity_67:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_68"#
identity_68Identity_68:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662(
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
+__inference_encoder_layer_call_fn_172904473
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
F__inference_encoder_layer_call_and_return_conditional_losses_1729044332
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
?
?
.__inference_dense_1766_layer_call_fn_172905640

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
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729043032
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
?

?
I__inference_dense_1768_layer_call_and_return_conditional_losses_172904539

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
I__inference_dense_1769_layer_call_and_return_conditional_losses_172905691

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_encoder_layer_call_and_return_conditional_losses_172904433

inputs&
dense_1764_172904412:' "
dense_1764_172904414: &
dense_1765_172904417: "
dense_1765_172904419:&
dense_1766_172904422:"
dense_1766_172904424:&
dense_1767_172904427:"
dense_1767_172904429:
identity??"dense_1764/StatefulPartitionedCall?"dense_1765/StatefulPartitionedCall?"dense_1766/StatefulPartitionedCall?"dense_1767/StatefulPartitionedCall?
"dense_1764/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1764_172904412dense_1764_172904414*
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
I__inference_dense_1764_layer_call_and_return_conditional_losses_1729042692$
"dense_1764/StatefulPartitionedCall?
"dense_1765/StatefulPartitionedCallStatefulPartitionedCall+dense_1764/StatefulPartitionedCall:output:0dense_1765_172904417dense_1765_172904419*
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
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729042862$
"dense_1765/StatefulPartitionedCall?
"dense_1766/StatefulPartitionedCallStatefulPartitionedCall+dense_1765/StatefulPartitionedCall:output:0dense_1766_172904422dense_1766_172904424*
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
I__inference_dense_1766_layer_call_and_return_conditional_losses_1729043032$
"dense_1766/StatefulPartitionedCall?
"dense_1767/StatefulPartitionedCallStatefulPartitionedCall+dense_1766/StatefulPartitionedCall:output:0dense_1767_172904427dense_1767_172904429*
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
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729043202$
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

?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172904269

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
I__inference_dense_1769_layer_call_and_return_conditional_losses_172904556

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?]
?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905206

inputsC
1encoder_dense_1764_matmul_readvariableop_resource:' @
2encoder_dense_1764_biasadd_readvariableop_resource: C
1encoder_dense_1765_matmul_readvariableop_resource: @
2encoder_dense_1765_biasadd_readvariableop_resource:C
1encoder_dense_1766_matmul_readvariableop_resource:@
2encoder_dense_1766_biasadd_readvariableop_resource:C
1encoder_dense_1767_matmul_readvariableop_resource:@
2encoder_dense_1767_biasadd_readvariableop_resource:C
1decoder_dense_1768_matmul_readvariableop_resource:@
2decoder_dense_1768_biasadd_readvariableop_resource:C
1decoder_dense_1769_matmul_readvariableop_resource:@
2decoder_dense_1769_biasadd_readvariableop_resource:C
1decoder_dense_1770_matmul_readvariableop_resource:@
2decoder_dense_1770_biasadd_readvariableop_resource:@
.decoder_outputs_matmul_readvariableop_resource:'=
/decoder_outputs_biasadd_readvariableop_resource:'
identity??)decoder/dense_1768/BiasAdd/ReadVariableOp?(decoder/dense_1768/MatMul/ReadVariableOp?)decoder/dense_1769/BiasAdd/ReadVariableOp?(decoder/dense_1769/MatMul/ReadVariableOp?)decoder/dense_1770/BiasAdd/ReadVariableOp?(decoder/dense_1770/MatMul/ReadVariableOp?&decoder/outputs/BiasAdd/ReadVariableOp?%decoder/outputs/MatMul/ReadVariableOp?)encoder/dense_1764/BiasAdd/ReadVariableOp?(encoder/dense_1764/MatMul/ReadVariableOp?)encoder/dense_1765/BiasAdd/ReadVariableOp?(encoder/dense_1765/MatMul/ReadVariableOp?)encoder/dense_1766/BiasAdd/ReadVariableOp?(encoder/dense_1766/MatMul/ReadVariableOp?)encoder/dense_1767/BiasAdd/ReadVariableOp?(encoder/dense_1767/MatMul/ReadVariableOp?
(encoder/dense_1764/MatMul/ReadVariableOpReadVariableOp1encoder_dense_1764_matmul_readvariableop_resource*
_output_shapes

:' *
dtype02*
(encoder/dense_1764/MatMul/ReadVariableOp?
encoder/dense_1764/MatMulMatMulinputs0encoder/dense_1764/MatMul/ReadVariableOp:value:0*
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
encoder/dense_1767/Relu?
(decoder/dense_1768/MatMul/ReadVariableOpReadVariableOp1decoder_dense_1768_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(decoder/dense_1768/MatMul/ReadVariableOp?
decoder/dense_1768/MatMulMatMul%encoder/dense_1767/Relu:activations:00decoder/dense_1768/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1768/MatMul?
)decoder/dense_1768/BiasAdd/ReadVariableOpReadVariableOp2decoder_dense_1768_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)decoder/dense_1768/BiasAdd/ReadVariableOp?
decoder/dense_1768/BiasAddBiasAdd#decoder/dense_1768/MatMul:product:01decoder/dense_1768/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1768/BiasAdd?
decoder/dense_1768/ReluRelu#decoder/dense_1768/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1768/Relu?
(decoder/dense_1769/MatMul/ReadVariableOpReadVariableOp1decoder_dense_1769_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(decoder/dense_1769/MatMul/ReadVariableOp?
decoder/dense_1769/MatMulMatMul%decoder/dense_1768/Relu:activations:00decoder/dense_1769/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1769/MatMul?
)decoder/dense_1769/BiasAdd/ReadVariableOpReadVariableOp2decoder_dense_1769_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)decoder/dense_1769/BiasAdd/ReadVariableOp?
decoder/dense_1769/BiasAddBiasAdd#decoder/dense_1769/MatMul:product:01decoder/dense_1769/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1769/BiasAdd?
decoder/dense_1769/ReluRelu#decoder/dense_1769/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1769/Relu?
(decoder/dense_1770/MatMul/ReadVariableOpReadVariableOp1decoder_dense_1770_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(decoder/dense_1770/MatMul/ReadVariableOp?
decoder/dense_1770/MatMulMatMul%decoder/dense_1769/Relu:activations:00decoder/dense_1770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1770/MatMul?
)decoder/dense_1770/BiasAdd/ReadVariableOpReadVariableOp2decoder_dense_1770_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)decoder/dense_1770/BiasAdd/ReadVariableOp?
decoder/dense_1770/BiasAddBiasAdd#decoder/dense_1770/MatMul:product:01decoder/dense_1770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1770/BiasAdd?
decoder/dense_1770/ReluRelu#decoder/dense_1770/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1770/Relu?
%decoder/outputs/MatMul/ReadVariableOpReadVariableOp.decoder_outputs_matmul_readvariableop_resource*
_output_shapes

:'*
dtype02'
%decoder/outputs/MatMul/ReadVariableOp?
decoder/outputs/MatMulMatMul%decoder/dense_1770/Relu:activations:0-decoder/outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
decoder/outputs/MatMul?
&decoder/outputs/BiasAdd/ReadVariableOpReadVariableOp/decoder_outputs_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype02(
&decoder/outputs/BiasAdd/ReadVariableOp?
decoder/outputs/BiasAddBiasAdd decoder/outputs/MatMul:product:0.decoder/outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
decoder/outputs/BiasAdd?
decoder/outputs/SoftmaxSoftmax decoder/outputs/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'2
decoder/outputs/Softmax?
IdentityIdentity!decoder/outputs/Softmax:softmax:0*^decoder/dense_1768/BiasAdd/ReadVariableOp)^decoder/dense_1768/MatMul/ReadVariableOp*^decoder/dense_1769/BiasAdd/ReadVariableOp)^decoder/dense_1769/MatMul/ReadVariableOp*^decoder/dense_1770/BiasAdd/ReadVariableOp)^decoder/dense_1770/MatMul/ReadVariableOp'^decoder/outputs/BiasAdd/ReadVariableOp&^decoder/outputs/MatMul/ReadVariableOp*^encoder/dense_1764/BiasAdd/ReadVariableOp)^encoder/dense_1764/MatMul/ReadVariableOp*^encoder/dense_1765/BiasAdd/ReadVariableOp)^encoder/dense_1765/MatMul/ReadVariableOp*^encoder/dense_1766/BiasAdd/ReadVariableOp)^encoder/dense_1766/MatMul/ReadVariableOp*^encoder/dense_1767/BiasAdd/ReadVariableOp)^encoder/dense_1767/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2V
)decoder/dense_1768/BiasAdd/ReadVariableOp)decoder/dense_1768/BiasAdd/ReadVariableOp2T
(decoder/dense_1768/MatMul/ReadVariableOp(decoder/dense_1768/MatMul/ReadVariableOp2V
)decoder/dense_1769/BiasAdd/ReadVariableOp)decoder/dense_1769/BiasAdd/ReadVariableOp2T
(decoder/dense_1769/MatMul/ReadVariableOp(decoder/dense_1769/MatMul/ReadVariableOp2V
)decoder/dense_1770/BiasAdd/ReadVariableOp)decoder/dense_1770/BiasAdd/ReadVariableOp2T
(decoder/dense_1770/MatMul/ReadVariableOp(decoder/dense_1770/MatMul/ReadVariableOp2P
&decoder/outputs/BiasAdd/ReadVariableOp&decoder/outputs/BiasAdd/ReadVariableOp2N
%decoder/outputs/MatMul/ReadVariableOp%decoder/outputs/MatMul/ReadVariableOp2V
)encoder/dense_1764/BiasAdd/ReadVariableOp)encoder/dense_1764/BiasAdd/ReadVariableOp2T
(encoder/dense_1764/MatMul/ReadVariableOp(encoder/dense_1764/MatMul/ReadVariableOp2V
)encoder/dense_1765/BiasAdd/ReadVariableOp)encoder/dense_1765/BiasAdd/ReadVariableOp2T
(encoder/dense_1765/MatMul/ReadVariableOp(encoder/dense_1765/MatMul/ReadVariableOp2V
)encoder/dense_1766/BiasAdd/ReadVariableOp)encoder/dense_1766/BiasAdd/ReadVariableOp2T
(encoder/dense_1766/MatMul/ReadVariableOp(encoder/dense_1766/MatMul/ReadVariableOp2V
)encoder/dense_1767/BiasAdd/ReadVariableOp)encoder/dense_1767/BiasAdd/ReadVariableOp2T
(encoder/dense_1767/MatMul/ReadVariableOp(encoder/dense_1767/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?)
?
F__inference_decoder_layer_call_and_return_conditional_losses_172905506

inputs;
)dense_1768_matmul_readvariableop_resource:8
*dense_1768_biasadd_readvariableop_resource:;
)dense_1769_matmul_readvariableop_resource:8
*dense_1769_biasadd_readvariableop_resource:;
)dense_1770_matmul_readvariableop_resource:8
*dense_1770_biasadd_readvariableop_resource:8
&outputs_matmul_readvariableop_resource:'5
'outputs_biasadd_readvariableop_resource:'
identity??!dense_1768/BiasAdd/ReadVariableOp? dense_1768/MatMul/ReadVariableOp?!dense_1769/BiasAdd/ReadVariableOp? dense_1769/MatMul/ReadVariableOp?!dense_1770/BiasAdd/ReadVariableOp? dense_1770/MatMul/ReadVariableOp?outputs/BiasAdd/ReadVariableOp?outputs/MatMul/ReadVariableOp?
 dense_1768/MatMul/ReadVariableOpReadVariableOp)dense_1768_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1768/MatMul/ReadVariableOp?
dense_1768/MatMulMatMulinputs(dense_1768/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1768/MatMul?
!dense_1768/BiasAdd/ReadVariableOpReadVariableOp*dense_1768_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1768/BiasAdd/ReadVariableOp?
dense_1768/BiasAddBiasAdddense_1768/MatMul:product:0)dense_1768/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1768/BiasAddy
dense_1768/ReluReludense_1768/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1768/Relu?
 dense_1769/MatMul/ReadVariableOpReadVariableOp)dense_1769_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1769/MatMul/ReadVariableOp?
dense_1769/MatMulMatMuldense_1768/Relu:activations:0(dense_1769/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1769/MatMul?
!dense_1769/BiasAdd/ReadVariableOpReadVariableOp*dense_1769_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1769/BiasAdd/ReadVariableOp?
dense_1769/BiasAddBiasAdddense_1769/MatMul:product:0)dense_1769/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1769/BiasAddy
dense_1769/ReluReludense_1769/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1769/Relu?
 dense_1770/MatMul/ReadVariableOpReadVariableOp)dense_1770_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1770/MatMul/ReadVariableOp?
dense_1770/MatMulMatMuldense_1769/Relu:activations:0(dense_1770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1770/MatMul?
!dense_1770/BiasAdd/ReadVariableOpReadVariableOp*dense_1770_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1770/BiasAdd/ReadVariableOp?
dense_1770/BiasAddBiasAdddense_1770/MatMul:product:0)dense_1770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1770/BiasAddy
dense_1770/ReluReludense_1770/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1770/Relu?
outputs/MatMul/ReadVariableOpReadVariableOp&outputs_matmul_readvariableop_resource*
_output_shapes

:'*
dtype02
outputs/MatMul/ReadVariableOp?
outputs/MatMulMatMuldense_1770/Relu:activations:0%outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
outputs/MatMul?
outputs/BiasAdd/ReadVariableOpReadVariableOp'outputs_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype02 
outputs/BiasAdd/ReadVariableOp?
outputs/BiasAddBiasAddoutputs/MatMul:product:0&outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
outputs/BiasAddy
outputs/SoftmaxSoftmaxoutputs/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'2
outputs/Softmax?
IdentityIdentityoutputs/Softmax:softmax:0"^dense_1768/BiasAdd/ReadVariableOp!^dense_1768/MatMul/ReadVariableOp"^dense_1769/BiasAdd/ReadVariableOp!^dense_1769/MatMul/ReadVariableOp"^dense_1770/BiasAdd/ReadVariableOp!^dense_1770/MatMul/ReadVariableOp^outputs/BiasAdd/ReadVariableOp^outputs/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2F
!dense_1768/BiasAdd/ReadVariableOp!dense_1768/BiasAdd/ReadVariableOp2D
 dense_1768/MatMul/ReadVariableOp dense_1768/MatMul/ReadVariableOp2F
!dense_1769/BiasAdd/ReadVariableOp!dense_1769/BiasAdd/ReadVariableOp2D
 dense_1769/MatMul/ReadVariableOp dense_1769/MatMul/ReadVariableOp2F
!dense_1770/BiasAdd/ReadVariableOp!dense_1770/BiasAdd/ReadVariableOp2D
 dense_1770/MatMul/ReadVariableOp dense_1770/MatMul/ReadVariableOp2@
outputs/BiasAdd/ReadVariableOpoutputs/BiasAdd/ReadVariableOp2>
outputs/MatMul/ReadVariableOpoutputs/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?]
?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905266

inputsC
1encoder_dense_1764_matmul_readvariableop_resource:' @
2encoder_dense_1764_biasadd_readvariableop_resource: C
1encoder_dense_1765_matmul_readvariableop_resource: @
2encoder_dense_1765_biasadd_readvariableop_resource:C
1encoder_dense_1766_matmul_readvariableop_resource:@
2encoder_dense_1766_biasadd_readvariableop_resource:C
1encoder_dense_1767_matmul_readvariableop_resource:@
2encoder_dense_1767_biasadd_readvariableop_resource:C
1decoder_dense_1768_matmul_readvariableop_resource:@
2decoder_dense_1768_biasadd_readvariableop_resource:C
1decoder_dense_1769_matmul_readvariableop_resource:@
2decoder_dense_1769_biasadd_readvariableop_resource:C
1decoder_dense_1770_matmul_readvariableop_resource:@
2decoder_dense_1770_biasadd_readvariableop_resource:@
.decoder_outputs_matmul_readvariableop_resource:'=
/decoder_outputs_biasadd_readvariableop_resource:'
identity??)decoder/dense_1768/BiasAdd/ReadVariableOp?(decoder/dense_1768/MatMul/ReadVariableOp?)decoder/dense_1769/BiasAdd/ReadVariableOp?(decoder/dense_1769/MatMul/ReadVariableOp?)decoder/dense_1770/BiasAdd/ReadVariableOp?(decoder/dense_1770/MatMul/ReadVariableOp?&decoder/outputs/BiasAdd/ReadVariableOp?%decoder/outputs/MatMul/ReadVariableOp?)encoder/dense_1764/BiasAdd/ReadVariableOp?(encoder/dense_1764/MatMul/ReadVariableOp?)encoder/dense_1765/BiasAdd/ReadVariableOp?(encoder/dense_1765/MatMul/ReadVariableOp?)encoder/dense_1766/BiasAdd/ReadVariableOp?(encoder/dense_1766/MatMul/ReadVariableOp?)encoder/dense_1767/BiasAdd/ReadVariableOp?(encoder/dense_1767/MatMul/ReadVariableOp?
(encoder/dense_1764/MatMul/ReadVariableOpReadVariableOp1encoder_dense_1764_matmul_readvariableop_resource*
_output_shapes

:' *
dtype02*
(encoder/dense_1764/MatMul/ReadVariableOp?
encoder/dense_1764/MatMulMatMulinputs0encoder/dense_1764/MatMul/ReadVariableOp:value:0*
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
encoder/dense_1767/Relu?
(decoder/dense_1768/MatMul/ReadVariableOpReadVariableOp1decoder_dense_1768_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(decoder/dense_1768/MatMul/ReadVariableOp?
decoder/dense_1768/MatMulMatMul%encoder/dense_1767/Relu:activations:00decoder/dense_1768/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1768/MatMul?
)decoder/dense_1768/BiasAdd/ReadVariableOpReadVariableOp2decoder_dense_1768_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)decoder/dense_1768/BiasAdd/ReadVariableOp?
decoder/dense_1768/BiasAddBiasAdd#decoder/dense_1768/MatMul:product:01decoder/dense_1768/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1768/BiasAdd?
decoder/dense_1768/ReluRelu#decoder/dense_1768/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1768/Relu?
(decoder/dense_1769/MatMul/ReadVariableOpReadVariableOp1decoder_dense_1769_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(decoder/dense_1769/MatMul/ReadVariableOp?
decoder/dense_1769/MatMulMatMul%decoder/dense_1768/Relu:activations:00decoder/dense_1769/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1769/MatMul?
)decoder/dense_1769/BiasAdd/ReadVariableOpReadVariableOp2decoder_dense_1769_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)decoder/dense_1769/BiasAdd/ReadVariableOp?
decoder/dense_1769/BiasAddBiasAdd#decoder/dense_1769/MatMul:product:01decoder/dense_1769/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1769/BiasAdd?
decoder/dense_1769/ReluRelu#decoder/dense_1769/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1769/Relu?
(decoder/dense_1770/MatMul/ReadVariableOpReadVariableOp1decoder_dense_1770_matmul_readvariableop_resource*
_output_shapes

:*
dtype02*
(decoder/dense_1770/MatMul/ReadVariableOp?
decoder/dense_1770/MatMulMatMul%decoder/dense_1769/Relu:activations:00decoder/dense_1770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1770/MatMul?
)decoder/dense_1770/BiasAdd/ReadVariableOpReadVariableOp2decoder_dense_1770_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)decoder/dense_1770/BiasAdd/ReadVariableOp?
decoder/dense_1770/BiasAddBiasAdd#decoder/dense_1770/MatMul:product:01decoder/dense_1770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1770/BiasAdd?
decoder/dense_1770/ReluRelu#decoder/dense_1770/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
decoder/dense_1770/Relu?
%decoder/outputs/MatMul/ReadVariableOpReadVariableOp.decoder_outputs_matmul_readvariableop_resource*
_output_shapes

:'*
dtype02'
%decoder/outputs/MatMul/ReadVariableOp?
decoder/outputs/MatMulMatMul%decoder/dense_1770/Relu:activations:0-decoder/outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
decoder/outputs/MatMul?
&decoder/outputs/BiasAdd/ReadVariableOpReadVariableOp/decoder_outputs_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype02(
&decoder/outputs/BiasAdd/ReadVariableOp?
decoder/outputs/BiasAddBiasAdd decoder/outputs/MatMul:product:0.decoder/outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
decoder/outputs/BiasAdd?
decoder/outputs/SoftmaxSoftmax decoder/outputs/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'2
decoder/outputs/Softmax?
IdentityIdentity!decoder/outputs/Softmax:softmax:0*^decoder/dense_1768/BiasAdd/ReadVariableOp)^decoder/dense_1768/MatMul/ReadVariableOp*^decoder/dense_1769/BiasAdd/ReadVariableOp)^decoder/dense_1769/MatMul/ReadVariableOp*^decoder/dense_1770/BiasAdd/ReadVariableOp)^decoder/dense_1770/MatMul/ReadVariableOp'^decoder/outputs/BiasAdd/ReadVariableOp&^decoder/outputs/MatMul/ReadVariableOp*^encoder/dense_1764/BiasAdd/ReadVariableOp)^encoder/dense_1764/MatMul/ReadVariableOp*^encoder/dense_1765/BiasAdd/ReadVariableOp)^encoder/dense_1765/MatMul/ReadVariableOp*^encoder/dense_1766/BiasAdd/ReadVariableOp)^encoder/dense_1766/MatMul/ReadVariableOp*^encoder/dense_1767/BiasAdd/ReadVariableOp)^encoder/dense_1767/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2V
)decoder/dense_1768/BiasAdd/ReadVariableOp)decoder/dense_1768/BiasAdd/ReadVariableOp2T
(decoder/dense_1768/MatMul/ReadVariableOp(decoder/dense_1768/MatMul/ReadVariableOp2V
)decoder/dense_1769/BiasAdd/ReadVariableOp)decoder/dense_1769/BiasAdd/ReadVariableOp2T
(decoder/dense_1769/MatMul/ReadVariableOp(decoder/dense_1769/MatMul/ReadVariableOp2V
)decoder/dense_1770/BiasAdd/ReadVariableOp)decoder/dense_1770/BiasAdd/ReadVariableOp2T
(decoder/dense_1770/MatMul/ReadVariableOp(decoder/dense_1770/MatMul/ReadVariableOp2P
&decoder/outputs/BiasAdd/ReadVariableOp&decoder/outputs/BiasAdd/ReadVariableOp2N
%decoder/outputs/MatMul/ReadVariableOp%decoder/outputs/MatMul/ReadVariableOp2V
)encoder/dense_1764/BiasAdd/ReadVariableOp)encoder/dense_1764/BiasAdd/ReadVariableOp2T
(encoder/dense_1764/MatMul/ReadVariableOp(encoder/dense_1764/MatMul/ReadVariableOp2V
)encoder/dense_1765/BiasAdd/ReadVariableOp)encoder/dense_1765/BiasAdd/ReadVariableOp2T
(encoder/dense_1765/MatMul/ReadVariableOp(encoder/dense_1765/MatMul/ReadVariableOp2V
)encoder/dense_1766/BiasAdd/ReadVariableOp)encoder/dense_1766/BiasAdd/ReadVariableOp2T
(encoder/dense_1766/MatMul/ReadVariableOp(encoder/dense_1766/MatMul/ReadVariableOp2V
)encoder/dense_1767/BiasAdd/ReadVariableOp)encoder/dense_1767/BiasAdd/ReadVariableOp2T
(encoder/dense_1767/MatMul/ReadVariableOp(encoder/dense_1767/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
'__inference_signature_wrapper_172905146
img
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:'

unknown_14:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 *'
_output_shapes
:?????????'*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__wrapped_model_1729042512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????'

_user_specified_nameimg
?
?
/__inference_autoencoder_layer_call_fn_172905017
img
unknown:' 
	unknown_0: 
	unknown_1: 
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:'

unknown_14:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimgunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 *'
_output_shapes
:?????????'*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_autoencoder_layer_call_and_return_conditional_losses_1729049452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:?????????'

_user_specified_nameimg
?
?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172904945

inputs#
encoder_172904910:' 
encoder_172904912: #
encoder_172904914: 
encoder_172904916:#
encoder_172904918:
encoder_172904920:#
encoder_172904922:
encoder_172904924:#
decoder_172904927:
decoder_172904929:#
decoder_172904931:
decoder_172904933:#
decoder_172904935:
decoder_172904937:#
decoder_172904939:'
decoder_172904941:'
identity??decoder/StatefulPartitionedCall?encoder/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_172904910encoder_172904912encoder_172904914encoder_172904916encoder_172904918encoder_172904920encoder_172904922encoder_172904924*
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
F__inference_encoder_layer_call_and_return_conditional_losses_1729044332!
encoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_172904927decoder_172904929decoder_172904931decoder_172904933decoder_172904935decoder_172904937decoder_172904939decoder_172904941*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729047032!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?)
?
F__inference_encoder_layer_call_and_return_conditional_losses_172905418

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
F__inference_outputs_layer_call_and_return_conditional_losses_172904590

inputs0
matmul_readvariableop_resource:'-
biasadd_readvariableop_resource:'
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:'*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:'*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????'2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

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
?
?
.__inference_dense_1768_layer_call_fn_172905680

inputs
unknown:
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_1729045392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172904833

inputs#
encoder_172904798:' 
encoder_172904800: #
encoder_172904802: 
encoder_172904804:#
encoder_172904806:
encoder_172904808:#
encoder_172904810:
encoder_172904812:#
decoder_172904815:
decoder_172904817:#
decoder_172904819:
decoder_172904821:#
decoder_172904823:
decoder_172904825:#
decoder_172904827:'
decoder_172904829:'
identity??decoder/StatefulPartitionedCall?encoder/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_172904798encoder_172904800encoder_172904802encoder_172904804encoder_172904806encoder_172904808encoder_172904810encoder_172904812*
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
F__inference_encoder_layer_call_and_return_conditional_losses_1729043272!
encoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_172904815decoder_172904817decoder_172904819decoder_172904821decoder_172904823decoder_172904825decoder_172904827decoder_172904829*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729045972!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:O K
'
_output_shapes
:?????????'
 
_user_specified_nameinputs
?
?
F__inference_decoder_layer_call_and_return_conditional_losses_172904703

inputs&
dense_1768_172904682:"
dense_1768_172904684:&
dense_1769_172904687:"
dense_1769_172904689:&
dense_1770_172904692:"
dense_1770_172904694:#
outputs_172904697:'
outputs_172904699:'
identity??"dense_1768/StatefulPartitionedCall?"dense_1769/StatefulPartitionedCall?"dense_1770/StatefulPartitionedCall?outputs/StatefulPartitionedCall?
"dense_1768/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1768_172904682dense_1768_172904684*
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_1729045392$
"dense_1768/StatefulPartitionedCall?
"dense_1769/StatefulPartitionedCallStatefulPartitionedCall+dense_1768/StatefulPartitionedCall:output:0dense_1769_172904687dense_1769_172904689*
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
I__inference_dense_1769_layer_call_and_return_conditional_losses_1729045562$
"dense_1769/StatefulPartitionedCall?
"dense_1770/StatefulPartitionedCallStatefulPartitionedCall+dense_1769/StatefulPartitionedCall:output:0dense_1770_172904692dense_1770_172904694*
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
I__inference_dense_1770_layer_call_and_return_conditional_losses_1729045732$
"dense_1770/StatefulPartitionedCall?
outputs/StatefulPartitionedCallStatefulPartitionedCall+dense_1770/StatefulPartitionedCall:output:0outputs_172904697outputs_172904699*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_outputs_layer_call_and_return_conditional_losses_1729045902!
outputs/StatefulPartitionedCall?
IdentityIdentity(outputs/StatefulPartitionedCall:output:0#^dense_1768/StatefulPartitionedCall#^dense_1769/StatefulPartitionedCall#^dense_1770/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2H
"dense_1768/StatefulPartitionedCall"dense_1768/StatefulPartitionedCall2H
"dense_1769/StatefulPartitionedCall"dense_1769/StatefulPartitionedCall2H
"dense_1770/StatefulPartitionedCall"dense_1770/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
F__inference_decoder_layer_call_and_return_conditional_losses_172904791
decoderinputs&
dense_1768_172904770:"
dense_1768_172904772:&
dense_1769_172904775:"
dense_1769_172904777:&
dense_1770_172904780:"
dense_1770_172904782:#
outputs_172904785:'
outputs_172904787:'
identity??"dense_1768/StatefulPartitionedCall?"dense_1769/StatefulPartitionedCall?"dense_1770/StatefulPartitionedCall?outputs/StatefulPartitionedCall?
"dense_1768/StatefulPartitionedCallStatefulPartitionedCalldecoderinputsdense_1768_172904770dense_1768_172904772*
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_1729045392$
"dense_1768/StatefulPartitionedCall?
"dense_1769/StatefulPartitionedCallStatefulPartitionedCall+dense_1768/StatefulPartitionedCall:output:0dense_1769_172904775dense_1769_172904777*
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
I__inference_dense_1769_layer_call_and_return_conditional_losses_1729045562$
"dense_1769/StatefulPartitionedCall?
"dense_1770/StatefulPartitionedCallStatefulPartitionedCall+dense_1769/StatefulPartitionedCall:output:0dense_1770_172904780dense_1770_172904782*
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
I__inference_dense_1770_layer_call_and_return_conditional_losses_1729045732$
"dense_1770/StatefulPartitionedCall?
outputs/StatefulPartitionedCallStatefulPartitionedCall+dense_1770/StatefulPartitionedCall:output:0outputs_172904785outputs_172904787*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_outputs_layer_call_and_return_conditional_losses_1729045902!
outputs/StatefulPartitionedCall?
IdentityIdentity(outputs/StatefulPartitionedCall:output:0#^dense_1768/StatefulPartitionedCall#^dense_1769/StatefulPartitionedCall#^dense_1770/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2H
"dense_1768/StatefulPartitionedCall"dense_1768/StatefulPartitionedCall2H
"dense_1769/StatefulPartitionedCall"dense_1769/StatefulPartitionedCall2H
"dense_1770/StatefulPartitionedCall"dense_1770/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedecoderinputs
?

?
I__inference_dense_1767_layer_call_and_return_conditional_losses_172904320

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
+__inference_decoder_layer_call_fn_172905580

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:'
	unknown_6:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729047032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?}
?
"__inference__traced_save_172905964
file_prefix,
(savev2_adabound_iter_read_readvariableop	/
+savev2_adabound_base_lr_read_readvariableop.
*savev2_adabound_beta_1_read_readvariableop.
*savev2_adabound_beta_2_read_readvariableop-
)savev2_adabound_decay_read_readvariableop0
,savev2_adabound_final_lr_read_readvariableop-
)savev2_adabound_gamma_read_readvariableop5
1savev2_adabound_learning_rate_read_readvariableop4
0savev2_adabound_weight_decay_read_readvariableop0
,savev2_dense_1764_kernel_read_readvariableop.
*savev2_dense_1764_bias_read_readvariableop0
,savev2_dense_1765_kernel_read_readvariableop.
*savev2_dense_1765_bias_read_readvariableop0
,savev2_dense_1766_kernel_read_readvariableop.
*savev2_dense_1766_bias_read_readvariableop0
,savev2_dense_1767_kernel_read_readvariableop.
*savev2_dense_1767_bias_read_readvariableop0
,savev2_dense_1768_kernel_read_readvariableop.
*savev2_dense_1768_bias_read_readvariableop0
,savev2_dense_1769_kernel_read_readvariableop.
*savev2_dense_1769_bias_read_readvariableop0
,savev2_dense_1770_kernel_read_readvariableop.
*savev2_dense_1770_bias_read_readvariableop-
)savev2_outputs_kernel_read_readvariableop+
'savev2_outputs_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop/
+savev2_true_positives_1_read_readvariableop.
*savev2_false_positives_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop;
7savev2_adabound_dense_1764_kernel_m_read_readvariableop9
5savev2_adabound_dense_1764_bias_m_read_readvariableop;
7savev2_adabound_dense_1765_kernel_m_read_readvariableop9
5savev2_adabound_dense_1765_bias_m_read_readvariableop;
7savev2_adabound_dense_1766_kernel_m_read_readvariableop9
5savev2_adabound_dense_1766_bias_m_read_readvariableop;
7savev2_adabound_dense_1767_kernel_m_read_readvariableop9
5savev2_adabound_dense_1767_bias_m_read_readvariableop;
7savev2_adabound_dense_1768_kernel_m_read_readvariableop9
5savev2_adabound_dense_1768_bias_m_read_readvariableop;
7savev2_adabound_dense_1769_kernel_m_read_readvariableop9
5savev2_adabound_dense_1769_bias_m_read_readvariableop;
7savev2_adabound_dense_1770_kernel_m_read_readvariableop9
5savev2_adabound_dense_1770_bias_m_read_readvariableop8
4savev2_adabound_outputs_kernel_m_read_readvariableop6
2savev2_adabound_outputs_bias_m_read_readvariableop;
7savev2_adabound_dense_1764_kernel_v_read_readvariableop9
5savev2_adabound_dense_1764_bias_v_read_readvariableop;
7savev2_adabound_dense_1765_kernel_v_read_readvariableop9
5savev2_adabound_dense_1765_bias_v_read_readvariableop;
7savev2_adabound_dense_1766_kernel_v_read_readvariableop9
5savev2_adabound_dense_1766_bias_v_read_readvariableop;
7savev2_adabound_dense_1767_kernel_v_read_readvariableop9
5savev2_adabound_dense_1767_bias_v_read_readvariableop;
7savev2_adabound_dense_1768_kernel_v_read_readvariableop9
5savev2_adabound_dense_1768_bias_v_read_readvariableop;
7savev2_adabound_dense_1769_kernel_v_read_readvariableop9
5savev2_adabound_dense_1769_bias_v_read_readvariableop;
7savev2_adabound_dense_1770_kernel_v_read_readvariableop9
5savev2_adabound_dense_1770_bias_v_read_readvariableop8
4savev2_adabound_outputs_kernel_v_read_readvariableop6
2savev2_adabound_outputs_bias_v_read_readvariableop
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
:D*
dtype0*?
value?B?DB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB,optimizer/base_lr/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/final_lr/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/gamma/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/2/true_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/2/false_positives/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:D*
dtype0*?
value?B?DB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_adabound_iter_read_readvariableop+savev2_adabound_base_lr_read_readvariableop*savev2_adabound_beta_1_read_readvariableop*savev2_adabound_beta_2_read_readvariableop)savev2_adabound_decay_read_readvariableop,savev2_adabound_final_lr_read_readvariableop)savev2_adabound_gamma_read_readvariableop1savev2_adabound_learning_rate_read_readvariableop0savev2_adabound_weight_decay_read_readvariableop,savev2_dense_1764_kernel_read_readvariableop*savev2_dense_1764_bias_read_readvariableop,savev2_dense_1765_kernel_read_readvariableop*savev2_dense_1765_bias_read_readvariableop,savev2_dense_1766_kernel_read_readvariableop*savev2_dense_1766_bias_read_readvariableop,savev2_dense_1767_kernel_read_readvariableop*savev2_dense_1767_bias_read_readvariableop,savev2_dense_1768_kernel_read_readvariableop*savev2_dense_1768_bias_read_readvariableop,savev2_dense_1769_kernel_read_readvariableop*savev2_dense_1769_bias_read_readvariableop,savev2_dense_1770_kernel_read_readvariableop*savev2_dense_1770_bias_read_readvariableop)savev2_outputs_kernel_read_readvariableop'savev2_outputs_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop*savev2_false_negatives_read_readvariableop+savev2_true_positives_1_read_readvariableop*savev2_false_positives_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop7savev2_adabound_dense_1764_kernel_m_read_readvariableop5savev2_adabound_dense_1764_bias_m_read_readvariableop7savev2_adabound_dense_1765_kernel_m_read_readvariableop5savev2_adabound_dense_1765_bias_m_read_readvariableop7savev2_adabound_dense_1766_kernel_m_read_readvariableop5savev2_adabound_dense_1766_bias_m_read_readvariableop7savev2_adabound_dense_1767_kernel_m_read_readvariableop5savev2_adabound_dense_1767_bias_m_read_readvariableop7savev2_adabound_dense_1768_kernel_m_read_readvariableop5savev2_adabound_dense_1768_bias_m_read_readvariableop7savev2_adabound_dense_1769_kernel_m_read_readvariableop5savev2_adabound_dense_1769_bias_m_read_readvariableop7savev2_adabound_dense_1770_kernel_m_read_readvariableop5savev2_adabound_dense_1770_bias_m_read_readvariableop4savev2_adabound_outputs_kernel_m_read_readvariableop2savev2_adabound_outputs_bias_m_read_readvariableop7savev2_adabound_dense_1764_kernel_v_read_readvariableop5savev2_adabound_dense_1764_bias_v_read_readvariableop7savev2_adabound_dense_1765_kernel_v_read_readvariableop5savev2_adabound_dense_1765_bias_v_read_readvariableop7savev2_adabound_dense_1766_kernel_v_read_readvariableop5savev2_adabound_dense_1766_bias_v_read_readvariableop7savev2_adabound_dense_1767_kernel_v_read_readvariableop5savev2_adabound_dense_1767_bias_v_read_readvariableop7savev2_adabound_dense_1768_kernel_v_read_readvariableop5savev2_adabound_dense_1768_bias_v_read_readvariableop7savev2_adabound_dense_1769_kernel_v_read_readvariableop5savev2_adabound_dense_1769_bias_v_read_readvariableop7savev2_adabound_dense_1770_kernel_v_read_readvariableop5savev2_adabound_dense_1770_bias_v_read_readvariableop4savev2_adabound_outputs_kernel_v_read_readvariableop2savev2_adabound_outputs_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *R
dtypesH
F2D	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : : : : : : : :' : : ::::::::::::':': : ::::: : : : :' : : ::::::::::::':':' : : ::::::::::::':': 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :$
 

_output_shapes

:' : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:': 

_output_shapes
:':

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$$ 

_output_shapes

:' : %

_output_shapes
: :$& 

_output_shapes

: : '

_output_shapes
::$( 

_output_shapes

:: )

_output_shapes
::$* 

_output_shapes

:: +

_output_shapes
::$, 

_output_shapes

:: -

_output_shapes
::$. 

_output_shapes

:: /

_output_shapes
::$0 

_output_shapes

:: 1

_output_shapes
::$2 

_output_shapes

:': 3

_output_shapes
:':$4 

_output_shapes

:' : 5

_output_shapes
: :$6 

_output_shapes

: : 7

_output_shapes
::$8 

_output_shapes

:: 9

_output_shapes
::$: 

_output_shapes

:: ;

_output_shapes
::$< 

_output_shapes

:: =

_output_shapes
::$> 

_output_shapes

:: ?

_output_shapes
::$@ 

_output_shapes

:: A

_output_shapes
::$B 

_output_shapes

:': C

_output_shapes
:':D

_output_shapes
: 
?

?
I__inference_dense_1765_layer_call_and_return_conditional_losses_172905611

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
?)
?
F__inference_decoder_layer_call_and_return_conditional_losses_172905538

inputs;
)dense_1768_matmul_readvariableop_resource:8
*dense_1768_biasadd_readvariableop_resource:;
)dense_1769_matmul_readvariableop_resource:8
*dense_1769_biasadd_readvariableop_resource:;
)dense_1770_matmul_readvariableop_resource:8
*dense_1770_biasadd_readvariableop_resource:8
&outputs_matmul_readvariableop_resource:'5
'outputs_biasadd_readvariableop_resource:'
identity??!dense_1768/BiasAdd/ReadVariableOp? dense_1768/MatMul/ReadVariableOp?!dense_1769/BiasAdd/ReadVariableOp? dense_1769/MatMul/ReadVariableOp?!dense_1770/BiasAdd/ReadVariableOp? dense_1770/MatMul/ReadVariableOp?outputs/BiasAdd/ReadVariableOp?outputs/MatMul/ReadVariableOp?
 dense_1768/MatMul/ReadVariableOpReadVariableOp)dense_1768_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1768/MatMul/ReadVariableOp?
dense_1768/MatMulMatMulinputs(dense_1768/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1768/MatMul?
!dense_1768/BiasAdd/ReadVariableOpReadVariableOp*dense_1768_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1768/BiasAdd/ReadVariableOp?
dense_1768/BiasAddBiasAdddense_1768/MatMul:product:0)dense_1768/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1768/BiasAddy
dense_1768/ReluReludense_1768/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1768/Relu?
 dense_1769/MatMul/ReadVariableOpReadVariableOp)dense_1769_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1769/MatMul/ReadVariableOp?
dense_1769/MatMulMatMuldense_1768/Relu:activations:0(dense_1769/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1769/MatMul?
!dense_1769/BiasAdd/ReadVariableOpReadVariableOp*dense_1769_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1769/BiasAdd/ReadVariableOp?
dense_1769/BiasAddBiasAdddense_1769/MatMul:product:0)dense_1769/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1769/BiasAddy
dense_1769/ReluReludense_1769/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1769/Relu?
 dense_1770/MatMul/ReadVariableOpReadVariableOp)dense_1770_matmul_readvariableop_resource*
_output_shapes

:*
dtype02"
 dense_1770/MatMul/ReadVariableOp?
dense_1770/MatMulMatMuldense_1769/Relu:activations:0(dense_1770/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1770/MatMul?
!dense_1770/BiasAdd/ReadVariableOpReadVariableOp*dense_1770_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!dense_1770/BiasAdd/ReadVariableOp?
dense_1770/BiasAddBiasAdddense_1770/MatMul:product:0)dense_1770/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_1770/BiasAddy
dense_1770/ReluReludense_1770/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
dense_1770/Relu?
outputs/MatMul/ReadVariableOpReadVariableOp&outputs_matmul_readvariableop_resource*
_output_shapes

:'*
dtype02
outputs/MatMul/ReadVariableOp?
outputs/MatMulMatMuldense_1770/Relu:activations:0%outputs/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
outputs/MatMul?
outputs/BiasAdd/ReadVariableOpReadVariableOp'outputs_biasadd_readvariableop_resource*
_output_shapes
:'*
dtype02 
outputs/BiasAdd/ReadVariableOp?
outputs/BiasAddBiasAddoutputs/MatMul:product:0&outputs/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
outputs/BiasAddy
outputs/SoftmaxSoftmaxoutputs/BiasAdd:output:0*
T0*'
_output_shapes
:?????????'2
outputs/Softmax?
IdentityIdentityoutputs/Softmax:softmax:0"^dense_1768/BiasAdd/ReadVariableOp!^dense_1768/MatMul/ReadVariableOp"^dense_1769/BiasAdd/ReadVariableOp!^dense_1769/MatMul/ReadVariableOp"^dense_1770/BiasAdd/ReadVariableOp!^dense_1770/MatMul/ReadVariableOp^outputs/BiasAdd/ReadVariableOp^outputs/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2F
!dense_1768/BiasAdd/ReadVariableOp!dense_1768/BiasAdd/ReadVariableOp2D
 dense_1768/MatMul/ReadVariableOp dense_1768/MatMul/ReadVariableOp2F
!dense_1769/BiasAdd/ReadVariableOp!dense_1769/BiasAdd/ReadVariableOp2D
 dense_1769/MatMul/ReadVariableOp dense_1769/MatMul/ReadVariableOp2F
!dense_1770/BiasAdd/ReadVariableOp!dense_1770/BiasAdd/ReadVariableOp2D
 dense_1770/MatMul/ReadVariableOp dense_1770/MatMul/ReadVariableOp2@
outputs/BiasAdd/ReadVariableOpoutputs/BiasAdd/ReadVariableOp2>
outputs/MatMul/ReadVariableOpoutputs/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
+__inference_decoder_layer_call_fn_172905559

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:'
	unknown_6:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729045972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
I__inference_dense_1767_layer_call_and_return_conditional_losses_172905651

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
?
?
F__inference_decoder_layer_call_and_return_conditional_losses_172904767
decoderinputs&
dense_1768_172904746:"
dense_1768_172904748:&
dense_1769_172904751:"
dense_1769_172904753:&
dense_1770_172904756:"
dense_1770_172904758:#
outputs_172904761:'
outputs_172904763:'
identity??"dense_1768/StatefulPartitionedCall?"dense_1769/StatefulPartitionedCall?"dense_1770/StatefulPartitionedCall?outputs/StatefulPartitionedCall?
"dense_1768/StatefulPartitionedCallStatefulPartitionedCalldecoderinputsdense_1768_172904746dense_1768_172904748*
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_1729045392$
"dense_1768/StatefulPartitionedCall?
"dense_1769/StatefulPartitionedCallStatefulPartitionedCall+dense_1768/StatefulPartitionedCall:output:0dense_1769_172904751dense_1769_172904753*
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
I__inference_dense_1769_layer_call_and_return_conditional_losses_1729045562$
"dense_1769/StatefulPartitionedCall?
"dense_1770/StatefulPartitionedCallStatefulPartitionedCall+dense_1769/StatefulPartitionedCall:output:0dense_1770_172904756dense_1770_172904758*
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
I__inference_dense_1770_layer_call_and_return_conditional_losses_1729045732$
"dense_1770/StatefulPartitionedCall?
outputs/StatefulPartitionedCallStatefulPartitionedCall+dense_1770/StatefulPartitionedCall:output:0outputs_172904761outputs_172904763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_outputs_layer_call_and_return_conditional_losses_1729045902!
outputs/StatefulPartitionedCall?
IdentityIdentity(outputs/StatefulPartitionedCall:output:0#^dense_1768/StatefulPartitionedCall#^dense_1769/StatefulPartitionedCall#^dense_1770/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2H
"dense_1768/StatefulPartitionedCall"dense_1768/StatefulPartitionedCall2H
"dense_1769/StatefulPartitionedCall"dense_1769/StatefulPartitionedCall2H
"dense_1770/StatefulPartitionedCall"dense_1770/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedecoderinputs
?	
?
+__inference_encoder_layer_call_fn_172904346
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
F__inference_encoder_layer_call_and_return_conditional_losses_1729043272
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
?
+__inference_decoder_layer_call_fn_172904743
decoderinputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:'
	unknown_6:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldecoderinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729047032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedecoderinputs
?

?
I__inference_dense_1766_layer_call_and_return_conditional_losses_172904303

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
F__inference_decoder_layer_call_and_return_conditional_losses_172904597

inputs&
dense_1768_172904540:"
dense_1768_172904542:&
dense_1769_172904557:"
dense_1769_172904559:&
dense_1770_172904574:"
dense_1770_172904576:#
outputs_172904591:'
outputs_172904593:'
identity??"dense_1768/StatefulPartitionedCall?"dense_1769/StatefulPartitionedCall?"dense_1770/StatefulPartitionedCall?outputs/StatefulPartitionedCall?
"dense_1768/StatefulPartitionedCallStatefulPartitionedCallinputsdense_1768_172904540dense_1768_172904542*
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_1729045392$
"dense_1768/StatefulPartitionedCall?
"dense_1769/StatefulPartitionedCallStatefulPartitionedCall+dense_1768/StatefulPartitionedCall:output:0dense_1769_172904557dense_1769_172904559*
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
I__inference_dense_1769_layer_call_and_return_conditional_losses_1729045562$
"dense_1769/StatefulPartitionedCall?
"dense_1770/StatefulPartitionedCallStatefulPartitionedCall+dense_1769/StatefulPartitionedCall:output:0dense_1770_172904574dense_1770_172904576*
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
I__inference_dense_1770_layer_call_and_return_conditional_losses_1729045732$
"dense_1770/StatefulPartitionedCall?
outputs/StatefulPartitionedCallStatefulPartitionedCall+dense_1770/StatefulPartitionedCall:output:0outputs_172904591outputs_172904593*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_outputs_layer_call_and_return_conditional_losses_1729045902!
outputs/StatefulPartitionedCall?
IdentityIdentity(outputs/StatefulPartitionedCall:output:0#^dense_1768/StatefulPartitionedCall#^dense_1769/StatefulPartitionedCall#^dense_1770/StatefulPartitionedCall ^outputs/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2H
"dense_1768/StatefulPartitionedCall"dense_1768/StatefulPartitionedCall2H
"dense_1769/StatefulPartitionedCall"dense_1769/StatefulPartitionedCall2H
"dense_1770/StatefulPartitionedCall"dense_1770/StatefulPartitionedCall2B
outputs/StatefulPartitionedCalloutputs/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905055
img#
encoder_172905020:' 
encoder_172905022: #
encoder_172905024: 
encoder_172905026:#
encoder_172905028:
encoder_172905030:#
encoder_172905032:
encoder_172905034:#
decoder_172905037:
decoder_172905039:#
decoder_172905041:
decoder_172905043:#
decoder_172905045:
decoder_172905047:#
decoder_172905049:'
decoder_172905051:'
identity??decoder/StatefulPartitionedCall?encoder/StatefulPartitionedCall?
encoder/StatefulPartitionedCallStatefulPartitionedCallimgencoder_172905020encoder_172905022encoder_172905024encoder_172905026encoder_172905028encoder_172905030encoder_172905032encoder_172905034*
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
F__inference_encoder_layer_call_and_return_conditional_losses_1729043272!
encoder/StatefulPartitionedCall?
decoder/StatefulPartitionedCallStatefulPartitionedCall(encoder/StatefulPartitionedCall:output:0decoder_172905037decoder_172905039decoder_172905041decoder_172905043decoder_172905045decoder_172905047decoder_172905049decoder_172905051*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729045972!
decoder/StatefulPartitionedCall?
IdentityIdentity(decoder/StatefulPartitionedCall:output:0 ^decoder/StatefulPartitionedCall ^encoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????': : : : : : : : : : : : : : : : 2B
decoder/StatefulPartitionedCalldecoder/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall:L H
'
_output_shapes
:?????????'

_user_specified_nameimg
?	
?
+__inference_decoder_layer_call_fn_172904616
decoderinputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:'
	unknown_6:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldecoderinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_decoder_layer_call_and_return_conditional_losses_1729045972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????
'
_user_specified_namedecoderinputs
?	
?
+__inference_encoder_layer_call_fn_172905460

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
F__inference_encoder_layer_call_and_return_conditional_losses_1729044332
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
?
+__inference_encoder_layer_call_fn_172905439

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
F__inference_encoder_layer_call_and_return_conditional_losses_1729043272
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
?
?
.__inference_dense_1770_layer_call_fn_172905720

inputs
unknown:
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
I__inference_dense_1770_layer_call_and_return_conditional_losses_1729045732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

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
?
?
.__inference_dense_1767_layer_call_fn_172905660

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
I__inference_dense_1767_layer_call_and_return_conditional_losses_1729043202
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
?
?
.__inference_dense_1765_layer_call_fn_172905620

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
I__inference_dense_1765_layer_call_and_return_conditional_losses_1729042862
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_172905671

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
I__inference_dense_1770_layer_call_and_return_conditional_losses_172904573

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
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
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_outputs_layer_call_fn_172905740

inputs
unknown:'
	unknown_0:'
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????'*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_outputs_layer_call_and_return_conditional_losses_1729045902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????'2

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
?

?
F__inference_outputs_layer_call_and_return_conditional_losses_172905731

inputs0
matmul_readvariableop_resource:'-
biasadd_readvariableop_resource:'
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:'*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:'*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????'2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????'2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????'2

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
?)
?
F__inference_encoder_layer_call_and_return_conditional_losses_172905386

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
?
?
.__inference_dense_1769_layer_call_fn_172905700

inputs
unknown:
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
I__inference_dense_1769_layer_call_and_return_conditional_losses_1729045562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
3
img,
serving_default_img:0?????????';
decoder0
StatefulPartitionedCall:0?????????'tensorflow/serving/predict:??
?a
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"?_
_tf_keras_network?_{"name": "autoencoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "autoencoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "img"}, "name": "img", "inbound_nodes": []}, {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}, "name": "encoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1764", "inbound_nodes": [[["encoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1765", "inbound_nodes": [[["dense_1764", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1766", "inbound_nodes": [[["dense_1765", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1767", "inbound_nodes": [[["dense_1766", 0, 0, {}]]]}], "input_layers": [["encoderinputs", 0, 0]], "output_layers": [["dense_1767", 0, 0]]}, "name": "encoder", "inbound_nodes": [[["img", 0, 0, {}]]]}, {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoderinputs"}, "name": "decoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1768", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1768", "inbound_nodes": [[["decoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1769", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1769", "inbound_nodes": [[["dense_1768", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1770", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1770", "inbound_nodes": [[["dense_1769", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "outputs", "trainable": true, "dtype": "float32", "units": 39, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "outputs", "inbound_nodes": [[["dense_1770", 0, 0, {}]]]}], "input_layers": [["decoderinputs", 0, 0]], "output_layers": [["outputs", 0, 0]]}, "name": "decoder", "inbound_nodes": [[["encoder", 1, 0, {}]]]}], "input_layers": [["img", 0, 0]], "output_layers": [["decoder", 1, 0]]}, "shared_object_id": 29, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 39]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 39]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 39]}, "float32", "img"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "autoencoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "img"}, "name": "img", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}, "name": "encoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1764", "inbound_nodes": [[["encoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1765", "inbound_nodes": [[["dense_1764", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1766", "inbound_nodes": [[["dense_1765", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1767", "inbound_nodes": [[["dense_1766", 0, 0, {}]]]}], "input_layers": [["encoderinputs", 0, 0]], "output_layers": [["dense_1767", 0, 0]]}, "name": "encoder", "inbound_nodes": [[["img", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoderinputs"}, "name": "decoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1768", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1768", "inbound_nodes": [[["decoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1769", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1769", "inbound_nodes": [[["dense_1768", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1770", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1770", "inbound_nodes": [[["dense_1769", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "outputs", "trainable": true, "dtype": "float32", "units": 39, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "outputs", "inbound_nodes": [[["dense_1770", 0, 0, {}]]]}], "input_layers": [["decoderinputs", 0, 0]], "output_layers": [["outputs", 0, 0]]}, "name": "decoder", "inbound_nodes": [[["encoder", 1, 0, {}]]], "shared_object_id": 28}], "input_layers": [["img", 0, 0]], "output_layers": [["decoder", 1, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 31}, "metrics": [[{"class_name": "Recall", "config": {"name": "recall_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 32}, {"class_name": "Precision", "config": {"name": "precision_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 33}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBound", "config": {"name": "AdaBound", "learning_rate": 0.0010000000474974513, "base_lr": 0.0010000000474974513, "final_lr": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "gamma": 0.0010000000474974513, "weight_decay": 0.0, "epsilon": 1e-08, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "img", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "img"}}
?7

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?4
_tf_keras_network?4{"name": "encoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}, "name": "encoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1764", "inbound_nodes": [[["encoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1765", "inbound_nodes": [[["dense_1764", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1766", "inbound_nodes": [[["dense_1765", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1767", "inbound_nodes": [[["dense_1766", 0, 0, {}]]]}], "input_layers": [["encoderinputs", 0, 0]], "output_layers": [["dense_1767", 0, 0]]}, "inbound_nodes": [[["img", 0, 0, {}]]], "shared_object_id": 14, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 39]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 39]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 39]}, "float32", "encoderinputs"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "encoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}, "name": "encoderinputs", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1764", "inbound_nodes": [[["encoderinputs", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1765", "inbound_nodes": [[["dense_1764", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1766", "inbound_nodes": [[["dense_1765", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1767", "inbound_nodes": [[["dense_1766", 0, 0, {}]]], "shared_object_id": 13}], "input_layers": [["encoderinputs", 0, 0]], "output_layers": [["dense_1767", 0, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 31}, "metrics": [[{"class_name": "Recall", "config": {"name": "recall_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 32}, {"class_name": "Precision", "config": {"name": "precision_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 33}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBound", "config": {"name": "AdaBound", "learning_rate": 0.0010000000474974513, "base_lr": 0.0010000000474974513, "final_lr": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "gamma": 0.0010000000474974513, "weight_decay": 0.0, "epsilon": 1e-08, "amsgrad": false}}}}
?7
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?4
_tf_keras_network?4{"name": "decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoderinputs"}, "name": "decoderinputs", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_1768", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1768", "inbound_nodes": [[["decoderinputs", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1769", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1769", "inbound_nodes": [[["dense_1768", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1770", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1770", "inbound_nodes": [[["dense_1769", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "outputs", "trainable": true, "dtype": "float32", "units": 39, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "outputs", "inbound_nodes": [[["dense_1770", 0, 0, {}]]]}], "input_layers": [["decoderinputs", 0, 0]], "output_layers": [["outputs", 0, 0]]}, "inbound_nodes": [[["encoder", 1, 0, {}]]], "shared_object_id": 28, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 2]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 2]}, "float32", "decoderinputs"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoderinputs"}, "name": "decoderinputs", "inbound_nodes": [], "shared_object_id": 15}, {"class_name": "Dense", "config": {"name": "dense_1768", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1768", "inbound_nodes": [[["decoderinputs", 0, 0, {}]]], "shared_object_id": 18}, {"class_name": "Dense", "config": {"name": "dense_1769", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1769", "inbound_nodes": [[["dense_1768", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dense", "config": {"name": "dense_1770", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1770", "inbound_nodes": [[["dense_1769", 0, 0, {}]]], "shared_object_id": 24}, {"class_name": "Dense", "config": {"name": "outputs", "trainable": true, "dtype": "float32", "units": 39, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "outputs", "inbound_nodes": [[["dense_1770", 0, 0, {}]]], "shared_object_id": 27}], "input_layers": [["decoderinputs", 0, 0]], "output_layers": [["outputs", 0, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}, "shared_object_id": 31}, "metrics": [[{"class_name": "Recall", "config": {"name": "recall_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 32}, {"class_name": "Precision", "config": {"name": "precision_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 33}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBound", "config": {"name": "AdaBound", "learning_rate": 0.0010000000474974513, "base_lr": 0.0010000000474974513, "final_lr": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "gamma": 0.0010000000474974513, "weight_decay": 0.0, "epsilon": 1e-08, "amsgrad": false}}}}
?
iter
base_lr

beta_1

beta_2
	 decay
!final_lr
	"gamma
#learning_rate
$weight_decay%m?&m?'m?(m?)m?*m?+m?,m?-m?.m?/m?0m?1m?2m?3m?4m?%v?&v?'v?(v?)v?*v?+v?,v?-v?.v?/v?0v?1v?2v?3v?4v?"
	optimizer
 "
trackable_list_wrapper
?
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415"
trackable_list_wrapper
?
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10
011
112
213
314
415"
trackable_list_wrapper
?
5layer_regularization_losses
regularization_losses

6layers
	variables
trainable_variables
7non_trainable_variables
8metrics
9layer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "encoderinputs", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 39]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "encoderinputs"}}
?	

%kernel
&bias
:regularization_losses
;	variables
<trainable_variables
=	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1764", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1764", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["encoderinputs", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 39}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 39]}}
?	

'kernel
(bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1765", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1765", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1764", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?	

)kernel
*bias
Bregularization_losses
C	variables
Dtrainable_variables
E	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1766", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1766", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1765", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
?	

+kernel
,bias
Fregularization_losses
G	variables
Htrainable_variables
I	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1767", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1767", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1766", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 39}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
 "
trackable_list_wrapper
X
%0
&1
'2
(3
)4
*5
+6
,7"
trackable_list_wrapper
X
%0
&1
'2
(3
)4
*5
+6
,7"
trackable_list_wrapper
?
Jlayer_regularization_losses
regularization_losses

Klayers
	variables
trainable_variables
Lnon_trainable_variables
Mmetrics
Nlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "decoderinputs", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 2]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "decoderinputs"}}
?	

-kernel
.bias
Oregularization_losses
P	variables
Qtrainable_variables
R	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1768", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1768", "trainable": true, "dtype": "float32", "units": 2, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["decoderinputs", 0, 0, {}]]], "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
?	

/kernel
0bias
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1769", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1769", "trainable": true, "dtype": "float32", "units": 4, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 19}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 20}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1768", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2}}, "shared_object_id": 41}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2]}}
?	

1kernel
2bias
Wregularization_losses
X	variables
Ytrainable_variables
Z	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1770", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1770", "trainable": true, "dtype": "float32", "units": 16, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1769", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 4}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}}
?	

3kernel
4bias
[regularization_losses
\	variables
]trainable_variables
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "outputs", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "outputs", "trainable": true, "dtype": "float32", "units": 39, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 25}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 26}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_1770", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 16}}, "shared_object_id": 43}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16]}}
 "
trackable_list_wrapper
X
-0
.1
/2
03
14
25
36
47"
trackable_list_wrapper
X
-0
.1
/2
03
14
25
36
47"
trackable_list_wrapper
?
_layer_regularization_losses
regularization_losses

`layers
	variables
trainable_variables
anon_trainable_variables
bmetrics
clayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
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
#:!' 2dense_1764/kernel
: 2dense_1764/bias
#:! 2dense_1765/kernel
:2dense_1765/bias
#:!2dense_1766/kernel
:2dense_1766/bias
#:!2dense_1767/kernel
:2dense_1767/bias
#:!2dense_1768/kernel
:2dense_1768/bias
#:!2dense_1769/kernel
:2dense_1769/bias
#:!2dense_1770/kernel
:2dense_1770/bias
 :'2outputs/kernel
:'2outputs/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
d0
e1
f2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
?
glayer_regularization_losses
:regularization_losses

hlayers
;	variables
<trainable_variables
inon_trainable_variables
jmetrics
klayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
?
llayer_regularization_losses
>regularization_losses

mlayers
?	variables
@trainable_variables
nnon_trainable_variables
ometrics
player_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
?
qlayer_regularization_losses
Bregularization_losses

rlayers
C	variables
Dtrainable_variables
snon_trainable_variables
tmetrics
ulayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
?
vlayer_regularization_losses
Fregularization_losses

wlayers
G	variables
Htrainable_variables
xnon_trainable_variables
ymetrics
zlayer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C

0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
5
{0
e1
f2"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
?
|layer_regularization_losses
Oregularization_losses

}layers
P	variables
Qtrainable_variables
~non_trainable_variables
metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
?
 ?layer_regularization_losses
Sregularization_losses
?layers
T	variables
Utrainable_variables
?non_trainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
?
 ?layer_regularization_losses
Wregularization_losses
?layers
X	variables
Ytrainable_variables
?non_trainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
 ?layer_regularization_losses
[regularization_losses
?layers
\	variables
]trainable_variables
?non_trainable_variables
?metrics
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
6
?0
e1
f2"
trackable_list_wrapper
 "
trackable_dict_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 44}
?
?
thresholds
?true_positives
?false_negatives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Recall", "name": "recall_225", "dtype": "float32", "config": {"name": "recall_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 32}
?
?
thresholds
?true_positives
?false_positives
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Precision", "name": "precision_225", "dtype": "float32", "config": {"name": "precision_225", "dtype": "float32", "thresholds": null, "top_k": null, "class_id": null}, "shared_object_id": 33}
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

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 45}
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

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 46}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_negatives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
 "
trackable_list_wrapper
: (2true_positives
: (2false_positives
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*' 2AdaBound/dense_1764/kernel/m
&:$ 2AdaBound/dense_1764/bias/m
,:* 2AdaBound/dense_1765/kernel/m
&:$2AdaBound/dense_1765/bias/m
,:*2AdaBound/dense_1766/kernel/m
&:$2AdaBound/dense_1766/bias/m
,:*2AdaBound/dense_1767/kernel/m
&:$2AdaBound/dense_1767/bias/m
,:*2AdaBound/dense_1768/kernel/m
&:$2AdaBound/dense_1768/bias/m
,:*2AdaBound/dense_1769/kernel/m
&:$2AdaBound/dense_1769/bias/m
,:*2AdaBound/dense_1770/kernel/m
&:$2AdaBound/dense_1770/bias/m
):''2AdaBound/outputs/kernel/m
#:!'2AdaBound/outputs/bias/m
,:*' 2AdaBound/dense_1764/kernel/v
&:$ 2AdaBound/dense_1764/bias/v
,:* 2AdaBound/dense_1765/kernel/v
&:$2AdaBound/dense_1765/bias/v
,:*2AdaBound/dense_1766/kernel/v
&:$2AdaBound/dense_1766/bias/v
,:*2AdaBound/dense_1767/kernel/v
&:$2AdaBound/dense_1767/bias/v
,:*2AdaBound/dense_1768/kernel/v
&:$2AdaBound/dense_1768/bias/v
,:*2AdaBound/dense_1769/kernel/v
&:$2AdaBound/dense_1769/bias/v
,:*2AdaBound/dense_1770/kernel/v
&:$2AdaBound/dense_1770/bias/v
):''2AdaBound/outputs/kernel/v
#:!'2AdaBound/outputs/bias/v
?2?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905206
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905266
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905055
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905093?
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
/__inference_autoencoder_layer_call_fn_172904868
/__inference_autoencoder_layer_call_fn_172905303
/__inference_autoencoder_layer_call_fn_172905340
/__inference_autoencoder_layer_call_fn_172905017?
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
$__inference__wrapped_model_172904251?
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
annotations? *"?
?
img?????????'
?2?
F__inference_encoder_layer_call_and_return_conditional_losses_172905386
F__inference_encoder_layer_call_and_return_conditional_losses_172905418
F__inference_encoder_layer_call_and_return_conditional_losses_172904497
F__inference_encoder_layer_call_and_return_conditional_losses_172904521?
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
+__inference_encoder_layer_call_fn_172904346
+__inference_encoder_layer_call_fn_172905439
+__inference_encoder_layer_call_fn_172905460
+__inference_encoder_layer_call_fn_172904473?
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
F__inference_decoder_layer_call_and_return_conditional_losses_172905506
F__inference_decoder_layer_call_and_return_conditional_losses_172905538
F__inference_decoder_layer_call_and_return_conditional_losses_172904767
F__inference_decoder_layer_call_and_return_conditional_losses_172904791?
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
+__inference_decoder_layer_call_fn_172904616
+__inference_decoder_layer_call_fn_172905559
+__inference_decoder_layer_call_fn_172905580
+__inference_decoder_layer_call_fn_172904743?
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
?B?
'__inference_signature_wrapper_172905146img"?
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
?2?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172905591?
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
.__inference_dense_1764_layer_call_fn_172905600?
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
I__inference_dense_1765_layer_call_and_return_conditional_losses_172905611?
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
.__inference_dense_1765_layer_call_fn_172905620?
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
I__inference_dense_1766_layer_call_and_return_conditional_losses_172905631?
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
.__inference_dense_1766_layer_call_fn_172905640?
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
I__inference_dense_1767_layer_call_and_return_conditional_losses_172905651?
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
.__inference_dense_1767_layer_call_fn_172905660?
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
I__inference_dense_1768_layer_call_and_return_conditional_losses_172905671?
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
.__inference_dense_1768_layer_call_fn_172905680?
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
I__inference_dense_1769_layer_call_and_return_conditional_losses_172905691?
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
.__inference_dense_1769_layer_call_fn_172905700?
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
I__inference_dense_1770_layer_call_and_return_conditional_losses_172905711?
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
.__inference_dense_1770_layer_call_fn_172905720?
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
F__inference_outputs_layer_call_and_return_conditional_losses_172905731?
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
+__inference_outputs_layer_call_fn_172905740?
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
 ?
$__inference__wrapped_model_172904251s%&'()*+,-./01234,?)
"?
?
img?????????'
? "1?.
,
decoder!?
decoder?????????'?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905055o%&'()*+,-./012344?1
*?'
?
img?????????'
p 

 
? "%?"
?
0?????????'
? ?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905093o%&'()*+,-./012344?1
*?'
?
img?????????'
p

 
? "%?"
?
0?????????'
? ?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905206r%&'()*+,-./012347?4
-?*
 ?
inputs?????????'
p 

 
? "%?"
?
0?????????'
? ?
J__inference_autoencoder_layer_call_and_return_conditional_losses_172905266r%&'()*+,-./012347?4
-?*
 ?
inputs?????????'
p

 
? "%?"
?
0?????????'
? ?
/__inference_autoencoder_layer_call_fn_172904868b%&'()*+,-./012344?1
*?'
?
img?????????'
p 

 
? "??????????'?
/__inference_autoencoder_layer_call_fn_172905017b%&'()*+,-./012344?1
*?'
?
img?????????'
p

 
? "??????????'?
/__inference_autoencoder_layer_call_fn_172905303e%&'()*+,-./012347?4
-?*
 ?
inputs?????????'
p 

 
? "??????????'?
/__inference_autoencoder_layer_call_fn_172905340e%&'()*+,-./012347?4
-?*
 ?
inputs?????????'
p

 
? "??????????'?
F__inference_decoder_layer_call_and_return_conditional_losses_172904767q-./01234>?;
4?1
'?$
decoderinputs?????????
p 

 
? "%?"
?
0?????????'
? ?
F__inference_decoder_layer_call_and_return_conditional_losses_172904791q-./01234>?;
4?1
'?$
decoderinputs?????????
p

 
? "%?"
?
0?????????'
? ?
F__inference_decoder_layer_call_and_return_conditional_losses_172905506j-./012347?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????'
? ?
F__inference_decoder_layer_call_and_return_conditional_losses_172905538j-./012347?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????'
? ?
+__inference_decoder_layer_call_fn_172904616d-./01234>?;
4?1
'?$
decoderinputs?????????
p 

 
? "??????????'?
+__inference_decoder_layer_call_fn_172904743d-./01234>?;
4?1
'?$
decoderinputs?????????
p

 
? "??????????'?
+__inference_decoder_layer_call_fn_172905559]-./012347?4
-?*
 ?
inputs?????????
p 

 
? "??????????'?
+__inference_decoder_layer_call_fn_172905580]-./012347?4
-?*
 ?
inputs?????????
p

 
? "??????????'?
I__inference_dense_1764_layer_call_and_return_conditional_losses_172905591\%&/?,
%?"
 ?
inputs?????????'
? "%?"
?
0????????? 
? ?
.__inference_dense_1764_layer_call_fn_172905600O%&/?,
%?"
 ?
inputs?????????'
? "?????????? ?
I__inference_dense_1765_layer_call_and_return_conditional_losses_172905611\'(/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ?
.__inference_dense_1765_layer_call_fn_172905620O'(/?,
%?"
 ?
inputs????????? 
? "???????????
I__inference_dense_1766_layer_call_and_return_conditional_losses_172905631\)*/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1766_layer_call_fn_172905640O)*/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_dense_1767_layer_call_and_return_conditional_losses_172905651\+,/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1767_layer_call_fn_172905660O+,/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_dense_1768_layer_call_and_return_conditional_losses_172905671\-./?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1768_layer_call_fn_172905680O-./?,
%?"
 ?
inputs?????????
? "???????????
I__inference_dense_1769_layer_call_and_return_conditional_losses_172905691\/0/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1769_layer_call_fn_172905700O/0/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_dense_1770_layer_call_and_return_conditional_losses_172905711\12/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? ?
.__inference_dense_1770_layer_call_fn_172905720O12/?,
%?"
 ?
inputs?????????
? "???????????
F__inference_encoder_layer_call_and_return_conditional_losses_172904497q%&'()*+,>?;
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
F__inference_encoder_layer_call_and_return_conditional_losses_172904521q%&'()*+,>?;
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
F__inference_encoder_layer_call_and_return_conditional_losses_172905386j%&'()*+,7?4
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
F__inference_encoder_layer_call_and_return_conditional_losses_172905418j%&'()*+,7?4
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
+__inference_encoder_layer_call_fn_172904346d%&'()*+,>?;
4?1
'?$
encoderinputs?????????'
p 

 
? "???????????
+__inference_encoder_layer_call_fn_172904473d%&'()*+,>?;
4?1
'?$
encoderinputs?????????'
p

 
? "???????????
+__inference_encoder_layer_call_fn_172905439]%&'()*+,7?4
-?*
 ?
inputs?????????'
p 

 
? "???????????
+__inference_encoder_layer_call_fn_172905460]%&'()*+,7?4
-?*
 ?
inputs?????????'
p

 
? "???????????
F__inference_outputs_layer_call_and_return_conditional_losses_172905731\34/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????'
? ~
+__inference_outputs_layer_call_fn_172905740O34/?,
%?"
 ?
inputs?????????
? "??????????'?
'__inference_signature_wrapper_172905146z%&'()*+,-./012343?0
? 
)?&
$
img?
img?????????'"1?.
,
decoder!?
decoder?????????'