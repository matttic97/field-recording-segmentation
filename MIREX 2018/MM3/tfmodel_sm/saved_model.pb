Ţ
áž
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
 
BatchToSpaceND

input"T
block_shape"Tblock_shape
crops"Tcrops
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
Tcropstype0:
2	
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
ë
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%ˇŃ8"
data_formatstringNHWC"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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

2
Š
SpaceToBatchND

input"T
block_shape"Tblock_shape
paddings"	Tpaddings
output"T"	
Ttype" 
Tblock_shapetype0:
2	"
	Tpaddingstype0:
2	
ö
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
:
Sub
x"T
y"T
z"T"
Ttype:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "scoring-tag*1.7.02
b'unknown'ĐŢ
y
xinputPlaceholder*
dtype0*$
shape:˙˙˙˙˙˙˙˙˙@`*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
­
1conv00/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*!
_class
loc:@conv00/weights*
_output_shapes
:

0conv00/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@conv00/weights*
_output_shapes
: 

2conv00/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ>*
dtype0*!
_class
loc:@conv00/weights*
_output_shapes
: 
ű
;conv00/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1conv00/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@conv00/weights*&
_output_shapes
:
ű
/conv00/weights/Initializer/truncated_normal/mulMul;conv00/weights/Initializer/truncated_normal/TruncatedNormal2conv00/weights/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@conv00/weights*&
_output_shapes
:
é
+conv00/weights/Initializer/truncated_normalAdd/conv00/weights/Initializer/truncated_normal/mul0conv00/weights/Initializer/truncated_normal/mean*
T0*!
_class
loc:@conv00/weights*&
_output_shapes
:
ľ
conv00/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@conv00/weights*&
_output_shapes
:
Ů
conv00/weights/AssignAssignconv00/weights+conv00/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@conv00/weights*&
_output_shapes
:

conv00/weights/readIdentityconv00/weights*
T0*!
_class
loc:@conv00/weights*&
_output_shapes
:

.conv00/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*!
_class
loc:@conv00/weights*
_output_shapes
: 

/conv00/kernel/Regularizer/l2_regularizer/L2LossL2Lossconv00/weights/read*
T0*!
_class
loc:@conv00/weights*
_output_shapes
: 
Ô
(conv00/kernel/Regularizer/l2_regularizerMul.conv00/kernel/Regularizer/l2_regularizer/scale/conv00/kernel/Regularizer/l2_regularizer/L2Loss*
T0*!
_class
loc:@conv00/weights*
_output_shapes
: 
e
conv00/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ü
conv00/Conv2DConv2Dxinputconv00/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
­
1conv01/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*!
_class
loc:@conv01/weights*
_output_shapes
:

0conv01/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@conv01/weights*
_output_shapes
: 

2conv01/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ>*
dtype0*!
_class
loc:@conv01/weights*
_output_shapes
: 
ű
;conv01/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1conv01/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@conv01/weights*&
_output_shapes
:
ű
/conv01/weights/Initializer/truncated_normal/mulMul;conv01/weights/Initializer/truncated_normal/TruncatedNormal2conv01/weights/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@conv01/weights*&
_output_shapes
:
é
+conv01/weights/Initializer/truncated_normalAdd/conv01/weights/Initializer/truncated_normal/mul0conv01/weights/Initializer/truncated_normal/mean*
T0*!
_class
loc:@conv01/weights*&
_output_shapes
:
ľ
conv01/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@conv01/weights*&
_output_shapes
:
Ů
conv01/weights/AssignAssignconv01/weights+conv01/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@conv01/weights*&
_output_shapes
:

conv01/weights/readIdentityconv01/weights*
T0*!
_class
loc:@conv01/weights*&
_output_shapes
:

.conv01/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*!
_class
loc:@conv01/weights*
_output_shapes
: 

/conv01/kernel/Regularizer/l2_regularizer/L2LossL2Lossconv01/weights/read*
T0*!
_class
loc:@conv01/weights*
_output_shapes
: 
Ô
(conv01/kernel/Regularizer/l2_regularizerMul.conv01/kernel/Regularizer/l2_regularizer/scale/conv01/kernel/Regularizer/l2_regularizer/L2Loss*
T0*!
_class
loc:@conv01/weights*
_output_shapes
: 
e
conv01/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
l
conv01/filter_shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
m
conv01/stackConst*)
value B"            *
dtype0*
_output_shapes

:

3conv01/required_space_to_batch_paddings/input_shapeConst*
valueB"@   `   *
dtype0*
_output_shapes
:

0conv01/required_space_to_batch_paddings/paddingsConst*)
value B"            *
dtype0*
_output_shapes

:

-conv01/required_space_to_batch_paddings/cropsConst*)
value B"                *
dtype0*
_output_shapes

:
r
!conv01/SpaceToBatchND/block_shapeConst*
valueB"      *
dtype0*
_output_shapes
:

conv01/SpaceToBatchND/paddingsConst*)
value B"            *
dtype0*
_output_shapes

:
Ń
conv01/SpaceToBatchNDSpaceToBatchNDxinput!conv01/SpaceToBatchND/block_shapeconv01/SpaceToBatchND/paddings*
T0*
Tblock_shape0*
	Tpaddings0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙#3
ě
conv01/Conv2DConv2Dconv01/SpaceToBatchNDconv01/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingVALID*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
r
!conv01/BatchToSpaceND/block_shapeConst*
valueB"      *
dtype0*
_output_shapes
:
|
conv01/BatchToSpaceND/cropsConst*)
value B"                *
dtype0*
_output_shapes

:
Ň
conv01/BatchToSpaceNDBatchToSpaceNDconv01/Conv2D!conv01/BatchToSpaceND/block_shapeconv01/BatchToSpaceND/crops*
T0*
Tblock_shape0*
Tcrops0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
M
concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 

concatConcatV2conv00/Conv2Dconv01/BatchToSpaceNDconcat/axis*
N*
T0*

Tidx0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@`
Ź
pool1/MaxPoolMaxPoolconcat*
T0*
ksize
*
strides
*
paddingSAME*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
_
res10/preact/ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:
Ł
3res10/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*$
_class
loc:@res10/preact/beta*
_output_shapes
:

)res10/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res10/preact/beta*
_output_shapes
: 
č
#res10/preact/beta/Initializer/zerosFill3res10/preact/beta/Initializer/zeros/shape_as_tensor)res10/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res10/preact/beta*
_output_shapes
:
Ł
res10/preact/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@res10/preact/beta*
_output_shapes
:
Î
res10/preact/beta/AssignAssignres10/preact/beta#res10/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res10/preact/beta*
_output_shapes
:

res10/preact/beta/readIdentityres10/preact/beta*
T0*$
_class
loc:@res10/preact/beta*
_output_shapes
:
ą
:res10/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:
˘
0res10/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
: 

*res10/preact/moving_mean/Initializer/zerosFill:res10/preact/moving_mean/Initializer/zeros/shape_as_tensor0res10/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:
ą
res10/preact/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:
ę
res10/preact/moving_mean/AssignAssignres10/preact/moving_mean*res10/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:

res10/preact/moving_mean/readIdentityres10/preact/moving_mean*
T0*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:
¸
=res10/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
Š
3res10/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
: 

-res10/preact/moving_variance/Initializer/onesFill=res10/preact/moving_variance/Initializer/ones/shape_as_tensor3res10/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
š
res10/preact/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name */
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
ů
#res10/preact/moving_variance/AssignAssignres10/preact/moving_variance-res10/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
Ą
!res10/preact/moving_variance/readIdentityres10/preact/moving_variance*
T0*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
¸
res10/preact/FusedBatchNormFusedBatchNormpool1/MaxPoolres10/preact/Constres10/preact/beta/readres10/preact/moving_mean/read!res10/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ 0::::
Y
res10/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res10/preact/ReluRelures10/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
ľ
5res10/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*%
_class
loc:@res10/Conv/weights*
_output_shapes
:
 
4res10/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res10/Conv/weights*
_output_shapes
: 
˘
6res10/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	>*
dtype0*%
_class
loc:@res10/Conv/weights*
_output_shapes
: 

?res10/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res10/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:

3res10/Conv/weights/Initializer/truncated_normal/mulMul?res10/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res10/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:
ů
/res10/Conv/weights/Initializer/truncated_normalAdd3res10/Conv/weights/Initializer/truncated_normal/mul4res10/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:
˝
res10/Conv/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@res10/Conv/weights*&
_output_shapes
:
é
res10/Conv/weights/AssignAssignres10/Conv/weights/res10/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:

res10/Conv/weights/readIdentityres10/Conv/weights*
T0*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:

2res10/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res10/Conv/weights*
_output_shapes
: 

3res10/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres10/Conv/weights/read*
T0*%
_class
loc:@res10/Conv/weights*
_output_shapes
: 
ä
,res10/Conv/kernel/Regularizer/l2_regularizerMul2res10/Conv/kernel/Regularizer/l2_regularizer/scale3res10/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res10/Conv/weights*
_output_shapes
: 
i
res10/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
res10/Conv/Conv2DConv2Dres10/preact/Relures10/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
ł
;res10/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:
¤
1res10/Conv/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
: 

+res10/Conv/BatchNorm/beta/Initializer/zerosFill;res10/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensor1res10/Conv/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:
ł
res10/Conv/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:
î
 res10/Conv/BatchNorm/beta/AssignAssignres10/Conv/BatchNorm/beta+res10/Conv/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:

res10/Conv/BatchNorm/beta/readIdentityres10/Conv/BatchNorm/beta*
T0*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:
g
res10/Conv/BatchNorm/ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:
Á
Bres10/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:
˛
8res10/Conv/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
: 
¤
2res10/Conv/BatchNorm/moving_mean/Initializer/zerosFillBres10/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor8res10/Conv/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:
Á
 res10/Conv/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:

'res10/Conv/BatchNorm/moving_mean/AssignAssign res10/Conv/BatchNorm/moving_mean2res10/Conv/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:
­
%res10/Conv/BatchNorm/moving_mean/readIdentity res10/Conv/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:
Č
Eres10/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
;res10/Conv/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
: 
ą
5res10/Conv/BatchNorm/moving_variance/Initializer/onesFillEres10/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor;res10/Conv/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:
É
$res10/Conv/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:

+res10/Conv/BatchNorm/moving_variance/AssignAssign$res10/Conv/BatchNorm/moving_variance5res10/Conv/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
)res10/Conv/BatchNorm/moving_variance/readIdentity$res10/Conv/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:
ä
#res10/Conv/BatchNorm/FusedBatchNormFusedBatchNormres10/Conv/Conv2Dres10/Conv/BatchNorm/Constres10/Conv/BatchNorm/beta/read%res10/Conv/BatchNorm/moving_mean/read)res10/Conv/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ 0::::

res10/Conv/BatchNorm/ReluRelu#res10/Conv/BatchNorm/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
l
res10/Conv/ReluRelures10/Conv/BatchNorm/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
š
7res10/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*'
_class
loc:@res10/Conv_1/weights*
_output_shapes
:
¤
6res10/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res10/Conv_1/weights*
_output_shapes
: 
Ś
8res10/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	>*
dtype0*'
_class
loc:@res10/Conv_1/weights*
_output_shapes
: 

Ares10/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res10/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:

5res10/Conv_1/weights/Initializer/truncated_normal/mulMulAres10/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res10/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:

1res10/Conv_1/weights/Initializer/truncated_normalAdd5res10/Conv_1/weights/Initializer/truncated_normal/mul6res10/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:
Á
res10/Conv_1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:
ń
res10/Conv_1/weights/AssignAssignres10/Conv_1/weights1res10/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:

res10/Conv_1/weights/readIdentityres10/Conv_1/weights*
T0*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:
˘
4res10/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res10/Conv_1/weights*
_output_shapes
: 
¤
5res10/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres10/Conv_1/weights/read*
T0*'
_class
loc:@res10/Conv_1/weights*
_output_shapes
: 
ě
.res10/Conv_1/kernel/Regularizer/l2_regularizerMul4res10/Conv_1/kernel/Regularizer/l2_regularizer/scale5res10/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res10/Conv_1/weights*
_output_shapes
: 
k
res10/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ń
res10/Conv_1/Conv2DConv2Dres10/Conv/Relures10/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
n
	res10/addAddpool1/MaxPoolres10/Conv_1/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
_
res11/preact/ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:
Ł
3res11/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*$
_class
loc:@res11/preact/beta*
_output_shapes
:

)res11/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res11/preact/beta*
_output_shapes
: 
č
#res11/preact/beta/Initializer/zerosFill3res11/preact/beta/Initializer/zeros/shape_as_tensor)res11/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res11/preact/beta*
_output_shapes
:
Ł
res11/preact/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@res11/preact/beta*
_output_shapes
:
Î
res11/preact/beta/AssignAssignres11/preact/beta#res11/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res11/preact/beta*
_output_shapes
:

res11/preact/beta/readIdentityres11/preact/beta*
T0*$
_class
loc:@res11/preact/beta*
_output_shapes
:
ą
:res11/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:
˘
0res11/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
: 

*res11/preact/moving_mean/Initializer/zerosFill:res11/preact/moving_mean/Initializer/zeros/shape_as_tensor0res11/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:
ą
res11/preact/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:
ę
res11/preact/moving_mean/AssignAssignres11/preact/moving_mean*res11/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:

res11/preact/moving_mean/readIdentityres11/preact/moving_mean*
T0*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:
¸
=res11/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
Š
3res11/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
: 

-res11/preact/moving_variance/Initializer/onesFill=res11/preact/moving_variance/Initializer/ones/shape_as_tensor3res11/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
š
res11/preact/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name */
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
ů
#res11/preact/moving_variance/AssignAssignres11/preact/moving_variance-res11/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
Ą
!res11/preact/moving_variance/readIdentityres11/preact/moving_variance*
T0*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
´
res11/preact/FusedBatchNormFusedBatchNorm	res10/addres11/preact/Constres11/preact/beta/readres11/preact/moving_mean/read!res11/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ 0::::
Y
res11/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res11/preact/ReluRelures11/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
ľ
5res11/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*%
_class
loc:@res11/Conv/weights*
_output_shapes
:
 
4res11/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res11/Conv/weights*
_output_shapes
: 
˘
6res11/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	>*
dtype0*%
_class
loc:@res11/Conv/weights*
_output_shapes
: 

?res11/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res11/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:

3res11/Conv/weights/Initializer/truncated_normal/mulMul?res11/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res11/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:
ů
/res11/Conv/weights/Initializer/truncated_normalAdd3res11/Conv/weights/Initializer/truncated_normal/mul4res11/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:
˝
res11/Conv/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@res11/Conv/weights*&
_output_shapes
:
é
res11/Conv/weights/AssignAssignres11/Conv/weights/res11/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:

res11/Conv/weights/readIdentityres11/Conv/weights*
T0*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:

2res11/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res11/Conv/weights*
_output_shapes
: 

3res11/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres11/Conv/weights/read*
T0*%
_class
loc:@res11/Conv/weights*
_output_shapes
: 
ä
,res11/Conv/kernel/Regularizer/l2_regularizerMul2res11/Conv/kernel/Regularizer/l2_regularizer/scale3res11/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res11/Conv/weights*
_output_shapes
: 
i
res11/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
res11/Conv/Conv2DConv2Dres11/preact/Relures11/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
ł
;res11/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:
¤
1res11/Conv/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
: 

+res11/Conv/BatchNorm/beta/Initializer/zerosFill;res11/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensor1res11/Conv/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:
ł
res11/Conv/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:
î
 res11/Conv/BatchNorm/beta/AssignAssignres11/Conv/BatchNorm/beta+res11/Conv/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:

res11/Conv/BatchNorm/beta/readIdentityres11/Conv/BatchNorm/beta*
T0*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:
g
res11/Conv/BatchNorm/ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:
Á
Bres11/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:
˛
8res11/Conv/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
: 
¤
2res11/Conv/BatchNorm/moving_mean/Initializer/zerosFillBres11/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor8res11/Conv/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:
Á
 res11/Conv/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:

'res11/Conv/BatchNorm/moving_mean/AssignAssign res11/Conv/BatchNorm/moving_mean2res11/Conv/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:
­
%res11/Conv/BatchNorm/moving_mean/readIdentity res11/Conv/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:
Č
Eres11/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
;res11/Conv/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
: 
ą
5res11/Conv/BatchNorm/moving_variance/Initializer/onesFillEres11/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor;res11/Conv/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:
É
$res11/Conv/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:

+res11/Conv/BatchNorm/moving_variance/AssignAssign$res11/Conv/BatchNorm/moving_variance5res11/Conv/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
)res11/Conv/BatchNorm/moving_variance/readIdentity$res11/Conv/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:
ä
#res11/Conv/BatchNorm/FusedBatchNormFusedBatchNormres11/Conv/Conv2Dres11/Conv/BatchNorm/Constres11/Conv/BatchNorm/beta/read%res11/Conv/BatchNorm/moving_mean/read)res11/Conv/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ 0::::

res11/Conv/BatchNorm/ReluRelu#res11/Conv/BatchNorm/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
l
res11/Conv/ReluRelures11/Conv/BatchNorm/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
š
7res11/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*'
_class
loc:@res11/Conv_1/weights*
_output_shapes
:
¤
6res11/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res11/Conv_1/weights*
_output_shapes
: 
Ś
8res11/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	>*
dtype0*'
_class
loc:@res11/Conv_1/weights*
_output_shapes
: 

Ares11/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res11/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:

5res11/Conv_1/weights/Initializer/truncated_normal/mulMulAres11/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res11/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:

1res11/Conv_1/weights/Initializer/truncated_normalAdd5res11/Conv_1/weights/Initializer/truncated_normal/mul6res11/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:
Á
res11/Conv_1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:
ń
res11/Conv_1/weights/AssignAssignres11/Conv_1/weights1res11/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:

res11/Conv_1/weights/readIdentityres11/Conv_1/weights*
T0*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:
˘
4res11/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res11/Conv_1/weights*
_output_shapes
: 
¤
5res11/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres11/Conv_1/weights/read*
T0*'
_class
loc:@res11/Conv_1/weights*
_output_shapes
: 
ě
.res11/Conv_1/kernel/Regularizer/l2_regularizerMul4res11/Conv_1/kernel/Regularizer/l2_regularizer/scale5res11/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res11/Conv_1/weights*
_output_shapes
: 
k
res11/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ń
res11/Conv_1/Conv2DConv2Dres11/Conv/Relures11/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
j
	res11/addAdd	res10/addres11/Conv_1/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
_
res20/preact/ConstConst*
valueB*  ?*
dtype0*
_output_shapes
:
Ł
3res20/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*$
_class
loc:@res20/preact/beta*
_output_shapes
:

)res20/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res20/preact/beta*
_output_shapes
: 
č
#res20/preact/beta/Initializer/zerosFill3res20/preact/beta/Initializer/zeros/shape_as_tensor)res20/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res20/preact/beta*
_output_shapes
:
Ł
res20/preact/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@res20/preact/beta*
_output_shapes
:
Î
res20/preact/beta/AssignAssignres20/preact/beta#res20/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res20/preact/beta*
_output_shapes
:

res20/preact/beta/readIdentityres20/preact/beta*
T0*$
_class
loc:@res20/preact/beta*
_output_shapes
:
ą
:res20/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:
˘
0res20/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
: 

*res20/preact/moving_mean/Initializer/zerosFill:res20/preact/moving_mean/Initializer/zeros/shape_as_tensor0res20/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:
ą
res20/preact/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:
ę
res20/preact/moving_mean/AssignAssignres20/preact/moving_mean*res20/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:

res20/preact/moving_mean/readIdentityres20/preact/moving_mean*
T0*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:
¸
=res20/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
Š
3res20/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
: 

-res20/preact/moving_variance/Initializer/onesFill=res20/preact/moving_variance/Initializer/ones/shape_as_tensor3res20/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
š
res20/preact/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name */
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
ů
#res20/preact/moving_variance/AssignAssignres20/preact/moving_variance-res20/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
Ą
!res20/preact/moving_variance/readIdentityres20/preact/moving_variance*
T0*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
´
res20/preact/FusedBatchNormFusedBatchNorm	res11/addres20/preact/Constres20/preact/beta/readres20/preact/moving_mean/read!res20/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ 0::::
Y
res20/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res20/preact/ReluRelures20/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 0
ľ
5res20/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"             *
dtype0*%
_class
loc:@res20/Conv/weights*
_output_shapes
:
 
4res20/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res20/Conv/weights*
_output_shapes
: 
˘
6res20/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdÎ>*
dtype0*%
_class
loc:@res20/Conv/weights*
_output_shapes
: 

?res20/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res20/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 

3res20/Conv/weights/Initializer/truncated_normal/mulMul?res20/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res20/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 
ů
/res20/Conv/weights/Initializer/truncated_normalAdd3res20/Conv/weights/Initializer/truncated_normal/mul4res20/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 
˝
res20/Conv/weights
VariableV2*
shape: *
dtype0*
	container *
shared_name *%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 
é
res20/Conv/weights/AssignAssignres20/Conv/weights/res20/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 

res20/Conv/weights/readIdentityres20/Conv/weights*
T0*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 

2res20/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res20/Conv/weights*
_output_shapes
: 

3res20/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres20/Conv/weights/read*
T0*%
_class
loc:@res20/Conv/weights*
_output_shapes
: 
ä
,res20/Conv/kernel/Regularizer/l2_regularizerMul2res20/Conv/kernel/Regularizer/l2_regularizer/scale3res20/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res20/Conv/weights*
_output_shapes
: 
i
res20/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
res20/Conv/Conv2DConv2Dres20/preact/Relures20/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
š
7res20/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"             *
dtype0*'
_class
loc:@res20/Conv_1/weights*
_output_shapes
:
¤
6res20/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res20/Conv_1/weights*
_output_shapes
: 
Ś
8res20/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *	>*
dtype0*'
_class
loc:@res20/Conv_1/weights*
_output_shapes
: 

Ares20/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res20/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 

5res20/Conv_1/weights/Initializer/truncated_normal/mulMulAres20/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res20/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 

1res20/Conv_1/weights/Initializer/truncated_normalAdd5res20/Conv_1/weights/Initializer/truncated_normal/mul6res20/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 
Á
res20/Conv_1/weights
VariableV2*
shape: *
dtype0*
	container *
shared_name *'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 
ń
res20/Conv_1/weights/AssignAssignres20/Conv_1/weights1res20/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 

res20/Conv_1/weights/readIdentityres20/Conv_1/weights*
T0*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 
˘
4res20/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res20/Conv_1/weights*
_output_shapes
: 
¤
5res20/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres20/Conv_1/weights/read*
T0*'
_class
loc:@res20/Conv_1/weights*
_output_shapes
: 
ě
.res20/Conv_1/kernel/Regularizer/l2_regularizerMul4res20/Conv_1/kernel/Regularizer/l2_regularizer/scale5res20/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res20/Conv_1/weights*
_output_shapes
: 
k
res20/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ó
res20/Conv_1/Conv2DConv2Dres20/preact/Relures20/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ˇ
=res20/Conv_1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
:
¨
3res20/Conv_1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 

-res20/Conv_1/BatchNorm/beta/Initializer/zerosFill=res20/Conv_1/BatchNorm/beta/Initializer/zeros/shape_as_tensor3res20/Conv_1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 
ˇ
res20/Conv_1/BatchNorm/beta
VariableV2*
shape: *
dtype0*
	container *
shared_name *.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 
ö
"res20/Conv_1/BatchNorm/beta/AssignAssignres20/Conv_1/BatchNorm/beta-res20/Conv_1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 

 res20/Conv_1/BatchNorm/beta/readIdentityres20/Conv_1/BatchNorm/beta*
T0*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 
i
res20/Conv_1/BatchNorm/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 
Ĺ
Dres20/Conv_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
:
ś
:res20/Conv_1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
Ź
4res20/Conv_1/BatchNorm/moving_mean/Initializer/zerosFillDres20/Conv_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor:res20/Conv_1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
Ĺ
"res20/Conv_1/BatchNorm/moving_mean
VariableV2*
shape: *
dtype0*
	container *
shared_name *5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 

)res20/Conv_1/BatchNorm/moving_mean/AssignAssign"res20/Conv_1/BatchNorm/moving_mean4res20/Conv_1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
ł
'res20/Conv_1/BatchNorm/moving_mean/readIdentity"res20/Conv_1/BatchNorm/moving_mean*
T0*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
Ě
Gres20/Conv_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB: *
dtype0*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
:
˝
=res20/Conv_1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
š
7res20/Conv_1/BatchNorm/moving_variance/Initializer/onesFillGres20/Conv_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor=res20/Conv_1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
Í
&res20/Conv_1/BatchNorm/moving_variance
VariableV2*
shape: *
dtype0*
	container *
shared_name *9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
Ą
-res20/Conv_1/BatchNorm/moving_variance/AssignAssign&res20/Conv_1/BatchNorm/moving_variance7res20/Conv_1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
ż
+res20/Conv_1/BatchNorm/moving_variance/readIdentity&res20/Conv_1/BatchNorm/moving_variance*
T0*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
đ
%res20/Conv_1/BatchNorm/FusedBatchNormFusedBatchNormres20/Conv_1/Conv2Dres20/Conv_1/BatchNorm/Const res20/Conv_1/BatchNorm/beta/read'res20/Conv_1/BatchNorm/moving_mean/read+res20/Conv_1/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ : : : : 

res20/Conv_1/BatchNorm/ReluRelu%res20/Conv_1/BatchNorm/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
p
res20/Conv_1/ReluRelures20/Conv_1/BatchNorm/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
š
7res20/Conv_2/weights/Initializer/truncated_normal/shapeConst*%
valueB"              *
dtype0*'
_class
loc:@res20/Conv_2/weights*
_output_shapes
:
¤
6res20/Conv_2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res20/Conv_2/weights*
_output_shapes
: 
Ś
8res20/Conv_2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Â=*
dtype0*'
_class
loc:@res20/Conv_2/weights*
_output_shapes
: 

Ares20/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res20/Conv_2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  

5res20/Conv_2/weights/Initializer/truncated_normal/mulMulAres20/Conv_2/weights/Initializer/truncated_normal/TruncatedNormal8res20/Conv_2/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  

1res20/Conv_2/weights/Initializer/truncated_normalAdd5res20/Conv_2/weights/Initializer/truncated_normal/mul6res20/Conv_2/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  
Á
res20/Conv_2/weights
VariableV2*
shape:  *
dtype0*
	container *
shared_name *'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  
ń
res20/Conv_2/weights/AssignAssignres20/Conv_2/weights1res20/Conv_2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  

res20/Conv_2/weights/readIdentityres20/Conv_2/weights*
T0*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  
˘
4res20/Conv_2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res20/Conv_2/weights*
_output_shapes
: 
¤
5res20/Conv_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossres20/Conv_2/weights/read*
T0*'
_class
loc:@res20/Conv_2/weights*
_output_shapes
: 
ě
.res20/Conv_2/kernel/Regularizer/l2_regularizerMul4res20/Conv_2/kernel/Regularizer/l2_regularizer/scale5res20/Conv_2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res20/Conv_2/weights*
_output_shapes
: 
k
res20/Conv_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ó
res20/Conv_2/Conv2DConv2Dres20/Conv_1/Relures20/Conv_2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
r
	res20/addAddres20/Conv/Conv2Dres20/Conv_2/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
_
res21/preact/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 
Ł
3res21/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*$
_class
loc:@res21/preact/beta*
_output_shapes
:

)res21/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res21/preact/beta*
_output_shapes
: 
č
#res21/preact/beta/Initializer/zerosFill3res21/preact/beta/Initializer/zeros/shape_as_tensor)res21/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res21/preact/beta*
_output_shapes
: 
Ł
res21/preact/beta
VariableV2*
shape: *
dtype0*
	container *
shared_name *$
_class
loc:@res21/preact/beta*
_output_shapes
: 
Î
res21/preact/beta/AssignAssignres21/preact/beta#res21/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res21/preact/beta*
_output_shapes
: 

res21/preact/beta/readIdentityres21/preact/beta*
T0*$
_class
loc:@res21/preact/beta*
_output_shapes
: 
ą
:res21/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
:
˘
0res21/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 

*res21/preact/moving_mean/Initializer/zerosFill:res21/preact/moving_mean/Initializer/zeros/shape_as_tensor0res21/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 
ą
res21/preact/moving_mean
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 
ę
res21/preact/moving_mean/AssignAssignres21/preact/moving_mean*res21/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 

res21/preact/moving_mean/readIdentityres21/preact/moving_mean*
T0*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 
¸
=res21/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB: *
dtype0*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
:
Š
3res21/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 

-res21/preact/moving_variance/Initializer/onesFill=res21/preact/moving_variance/Initializer/ones/shape_as_tensor3res21/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 
š
res21/preact/moving_variance
VariableV2*
shape: *
dtype0*
	container *
shared_name */
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 
ů
#res21/preact/moving_variance/AssignAssignres21/preact/moving_variance-res21/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 
Ą
!res21/preact/moving_variance/readIdentityres21/preact/moving_variance*
T0*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 
´
res21/preact/FusedBatchNormFusedBatchNorm	res20/addres21/preact/Constres21/preact/beta/readres21/preact/moving_mean/read!res21/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ : : : : 
Y
res21/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res21/preact/ReluRelures21/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ľ
5res21/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"              *
dtype0*%
_class
loc:@res21/Conv/weights*
_output_shapes
:
 
4res21/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res21/Conv/weights*
_output_shapes
: 
˘
6res21/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Â=*
dtype0*%
_class
loc:@res21/Conv/weights*
_output_shapes
: 

?res21/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res21/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  

3res21/Conv/weights/Initializer/truncated_normal/mulMul?res21/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res21/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  
ů
/res21/Conv/weights/Initializer/truncated_normalAdd3res21/Conv/weights/Initializer/truncated_normal/mul4res21/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  
˝
res21/Conv/weights
VariableV2*
shape:  *
dtype0*
	container *
shared_name *%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  
é
res21/Conv/weights/AssignAssignres21/Conv/weights/res21/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  

res21/Conv/weights/readIdentityres21/Conv/weights*
T0*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  

2res21/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res21/Conv/weights*
_output_shapes
: 

3res21/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres21/Conv/weights/read*
T0*%
_class
loc:@res21/Conv/weights*
_output_shapes
: 
ä
,res21/Conv/kernel/Regularizer/l2_regularizerMul2res21/Conv/kernel/Regularizer/l2_regularizer/scale3res21/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res21/Conv/weights*
_output_shapes
: 
i
res21/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
res21/Conv/Conv2DConv2Dres21/preact/Relures21/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ł
;res21/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
:
¤
1res21/Conv/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 

+res21/Conv/BatchNorm/beta/Initializer/zerosFill;res21/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensor1res21/Conv/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 
ł
res21/Conv/BatchNorm/beta
VariableV2*
shape: *
dtype0*
	container *
shared_name *,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 
î
 res21/Conv/BatchNorm/beta/AssignAssignres21/Conv/BatchNorm/beta+res21/Conv/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 

res21/Conv/BatchNorm/beta/readIdentityres21/Conv/BatchNorm/beta*
T0*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 
g
res21/Conv/BatchNorm/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 
Á
Bres21/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
:
˛
8res21/Conv/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 
¤
2res21/Conv/BatchNorm/moving_mean/Initializer/zerosFillBres21/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor8res21/Conv/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 
Á
 res21/Conv/BatchNorm/moving_mean
VariableV2*
shape: *
dtype0*
	container *
shared_name *3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 

'res21/Conv/BatchNorm/moving_mean/AssignAssign res21/Conv/BatchNorm/moving_mean2res21/Conv/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 
­
%res21/Conv/BatchNorm/moving_mean/readIdentity res21/Conv/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 
Č
Eres21/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB: *
dtype0*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
;res21/Conv/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 
ą
5res21/Conv/BatchNorm/moving_variance/Initializer/onesFillEres21/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor;res21/Conv/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 
É
$res21/Conv/BatchNorm/moving_variance
VariableV2*
shape: *
dtype0*
	container *
shared_name *7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 

+res21/Conv/BatchNorm/moving_variance/AssignAssign$res21/Conv/BatchNorm/moving_variance5res21/Conv/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 
š
)res21/Conv/BatchNorm/moving_variance/readIdentity$res21/Conv/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 
ä
#res21/Conv/BatchNorm/FusedBatchNormFusedBatchNormres21/Conv/Conv2Dres21/Conv/BatchNorm/Constres21/Conv/BatchNorm/beta/read%res21/Conv/BatchNorm/moving_mean/read)res21/Conv/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ : : : : 

res21/Conv/BatchNorm/ReluRelu#res21/Conv/BatchNorm/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
l
res21/Conv/ReluRelures21/Conv/BatchNorm/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
š
7res21/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"              *
dtype0*'
_class
loc:@res21/Conv_1/weights*
_output_shapes
:
¤
6res21/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res21/Conv_1/weights*
_output_shapes
: 
Ś
8res21/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Â=*
dtype0*'
_class
loc:@res21/Conv_1/weights*
_output_shapes
: 

Ares21/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res21/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  

5res21/Conv_1/weights/Initializer/truncated_normal/mulMulAres21/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res21/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  

1res21/Conv_1/weights/Initializer/truncated_normalAdd5res21/Conv_1/weights/Initializer/truncated_normal/mul6res21/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  
Á
res21/Conv_1/weights
VariableV2*
shape:  *
dtype0*
	container *
shared_name *'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  
ń
res21/Conv_1/weights/AssignAssignres21/Conv_1/weights1res21/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  

res21/Conv_1/weights/readIdentityres21/Conv_1/weights*
T0*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  
˘
4res21/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res21/Conv_1/weights*
_output_shapes
: 
¤
5res21/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres21/Conv_1/weights/read*
T0*'
_class
loc:@res21/Conv_1/weights*
_output_shapes
: 
ě
.res21/Conv_1/kernel/Regularizer/l2_regularizerMul4res21/Conv_1/kernel/Regularizer/l2_regularizer/scale5res21/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res21/Conv_1/weights*
_output_shapes
: 
k
res21/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ń
res21/Conv_1/Conv2DConv2Dres21/Conv/Relures21/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
j
	res21/addAdd	res20/addres21/Conv_1/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
_
res30/preact/ConstConst*
valueB *  ?*
dtype0*
_output_shapes
: 
Ł
3res30/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*$
_class
loc:@res30/preact/beta*
_output_shapes
:

)res30/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res30/preact/beta*
_output_shapes
: 
č
#res30/preact/beta/Initializer/zerosFill3res30/preact/beta/Initializer/zeros/shape_as_tensor)res30/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res30/preact/beta*
_output_shapes
: 
Ł
res30/preact/beta
VariableV2*
shape: *
dtype0*
	container *
shared_name *$
_class
loc:@res30/preact/beta*
_output_shapes
: 
Î
res30/preact/beta/AssignAssignres30/preact/beta#res30/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res30/preact/beta*
_output_shapes
: 

res30/preact/beta/readIdentityres30/preact/beta*
T0*$
_class
loc:@res30/preact/beta*
_output_shapes
: 
ą
:res30/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB: *
dtype0*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
:
˘
0res30/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 

*res30/preact/moving_mean/Initializer/zerosFill:res30/preact/moving_mean/Initializer/zeros/shape_as_tensor0res30/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 
ą
res30/preact/moving_mean
VariableV2*
shape: *
dtype0*
	container *
shared_name *+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 
ę
res30/preact/moving_mean/AssignAssignres30/preact/moving_mean*res30/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 

res30/preact/moving_mean/readIdentityres30/preact/moving_mean*
T0*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 
¸
=res30/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB: *
dtype0*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
:
Š
3res30/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 

-res30/preact/moving_variance/Initializer/onesFill=res30/preact/moving_variance/Initializer/ones/shape_as_tensor3res30/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 
š
res30/preact/moving_variance
VariableV2*
shape: *
dtype0*
	container *
shared_name */
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 
ů
#res30/preact/moving_variance/AssignAssignres30/preact/moving_variance-res30/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 
Ą
!res30/preact/moving_variance/readIdentityres30/preact/moving_variance*
T0*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 
´
res30/preact/FusedBatchNormFusedBatchNorm	res21/addres30/preact/Constres30/preact/beta/readres30/preact/moving_mean/read!res30/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙ : : : : 
Y
res30/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res30/preact/ReluRelures30/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙ 
ľ
5res30/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"          @   *
dtype0*%
_class
loc:@res30/Conv/weights*
_output_shapes
:
 
4res30/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res30/Conv/weights*
_output_shapes
: 
˘
6res30/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
dtype0*%
_class
loc:@res30/Conv/weights*
_output_shapes
: 

?res30/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res30/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @

3res30/Conv/weights/Initializer/truncated_normal/mulMul?res30/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res30/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @
ů
/res30/Conv/weights/Initializer/truncated_normalAdd3res30/Conv/weights/Initializer/truncated_normal/mul4res30/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @
˝
res30/Conv/weights
VariableV2*
shape: @*
dtype0*
	container *
shared_name *%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @
é
res30/Conv/weights/AssignAssignres30/Conv/weights/res30/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @

res30/Conv/weights/readIdentityres30/Conv/weights*
T0*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @

2res30/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res30/Conv/weights*
_output_shapes
: 

3res30/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres30/Conv/weights/read*
T0*%
_class
loc:@res30/Conv/weights*
_output_shapes
: 
ä
,res30/Conv/kernel/Regularizer/l2_regularizerMul2res30/Conv/kernel/Regularizer/l2_regularizer/scale3res30/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res30/Conv/weights*
_output_shapes
: 
i
res30/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
res30/Conv/Conv2DConv2Dres30/preact/Relures30/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
š
7res30/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"          @   *
dtype0*'
_class
loc:@res30/Conv_1/weights*
_output_shapes
:
¤
6res30/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res30/Conv_1/weights*
_output_shapes
: 
Ś
8res30/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Â=*
dtype0*'
_class
loc:@res30/Conv_1/weights*
_output_shapes
: 

Ares30/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res30/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @

5res30/Conv_1/weights/Initializer/truncated_normal/mulMulAres30/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res30/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @

1res30/Conv_1/weights/Initializer/truncated_normalAdd5res30/Conv_1/weights/Initializer/truncated_normal/mul6res30/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @
Á
res30/Conv_1/weights
VariableV2*
shape: @*
dtype0*
	container *
shared_name *'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @
ń
res30/Conv_1/weights/AssignAssignres30/Conv_1/weights1res30/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @

res30/Conv_1/weights/readIdentityres30/Conv_1/weights*
T0*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @
˘
4res30/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res30/Conv_1/weights*
_output_shapes
: 
¤
5res30/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres30/Conv_1/weights/read*
T0*'
_class
loc:@res30/Conv_1/weights*
_output_shapes
: 
ě
.res30/Conv_1/kernel/Regularizer/l2_regularizerMul4res30/Conv_1/kernel/Regularizer/l2_regularizer/scale5res30/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res30/Conv_1/weights*
_output_shapes
: 
k
res30/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ó
res30/Conv_1/Conv2DConv2Dres30/preact/Relures30/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ˇ
=res30/Conv_1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:
¨
3res30/Conv_1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
: 

-res30/Conv_1/BatchNorm/beta/Initializer/zerosFill=res30/Conv_1/BatchNorm/beta/Initializer/zeros/shape_as_tensor3res30/Conv_1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:@
ˇ
res30/Conv_1/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:@
ö
"res30/Conv_1/BatchNorm/beta/AssignAssignres30/Conv_1/BatchNorm/beta-res30/Conv_1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:@

 res30/Conv_1/BatchNorm/beta/readIdentityres30/Conv_1/BatchNorm/beta*
T0*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:@
i
res30/Conv_1/BatchNorm/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ĺ
Dres30/Conv_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:
ś
:res30/Conv_1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
Ź
4res30/Conv_1/BatchNorm/moving_mean/Initializer/zerosFillDres30/Conv_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor:res30/Conv_1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:@
Ĺ
"res30/Conv_1/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:@

)res30/Conv_1/BatchNorm/moving_mean/AssignAssign"res30/Conv_1/BatchNorm/moving_mean4res30/Conv_1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:@
ł
'res30/Conv_1/BatchNorm/moving_mean/readIdentity"res30/Conv_1/BatchNorm/moving_mean*
T0*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:@
Ě
Gres30/Conv_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:
˝
=res30/Conv_1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
š
7res30/Conv_1/BatchNorm/moving_variance/Initializer/onesFillGres30/Conv_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor=res30/Conv_1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:@
Í
&res30/Conv_1/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:@
Ą
-res30/Conv_1/BatchNorm/moving_variance/AssignAssign&res30/Conv_1/BatchNorm/moving_variance7res30/Conv_1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:@
ż
+res30/Conv_1/BatchNorm/moving_variance/readIdentity&res30/Conv_1/BatchNorm/moving_variance*
T0*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:@
đ
%res30/Conv_1/BatchNorm/FusedBatchNormFusedBatchNormres30/Conv_1/Conv2Dres30/Conv_1/BatchNorm/Const res30/Conv_1/BatchNorm/beta/read'res30/Conv_1/BatchNorm/moving_mean/read+res30/Conv_1/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@

res30/Conv_1/BatchNorm/ReluRelu%res30/Conv_1/BatchNorm/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
p
res30/Conv_1/ReluRelures30/Conv_1/BatchNorm/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
š
7res30/Conv_2/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*'
_class
loc:@res30/Conv_2/weights*
_output_shapes
:
¤
6res30/Conv_2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res30/Conv_2/weights*
_output_shapes
: 
Ś
8res30/Conv_2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*'
_class
loc:@res30/Conv_2/weights*
_output_shapes
: 

Ares30/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res30/Conv_2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@

5res30/Conv_2/weights/Initializer/truncated_normal/mulMulAres30/Conv_2/weights/Initializer/truncated_normal/TruncatedNormal8res30/Conv_2/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@

1res30/Conv_2/weights/Initializer/truncated_normalAdd5res30/Conv_2/weights/Initializer/truncated_normal/mul6res30/Conv_2/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@
Á
res30/Conv_2/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@
ń
res30/Conv_2/weights/AssignAssignres30/Conv_2/weights1res30/Conv_2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@

res30/Conv_2/weights/readIdentityres30/Conv_2/weights*
T0*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@
˘
4res30/Conv_2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res30/Conv_2/weights*
_output_shapes
: 
¤
5res30/Conv_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossres30/Conv_2/weights/read*
T0*'
_class
loc:@res30/Conv_2/weights*
_output_shapes
: 
ě
.res30/Conv_2/kernel/Regularizer/l2_regularizerMul4res30/Conv_2/kernel/Regularizer/l2_regularizer/scale5res30/Conv_2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res30/Conv_2/weights*
_output_shapes
: 
k
res30/Conv_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ó
res30/Conv_2/Conv2DConv2Dres30/Conv_1/Relures30/Conv_2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
r
	res30/addAddres30/Conv/Conv2Dres30/Conv_2/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
_
res31/preact/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ł
3res31/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*$
_class
loc:@res31/preact/beta*
_output_shapes
:

)res31/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res31/preact/beta*
_output_shapes
: 
č
#res31/preact/beta/Initializer/zerosFill3res31/preact/beta/Initializer/zeros/shape_as_tensor)res31/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res31/preact/beta*
_output_shapes
:@
Ł
res31/preact/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *$
_class
loc:@res31/preact/beta*
_output_shapes
:@
Î
res31/preact/beta/AssignAssignres31/preact/beta#res31/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res31/preact/beta*
_output_shapes
:@

res31/preact/beta/readIdentityres31/preact/beta*
T0*$
_class
loc:@res31/preact/beta*
_output_shapes
:@
ą
:res31/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:
˘
0res31/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
: 

*res31/preact/moving_mean/Initializer/zerosFill:res31/preact/moving_mean/Initializer/zeros/shape_as_tensor0res31/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:@
ą
res31/preact/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:@
ę
res31/preact/moving_mean/AssignAssignres31/preact/moving_mean*res31/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:@

res31/preact/moving_mean/readIdentityres31/preact/moving_mean*
T0*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:@
¸
=res31/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:
Š
3res31/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
: 

-res31/preact/moving_variance/Initializer/onesFill=res31/preact/moving_variance/Initializer/ones/shape_as_tensor3res31/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:@
š
res31/preact/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name */
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:@
ů
#res31/preact/moving_variance/AssignAssignres31/preact/moving_variance-res31/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:@
Ą
!res31/preact/moving_variance/readIdentityres31/preact/moving_variance*
T0*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:@
´
res31/preact/FusedBatchNormFusedBatchNorm	res30/addres31/preact/Constres31/preact/beta/readres31/preact/moving_mean/read!res31/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@
Y
res31/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res31/preact/ReluRelures31/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ľ
5res31/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*%
_class
loc:@res31/Conv/weights*
_output_shapes
:
 
4res31/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res31/Conv/weights*
_output_shapes
: 
˘
6res31/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*%
_class
loc:@res31/Conv/weights*
_output_shapes
: 

?res31/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res31/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@

3res31/Conv/weights/Initializer/truncated_normal/mulMul?res31/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res31/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@
ů
/res31/Conv/weights/Initializer/truncated_normalAdd3res31/Conv/weights/Initializer/truncated_normal/mul4res31/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@
˝
res31/Conv/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@
é
res31/Conv/weights/AssignAssignres31/Conv/weights/res31/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@

res31/Conv/weights/readIdentityres31/Conv/weights*
T0*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@

2res31/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res31/Conv/weights*
_output_shapes
: 

3res31/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres31/Conv/weights/read*
T0*%
_class
loc:@res31/Conv/weights*
_output_shapes
: 
ä
,res31/Conv/kernel/Regularizer/l2_regularizerMul2res31/Conv/kernel/Regularizer/l2_regularizer/scale3res31/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res31/Conv/weights*
_output_shapes
: 
i
res31/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ď
res31/Conv/Conv2DConv2Dres31/preact/Relures31/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ł
;res31/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:
¤
1res31/Conv/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
: 

+res31/Conv/BatchNorm/beta/Initializer/zerosFill;res31/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensor1res31/Conv/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:@
ł
res31/Conv/BatchNorm/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:@
î
 res31/Conv/BatchNorm/beta/AssignAssignres31/Conv/BatchNorm/beta+res31/Conv/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:@

res31/Conv/BatchNorm/beta/readIdentityres31/Conv/BatchNorm/beta*
T0*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:@
g
res31/Conv/BatchNorm/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@
Á
Bres31/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:
˛
8res31/Conv/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
: 
¤
2res31/Conv/BatchNorm/moving_mean/Initializer/zerosFillBres31/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor8res31/Conv/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:@
Á
 res31/Conv/BatchNorm/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:@

'res31/Conv/BatchNorm/moving_mean/AssignAssign res31/Conv/BatchNorm/moving_mean2res31/Conv/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:@
­
%res31/Conv/BatchNorm/moving_mean/readIdentity res31/Conv/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:@
Č
Eres31/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
;res31/Conv/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
: 
ą
5res31/Conv/BatchNorm/moving_variance/Initializer/onesFillEres31/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor;res31/Conv/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:@
É
$res31/Conv/BatchNorm/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name *7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:@

+res31/Conv/BatchNorm/moving_variance/AssignAssign$res31/Conv/BatchNorm/moving_variance5res31/Conv/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:@
š
)res31/Conv/BatchNorm/moving_variance/readIdentity$res31/Conv/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:@
ä
#res31/Conv/BatchNorm/FusedBatchNormFusedBatchNormres31/Conv/Conv2Dres31/Conv/BatchNorm/Constres31/Conv/BatchNorm/beta/read%res31/Conv/BatchNorm/moving_mean/read)res31/Conv/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@

res31/Conv/BatchNorm/ReluRelu#res31/Conv/BatchNorm/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
l
res31/Conv/ReluRelures31/Conv/BatchNorm/Relu*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
š
7res31/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @   @   *
dtype0*'
_class
loc:@res31/Conv_1/weights*
_output_shapes
:
¤
6res31/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res31/Conv_1/weights*
_output_shapes
: 
Ś
8res31/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*'
_class
loc:@res31/Conv_1/weights*
_output_shapes
: 

Ares31/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res31/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@

5res31/Conv_1/weights/Initializer/truncated_normal/mulMulAres31/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res31/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@

1res31/Conv_1/weights/Initializer/truncated_normalAdd5res31/Conv_1/weights/Initializer/truncated_normal/mul6res31/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@
Á
res31/Conv_1/weights
VariableV2*
shape:@@*
dtype0*
	container *
shared_name *'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@
ń
res31/Conv_1/weights/AssignAssignres31/Conv_1/weights1res31/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@

res31/Conv_1/weights/readIdentityres31/Conv_1/weights*
T0*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@
˘
4res31/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res31/Conv_1/weights*
_output_shapes
: 
¤
5res31/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres31/Conv_1/weights/read*
T0*'
_class
loc:@res31/Conv_1/weights*
_output_shapes
: 
ě
.res31/Conv_1/kernel/Regularizer/l2_regularizerMul4res31/Conv_1/kernel/Regularizer/l2_regularizer/scale5res31/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res31/Conv_1/weights*
_output_shapes
: 
k
res31/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ń
res31/Conv_1/Conv2DConv2Dres31/Conv/Relures31/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
j
	res31/addAdd	res30/addres31/Conv_1/Conv2D*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
_
res40/preact/ConstConst*
valueB@*  ?*
dtype0*
_output_shapes
:@
Ł
3res40/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*$
_class
loc:@res40/preact/beta*
_output_shapes
:

)res40/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res40/preact/beta*
_output_shapes
: 
č
#res40/preact/beta/Initializer/zerosFill3res40/preact/beta/Initializer/zeros/shape_as_tensor)res40/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res40/preact/beta*
_output_shapes
:@
Ł
res40/preact/beta
VariableV2*
shape:@*
dtype0*
	container *
shared_name *$
_class
loc:@res40/preact/beta*
_output_shapes
:@
Î
res40/preact/beta/AssignAssignres40/preact/beta#res40/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res40/preact/beta*
_output_shapes
:@

res40/preact/beta/readIdentityres40/preact/beta*
T0*$
_class
loc:@res40/preact/beta*
_output_shapes
:@
ą
:res40/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:@*
dtype0*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:
˘
0res40/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
: 

*res40/preact/moving_mean/Initializer/zerosFill:res40/preact/moving_mean/Initializer/zeros/shape_as_tensor0res40/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:@
ą
res40/preact/moving_mean
VariableV2*
shape:@*
dtype0*
	container *
shared_name *+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:@
ę
res40/preact/moving_mean/AssignAssignres40/preact/moving_mean*res40/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:@

res40/preact/moving_mean/readIdentityres40/preact/moving_mean*
T0*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:@
¸
=res40/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:@*
dtype0*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:
Š
3res40/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
: 

-res40/preact/moving_variance/Initializer/onesFill=res40/preact/moving_variance/Initializer/ones/shape_as_tensor3res40/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:@
š
res40/preact/moving_variance
VariableV2*
shape:@*
dtype0*
	container *
shared_name */
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:@
ů
#res40/preact/moving_variance/AssignAssignres40/preact/moving_variance-res40/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:@
Ą
!res40/preact/moving_variance/readIdentityres40/preact/moving_variance*
T0*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:@
´
res40/preact/FusedBatchNormFusedBatchNorm	res31/addres40/preact/Constres40/preact/beta/readres40/preact/moving_mean/read!res40/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *G
_output_shapes5
3:˙˙˙˙˙˙˙˙˙@:@:@:@:@
Y
res40/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
p
res40/preact/ReluRelures40/preact/FusedBatchNorm*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@
ľ
5res40/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
dtype0*%
_class
loc:@res40/Conv/weights*
_output_shapes
:
 
4res40/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res40/Conv/weights*
_output_shapes
: 
˘
6res40/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *ĐdN>*
dtype0*%
_class
loc:@res40/Conv/weights*
_output_shapes
: 

?res40/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res40/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@

3res40/Conv/weights/Initializer/truncated_normal/mulMul?res40/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res40/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@
ú
/res40/Conv/weights/Initializer/truncated_normalAdd3res40/Conv/weights/Initializer/truncated_normal/mul4res40/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@
ż
res40/Conv/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@
ę
res40/Conv/weights/AssignAssignres40/Conv/weights/res40/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@

res40/Conv/weights/readIdentityres40/Conv/weights*
T0*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@

2res40/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res40/Conv/weights*
_output_shapes
: 

3res40/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres40/Conv/weights/read*
T0*%
_class
loc:@res40/Conv/weights*
_output_shapes
: 
ä
,res40/Conv/kernel/Regularizer/l2_regularizerMul2res40/Conv/kernel/Regularizer/l2_regularizer/scale3res40/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res40/Conv/weights*
_output_shapes
: 
i
res40/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
res40/Conv/Conv2DConv2Dres40/preact/Relures40/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
7res40/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"      @      *
dtype0*'
_class
loc:@res40/Conv_1/weights*
_output_shapes
:
¤
6res40/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res40/Conv_1/weights*
_output_shapes
: 
Ś
8res40/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *=*
dtype0*'
_class
loc:@res40/Conv_1/weights*
_output_shapes
: 

Ares40/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res40/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@

5res40/Conv_1/weights/Initializer/truncated_normal/mulMulAres40/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res40/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@

1res40/Conv_1/weights/Initializer/truncated_normalAdd5res40/Conv_1/weights/Initializer/truncated_normal/mul6res40/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@
Ă
res40/Conv_1/weights
VariableV2*
shape:@*
dtype0*
	container *
shared_name *'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@
ň
res40/Conv_1/weights/AssignAssignres40/Conv_1/weights1res40/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@

res40/Conv_1/weights/readIdentityres40/Conv_1/weights*
T0*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@
˘
4res40/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res40/Conv_1/weights*
_output_shapes
: 
¤
5res40/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres40/Conv_1/weights/read*
T0*'
_class
loc:@res40/Conv_1/weights*
_output_shapes
: 
ě
.res40/Conv_1/kernel/Regularizer/l2_regularizerMul4res40/Conv_1/kernel/Regularizer/l2_regularizer/scale5res40/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res40/Conv_1/weights*
_output_shapes
: 
k
res40/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ô
res40/Conv_1/Conv2DConv2Dres40/preact/Relures40/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
¸
=res40/Conv_1/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes
:
¨
3res40/Conv_1/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes
: 

-res40/Conv_1/BatchNorm/beta/Initializer/zerosFill=res40/Conv_1/BatchNorm/beta/Initializer/zeros/shape_as_tensor3res40/Conv_1/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes	
:
š
res40/Conv_1/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes	
:
÷
"res40/Conv_1/BatchNorm/beta/AssignAssignres40/Conv_1/BatchNorm/beta-res40/Conv_1/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes	
:

 res40/Conv_1/BatchNorm/beta/readIdentityres40/Conv_1/BatchNorm/beta*
T0*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes	
:
k
res40/Conv_1/BatchNorm/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:
Ć
Dres40/Conv_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes
:
ś
:res40/Conv_1/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
­
4res40/Conv_1/BatchNorm/moving_mean/Initializer/zerosFillDres40/Conv_1/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor:res40/Conv_1/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes	
:
Ç
"res40/Conv_1/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes	
:

)res40/Conv_1/BatchNorm/moving_mean/AssignAssign"res40/Conv_1/BatchNorm/moving_mean4res40/Conv_1/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes	
:
´
'res40/Conv_1/BatchNorm/moving_mean/readIdentity"res40/Conv_1/BatchNorm/moving_mean*
T0*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes	
:
Í
Gres40/Conv_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes
:
˝
=res40/Conv_1/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
ş
7res40/Conv_1/BatchNorm/moving_variance/Initializer/onesFillGres40/Conv_1/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor=res40/Conv_1/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes	
:
Ď
&res40/Conv_1/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes	
:
˘
-res40/Conv_1/BatchNorm/moving_variance/AssignAssign&res40/Conv_1/BatchNorm/moving_variance7res40/Conv_1/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes	
:
Ŕ
+res40/Conv_1/BatchNorm/moving_variance/readIdentity&res40/Conv_1/BatchNorm/moving_variance*
T0*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes	
:
ő
%res40/Conv_1/BatchNorm/FusedBatchNormFusedBatchNormres40/Conv_1/Conv2Dres40/Conv_1/BatchNorm/Const res40/Conv_1/BatchNorm/beta/read'res40/Conv_1/BatchNorm/moving_mean/read+res40/Conv_1/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::

res40/Conv_1/BatchNorm/ReluRelu%res40/Conv_1/BatchNorm/FusedBatchNorm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
q
res40/Conv_1/ReluRelures40/Conv_1/BatchNorm/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
7res40/Conv_2/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*'
_class
loc:@res40/Conv_2/weights*
_output_shapes
:
¤
6res40/Conv_2/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res40/Conv_2/weights*
_output_shapes
: 
Ś
8res40/Conv_2/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*'
_class
loc:@res40/Conv_2/weights*
_output_shapes
: 

Ares40/Conv_2/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res40/Conv_2/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:

5res40/Conv_2/weights/Initializer/truncated_normal/mulMulAres40/Conv_2/weights/Initializer/truncated_normal/TruncatedNormal8res40/Conv_2/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:

1res40/Conv_2/weights/Initializer/truncated_normalAdd5res40/Conv_2/weights/Initializer/truncated_normal/mul6res40/Conv_2/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:
Ĺ
res40/Conv_2/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:
ó
res40/Conv_2/weights/AssignAssignres40/Conv_2/weights1res40/Conv_2/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:

res40/Conv_2/weights/readIdentityres40/Conv_2/weights*
T0*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:
˘
4res40/Conv_2/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res40/Conv_2/weights*
_output_shapes
: 
¤
5res40/Conv_2/kernel/Regularizer/l2_regularizer/L2LossL2Lossres40/Conv_2/weights/read*
T0*'
_class
loc:@res40/Conv_2/weights*
_output_shapes
: 
ě
.res40/Conv_2/kernel/Regularizer/l2_regularizerMul4res40/Conv_2/kernel/Regularizer/l2_regularizer/scale5res40/Conv_2/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res40/Conv_2/weights*
_output_shapes
: 
k
res40/Conv_2/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ô
res40/Conv_2/Conv2DConv2Dres40/Conv_1/Relures40/Conv_2/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
	res40/addAddres40/Conv/Conv2Dres40/Conv_2/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
res41/preact/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:
¤
3res41/preact/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*$
_class
loc:@res41/preact/beta*
_output_shapes
:

)res41/preact/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*$
_class
loc:@res41/preact/beta*
_output_shapes
: 
é
#res41/preact/beta/Initializer/zerosFill3res41/preact/beta/Initializer/zeros/shape_as_tensor)res41/preact/beta/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@res41/preact/beta*
_output_shapes	
:
Ľ
res41/preact/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@res41/preact/beta*
_output_shapes	
:
Ď
res41/preact/beta/AssignAssignres41/preact/beta#res41/preact/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res41/preact/beta*
_output_shapes	
:

res41/preact/beta/readIdentityres41/preact/beta*
T0*$
_class
loc:@res41/preact/beta*
_output_shapes	
:
˛
:res41/preact/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes
:
˘
0res41/preact/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes
: 

*res41/preact/moving_mean/Initializer/zerosFill:res41/preact/moving_mean/Initializer/zeros/shape_as_tensor0res41/preact/moving_mean/Initializer/zeros/Const*
T0*

index_type0*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes	
:
ł
res41/preact/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *+
_class!
loc:@res41/preact/moving_mean*
_output_shapes	
:
ë
res41/preact/moving_mean/AssignAssignres41/preact/moving_mean*res41/preact/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes	
:

res41/preact/moving_mean/readIdentityres41/preact/moving_mean*
T0*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes	
:
š
=res41/preact/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes
:
Š
3res41/preact/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes
: 

-res41/preact/moving_variance/Initializer/onesFill=res41/preact/moving_variance/Initializer/ones/shape_as_tensor3res41/preact/moving_variance/Initializer/ones/Const*
T0*

index_type0*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes	
:
ť
res41/preact/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name */
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes	
:
ú
#res41/preact/moving_variance/AssignAssignres41/preact/moving_variance-res41/preact/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes	
:
˘
!res41/preact/moving_variance/readIdentityres41/preact/moving_variance*
T0*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes	
:
š
res41/preact/FusedBatchNormFusedBatchNorm	res40/addres41/preact/Constres41/preact/beta/readres41/preact/moving_mean/read!res41/preact/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::
Y
res41/preact/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
q
res41/preact/ReluRelures41/preact/FusedBatchNorm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
ľ
5res41/Conv/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*%
_class
loc:@res41/Conv/weights*
_output_shapes
:
 
4res41/Conv/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*%
_class
loc:@res41/Conv/weights*
_output_shapes
: 
˘
6res41/Conv/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*%
_class
loc:@res41/Conv/weights*
_output_shapes
: 

?res41/Conv/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal5res41/Conv/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:

3res41/Conv/weights/Initializer/truncated_normal/mulMul?res41/Conv/weights/Initializer/truncated_normal/TruncatedNormal6res41/Conv/weights/Initializer/truncated_normal/stddev*
T0*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:
ű
/res41/Conv/weights/Initializer/truncated_normalAdd3res41/Conv/weights/Initializer/truncated_normal/mul4res41/Conv/weights/Initializer/truncated_normal/mean*
T0*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:
Á
res41/Conv/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *%
_class
loc:@res41/Conv/weights*(
_output_shapes
:
ë
res41/Conv/weights/AssignAssignres41/Conv/weights/res41/Conv/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:

res41/Conv/weights/readIdentityres41/Conv/weights*
T0*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:

2res41/Conv/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*%
_class
loc:@res41/Conv/weights*
_output_shapes
: 

3res41/Conv/kernel/Regularizer/l2_regularizer/L2LossL2Lossres41/Conv/weights/read*
T0*%
_class
loc:@res41/Conv/weights*
_output_shapes
: 
ä
,res41/Conv/kernel/Regularizer/l2_regularizerMul2res41/Conv/kernel/Regularizer/l2_regularizer/scale3res41/Conv/kernel/Regularizer/l2_regularizer/L2Loss*
T0*%
_class
loc:@res41/Conv/weights*
_output_shapes
: 
i
res41/Conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
res41/Conv/Conv2DConv2Dres41/preact/Relures41/Conv/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
´
;res41/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes
:
¤
1res41/Conv/BatchNorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes
: 

+res41/Conv/BatchNorm/beta/Initializer/zerosFill;res41/Conv/BatchNorm/beta/Initializer/zeros/shape_as_tensor1res41/Conv/BatchNorm/beta/Initializer/zeros/Const*
T0*

index_type0*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes	
:
ľ
res41/Conv/BatchNorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name *,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes	
:
ď
 res41/Conv/BatchNorm/beta/AssignAssignres41/Conv/BatchNorm/beta+res41/Conv/BatchNorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes	
:

res41/Conv/BatchNorm/beta/readIdentityres41/Conv/BatchNorm/beta*
T0*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes	
:
i
res41/Conv/BatchNorm/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:
Â
Bres41/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes
:
˛
8res41/Conv/BatchNorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes
: 
Ľ
2res41/Conv/BatchNorm/moving_mean/Initializer/zerosFillBres41/Conv/BatchNorm/moving_mean/Initializer/zeros/shape_as_tensor8res41/Conv/BatchNorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes	
:
Ă
 res41/Conv/BatchNorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes	
:

'res41/Conv/BatchNorm/moving_mean/AssignAssign res41/Conv/BatchNorm/moving_mean2res41/Conv/BatchNorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes	
:
Ž
%res41/Conv/BatchNorm/moving_mean/readIdentity res41/Conv/BatchNorm/moving_mean*
T0*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes	
:
É
Eres41/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes
:
š
;res41/Conv/BatchNorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes
: 
˛
5res41/Conv/BatchNorm/moving_variance/Initializer/onesFillEres41/Conv/BatchNorm/moving_variance/Initializer/ones/shape_as_tensor;res41/Conv/BatchNorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes	
:
Ë
$res41/Conv/BatchNorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes	
:

+res41/Conv/BatchNorm/moving_variance/AssignAssign$res41/Conv/BatchNorm/moving_variance5res41/Conv/BatchNorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes	
:
ş
)res41/Conv/BatchNorm/moving_variance/readIdentity$res41/Conv/BatchNorm/moving_variance*
T0*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes	
:
é
#res41/Conv/BatchNorm/FusedBatchNormFusedBatchNormres41/Conv/Conv2Dres41/Conv/BatchNorm/Constres41/Conv/BatchNorm/beta/read%res41/Conv/BatchNorm/moving_mean/read)res41/Conv/BatchNorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::

res41/Conv/BatchNorm/ReluRelu#res41/Conv/BatchNorm/FusedBatchNorm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
res41/Conv/ReluRelures41/Conv/BatchNorm/Relu*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
š
7res41/Conv_1/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*'
_class
loc:@res41/Conv_1/weights*
_output_shapes
:
¤
6res41/Conv_1/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*'
_class
loc:@res41/Conv_1/weights*
_output_shapes
: 
Ś
8res41/Conv_1/weights/Initializer/truncated_normal/stddevConst*
valueB
 *B=*
dtype0*'
_class
loc:@res41/Conv_1/weights*
_output_shapes
: 

Ares41/Conv_1/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal7res41/Conv_1/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:

5res41/Conv_1/weights/Initializer/truncated_normal/mulMulAres41/Conv_1/weights/Initializer/truncated_normal/TruncatedNormal8res41/Conv_1/weights/Initializer/truncated_normal/stddev*
T0*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:

1res41/Conv_1/weights/Initializer/truncated_normalAdd5res41/Conv_1/weights/Initializer/truncated_normal/mul6res41/Conv_1/weights/Initializer/truncated_normal/mean*
T0*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:
Ĺ
res41/Conv_1/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:
ó
res41/Conv_1/weights/AssignAssignres41/Conv_1/weights1res41/Conv_1/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:

res41/Conv_1/weights/readIdentityres41/Conv_1/weights*
T0*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:
˘
4res41/Conv_1/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*'
_class
loc:@res41/Conv_1/weights*
_output_shapes
: 
¤
5res41/Conv_1/kernel/Regularizer/l2_regularizer/L2LossL2Lossres41/Conv_1/weights/read*
T0*'
_class
loc:@res41/Conv_1/weights*
_output_shapes
: 
ě
.res41/Conv_1/kernel/Regularizer/l2_regularizerMul4res41/Conv_1/kernel/Regularizer/l2_regularizer/scale5res41/Conv_1/kernel/Regularizer/l2_regularizer/L2Loss*
T0*'
_class
loc:@res41/Conv_1/weights*
_output_shapes
: 
k
res41/Conv_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ň
res41/Conv_1/Conv2DConv2Dres41/Conv/Relures41/Conv_1/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
k
	res41/addAdd	res40/addres41/Conv_1/Conv2D*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
postnorm/ConstConst*
valueB*  ?*
dtype0*
_output_shapes	
:

/postnorm/beta/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0* 
_class
loc:@postnorm/beta*
_output_shapes
:

%postnorm/beta/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0* 
_class
loc:@postnorm/beta*
_output_shapes
: 
Ů
postnorm/beta/Initializer/zerosFill/postnorm/beta/Initializer/zeros/shape_as_tensor%postnorm/beta/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@postnorm/beta*
_output_shapes	
:

postnorm/beta
VariableV2*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@postnorm/beta*
_output_shapes	
:
ż
postnorm/beta/AssignAssignpostnorm/betapostnorm/beta/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@postnorm/beta*
_output_shapes	
:
u
postnorm/beta/readIdentitypostnorm/beta*
T0* 
_class
loc:@postnorm/beta*
_output_shapes	
:
Ş
6postnorm/moving_mean/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0*'
_class
loc:@postnorm/moving_mean*
_output_shapes
:

,postnorm/moving_mean/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*'
_class
loc:@postnorm/moving_mean*
_output_shapes
: 
ő
&postnorm/moving_mean/Initializer/zerosFill6postnorm/moving_mean/Initializer/zeros/shape_as_tensor,postnorm/moving_mean/Initializer/zeros/Const*
T0*

index_type0*'
_class
loc:@postnorm/moving_mean*
_output_shapes	
:
Ť
postnorm/moving_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *'
_class
loc:@postnorm/moving_mean*
_output_shapes	
:
Ű
postnorm/moving_mean/AssignAssignpostnorm/moving_mean&postnorm/moving_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*'
_class
loc:@postnorm/moving_mean*
_output_shapes	
:

postnorm/moving_mean/readIdentitypostnorm/moving_mean*
T0*'
_class
loc:@postnorm/moving_mean*
_output_shapes	
:
ą
9postnorm/moving_variance/Initializer/ones/shape_as_tensorConst*
valueB:*
dtype0*+
_class!
loc:@postnorm/moving_variance*
_output_shapes
:
Ą
/postnorm/moving_variance/Initializer/ones/ConstConst*
valueB
 *  ?*
dtype0*+
_class!
loc:@postnorm/moving_variance*
_output_shapes
: 

)postnorm/moving_variance/Initializer/onesFill9postnorm/moving_variance/Initializer/ones/shape_as_tensor/postnorm/moving_variance/Initializer/ones/Const*
T0*

index_type0*+
_class!
loc:@postnorm/moving_variance*
_output_shapes	
:
ł
postnorm/moving_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *+
_class!
loc:@postnorm/moving_variance*
_output_shapes	
:
ę
postnorm/moving_variance/AssignAssignpostnorm/moving_variance)postnorm/moving_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@postnorm/moving_variance*
_output_shapes	
:

postnorm/moving_variance/readIdentitypostnorm/moving_variance*
T0*+
_class!
loc:@postnorm/moving_variance*
_output_shapes	
:
Ľ
postnorm/FusedBatchNormFusedBatchNorm	res41/addpostnorm/Constpostnorm/beta/readpostnorm/moving_mean/readpostnorm/moving_variance/read*
T0*
epsilon%o:*
data_formatNHWC*
is_training( *L
_output_shapes:
8:˙˙˙˙˙˙˙˙˙::::
U
postnorm/Const_1Const*
valueB
 *o:*
dtype0*
_output_shapes
: 
i
postnorm/ReluRelupostnorm/FusedBatchNorm*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
1gather/weights/Initializer/truncated_normal/shapeConst*%
valueB"            *
dtype0*!
_class
loc:@gather/weights*
_output_shapes
:

0gather/weights/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@gather/weights*
_output_shapes
: 

2gather/weights/Initializer/truncated_normal/stddevConst*
valueB
 *Eń>*
dtype0*!
_class
loc:@gather/weights*
_output_shapes
: 
ü
;gather/weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1gather/weights/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@gather/weights*'
_output_shapes
:
ü
/gather/weights/Initializer/truncated_normal/mulMul;gather/weights/Initializer/truncated_normal/TruncatedNormal2gather/weights/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@gather/weights*'
_output_shapes
:
ę
+gather/weights/Initializer/truncated_normalAdd/gather/weights/Initializer/truncated_normal/mul0gather/weights/Initializer/truncated_normal/mean*
T0*!
_class
loc:@gather/weights*'
_output_shapes
:
ˇ
gather/weights
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@gather/weights*'
_output_shapes
:
Ú
gather/weights/AssignAssigngather/weights+gather/weights/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@gather/weights*'
_output_shapes
:

gather/weights/readIdentitygather/weights*
T0*!
_class
loc:@gather/weights*'
_output_shapes
:

.gather/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*!
_class
loc:@gather/weights*
_output_shapes
: 

/gather/kernel/Regularizer/l2_regularizer/L2LossL2Lossgather/weights/read*
T0*!
_class
loc:@gather/weights*
_output_shapes
: 
Ô
(gather/kernel/Regularizer/l2_regularizerMul.gather/kernel/Regularizer/l2_regularizer/scale/gather/kernel/Regularizer/l2_regularizer/L2Loss*
T0*!
_class
loc:@gather/weights*
_output_shapes
: 
e
gather/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ă
gather/Conv2DConv2Dpostnorm/Relugather/weights/read*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*
	dilations
*/
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
flatten/flatten/ShapeShapegather/Conv2D*
T0*
out_type0*
_output_shapes
:
m
#flatten/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
flatten/flatten/strided_sliceStridedSliceflatten/flatten/Shape#flatten/flatten/strided_slice/stack%flatten/flatten/strided_slice/stack_1%flatten/flatten/strided_slice/stack_2*
T0*
Index0*

begin_mask *
end_mask *
ellipsis_mask *
new_axis_mask *
shrink_axis_mask*
_output_shapes
: 
j
flatten/flatten/Reshape/shape/1Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 

flatten/flatten/Reshape/shapePackflatten/flatten/strided_sliceflatten/flatten/Reshape/shape/1*
N*
T0*

axis *
_output_shapes
:

flatten/flatten/ReshapeReshapegather/Conv2Dflatten/flatten/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ł
/logits/weights/Initializer/random_uniform/shapeConst*
valueB"      *
dtype0*!
_class
loc:@logits/weights*
_output_shapes
:

-logits/weights/Initializer/random_uniform/minConst*
valueB
 *ôôőž*
dtype0*!
_class
loc:@logits/weights*
_output_shapes
: 

-logits/weights/Initializer/random_uniform/maxConst*
valueB
 *ôôő>*
dtype0*!
_class
loc:@logits/weights*
_output_shapes
: 
ë
7logits/weights/Initializer/random_uniform/RandomUniformRandomUniform/logits/weights/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@logits/weights*
_output_shapes

:
Ö
-logits/weights/Initializer/random_uniform/subSub-logits/weights/Initializer/random_uniform/max-logits/weights/Initializer/random_uniform/min*
T0*!
_class
loc:@logits/weights*
_output_shapes
: 
č
-logits/weights/Initializer/random_uniform/mulMul7logits/weights/Initializer/random_uniform/RandomUniform-logits/weights/Initializer/random_uniform/sub*
T0*!
_class
loc:@logits/weights*
_output_shapes

:
Ú
)logits/weights/Initializer/random_uniformAdd-logits/weights/Initializer/random_uniform/mul-logits/weights/Initializer/random_uniform/min*
T0*!
_class
loc:@logits/weights*
_output_shapes

:
Ľ
logits/weights
VariableV2*
shape
:*
dtype0*
	container *
shared_name *!
_class
loc:@logits/weights*
_output_shapes

:
Ď
logits/weights/AssignAssignlogits/weights)logits/weights/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@logits/weights*
_output_shapes

:
{
logits/weights/readIdentitylogits/weights*
T0*!
_class
loc:@logits/weights*
_output_shapes

:

.logits/kernel/Regularizer/l2_regularizer/scaleConst*
valueB
 *ŹĹ'8*
dtype0*!
_class
loc:@logits/weights*
_output_shapes
: 

/logits/kernel/Regularizer/l2_regularizer/L2LossL2Losslogits/weights/read*
T0*!
_class
loc:@logits/weights*
_output_shapes
: 
Ô
(logits/kernel/Regularizer/l2_regularizerMul.logits/kernel/Regularizer/l2_regularizer/scale/logits/kernel/Regularizer/l2_regularizer/L2Loss*
T0*!
_class
loc:@logits/weights*
_output_shapes
: 

/logits/biases/Initializer/zeros/shape_as_tensorConst*
valueB:*
dtype0* 
_class
loc:@logits/biases*
_output_shapes
:

%logits/biases/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0* 
_class
loc:@logits/biases*
_output_shapes
: 
Ř
logits/biases/Initializer/zerosFill/logits/biases/Initializer/zeros/shape_as_tensor%logits/biases/Initializer/zeros/Const*
T0*

index_type0* 
_class
loc:@logits/biases*
_output_shapes
:

logits/biases
VariableV2*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@logits/biases*
_output_shapes
:
ž
logits/biases/AssignAssignlogits/biaseslogits/biases/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@logits/biases*
_output_shapes
:
t
logits/biases/readIdentitylogits/biases*
T0* 
_class
loc:@logits/biases*
_output_shapes
:

logits/MatMulMatMulflatten/flatten/Reshapelogits/weights/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

logits/BiasAddBiasAddlogits/MatMullogits/biases/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
predictionsSigmoidlogits/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/SaveV2/tensor_namesConst*ˇ
value­BŞKBconv00/weightsBconv01/weightsBgather/weightsBlogits/biasesBlogits/weightsBpostnorm/betaBpostnorm/moving_meanBpostnorm/moving_varianceBres10/Conv/BatchNorm/betaB res10/Conv/BatchNorm/moving_meanB$res10/Conv/BatchNorm/moving_varianceBres10/Conv/weightsBres10/Conv_1/weightsBres10/preact/betaBres10/preact/moving_meanBres10/preact/moving_varianceBres11/Conv/BatchNorm/betaB res11/Conv/BatchNorm/moving_meanB$res11/Conv/BatchNorm/moving_varianceBres11/Conv/weightsBres11/Conv_1/weightsBres11/preact/betaBres11/preact/moving_meanBres11/preact/moving_varianceBres20/Conv/weightsBres20/Conv_1/BatchNorm/betaB"res20/Conv_1/BatchNorm/moving_meanB&res20/Conv_1/BatchNorm/moving_varianceBres20/Conv_1/weightsBres20/Conv_2/weightsBres20/preact/betaBres20/preact/moving_meanBres20/preact/moving_varianceBres21/Conv/BatchNorm/betaB res21/Conv/BatchNorm/moving_meanB$res21/Conv/BatchNorm/moving_varianceBres21/Conv/weightsBres21/Conv_1/weightsBres21/preact/betaBres21/preact/moving_meanBres21/preact/moving_varianceBres30/Conv/weightsBres30/Conv_1/BatchNorm/betaB"res30/Conv_1/BatchNorm/moving_meanB&res30/Conv_1/BatchNorm/moving_varianceBres30/Conv_1/weightsBres30/Conv_2/weightsBres30/preact/betaBres30/preact/moving_meanBres30/preact/moving_varianceBres31/Conv/BatchNorm/betaB res31/Conv/BatchNorm/moving_meanB$res31/Conv/BatchNorm/moving_varianceBres31/Conv/weightsBres31/Conv_1/weightsBres31/preact/betaBres31/preact/moving_meanBres31/preact/moving_varianceBres40/Conv/weightsBres40/Conv_1/BatchNorm/betaB"res40/Conv_1/BatchNorm/moving_meanB&res40/Conv_1/BatchNorm/moving_varianceBres40/Conv_1/weightsBres40/Conv_2/weightsBres40/preact/betaBres40/preact/moving_meanBres40/preact/moving_varianceBres41/Conv/BatchNorm/betaB res41/Conv/BatchNorm/moving_meanB$res41/Conv/BatchNorm/moving_varianceBres41/Conv/weightsBres41/Conv_1/weightsBres41/preact/betaBres41/preact/moving_meanBres41/preact/moving_variance*
dtype0*
_output_shapes
:K
ü
save/SaveV2/shape_and_slicesConst*Ť
valueĄBKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:K
Ö
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv00/weightsconv01/weightsgather/weightslogits/biaseslogits/weightspostnorm/betapostnorm/moving_meanpostnorm/moving_varianceres10/Conv/BatchNorm/beta res10/Conv/BatchNorm/moving_mean$res10/Conv/BatchNorm/moving_varianceres10/Conv/weightsres10/Conv_1/weightsres10/preact/betares10/preact/moving_meanres10/preact/moving_varianceres11/Conv/BatchNorm/beta res11/Conv/BatchNorm/moving_mean$res11/Conv/BatchNorm/moving_varianceres11/Conv/weightsres11/Conv_1/weightsres11/preact/betares11/preact/moving_meanres11/preact/moving_varianceres20/Conv/weightsres20/Conv_1/BatchNorm/beta"res20/Conv_1/BatchNorm/moving_mean&res20/Conv_1/BatchNorm/moving_varianceres20/Conv_1/weightsres20/Conv_2/weightsres20/preact/betares20/preact/moving_meanres20/preact/moving_varianceres21/Conv/BatchNorm/beta res21/Conv/BatchNorm/moving_mean$res21/Conv/BatchNorm/moving_varianceres21/Conv/weightsres21/Conv_1/weightsres21/preact/betares21/preact/moving_meanres21/preact/moving_varianceres30/Conv/weightsres30/Conv_1/BatchNorm/beta"res30/Conv_1/BatchNorm/moving_mean&res30/Conv_1/BatchNorm/moving_varianceres30/Conv_1/weightsres30/Conv_2/weightsres30/preact/betares30/preact/moving_meanres30/preact/moving_varianceres31/Conv/BatchNorm/beta res31/Conv/BatchNorm/moving_mean$res31/Conv/BatchNorm/moving_varianceres31/Conv/weightsres31/Conv_1/weightsres31/preact/betares31/preact/moving_meanres31/preact/moving_varianceres40/Conv/weightsres40/Conv_1/BatchNorm/beta"res40/Conv_1/BatchNorm/moving_mean&res40/Conv_1/BatchNorm/moving_varianceres40/Conv_1/weightsres40/Conv_2/weightsres40/preact/betares40/preact/moving_meanres40/preact/moving_varianceres41/Conv/BatchNorm/beta res41/Conv/BatchNorm/moving_mean$res41/Conv/BatchNorm/moving_varianceres41/Conv/weightsres41/Conv_1/weightsres41/preact/betares41/preact/moving_meanres41/preact/moving_variance*Y
dtypesO
M2K
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*ˇ
value­BŞKBconv00/weightsBconv01/weightsBgather/weightsBlogits/biasesBlogits/weightsBpostnorm/betaBpostnorm/moving_meanBpostnorm/moving_varianceBres10/Conv/BatchNorm/betaB res10/Conv/BatchNorm/moving_meanB$res10/Conv/BatchNorm/moving_varianceBres10/Conv/weightsBres10/Conv_1/weightsBres10/preact/betaBres10/preact/moving_meanBres10/preact/moving_varianceBres11/Conv/BatchNorm/betaB res11/Conv/BatchNorm/moving_meanB$res11/Conv/BatchNorm/moving_varianceBres11/Conv/weightsBres11/Conv_1/weightsBres11/preact/betaBres11/preact/moving_meanBres11/preact/moving_varianceBres20/Conv/weightsBres20/Conv_1/BatchNorm/betaB"res20/Conv_1/BatchNorm/moving_meanB&res20/Conv_1/BatchNorm/moving_varianceBres20/Conv_1/weightsBres20/Conv_2/weightsBres20/preact/betaBres20/preact/moving_meanBres20/preact/moving_varianceBres21/Conv/BatchNorm/betaB res21/Conv/BatchNorm/moving_meanB$res21/Conv/BatchNorm/moving_varianceBres21/Conv/weightsBres21/Conv_1/weightsBres21/preact/betaBres21/preact/moving_meanBres21/preact/moving_varianceBres30/Conv/weightsBres30/Conv_1/BatchNorm/betaB"res30/Conv_1/BatchNorm/moving_meanB&res30/Conv_1/BatchNorm/moving_varianceBres30/Conv_1/weightsBres30/Conv_2/weightsBres30/preact/betaBres30/preact/moving_meanBres30/preact/moving_varianceBres31/Conv/BatchNorm/betaB res31/Conv/BatchNorm/moving_meanB$res31/Conv/BatchNorm/moving_varianceBres31/Conv/weightsBres31/Conv_1/weightsBres31/preact/betaBres31/preact/moving_meanBres31/preact/moving_varianceBres40/Conv/weightsBres40/Conv_1/BatchNorm/betaB"res40/Conv_1/BatchNorm/moving_meanB&res40/Conv_1/BatchNorm/moving_varianceBres40/Conv_1/weightsBres40/Conv_2/weightsBres40/preact/betaBres40/preact/moving_meanBres40/preact/moving_varianceBres41/Conv/BatchNorm/betaB res41/Conv/BatchNorm/moving_meanB$res41/Conv/BatchNorm/moving_varianceBres41/Conv/weightsBres41/Conv_1/weightsBres41/preact/betaBres41/preact/moving_meanBres41/preact/moving_variance*
dtype0*
_output_shapes
:K

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ť
valueĄBKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:K

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Y
dtypesO
M2K*Â
_output_shapesŻ
Ź:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
˛
save/AssignAssignconv00/weightssave/RestoreV2*
T0*
validate_shape(*
use_locking(*!
_class
loc:@conv00/weights*&
_output_shapes
:
ś
save/Assign_1Assignconv01/weightssave/RestoreV2:1*
T0*
validate_shape(*
use_locking(*!
_class
loc:@conv01/weights*&
_output_shapes
:
ˇ
save/Assign_2Assigngather/weightssave/RestoreV2:2*
T0*
validate_shape(*
use_locking(*!
_class
loc:@gather/weights*'
_output_shapes
:
¨
save/Assign_3Assignlogits/biasessave/RestoreV2:3*
T0*
validate_shape(*
use_locking(* 
_class
loc:@logits/biases*
_output_shapes
:
Ž
save/Assign_4Assignlogits/weightssave/RestoreV2:4*
T0*
validate_shape(*
use_locking(*!
_class
loc:@logits/weights*
_output_shapes

:
Š
save/Assign_5Assignpostnorm/betasave/RestoreV2:5*
T0*
validate_shape(*
use_locking(* 
_class
loc:@postnorm/beta*
_output_shapes	
:
ˇ
save/Assign_6Assignpostnorm/moving_meansave/RestoreV2:6*
T0*
validate_shape(*
use_locking(*'
_class
loc:@postnorm/moving_mean*
_output_shapes	
:
ż
save/Assign_7Assignpostnorm/moving_variancesave/RestoreV2:7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@postnorm/moving_variance*
_output_shapes	
:
Ŕ
save/Assign_8Assignres10/Conv/BatchNorm/betasave/RestoreV2:8*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:
Î
save/Assign_9Assign res10/Conv/BatchNorm/moving_meansave/RestoreV2:9*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:
Ř
save/Assign_10Assign$res10/Conv/BatchNorm/moving_variancesave/RestoreV2:10*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:
Ŕ
save/Assign_11Assignres10/Conv/weightssave/RestoreV2:11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:
Ä
save/Assign_12Assignres10/Conv_1/weightssave/RestoreV2:12*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:
˛
save/Assign_13Assignres10/preact/betasave/RestoreV2:13*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res10/preact/beta*
_output_shapes
:
Ŕ
save/Assign_14Assignres10/preact/moving_meansave/RestoreV2:14*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:
Č
save/Assign_15Assignres10/preact/moving_variancesave/RestoreV2:15*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
Â
save/Assign_16Assignres11/Conv/BatchNorm/betasave/RestoreV2:16*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:
Đ
save/Assign_17Assign res11/Conv/BatchNorm/moving_meansave/RestoreV2:17*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:
Ř
save/Assign_18Assign$res11/Conv/BatchNorm/moving_variancesave/RestoreV2:18*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:
Ŕ
save/Assign_19Assignres11/Conv/weightssave/RestoreV2:19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:
Ä
save/Assign_20Assignres11/Conv_1/weightssave/RestoreV2:20*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:
˛
save/Assign_21Assignres11/preact/betasave/RestoreV2:21*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res11/preact/beta*
_output_shapes
:
Ŕ
save/Assign_22Assignres11/preact/moving_meansave/RestoreV2:22*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:
Č
save/Assign_23Assignres11/preact/moving_variancesave/RestoreV2:23*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
Ŕ
save/Assign_24Assignres20/Conv/weightssave/RestoreV2:24*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 
Ć
save/Assign_25Assignres20/Conv_1/BatchNorm/betasave/RestoreV2:25*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 
Ô
save/Assign_26Assign"res20/Conv_1/BatchNorm/moving_meansave/RestoreV2:26*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
Ü
save/Assign_27Assign&res20/Conv_1/BatchNorm/moving_variancesave/RestoreV2:27*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
Ä
save/Assign_28Assignres20/Conv_1/weightssave/RestoreV2:28*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 
Ä
save/Assign_29Assignres20/Conv_2/weightssave/RestoreV2:29*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  
˛
save/Assign_30Assignres20/preact/betasave/RestoreV2:30*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res20/preact/beta*
_output_shapes
:
Ŕ
save/Assign_31Assignres20/preact/moving_meansave/RestoreV2:31*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:
Č
save/Assign_32Assignres20/preact/moving_variancesave/RestoreV2:32*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
Â
save/Assign_33Assignres21/Conv/BatchNorm/betasave/RestoreV2:33*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 
Đ
save/Assign_34Assign res21/Conv/BatchNorm/moving_meansave/RestoreV2:34*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 
Ř
save/Assign_35Assign$res21/Conv/BatchNorm/moving_variancesave/RestoreV2:35*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 
Ŕ
save/Assign_36Assignres21/Conv/weightssave/RestoreV2:36*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  
Ä
save/Assign_37Assignres21/Conv_1/weightssave/RestoreV2:37*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  
˛
save/Assign_38Assignres21/preact/betasave/RestoreV2:38*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res21/preact/beta*
_output_shapes
: 
Ŕ
save/Assign_39Assignres21/preact/moving_meansave/RestoreV2:39*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 
Č
save/Assign_40Assignres21/preact/moving_variancesave/RestoreV2:40*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 
Ŕ
save/Assign_41Assignres30/Conv/weightssave/RestoreV2:41*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @
Ć
save/Assign_42Assignres30/Conv_1/BatchNorm/betasave/RestoreV2:42*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:@
Ô
save/Assign_43Assign"res30/Conv_1/BatchNorm/moving_meansave/RestoreV2:43*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:@
Ü
save/Assign_44Assign&res30/Conv_1/BatchNorm/moving_variancesave/RestoreV2:44*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:@
Ä
save/Assign_45Assignres30/Conv_1/weightssave/RestoreV2:45*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @
Ä
save/Assign_46Assignres30/Conv_2/weightssave/RestoreV2:46*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@
˛
save/Assign_47Assignres30/preact/betasave/RestoreV2:47*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res30/preact/beta*
_output_shapes
: 
Ŕ
save/Assign_48Assignres30/preact/moving_meansave/RestoreV2:48*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 
Č
save/Assign_49Assignres30/preact/moving_variancesave/RestoreV2:49*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 
Â
save/Assign_50Assignres31/Conv/BatchNorm/betasave/RestoreV2:50*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:@
Đ
save/Assign_51Assign res31/Conv/BatchNorm/moving_meansave/RestoreV2:51*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:@
Ř
save/Assign_52Assign$res31/Conv/BatchNorm/moving_variancesave/RestoreV2:52*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:@
Ŕ
save/Assign_53Assignres31/Conv/weightssave/RestoreV2:53*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@
Ä
save/Assign_54Assignres31/Conv_1/weightssave/RestoreV2:54*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@
˛
save/Assign_55Assignres31/preact/betasave/RestoreV2:55*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res31/preact/beta*
_output_shapes
:@
Ŕ
save/Assign_56Assignres31/preact/moving_meansave/RestoreV2:56*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:@
Č
save/Assign_57Assignres31/preact/moving_variancesave/RestoreV2:57*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:@
Á
save/Assign_58Assignres40/Conv/weightssave/RestoreV2:58*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@
Ç
save/Assign_59Assignres40/Conv_1/BatchNorm/betasave/RestoreV2:59*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes	
:
Ő
save/Assign_60Assign"res40/Conv_1/BatchNorm/moving_meansave/RestoreV2:60*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes	
:
Ý
save/Assign_61Assign&res40/Conv_1/BatchNorm/moving_variancesave/RestoreV2:61*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes	
:
Ĺ
save/Assign_62Assignres40/Conv_1/weightssave/RestoreV2:62*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@
Ć
save/Assign_63Assignres40/Conv_2/weightssave/RestoreV2:63*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:
˛
save/Assign_64Assignres40/preact/betasave/RestoreV2:64*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res40/preact/beta*
_output_shapes
:@
Ŕ
save/Assign_65Assignres40/preact/moving_meansave/RestoreV2:65*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:@
Č
save/Assign_66Assignres40/preact/moving_variancesave/RestoreV2:66*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:@
Ă
save/Assign_67Assignres41/Conv/BatchNorm/betasave/RestoreV2:67*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes	
:
Ń
save/Assign_68Assign res41/Conv/BatchNorm/moving_meansave/RestoreV2:68*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes	
:
Ů
save/Assign_69Assign$res41/Conv/BatchNorm/moving_variancesave/RestoreV2:69*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes	
:
Â
save/Assign_70Assignres41/Conv/weightssave/RestoreV2:70*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:
Ć
save/Assign_71Assignres41/Conv_1/weightssave/RestoreV2:71*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:
ł
save/Assign_72Assignres41/preact/betasave/RestoreV2:72*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res41/preact/beta*
_output_shapes	
:
Á
save/Assign_73Assignres41/preact/moving_meansave/RestoreV2:73*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes	
:
É
save/Assign_74Assignres41/preact/moving_variancesave/RestoreV2:74*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes	
:


save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_c7b556934f384ca39263ef56eaf23947/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 

save_1/SaveV2/tensor_namesConst"/device:CPU:0*ˇ
value­BŞKBconv00/weightsBconv01/weightsBgather/weightsBlogits/biasesBlogits/weightsBpostnorm/betaBpostnorm/moving_meanBpostnorm/moving_varianceBres10/Conv/BatchNorm/betaB res10/Conv/BatchNorm/moving_meanB$res10/Conv/BatchNorm/moving_varianceBres10/Conv/weightsBres10/Conv_1/weightsBres10/preact/betaBres10/preact/moving_meanBres10/preact/moving_varianceBres11/Conv/BatchNorm/betaB res11/Conv/BatchNorm/moving_meanB$res11/Conv/BatchNorm/moving_varianceBres11/Conv/weightsBres11/Conv_1/weightsBres11/preact/betaBres11/preact/moving_meanBres11/preact/moving_varianceBres20/Conv/weightsBres20/Conv_1/BatchNorm/betaB"res20/Conv_1/BatchNorm/moving_meanB&res20/Conv_1/BatchNorm/moving_varianceBres20/Conv_1/weightsBres20/Conv_2/weightsBres20/preact/betaBres20/preact/moving_meanBres20/preact/moving_varianceBres21/Conv/BatchNorm/betaB res21/Conv/BatchNorm/moving_meanB$res21/Conv/BatchNorm/moving_varianceBres21/Conv/weightsBres21/Conv_1/weightsBres21/preact/betaBres21/preact/moving_meanBres21/preact/moving_varianceBres30/Conv/weightsBres30/Conv_1/BatchNorm/betaB"res30/Conv_1/BatchNorm/moving_meanB&res30/Conv_1/BatchNorm/moving_varianceBres30/Conv_1/weightsBres30/Conv_2/weightsBres30/preact/betaBres30/preact/moving_meanBres30/preact/moving_varianceBres31/Conv/BatchNorm/betaB res31/Conv/BatchNorm/moving_meanB$res31/Conv/BatchNorm/moving_varianceBres31/Conv/weightsBres31/Conv_1/weightsBres31/preact/betaBres31/preact/moving_meanBres31/preact/moving_varianceBres40/Conv/weightsBres40/Conv_1/BatchNorm/betaB"res40/Conv_1/BatchNorm/moving_meanB&res40/Conv_1/BatchNorm/moving_varianceBres40/Conv_1/weightsBres40/Conv_2/weightsBres40/preact/betaBres40/preact/moving_meanBres40/preact/moving_varianceBres41/Conv/BatchNorm/betaB res41/Conv/BatchNorm/moving_meanB$res41/Conv/BatchNorm/moving_varianceBres41/Conv/weightsBres41/Conv_1/weightsBres41/preact/betaBres41/preact/moving_meanBres41/preact/moving_variance*
dtype0*
_output_shapes
:K

save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*Ť
valueĄBKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:K
÷
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesconv00/weightsconv01/weightsgather/weightslogits/biaseslogits/weightspostnorm/betapostnorm/moving_meanpostnorm/moving_varianceres10/Conv/BatchNorm/beta res10/Conv/BatchNorm/moving_mean$res10/Conv/BatchNorm/moving_varianceres10/Conv/weightsres10/Conv_1/weightsres10/preact/betares10/preact/moving_meanres10/preact/moving_varianceres11/Conv/BatchNorm/beta res11/Conv/BatchNorm/moving_mean$res11/Conv/BatchNorm/moving_varianceres11/Conv/weightsres11/Conv_1/weightsres11/preact/betares11/preact/moving_meanres11/preact/moving_varianceres20/Conv/weightsres20/Conv_1/BatchNorm/beta"res20/Conv_1/BatchNorm/moving_mean&res20/Conv_1/BatchNorm/moving_varianceres20/Conv_1/weightsres20/Conv_2/weightsres20/preact/betares20/preact/moving_meanres20/preact/moving_varianceres21/Conv/BatchNorm/beta res21/Conv/BatchNorm/moving_mean$res21/Conv/BatchNorm/moving_varianceres21/Conv/weightsres21/Conv_1/weightsres21/preact/betares21/preact/moving_meanres21/preact/moving_varianceres30/Conv/weightsres30/Conv_1/BatchNorm/beta"res30/Conv_1/BatchNorm/moving_mean&res30/Conv_1/BatchNorm/moving_varianceres30/Conv_1/weightsres30/Conv_2/weightsres30/preact/betares30/preact/moving_meanres30/preact/moving_varianceres31/Conv/BatchNorm/beta res31/Conv/BatchNorm/moving_mean$res31/Conv/BatchNorm/moving_varianceres31/Conv/weightsres31/Conv_1/weightsres31/preact/betares31/preact/moving_meanres31/preact/moving_varianceres40/Conv/weightsres40/Conv_1/BatchNorm/beta"res40/Conv_1/BatchNorm/moving_mean&res40/Conv_1/BatchNorm/moving_varianceres40/Conv_1/weightsres40/Conv_2/weightsres40/preact/betares40/preact/moving_meanres40/preact/moving_varianceres41/Conv/BatchNorm/beta res41/Conv/BatchNorm/moving_mean$res41/Conv/BatchNorm/moving_varianceres41/Conv/weightsres41/Conv_1/weightsres41/preact/betares41/preact/moving_meanres41/preact/moving_variance"/device:CPU:0*Y
dtypesO
M2K
¨
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
˛
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*
T0*

axis *
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 

save_1/RestoreV2/tensor_namesConst"/device:CPU:0*ˇ
value­BŞKBconv00/weightsBconv01/weightsBgather/weightsBlogits/biasesBlogits/weightsBpostnorm/betaBpostnorm/moving_meanBpostnorm/moving_varianceBres10/Conv/BatchNorm/betaB res10/Conv/BatchNorm/moving_meanB$res10/Conv/BatchNorm/moving_varianceBres10/Conv/weightsBres10/Conv_1/weightsBres10/preact/betaBres10/preact/moving_meanBres10/preact/moving_varianceBres11/Conv/BatchNorm/betaB res11/Conv/BatchNorm/moving_meanB$res11/Conv/BatchNorm/moving_varianceBres11/Conv/weightsBres11/Conv_1/weightsBres11/preact/betaBres11/preact/moving_meanBres11/preact/moving_varianceBres20/Conv/weightsBres20/Conv_1/BatchNorm/betaB"res20/Conv_1/BatchNorm/moving_meanB&res20/Conv_1/BatchNorm/moving_varianceBres20/Conv_1/weightsBres20/Conv_2/weightsBres20/preact/betaBres20/preact/moving_meanBres20/preact/moving_varianceBres21/Conv/BatchNorm/betaB res21/Conv/BatchNorm/moving_meanB$res21/Conv/BatchNorm/moving_varianceBres21/Conv/weightsBres21/Conv_1/weightsBres21/preact/betaBres21/preact/moving_meanBres21/preact/moving_varianceBres30/Conv/weightsBres30/Conv_1/BatchNorm/betaB"res30/Conv_1/BatchNorm/moving_meanB&res30/Conv_1/BatchNorm/moving_varianceBres30/Conv_1/weightsBres30/Conv_2/weightsBres30/preact/betaBres30/preact/moving_meanBres30/preact/moving_varianceBres31/Conv/BatchNorm/betaB res31/Conv/BatchNorm/moving_meanB$res31/Conv/BatchNorm/moving_varianceBres31/Conv/weightsBres31/Conv_1/weightsBres31/preact/betaBres31/preact/moving_meanBres31/preact/moving_varianceBres40/Conv/weightsBres40/Conv_1/BatchNorm/betaB"res40/Conv_1/BatchNorm/moving_meanB&res40/Conv_1/BatchNorm/moving_varianceBres40/Conv_1/weightsBres40/Conv_2/weightsBres40/preact/betaBres40/preact/moving_meanBres40/preact/moving_varianceBres41/Conv/BatchNorm/betaB res41/Conv/BatchNorm/moving_meanB$res41/Conv/BatchNorm/moving_varianceBres41/Conv/weightsBres41/Conv_1/weightsBres41/preact/betaBres41/preact/moving_meanBres41/preact/moving_variance*
dtype0*
_output_shapes
:K

!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*Ť
valueĄBKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:K

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*Y
dtypesO
M2K*Â
_output_shapesŻ
Ź:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ś
save_1/AssignAssignconv00/weightssave_1/RestoreV2*
T0*
validate_shape(*
use_locking(*!
_class
loc:@conv00/weights*&
_output_shapes
:
ş
save_1/Assign_1Assignconv01/weightssave_1/RestoreV2:1*
T0*
validate_shape(*
use_locking(*!
_class
loc:@conv01/weights*&
_output_shapes
:
ť
save_1/Assign_2Assigngather/weightssave_1/RestoreV2:2*
T0*
validate_shape(*
use_locking(*!
_class
loc:@gather/weights*'
_output_shapes
:
Ź
save_1/Assign_3Assignlogits/biasessave_1/RestoreV2:3*
T0*
validate_shape(*
use_locking(* 
_class
loc:@logits/biases*
_output_shapes
:
˛
save_1/Assign_4Assignlogits/weightssave_1/RestoreV2:4*
T0*
validate_shape(*
use_locking(*!
_class
loc:@logits/weights*
_output_shapes

:
­
save_1/Assign_5Assignpostnorm/betasave_1/RestoreV2:5*
T0*
validate_shape(*
use_locking(* 
_class
loc:@postnorm/beta*
_output_shapes	
:
ť
save_1/Assign_6Assignpostnorm/moving_meansave_1/RestoreV2:6*
T0*
validate_shape(*
use_locking(*'
_class
loc:@postnorm/moving_mean*
_output_shapes	
:
Ă
save_1/Assign_7Assignpostnorm/moving_variancesave_1/RestoreV2:7*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@postnorm/moving_variance*
_output_shapes	
:
Ä
save_1/Assign_8Assignres10/Conv/BatchNorm/betasave_1/RestoreV2:8*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res10/Conv/BatchNorm/beta*
_output_shapes
:
Ň
save_1/Assign_9Assign res10/Conv/BatchNorm/moving_meansave_1/RestoreV2:9*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res10/Conv/BatchNorm/moving_mean*
_output_shapes
:
Ü
save_1/Assign_10Assign$res10/Conv/BatchNorm/moving_variancesave_1/RestoreV2:10*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res10/Conv/BatchNorm/moving_variance*
_output_shapes
:
Ä
save_1/Assign_11Assignres10/Conv/weightssave_1/RestoreV2:11*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res10/Conv/weights*&
_output_shapes
:
Č
save_1/Assign_12Assignres10/Conv_1/weightssave_1/RestoreV2:12*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res10/Conv_1/weights*&
_output_shapes
:
ś
save_1/Assign_13Assignres10/preact/betasave_1/RestoreV2:13*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res10/preact/beta*
_output_shapes
:
Ä
save_1/Assign_14Assignres10/preact/moving_meansave_1/RestoreV2:14*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res10/preact/moving_mean*
_output_shapes
:
Ě
save_1/Assign_15Assignres10/preact/moving_variancesave_1/RestoreV2:15*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res10/preact/moving_variance*
_output_shapes
:
Ć
save_1/Assign_16Assignres11/Conv/BatchNorm/betasave_1/RestoreV2:16*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res11/Conv/BatchNorm/beta*
_output_shapes
:
Ô
save_1/Assign_17Assign res11/Conv/BatchNorm/moving_meansave_1/RestoreV2:17*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res11/Conv/BatchNorm/moving_mean*
_output_shapes
:
Ü
save_1/Assign_18Assign$res11/Conv/BatchNorm/moving_variancesave_1/RestoreV2:18*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res11/Conv/BatchNorm/moving_variance*
_output_shapes
:
Ä
save_1/Assign_19Assignres11/Conv/weightssave_1/RestoreV2:19*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res11/Conv/weights*&
_output_shapes
:
Č
save_1/Assign_20Assignres11/Conv_1/weightssave_1/RestoreV2:20*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res11/Conv_1/weights*&
_output_shapes
:
ś
save_1/Assign_21Assignres11/preact/betasave_1/RestoreV2:21*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res11/preact/beta*
_output_shapes
:
Ä
save_1/Assign_22Assignres11/preact/moving_meansave_1/RestoreV2:22*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res11/preact/moving_mean*
_output_shapes
:
Ě
save_1/Assign_23Assignres11/preact/moving_variancesave_1/RestoreV2:23*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res11/preact/moving_variance*
_output_shapes
:
Ä
save_1/Assign_24Assignres20/Conv/weightssave_1/RestoreV2:24*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res20/Conv/weights*&
_output_shapes
: 
Ę
save_1/Assign_25Assignres20/Conv_1/BatchNorm/betasave_1/RestoreV2:25*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res20/Conv_1/BatchNorm/beta*
_output_shapes
: 
Ř
save_1/Assign_26Assign"res20/Conv_1/BatchNorm/moving_meansave_1/RestoreV2:26*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res20/Conv_1/BatchNorm/moving_mean*
_output_shapes
: 
ŕ
save_1/Assign_27Assign&res20/Conv_1/BatchNorm/moving_variancesave_1/RestoreV2:27*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res20/Conv_1/BatchNorm/moving_variance*
_output_shapes
: 
Č
save_1/Assign_28Assignres20/Conv_1/weightssave_1/RestoreV2:28*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res20/Conv_1/weights*&
_output_shapes
: 
Č
save_1/Assign_29Assignres20/Conv_2/weightssave_1/RestoreV2:29*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res20/Conv_2/weights*&
_output_shapes
:  
ś
save_1/Assign_30Assignres20/preact/betasave_1/RestoreV2:30*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res20/preact/beta*
_output_shapes
:
Ä
save_1/Assign_31Assignres20/preact/moving_meansave_1/RestoreV2:31*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res20/preact/moving_mean*
_output_shapes
:
Ě
save_1/Assign_32Assignres20/preact/moving_variancesave_1/RestoreV2:32*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res20/preact/moving_variance*
_output_shapes
:
Ć
save_1/Assign_33Assignres21/Conv/BatchNorm/betasave_1/RestoreV2:33*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res21/Conv/BatchNorm/beta*
_output_shapes
: 
Ô
save_1/Assign_34Assign res21/Conv/BatchNorm/moving_meansave_1/RestoreV2:34*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res21/Conv/BatchNorm/moving_mean*
_output_shapes
: 
Ü
save_1/Assign_35Assign$res21/Conv/BatchNorm/moving_variancesave_1/RestoreV2:35*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res21/Conv/BatchNorm/moving_variance*
_output_shapes
: 
Ä
save_1/Assign_36Assignres21/Conv/weightssave_1/RestoreV2:36*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res21/Conv/weights*&
_output_shapes
:  
Č
save_1/Assign_37Assignres21/Conv_1/weightssave_1/RestoreV2:37*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res21/Conv_1/weights*&
_output_shapes
:  
ś
save_1/Assign_38Assignres21/preact/betasave_1/RestoreV2:38*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res21/preact/beta*
_output_shapes
: 
Ä
save_1/Assign_39Assignres21/preact/moving_meansave_1/RestoreV2:39*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res21/preact/moving_mean*
_output_shapes
: 
Ě
save_1/Assign_40Assignres21/preact/moving_variancesave_1/RestoreV2:40*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res21/preact/moving_variance*
_output_shapes
: 
Ä
save_1/Assign_41Assignres30/Conv/weightssave_1/RestoreV2:41*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res30/Conv/weights*&
_output_shapes
: @
Ę
save_1/Assign_42Assignres30/Conv_1/BatchNorm/betasave_1/RestoreV2:42*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res30/Conv_1/BatchNorm/beta*
_output_shapes
:@
Ř
save_1/Assign_43Assign"res30/Conv_1/BatchNorm/moving_meansave_1/RestoreV2:43*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res30/Conv_1/BatchNorm/moving_mean*
_output_shapes
:@
ŕ
save_1/Assign_44Assign&res30/Conv_1/BatchNorm/moving_variancesave_1/RestoreV2:44*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res30/Conv_1/BatchNorm/moving_variance*
_output_shapes
:@
Č
save_1/Assign_45Assignres30/Conv_1/weightssave_1/RestoreV2:45*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res30/Conv_1/weights*&
_output_shapes
: @
Č
save_1/Assign_46Assignres30/Conv_2/weightssave_1/RestoreV2:46*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res30/Conv_2/weights*&
_output_shapes
:@@
ś
save_1/Assign_47Assignres30/preact/betasave_1/RestoreV2:47*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res30/preact/beta*
_output_shapes
: 
Ä
save_1/Assign_48Assignres30/preact/moving_meansave_1/RestoreV2:48*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res30/preact/moving_mean*
_output_shapes
: 
Ě
save_1/Assign_49Assignres30/preact/moving_variancesave_1/RestoreV2:49*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res30/preact/moving_variance*
_output_shapes
: 
Ć
save_1/Assign_50Assignres31/Conv/BatchNorm/betasave_1/RestoreV2:50*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res31/Conv/BatchNorm/beta*
_output_shapes
:@
Ô
save_1/Assign_51Assign res31/Conv/BatchNorm/moving_meansave_1/RestoreV2:51*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res31/Conv/BatchNorm/moving_mean*
_output_shapes
:@
Ü
save_1/Assign_52Assign$res31/Conv/BatchNorm/moving_variancesave_1/RestoreV2:52*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res31/Conv/BatchNorm/moving_variance*
_output_shapes
:@
Ä
save_1/Assign_53Assignres31/Conv/weightssave_1/RestoreV2:53*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res31/Conv/weights*&
_output_shapes
:@@
Č
save_1/Assign_54Assignres31/Conv_1/weightssave_1/RestoreV2:54*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res31/Conv_1/weights*&
_output_shapes
:@@
ś
save_1/Assign_55Assignres31/preact/betasave_1/RestoreV2:55*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res31/preact/beta*
_output_shapes
:@
Ä
save_1/Assign_56Assignres31/preact/moving_meansave_1/RestoreV2:56*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res31/preact/moving_mean*
_output_shapes
:@
Ě
save_1/Assign_57Assignres31/preact/moving_variancesave_1/RestoreV2:57*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res31/preact/moving_variance*
_output_shapes
:@
Ĺ
save_1/Assign_58Assignres40/Conv/weightssave_1/RestoreV2:58*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res40/Conv/weights*'
_output_shapes
:@
Ë
save_1/Assign_59Assignres40/Conv_1/BatchNorm/betasave_1/RestoreV2:59*
T0*
validate_shape(*
use_locking(*.
_class$
" loc:@res40/Conv_1/BatchNorm/beta*
_output_shapes	
:
Ů
save_1/Assign_60Assign"res40/Conv_1/BatchNorm/moving_meansave_1/RestoreV2:60*
T0*
validate_shape(*
use_locking(*5
_class+
)'loc:@res40/Conv_1/BatchNorm/moving_mean*
_output_shapes	
:
á
save_1/Assign_61Assign&res40/Conv_1/BatchNorm/moving_variancesave_1/RestoreV2:61*
T0*
validate_shape(*
use_locking(*9
_class/
-+loc:@res40/Conv_1/BatchNorm/moving_variance*
_output_shapes	
:
É
save_1/Assign_62Assignres40/Conv_1/weightssave_1/RestoreV2:62*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res40/Conv_1/weights*'
_output_shapes
:@
Ę
save_1/Assign_63Assignres40/Conv_2/weightssave_1/RestoreV2:63*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res40/Conv_2/weights*(
_output_shapes
:
ś
save_1/Assign_64Assignres40/preact/betasave_1/RestoreV2:64*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res40/preact/beta*
_output_shapes
:@
Ä
save_1/Assign_65Assignres40/preact/moving_meansave_1/RestoreV2:65*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res40/preact/moving_mean*
_output_shapes
:@
Ě
save_1/Assign_66Assignres40/preact/moving_variancesave_1/RestoreV2:66*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res40/preact/moving_variance*
_output_shapes
:@
Ç
save_1/Assign_67Assignres41/Conv/BatchNorm/betasave_1/RestoreV2:67*
T0*
validate_shape(*
use_locking(*,
_class"
 loc:@res41/Conv/BatchNorm/beta*
_output_shapes	
:
Ő
save_1/Assign_68Assign res41/Conv/BatchNorm/moving_meansave_1/RestoreV2:68*
T0*
validate_shape(*
use_locking(*3
_class)
'%loc:@res41/Conv/BatchNorm/moving_mean*
_output_shapes	
:
Ý
save_1/Assign_69Assign$res41/Conv/BatchNorm/moving_variancesave_1/RestoreV2:69*
T0*
validate_shape(*
use_locking(*7
_class-
+)loc:@res41/Conv/BatchNorm/moving_variance*
_output_shapes	
:
Ć
save_1/Assign_70Assignres41/Conv/weightssave_1/RestoreV2:70*
T0*
validate_shape(*
use_locking(*%
_class
loc:@res41/Conv/weights*(
_output_shapes
:
Ę
save_1/Assign_71Assignres41/Conv_1/weightssave_1/RestoreV2:71*
T0*
validate_shape(*
use_locking(*'
_class
loc:@res41/Conv_1/weights*(
_output_shapes
:
ˇ
save_1/Assign_72Assignres41/preact/betasave_1/RestoreV2:72*
T0*
validate_shape(*
use_locking(*$
_class
loc:@res41/preact/beta*
_output_shapes	
:
Ĺ
save_1/Assign_73Assignres41/preact/moving_meansave_1/RestoreV2:73*
T0*
validate_shape(*
use_locking(*+
_class!
loc:@res41/preact/moving_mean*
_output_shapes	
:
Í
save_1/Assign_74Assignres41/preact/moving_variancesave_1/RestoreV2:74*
T0*
validate_shape(*
use_locking(*/
_class%
#!loc:@res41/preact/moving_variance*
_output_shapes	
:
Ą
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ŮU
	variablesËUČU
o
conv00/weights:0conv00/weights/Assignconv00/weights/read:02-conv00/weights/Initializer/truncated_normal:0
o
conv01/weights:0conv01/weights/Assignconv01/weights/read:02-conv01/weights/Initializer/truncated_normal:0
p
res10/preact/beta:0res10/preact/beta/Assignres10/preact/beta/read:02%res10/preact/beta/Initializer/zeros:0

res10/preact/moving_mean:0res10/preact/moving_mean/Assignres10/preact/moving_mean/read:02,res10/preact/moving_mean/Initializer/zeros:0

res10/preact/moving_variance:0#res10/preact/moving_variance/Assign#res10/preact/moving_variance/read:02/res10/preact/moving_variance/Initializer/ones:0

res10/Conv/weights:0res10/Conv/weights/Assignres10/Conv/weights/read:021res10/Conv/weights/Initializer/truncated_normal:0

res10/Conv/BatchNorm/beta:0 res10/Conv/BatchNorm/beta/Assign res10/Conv/BatchNorm/beta/read:02-res10/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res10/Conv/BatchNorm/moving_mean:0'res10/Conv/BatchNorm/moving_mean/Assign'res10/Conv/BatchNorm/moving_mean/read:024res10/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res10/Conv/BatchNorm/moving_variance:0+res10/Conv/BatchNorm/moving_variance/Assign+res10/Conv/BatchNorm/moving_variance/read:027res10/Conv/BatchNorm/moving_variance/Initializer/ones:0

res10/Conv_1/weights:0res10/Conv_1/weights/Assignres10/Conv_1/weights/read:023res10/Conv_1/weights/Initializer/truncated_normal:0
p
res11/preact/beta:0res11/preact/beta/Assignres11/preact/beta/read:02%res11/preact/beta/Initializer/zeros:0

res11/preact/moving_mean:0res11/preact/moving_mean/Assignres11/preact/moving_mean/read:02,res11/preact/moving_mean/Initializer/zeros:0

res11/preact/moving_variance:0#res11/preact/moving_variance/Assign#res11/preact/moving_variance/read:02/res11/preact/moving_variance/Initializer/ones:0

res11/Conv/weights:0res11/Conv/weights/Assignres11/Conv/weights/read:021res11/Conv/weights/Initializer/truncated_normal:0

res11/Conv/BatchNorm/beta:0 res11/Conv/BatchNorm/beta/Assign res11/Conv/BatchNorm/beta/read:02-res11/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res11/Conv/BatchNorm/moving_mean:0'res11/Conv/BatchNorm/moving_mean/Assign'res11/Conv/BatchNorm/moving_mean/read:024res11/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res11/Conv/BatchNorm/moving_variance:0+res11/Conv/BatchNorm/moving_variance/Assign+res11/Conv/BatchNorm/moving_variance/read:027res11/Conv/BatchNorm/moving_variance/Initializer/ones:0

res11/Conv_1/weights:0res11/Conv_1/weights/Assignres11/Conv_1/weights/read:023res11/Conv_1/weights/Initializer/truncated_normal:0
p
res20/preact/beta:0res20/preact/beta/Assignres20/preact/beta/read:02%res20/preact/beta/Initializer/zeros:0

res20/preact/moving_mean:0res20/preact/moving_mean/Assignres20/preact/moving_mean/read:02,res20/preact/moving_mean/Initializer/zeros:0

res20/preact/moving_variance:0#res20/preact/moving_variance/Assign#res20/preact/moving_variance/read:02/res20/preact/moving_variance/Initializer/ones:0

res20/Conv/weights:0res20/Conv/weights/Assignres20/Conv/weights/read:021res20/Conv/weights/Initializer/truncated_normal:0

res20/Conv_1/weights:0res20/Conv_1/weights/Assignres20/Conv_1/weights/read:023res20/Conv_1/weights/Initializer/truncated_normal:0

res20/Conv_1/BatchNorm/beta:0"res20/Conv_1/BatchNorm/beta/Assign"res20/Conv_1/BatchNorm/beta/read:02/res20/Conv_1/BatchNorm/beta/Initializer/zeros:0
´
$res20/Conv_1/BatchNorm/moving_mean:0)res20/Conv_1/BatchNorm/moving_mean/Assign)res20/Conv_1/BatchNorm/moving_mean/read:026res20/Conv_1/BatchNorm/moving_mean/Initializer/zeros:0
Ă
(res20/Conv_1/BatchNorm/moving_variance:0-res20/Conv_1/BatchNorm/moving_variance/Assign-res20/Conv_1/BatchNorm/moving_variance/read:029res20/Conv_1/BatchNorm/moving_variance/Initializer/ones:0

res20/Conv_2/weights:0res20/Conv_2/weights/Assignres20/Conv_2/weights/read:023res20/Conv_2/weights/Initializer/truncated_normal:0
p
res21/preact/beta:0res21/preact/beta/Assignres21/preact/beta/read:02%res21/preact/beta/Initializer/zeros:0

res21/preact/moving_mean:0res21/preact/moving_mean/Assignres21/preact/moving_mean/read:02,res21/preact/moving_mean/Initializer/zeros:0

res21/preact/moving_variance:0#res21/preact/moving_variance/Assign#res21/preact/moving_variance/read:02/res21/preact/moving_variance/Initializer/ones:0

res21/Conv/weights:0res21/Conv/weights/Assignres21/Conv/weights/read:021res21/Conv/weights/Initializer/truncated_normal:0

res21/Conv/BatchNorm/beta:0 res21/Conv/BatchNorm/beta/Assign res21/Conv/BatchNorm/beta/read:02-res21/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res21/Conv/BatchNorm/moving_mean:0'res21/Conv/BatchNorm/moving_mean/Assign'res21/Conv/BatchNorm/moving_mean/read:024res21/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res21/Conv/BatchNorm/moving_variance:0+res21/Conv/BatchNorm/moving_variance/Assign+res21/Conv/BatchNorm/moving_variance/read:027res21/Conv/BatchNorm/moving_variance/Initializer/ones:0

res21/Conv_1/weights:0res21/Conv_1/weights/Assignres21/Conv_1/weights/read:023res21/Conv_1/weights/Initializer/truncated_normal:0
p
res30/preact/beta:0res30/preact/beta/Assignres30/preact/beta/read:02%res30/preact/beta/Initializer/zeros:0

res30/preact/moving_mean:0res30/preact/moving_mean/Assignres30/preact/moving_mean/read:02,res30/preact/moving_mean/Initializer/zeros:0

res30/preact/moving_variance:0#res30/preact/moving_variance/Assign#res30/preact/moving_variance/read:02/res30/preact/moving_variance/Initializer/ones:0

res30/Conv/weights:0res30/Conv/weights/Assignres30/Conv/weights/read:021res30/Conv/weights/Initializer/truncated_normal:0

res30/Conv_1/weights:0res30/Conv_1/weights/Assignres30/Conv_1/weights/read:023res30/Conv_1/weights/Initializer/truncated_normal:0

res30/Conv_1/BatchNorm/beta:0"res30/Conv_1/BatchNorm/beta/Assign"res30/Conv_1/BatchNorm/beta/read:02/res30/Conv_1/BatchNorm/beta/Initializer/zeros:0
´
$res30/Conv_1/BatchNorm/moving_mean:0)res30/Conv_1/BatchNorm/moving_mean/Assign)res30/Conv_1/BatchNorm/moving_mean/read:026res30/Conv_1/BatchNorm/moving_mean/Initializer/zeros:0
Ă
(res30/Conv_1/BatchNorm/moving_variance:0-res30/Conv_1/BatchNorm/moving_variance/Assign-res30/Conv_1/BatchNorm/moving_variance/read:029res30/Conv_1/BatchNorm/moving_variance/Initializer/ones:0

res30/Conv_2/weights:0res30/Conv_2/weights/Assignres30/Conv_2/weights/read:023res30/Conv_2/weights/Initializer/truncated_normal:0
p
res31/preact/beta:0res31/preact/beta/Assignres31/preact/beta/read:02%res31/preact/beta/Initializer/zeros:0

res31/preact/moving_mean:0res31/preact/moving_mean/Assignres31/preact/moving_mean/read:02,res31/preact/moving_mean/Initializer/zeros:0

res31/preact/moving_variance:0#res31/preact/moving_variance/Assign#res31/preact/moving_variance/read:02/res31/preact/moving_variance/Initializer/ones:0

res31/Conv/weights:0res31/Conv/weights/Assignres31/Conv/weights/read:021res31/Conv/weights/Initializer/truncated_normal:0

res31/Conv/BatchNorm/beta:0 res31/Conv/BatchNorm/beta/Assign res31/Conv/BatchNorm/beta/read:02-res31/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res31/Conv/BatchNorm/moving_mean:0'res31/Conv/BatchNorm/moving_mean/Assign'res31/Conv/BatchNorm/moving_mean/read:024res31/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res31/Conv/BatchNorm/moving_variance:0+res31/Conv/BatchNorm/moving_variance/Assign+res31/Conv/BatchNorm/moving_variance/read:027res31/Conv/BatchNorm/moving_variance/Initializer/ones:0

res31/Conv_1/weights:0res31/Conv_1/weights/Assignres31/Conv_1/weights/read:023res31/Conv_1/weights/Initializer/truncated_normal:0
p
res40/preact/beta:0res40/preact/beta/Assignres40/preact/beta/read:02%res40/preact/beta/Initializer/zeros:0

res40/preact/moving_mean:0res40/preact/moving_mean/Assignres40/preact/moving_mean/read:02,res40/preact/moving_mean/Initializer/zeros:0

res40/preact/moving_variance:0#res40/preact/moving_variance/Assign#res40/preact/moving_variance/read:02/res40/preact/moving_variance/Initializer/ones:0

res40/Conv/weights:0res40/Conv/weights/Assignres40/Conv/weights/read:021res40/Conv/weights/Initializer/truncated_normal:0

res40/Conv_1/weights:0res40/Conv_1/weights/Assignres40/Conv_1/weights/read:023res40/Conv_1/weights/Initializer/truncated_normal:0

res40/Conv_1/BatchNorm/beta:0"res40/Conv_1/BatchNorm/beta/Assign"res40/Conv_1/BatchNorm/beta/read:02/res40/Conv_1/BatchNorm/beta/Initializer/zeros:0
´
$res40/Conv_1/BatchNorm/moving_mean:0)res40/Conv_1/BatchNorm/moving_mean/Assign)res40/Conv_1/BatchNorm/moving_mean/read:026res40/Conv_1/BatchNorm/moving_mean/Initializer/zeros:0
Ă
(res40/Conv_1/BatchNorm/moving_variance:0-res40/Conv_1/BatchNorm/moving_variance/Assign-res40/Conv_1/BatchNorm/moving_variance/read:029res40/Conv_1/BatchNorm/moving_variance/Initializer/ones:0

res40/Conv_2/weights:0res40/Conv_2/weights/Assignres40/Conv_2/weights/read:023res40/Conv_2/weights/Initializer/truncated_normal:0
p
res41/preact/beta:0res41/preact/beta/Assignres41/preact/beta/read:02%res41/preact/beta/Initializer/zeros:0

res41/preact/moving_mean:0res41/preact/moving_mean/Assignres41/preact/moving_mean/read:02,res41/preact/moving_mean/Initializer/zeros:0

res41/preact/moving_variance:0#res41/preact/moving_variance/Assign#res41/preact/moving_variance/read:02/res41/preact/moving_variance/Initializer/ones:0

res41/Conv/weights:0res41/Conv/weights/Assignres41/Conv/weights/read:021res41/Conv/weights/Initializer/truncated_normal:0

res41/Conv/BatchNorm/beta:0 res41/Conv/BatchNorm/beta/Assign res41/Conv/BatchNorm/beta/read:02-res41/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res41/Conv/BatchNorm/moving_mean:0'res41/Conv/BatchNorm/moving_mean/Assign'res41/Conv/BatchNorm/moving_mean/read:024res41/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res41/Conv/BatchNorm/moving_variance:0+res41/Conv/BatchNorm/moving_variance/Assign+res41/Conv/BatchNorm/moving_variance/read:027res41/Conv/BatchNorm/moving_variance/Initializer/ones:0

res41/Conv_1/weights:0res41/Conv_1/weights/Assignres41/Conv_1/weights/read:023res41/Conv_1/weights/Initializer/truncated_normal:0
`
postnorm/beta:0postnorm/beta/Assignpostnorm/beta/read:02!postnorm/beta/Initializer/zeros:0
|
postnorm/moving_mean:0postnorm/moving_mean/Assignpostnorm/moving_mean/read:02(postnorm/moving_mean/Initializer/zeros:0

postnorm/moving_variance:0postnorm/moving_variance/Assignpostnorm/moving_variance/read:02+postnorm/moving_variance/Initializer/ones:0
o
gather/weights:0gather/weights/Assigngather/weights/read:02-gather/weights/Initializer/truncated_normal:0
m
logits/weights:0logits/weights/Assignlogits/weights/read:02+logits/weights/Initializer/random_uniform:0
`
logits/biases:0logits/biases/Assignlogits/biases/read:02!logits/biases/Initializer/zeros:0"ßU
model_variablesËUČU
o
conv00/weights:0conv00/weights/Assignconv00/weights/read:02-conv00/weights/Initializer/truncated_normal:0
o
conv01/weights:0conv01/weights/Assignconv01/weights/read:02-conv01/weights/Initializer/truncated_normal:0
p
res10/preact/beta:0res10/preact/beta/Assignres10/preact/beta/read:02%res10/preact/beta/Initializer/zeros:0

res10/preact/moving_mean:0res10/preact/moving_mean/Assignres10/preact/moving_mean/read:02,res10/preact/moving_mean/Initializer/zeros:0

res10/preact/moving_variance:0#res10/preact/moving_variance/Assign#res10/preact/moving_variance/read:02/res10/preact/moving_variance/Initializer/ones:0

res10/Conv/weights:0res10/Conv/weights/Assignres10/Conv/weights/read:021res10/Conv/weights/Initializer/truncated_normal:0

res10/Conv/BatchNorm/beta:0 res10/Conv/BatchNorm/beta/Assign res10/Conv/BatchNorm/beta/read:02-res10/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res10/Conv/BatchNorm/moving_mean:0'res10/Conv/BatchNorm/moving_mean/Assign'res10/Conv/BatchNorm/moving_mean/read:024res10/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res10/Conv/BatchNorm/moving_variance:0+res10/Conv/BatchNorm/moving_variance/Assign+res10/Conv/BatchNorm/moving_variance/read:027res10/Conv/BatchNorm/moving_variance/Initializer/ones:0

res10/Conv_1/weights:0res10/Conv_1/weights/Assignres10/Conv_1/weights/read:023res10/Conv_1/weights/Initializer/truncated_normal:0
p
res11/preact/beta:0res11/preact/beta/Assignres11/preact/beta/read:02%res11/preact/beta/Initializer/zeros:0

res11/preact/moving_mean:0res11/preact/moving_mean/Assignres11/preact/moving_mean/read:02,res11/preact/moving_mean/Initializer/zeros:0

res11/preact/moving_variance:0#res11/preact/moving_variance/Assign#res11/preact/moving_variance/read:02/res11/preact/moving_variance/Initializer/ones:0

res11/Conv/weights:0res11/Conv/weights/Assignres11/Conv/weights/read:021res11/Conv/weights/Initializer/truncated_normal:0

res11/Conv/BatchNorm/beta:0 res11/Conv/BatchNorm/beta/Assign res11/Conv/BatchNorm/beta/read:02-res11/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res11/Conv/BatchNorm/moving_mean:0'res11/Conv/BatchNorm/moving_mean/Assign'res11/Conv/BatchNorm/moving_mean/read:024res11/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res11/Conv/BatchNorm/moving_variance:0+res11/Conv/BatchNorm/moving_variance/Assign+res11/Conv/BatchNorm/moving_variance/read:027res11/Conv/BatchNorm/moving_variance/Initializer/ones:0

res11/Conv_1/weights:0res11/Conv_1/weights/Assignres11/Conv_1/weights/read:023res11/Conv_1/weights/Initializer/truncated_normal:0
p
res20/preact/beta:0res20/preact/beta/Assignres20/preact/beta/read:02%res20/preact/beta/Initializer/zeros:0

res20/preact/moving_mean:0res20/preact/moving_mean/Assignres20/preact/moving_mean/read:02,res20/preact/moving_mean/Initializer/zeros:0

res20/preact/moving_variance:0#res20/preact/moving_variance/Assign#res20/preact/moving_variance/read:02/res20/preact/moving_variance/Initializer/ones:0

res20/Conv/weights:0res20/Conv/weights/Assignres20/Conv/weights/read:021res20/Conv/weights/Initializer/truncated_normal:0

res20/Conv_1/weights:0res20/Conv_1/weights/Assignres20/Conv_1/weights/read:023res20/Conv_1/weights/Initializer/truncated_normal:0

res20/Conv_1/BatchNorm/beta:0"res20/Conv_1/BatchNorm/beta/Assign"res20/Conv_1/BatchNorm/beta/read:02/res20/Conv_1/BatchNorm/beta/Initializer/zeros:0
´
$res20/Conv_1/BatchNorm/moving_mean:0)res20/Conv_1/BatchNorm/moving_mean/Assign)res20/Conv_1/BatchNorm/moving_mean/read:026res20/Conv_1/BatchNorm/moving_mean/Initializer/zeros:0
Ă
(res20/Conv_1/BatchNorm/moving_variance:0-res20/Conv_1/BatchNorm/moving_variance/Assign-res20/Conv_1/BatchNorm/moving_variance/read:029res20/Conv_1/BatchNorm/moving_variance/Initializer/ones:0

res20/Conv_2/weights:0res20/Conv_2/weights/Assignres20/Conv_2/weights/read:023res20/Conv_2/weights/Initializer/truncated_normal:0
p
res21/preact/beta:0res21/preact/beta/Assignres21/preact/beta/read:02%res21/preact/beta/Initializer/zeros:0

res21/preact/moving_mean:0res21/preact/moving_mean/Assignres21/preact/moving_mean/read:02,res21/preact/moving_mean/Initializer/zeros:0

res21/preact/moving_variance:0#res21/preact/moving_variance/Assign#res21/preact/moving_variance/read:02/res21/preact/moving_variance/Initializer/ones:0

res21/Conv/weights:0res21/Conv/weights/Assignres21/Conv/weights/read:021res21/Conv/weights/Initializer/truncated_normal:0

res21/Conv/BatchNorm/beta:0 res21/Conv/BatchNorm/beta/Assign res21/Conv/BatchNorm/beta/read:02-res21/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res21/Conv/BatchNorm/moving_mean:0'res21/Conv/BatchNorm/moving_mean/Assign'res21/Conv/BatchNorm/moving_mean/read:024res21/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res21/Conv/BatchNorm/moving_variance:0+res21/Conv/BatchNorm/moving_variance/Assign+res21/Conv/BatchNorm/moving_variance/read:027res21/Conv/BatchNorm/moving_variance/Initializer/ones:0

res21/Conv_1/weights:0res21/Conv_1/weights/Assignres21/Conv_1/weights/read:023res21/Conv_1/weights/Initializer/truncated_normal:0
p
res30/preact/beta:0res30/preact/beta/Assignres30/preact/beta/read:02%res30/preact/beta/Initializer/zeros:0

res30/preact/moving_mean:0res30/preact/moving_mean/Assignres30/preact/moving_mean/read:02,res30/preact/moving_mean/Initializer/zeros:0

res30/preact/moving_variance:0#res30/preact/moving_variance/Assign#res30/preact/moving_variance/read:02/res30/preact/moving_variance/Initializer/ones:0

res30/Conv/weights:0res30/Conv/weights/Assignres30/Conv/weights/read:021res30/Conv/weights/Initializer/truncated_normal:0

res30/Conv_1/weights:0res30/Conv_1/weights/Assignres30/Conv_1/weights/read:023res30/Conv_1/weights/Initializer/truncated_normal:0

res30/Conv_1/BatchNorm/beta:0"res30/Conv_1/BatchNorm/beta/Assign"res30/Conv_1/BatchNorm/beta/read:02/res30/Conv_1/BatchNorm/beta/Initializer/zeros:0
´
$res30/Conv_1/BatchNorm/moving_mean:0)res30/Conv_1/BatchNorm/moving_mean/Assign)res30/Conv_1/BatchNorm/moving_mean/read:026res30/Conv_1/BatchNorm/moving_mean/Initializer/zeros:0
Ă
(res30/Conv_1/BatchNorm/moving_variance:0-res30/Conv_1/BatchNorm/moving_variance/Assign-res30/Conv_1/BatchNorm/moving_variance/read:029res30/Conv_1/BatchNorm/moving_variance/Initializer/ones:0

res30/Conv_2/weights:0res30/Conv_2/weights/Assignres30/Conv_2/weights/read:023res30/Conv_2/weights/Initializer/truncated_normal:0
p
res31/preact/beta:0res31/preact/beta/Assignres31/preact/beta/read:02%res31/preact/beta/Initializer/zeros:0

res31/preact/moving_mean:0res31/preact/moving_mean/Assignres31/preact/moving_mean/read:02,res31/preact/moving_mean/Initializer/zeros:0

res31/preact/moving_variance:0#res31/preact/moving_variance/Assign#res31/preact/moving_variance/read:02/res31/preact/moving_variance/Initializer/ones:0

res31/Conv/weights:0res31/Conv/weights/Assignres31/Conv/weights/read:021res31/Conv/weights/Initializer/truncated_normal:0

res31/Conv/BatchNorm/beta:0 res31/Conv/BatchNorm/beta/Assign res31/Conv/BatchNorm/beta/read:02-res31/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res31/Conv/BatchNorm/moving_mean:0'res31/Conv/BatchNorm/moving_mean/Assign'res31/Conv/BatchNorm/moving_mean/read:024res31/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res31/Conv/BatchNorm/moving_variance:0+res31/Conv/BatchNorm/moving_variance/Assign+res31/Conv/BatchNorm/moving_variance/read:027res31/Conv/BatchNorm/moving_variance/Initializer/ones:0

res31/Conv_1/weights:0res31/Conv_1/weights/Assignres31/Conv_1/weights/read:023res31/Conv_1/weights/Initializer/truncated_normal:0
p
res40/preact/beta:0res40/preact/beta/Assignres40/preact/beta/read:02%res40/preact/beta/Initializer/zeros:0

res40/preact/moving_mean:0res40/preact/moving_mean/Assignres40/preact/moving_mean/read:02,res40/preact/moving_mean/Initializer/zeros:0

res40/preact/moving_variance:0#res40/preact/moving_variance/Assign#res40/preact/moving_variance/read:02/res40/preact/moving_variance/Initializer/ones:0

res40/Conv/weights:0res40/Conv/weights/Assignres40/Conv/weights/read:021res40/Conv/weights/Initializer/truncated_normal:0

res40/Conv_1/weights:0res40/Conv_1/weights/Assignres40/Conv_1/weights/read:023res40/Conv_1/weights/Initializer/truncated_normal:0

res40/Conv_1/BatchNorm/beta:0"res40/Conv_1/BatchNorm/beta/Assign"res40/Conv_1/BatchNorm/beta/read:02/res40/Conv_1/BatchNorm/beta/Initializer/zeros:0
´
$res40/Conv_1/BatchNorm/moving_mean:0)res40/Conv_1/BatchNorm/moving_mean/Assign)res40/Conv_1/BatchNorm/moving_mean/read:026res40/Conv_1/BatchNorm/moving_mean/Initializer/zeros:0
Ă
(res40/Conv_1/BatchNorm/moving_variance:0-res40/Conv_1/BatchNorm/moving_variance/Assign-res40/Conv_1/BatchNorm/moving_variance/read:029res40/Conv_1/BatchNorm/moving_variance/Initializer/ones:0

res40/Conv_2/weights:0res40/Conv_2/weights/Assignres40/Conv_2/weights/read:023res40/Conv_2/weights/Initializer/truncated_normal:0
p
res41/preact/beta:0res41/preact/beta/Assignres41/preact/beta/read:02%res41/preact/beta/Initializer/zeros:0

res41/preact/moving_mean:0res41/preact/moving_mean/Assignres41/preact/moving_mean/read:02,res41/preact/moving_mean/Initializer/zeros:0

res41/preact/moving_variance:0#res41/preact/moving_variance/Assign#res41/preact/moving_variance/read:02/res41/preact/moving_variance/Initializer/ones:0

res41/Conv/weights:0res41/Conv/weights/Assignres41/Conv/weights/read:021res41/Conv/weights/Initializer/truncated_normal:0

res41/Conv/BatchNorm/beta:0 res41/Conv/BatchNorm/beta/Assign res41/Conv/BatchNorm/beta/read:02-res41/Conv/BatchNorm/beta/Initializer/zeros:0
Ź
"res41/Conv/BatchNorm/moving_mean:0'res41/Conv/BatchNorm/moving_mean/Assign'res41/Conv/BatchNorm/moving_mean/read:024res41/Conv/BatchNorm/moving_mean/Initializer/zeros:0
ť
&res41/Conv/BatchNorm/moving_variance:0+res41/Conv/BatchNorm/moving_variance/Assign+res41/Conv/BatchNorm/moving_variance/read:027res41/Conv/BatchNorm/moving_variance/Initializer/ones:0

res41/Conv_1/weights:0res41/Conv_1/weights/Assignres41/Conv_1/weights/read:023res41/Conv_1/weights/Initializer/truncated_normal:0
`
postnorm/beta:0postnorm/beta/Assignpostnorm/beta/read:02!postnorm/beta/Initializer/zeros:0
|
postnorm/moving_mean:0postnorm/moving_mean/Assignpostnorm/moving_mean/read:02(postnorm/moving_mean/Initializer/zeros:0

postnorm/moving_variance:0postnorm/moving_variance/Assignpostnorm/moving_variance/read:02+postnorm/moving_variance/Initializer/ones:0
o
gather/weights:0gather/weights/Assigngather/weights/read:02-gather/weights/Initializer/truncated_normal:0
m
logits/weights:0logits/weights/Assignlogits/weights/read:02+logits/weights/Initializer/random_uniform:0
`
logits/biases:0logits/biases/Assignlogits/biases/read:02!logits/biases/Initializer/zeros:0"×)
trainable_variablesż)ź)
o
conv00/weights:0conv00/weights/Assignconv00/weights/read:02-conv00/weights/Initializer/truncated_normal:0
o
conv01/weights:0conv01/weights/Assignconv01/weights/read:02-conv01/weights/Initializer/truncated_normal:0
p
res10/preact/beta:0res10/preact/beta/Assignres10/preact/beta/read:02%res10/preact/beta/Initializer/zeros:0

res10/Conv/weights:0res10/Conv/weights/Assignres10/Conv/weights/read:021res10/Conv/weights/Initializer/truncated_normal:0

res10/Conv/BatchNorm/beta:0 res10/Conv/BatchNorm/beta/Assign res10/Conv/BatchNorm/beta/read:02-res10/Conv/BatchNorm/beta/Initializer/zeros:0

res10/Conv_1/weights:0res10/Conv_1/weights/Assignres10/Conv_1/weights/read:023res10/Conv_1/weights/Initializer/truncated_normal:0
p
res11/preact/beta:0res11/preact/beta/Assignres11/preact/beta/read:02%res11/preact/beta/Initializer/zeros:0

res11/Conv/weights:0res11/Conv/weights/Assignres11/Conv/weights/read:021res11/Conv/weights/Initializer/truncated_normal:0

res11/Conv/BatchNorm/beta:0 res11/Conv/BatchNorm/beta/Assign res11/Conv/BatchNorm/beta/read:02-res11/Conv/BatchNorm/beta/Initializer/zeros:0

res11/Conv_1/weights:0res11/Conv_1/weights/Assignres11/Conv_1/weights/read:023res11/Conv_1/weights/Initializer/truncated_normal:0
p
res20/preact/beta:0res20/preact/beta/Assignres20/preact/beta/read:02%res20/preact/beta/Initializer/zeros:0

res20/Conv/weights:0res20/Conv/weights/Assignres20/Conv/weights/read:021res20/Conv/weights/Initializer/truncated_normal:0

res20/Conv_1/weights:0res20/Conv_1/weights/Assignres20/Conv_1/weights/read:023res20/Conv_1/weights/Initializer/truncated_normal:0

res20/Conv_1/BatchNorm/beta:0"res20/Conv_1/BatchNorm/beta/Assign"res20/Conv_1/BatchNorm/beta/read:02/res20/Conv_1/BatchNorm/beta/Initializer/zeros:0

res20/Conv_2/weights:0res20/Conv_2/weights/Assignres20/Conv_2/weights/read:023res20/Conv_2/weights/Initializer/truncated_normal:0
p
res21/preact/beta:0res21/preact/beta/Assignres21/preact/beta/read:02%res21/preact/beta/Initializer/zeros:0

res21/Conv/weights:0res21/Conv/weights/Assignres21/Conv/weights/read:021res21/Conv/weights/Initializer/truncated_normal:0

res21/Conv/BatchNorm/beta:0 res21/Conv/BatchNorm/beta/Assign res21/Conv/BatchNorm/beta/read:02-res21/Conv/BatchNorm/beta/Initializer/zeros:0

res21/Conv_1/weights:0res21/Conv_1/weights/Assignres21/Conv_1/weights/read:023res21/Conv_1/weights/Initializer/truncated_normal:0
p
res30/preact/beta:0res30/preact/beta/Assignres30/preact/beta/read:02%res30/preact/beta/Initializer/zeros:0

res30/Conv/weights:0res30/Conv/weights/Assignres30/Conv/weights/read:021res30/Conv/weights/Initializer/truncated_normal:0

res30/Conv_1/weights:0res30/Conv_1/weights/Assignres30/Conv_1/weights/read:023res30/Conv_1/weights/Initializer/truncated_normal:0

res30/Conv_1/BatchNorm/beta:0"res30/Conv_1/BatchNorm/beta/Assign"res30/Conv_1/BatchNorm/beta/read:02/res30/Conv_1/BatchNorm/beta/Initializer/zeros:0

res30/Conv_2/weights:0res30/Conv_2/weights/Assignres30/Conv_2/weights/read:023res30/Conv_2/weights/Initializer/truncated_normal:0
p
res31/preact/beta:0res31/preact/beta/Assignres31/preact/beta/read:02%res31/preact/beta/Initializer/zeros:0

res31/Conv/weights:0res31/Conv/weights/Assignres31/Conv/weights/read:021res31/Conv/weights/Initializer/truncated_normal:0

res31/Conv/BatchNorm/beta:0 res31/Conv/BatchNorm/beta/Assign res31/Conv/BatchNorm/beta/read:02-res31/Conv/BatchNorm/beta/Initializer/zeros:0

res31/Conv_1/weights:0res31/Conv_1/weights/Assignres31/Conv_1/weights/read:023res31/Conv_1/weights/Initializer/truncated_normal:0
p
res40/preact/beta:0res40/preact/beta/Assignres40/preact/beta/read:02%res40/preact/beta/Initializer/zeros:0

res40/Conv/weights:0res40/Conv/weights/Assignres40/Conv/weights/read:021res40/Conv/weights/Initializer/truncated_normal:0

res40/Conv_1/weights:0res40/Conv_1/weights/Assignres40/Conv_1/weights/read:023res40/Conv_1/weights/Initializer/truncated_normal:0

res40/Conv_1/BatchNorm/beta:0"res40/Conv_1/BatchNorm/beta/Assign"res40/Conv_1/BatchNorm/beta/read:02/res40/Conv_1/BatchNorm/beta/Initializer/zeros:0

res40/Conv_2/weights:0res40/Conv_2/weights/Assignres40/Conv_2/weights/read:023res40/Conv_2/weights/Initializer/truncated_normal:0
p
res41/preact/beta:0res41/preact/beta/Assignres41/preact/beta/read:02%res41/preact/beta/Initializer/zeros:0

res41/Conv/weights:0res41/Conv/weights/Assignres41/Conv/weights/read:021res41/Conv/weights/Initializer/truncated_normal:0

res41/Conv/BatchNorm/beta:0 res41/Conv/BatchNorm/beta/Assign res41/Conv/BatchNorm/beta/read:02-res41/Conv/BatchNorm/beta/Initializer/zeros:0

res41/Conv_1/weights:0res41/Conv_1/weights/Assignres41/Conv_1/weights/read:023res41/Conv_1/weights/Initializer/truncated_normal:0
`
postnorm/beta:0postnorm/beta/Assignpostnorm/beta/read:02!postnorm/beta/Initializer/zeros:0
o
gather/weights:0gather/weights/Assigngather/weights/read:02-gather/weights/Initializer/truncated_normal:0
m
logits/weights:0logits/weights/Assignlogits/weights/read:02+logits/weights/Initializer/random_uniform:0
`
logits/biases:0logits/biases/Assignlogits/biases/read:02!logits/biases/Initializer/zeros:0"ó
regularization_lossesŮ
Ö
*conv00/kernel/Regularizer/l2_regularizer:0
*conv01/kernel/Regularizer/l2_regularizer:0
.res10/Conv/kernel/Regularizer/l2_regularizer:0
0res10/Conv_1/kernel/Regularizer/l2_regularizer:0
.res11/Conv/kernel/Regularizer/l2_regularizer:0
0res11/Conv_1/kernel/Regularizer/l2_regularizer:0
.res20/Conv/kernel/Regularizer/l2_regularizer:0
0res20/Conv_1/kernel/Regularizer/l2_regularizer:0
0res20/Conv_2/kernel/Regularizer/l2_regularizer:0
.res21/Conv/kernel/Regularizer/l2_regularizer:0
0res21/Conv_1/kernel/Regularizer/l2_regularizer:0
.res30/Conv/kernel/Regularizer/l2_regularizer:0
0res30/Conv_1/kernel/Regularizer/l2_regularizer:0
0res30/Conv_2/kernel/Regularizer/l2_regularizer:0
.res31/Conv/kernel/Regularizer/l2_regularizer:0
0res31/Conv_1/kernel/Regularizer/l2_regularizer:0
.res40/Conv/kernel/Regularizer/l2_regularizer:0
0res40/Conv_1/kernel/Regularizer/l2_regularizer:0
0res40/Conv_2/kernel/Regularizer/l2_regularizer:0
.res41/Conv/kernel/Regularizer/l2_regularizer:0
0res41/Conv_1/kernel/Regularizer/l2_regularizer:0
*gather/kernel/Regularizer/l2_regularizer:0
*logits/kernel/Regularizer/l2_regularizer:0"˙
moving_varsď
ě
"res10/Conv/BatchNorm/moving_mean:0
&res10/Conv/BatchNorm/moving_variance:0
"res11/Conv/BatchNorm/moving_mean:0
&res11/Conv/BatchNorm/moving_variance:0
$res20/Conv_1/BatchNorm/moving_mean:0
(res20/Conv_1/BatchNorm/moving_variance:0
"res21/Conv/BatchNorm/moving_mean:0
&res21/Conv/BatchNorm/moving_variance:0
$res30/Conv_1/BatchNorm/moving_mean:0
(res30/Conv_1/BatchNorm/moving_variance:0
"res31/Conv/BatchNorm/moving_mean:0
&res31/Conv/BatchNorm/moving_variance:0
$res40/Conv_1/BatchNorm/moving_mean:0
(res40/Conv_1/BatchNorm/moving_variance:0
"res41/Conv/BatchNorm/moving_mean:0
&res41/Conv/BatchNorm/moving_variance:0