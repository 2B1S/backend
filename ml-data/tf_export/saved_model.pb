
ěÎ
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
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
ě
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtype
is_initialized
"
dtypetype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
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
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
E
Relu
features"T
activations"T"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.12.02
b'unknown'˘Ř

conv2d_1_inputPlaceholder*$
shape:˙˙˙˙˙˙˙˙˙Kd*
dtype0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙Kd
v
conv2d_1/random_uniform/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
`
conv2d_1/random_uniform/minConst*
valueB
 *÷üÓ˝*
dtype0*
_output_shapes
: 
`
conv2d_1/random_uniform/maxConst*
valueB
 *÷üÓ=*
dtype0*
_output_shapes
: 
˛
%conv2d_1/random_uniform/RandomUniformRandomUniformconv2d_1/random_uniform/shape*
T0*
dtype0*&
_output_shapes
: *
seed2ä*
seedą˙ĺ)
}
conv2d_1/random_uniform/subSubconv2d_1/random_uniform/maxconv2d_1/random_uniform/min*
T0*
_output_shapes
: 

conv2d_1/random_uniform/mulMul%conv2d_1/random_uniform/RandomUniformconv2d_1/random_uniform/sub*
T0*&
_output_shapes
: 

conv2d_1/random_uniformAddconv2d_1/random_uniform/mulconv2d_1/random_uniform/min*
T0*&
_output_shapes
: 

conv2d_1/kernel
VariableV2*
shared_name *
dtype0*&
_output_shapes
: *
	container *
shape: 
Č
conv2d_1/kernel/AssignAssignconv2d_1/kernelconv2d_1/random_uniform*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel

conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 
[
conv2d_1/ConstConst*
valueB *    *
dtype0*
_output_shapes
: 
y
conv2d_1/bias
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
­
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/Const*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
t
conv2d_1/bias/readIdentityconv2d_1/bias*
_output_shapes
: *
T0* 
_class
loc:@conv2d_1/bias
s
"conv2d_1/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ě
conv2d_1/convolutionConv2Dconv2d_1_inputconv2d_1/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙Kd 

conv2d_1/BiasAddBiasAddconv2d_1/convolutionconv2d_1/bias/read*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙Kd *
T0
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙Kd 
ž
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙%2 *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
q
dropout_1/IdentityIdentitymax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙%2 
v
conv2d_2/random_uniform/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
`
conv2d_2/random_uniform/minConst*
valueB
 *  ˝*
dtype0*
_output_shapes
: 
`
conv2d_2/random_uniform/maxConst*
valueB
 *  =*
dtype0*
_output_shapes
: 
ą
%conv2d_2/random_uniform/RandomUniformRandomUniformconv2d_2/random_uniform/shape*
T0*
dtype0*&
_output_shapes
: @*
seed2ŤźF*
seedą˙ĺ)
}
conv2d_2/random_uniform/subSubconv2d_2/random_uniform/maxconv2d_2/random_uniform/min*
T0*
_output_shapes
: 

conv2d_2/random_uniform/mulMul%conv2d_2/random_uniform/RandomUniformconv2d_2/random_uniform/sub*
T0*&
_output_shapes
: @

conv2d_2/random_uniformAddconv2d_2/random_uniform/mulconv2d_2/random_uniform/min*
T0*&
_output_shapes
: @

conv2d_2/kernel
VariableV2*
dtype0*&
_output_shapes
: @*
	container *
shape: @*
shared_name 
Č
conv2d_2/kernel/AssignAssignconv2d_2/kernelconv2d_2/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @

conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
: @
[
conv2d_2/ConstConst*
valueB@*    *
dtype0*
_output_shapes
:@
y
conv2d_2/bias
VariableV2*
shared_name *
dtype0*
_output_shapes
:@*
	container *
shape:@
­
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/Const*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
t
conv2d_2/bias/readIdentityconv2d_2/bias*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_2/bias
s
"conv2d_2/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
đ
conv2d_2/convolutionConv2Ddropout_1/Identityconv2d_2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:˙˙˙˙˙˙˙˙˙%2@

conv2d_2/BiasAddBiasAddconv2d_2/convolutionconv2d_2/bias/read*
T0*
data_formatNHWC*/
_output_shapes
:˙˙˙˙˙˙˙˙˙%2@
a
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*/
_output_shapes
:˙˙˙˙˙˙˙˙˙%2@
ž
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID
q
dropout_2/IdentityIdentitymax_pooling2d_2/MaxPool*/
_output_shapes
:˙˙˙˙˙˙˙˙˙@*
T0
v
conv2d_3/random_uniform/shapeConst*%
valueB"      @      *
dtype0*
_output_shapes
:
`
conv2d_3/random_uniform/minConst*
valueB
 *ó5˝*
dtype0*
_output_shapes
: 
`
conv2d_3/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ó5=
ł
%conv2d_3/random_uniform/RandomUniformRandomUniformconv2d_3/random_uniform/shape*
dtype0*'
_output_shapes
:@*
seed2ŤÓ*
seedą˙ĺ)*
T0
}
conv2d_3/random_uniform/subSubconv2d_3/random_uniform/maxconv2d_3/random_uniform/min*
_output_shapes
: *
T0

conv2d_3/random_uniform/mulMul%conv2d_3/random_uniform/RandomUniformconv2d_3/random_uniform/sub*
T0*'
_output_shapes
:@

conv2d_3/random_uniformAddconv2d_3/random_uniform/mulconv2d_3/random_uniform/min*
T0*'
_output_shapes
:@

conv2d_3/kernel
VariableV2*
dtype0*'
_output_shapes
:@*
	container *
shape:@*
shared_name 
É
conv2d_3/kernel/AssignAssignconv2d_3/kernelconv2d_3/random_uniform*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel

conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@
]
conv2d_3/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
conv2d_3/bias
VariableV2*
dtype0*
_output_shapes	
:*
	container *
shape:*
shared_name 
Ž
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/Const*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
u
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:
s
"conv2d_3/convolution/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
ń
conv2d_3/convolutionConv2Ddropout_2/Identityconv2d_3/kernel/read*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

conv2d_3/BiasAddBiasAddconv2d_3/convolutionconv2d_3/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
conv2d_3/ReluReluconv2d_3/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ż
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙	
r
dropout_3/IdentityIdentitymax_pooling2d_3/MaxPool*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙	
v
conv2d_4/random_uniform/shapeConst*%
valueB"            *
dtype0*
_output_shapes
:
`
conv2d_4/random_uniform/minConst*
valueB
 *   ˝*
dtype0*
_output_shapes
: 
`
conv2d_4/random_uniform/maxConst*
valueB
 *   =*
dtype0*
_output_shapes
: 
´
%conv2d_4/random_uniform/RandomUniformRandomUniformconv2d_4/random_uniform/shape*
dtype0*(
_output_shapes
:*
seed2ň*
seedą˙ĺ)*
T0
}
conv2d_4/random_uniform/subSubconv2d_4/random_uniform/maxconv2d_4/random_uniform/min*
_output_shapes
: *
T0

conv2d_4/random_uniform/mulMul%conv2d_4/random_uniform/RandomUniformconv2d_4/random_uniform/sub*
T0*(
_output_shapes
:

conv2d_4/random_uniformAddconv2d_4/random_uniform/mulconv2d_4/random_uniform/min*
T0*(
_output_shapes
:

conv2d_4/kernel
VariableV2*
dtype0*(
_output_shapes
:*
	container *
shape:*
shared_name 
Ę
conv2d_4/kernel/AssignAssignconv2d_4/kernelconv2d_4/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:

conv2d_4/kernel/readIdentityconv2d_4/kernel*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:
]
conv2d_4/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
{
conv2d_4/bias
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes	
:*
	container 
Ž
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/Const*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:
u
conv2d_4/bias/readIdentityconv2d_4/bias*
_output_shapes	
:*
T0* 
_class
loc:@conv2d_4/bias
s
"conv2d_4/convolution/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ń
conv2d_4/convolutionConv2Ddropout_3/Identityconv2d_4/kernel/read*
paddingSAME*0
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

conv2d_4/BiasAddBiasAddconv2d_4/convolutionconv2d_4/bias/read*
T0*
data_formatNHWC*0
_output_shapes
:˙˙˙˙˙˙˙˙˙	
b
conv2d_4/ReluReluconv2d_4/BiasAdd*0
_output_shapes
:˙˙˙˙˙˙˙˙˙	*
T0
ż
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*0
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
r
dropout_4/IdentityIdentitymax_pooling2d_4/MaxPool*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
flatten_1/ShapeShapedropout_4/Identity*
T0*
out_type0*
_output_shapes
:
g
flatten_1/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
i
flatten_1/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
i
flatten_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ż
flatten_1/strided_sliceStridedSliceflatten_1/Shapeflatten_1/strided_slice/stackflatten_1/strided_slice/stack_1flatten_1/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
Y
flatten_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
flatten_1/ProdProdflatten_1/strided_sliceflatten_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
\
flatten_1/stack/0Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
t
flatten_1/stackPackflatten_1/stack/0flatten_1/Prod*
T0*

axis *
N*
_output_shapes
:

flatten_1/ReshapeReshapedropout_4/Identityflatten_1/stack*
T0*
Tshape0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
m
dense_1/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ôôőź
_
dense_1/random_uniform/maxConst*
valueB
 *ôôő<*
dtype0*
_output_shapes
: 
Ş
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0* 
_output_shapes
:
0*
seed2ŹŘ*
seedą˙ĺ)*
T0
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 

dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:
0

dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min* 
_output_shapes
:
0*
T0

dense_1/kernel
VariableV2*
shared_name *
dtype0* 
_output_shapes
:
0*
	container *
shape:
0
ž
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
0*
use_locking(
}
dense_1/kernel/readIdentitydense_1/kernel* 
_output_shapes
:
0*
T0*!
_class
loc:@dense_1/kernel
\
dense_1/ConstConst*
valueB*    *
dtype0*
_output_shapes	
:
z
dense_1/bias
VariableV2*
shared_name *
dtype0*
_output_shapes	
:*
	container *
shape:
Ş
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@dense_1/bias
r
dense_1/bias/readIdentitydense_1/bias*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:

dense_1/MatMulMatMulflatten_1/Reshapedense_1/kernel/read*
transpose_b( *
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( 

dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
_
dropout_5/IdentityIdentitydense_1/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
m
dense_2/random_uniform/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
_
dense_2/random_uniform/minConst*
valueB
 *Ě3Ü˝*
dtype0*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
valueB
 *Ě3Ü=*
dtype0*
_output_shapes
: 
Š
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
T0*
dtype0*
_output_shapes
:	*
seed2š×*
seedą˙ĺ)
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 

dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0*
_output_shapes
:	

dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0*
_output_shapes
:	

dense_2/kernel
VariableV2*
shared_name *
dtype0*
_output_shapes
:	*
	container *
shape:	
˝
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	
Z
dense_2/ConstConst*
valueB*    *
dtype0*
_output_shapes
:
x
dense_2/bias
VariableV2*
dtype0*
_output_shapes
:*
	container *
shape:*
shared_name 
Š
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:

dense_2/MatMulMatMuldropout_5/Identitydense_2/kernel/read*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b( 

dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
dense_2/SoftmaxSoftmaxdense_2/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
PlaceholderPlaceholder*
dtype0*&
_output_shapes
: *
shape: 
Ź
AssignAssignconv2d_1/kernelPlaceholder*
validate_shape(*&
_output_shapes
: *
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel
V
Placeholder_1Placeholder*
dtype0*
_output_shapes
: *
shape: 
 
Assign_1Assignconv2d_1/biasPlaceholder_1*
use_locking( *
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
n
Placeholder_2Placeholder*
shape: @*
dtype0*&
_output_shapes
: @
°
Assign_2Assignconv2d_2/kernelPlaceholder_2*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking( 
V
Placeholder_3Placeholder*
shape:@*
dtype0*
_output_shapes
:@
 
Assign_3Assignconv2d_2/biasPlaceholder_3*
validate_shape(*
_output_shapes
:@*
use_locking( *
T0* 
_class
loc:@conv2d_2/bias
p
Placeholder_4Placeholder*
shape:@*
dtype0*'
_output_shapes
:@
ą
Assign_4Assignconv2d_3/kernelPlaceholder_4*
use_locking( *
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@
X
Placeholder_5Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ą
Assign_5Assignconv2d_3/biasPlaceholder_5*
use_locking( *
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:
r
Placeholder_6Placeholder*
dtype0*(
_output_shapes
:*
shape:
˛
Assign_6Assignconv2d_4/kernelPlaceholder_6*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:*
use_locking( 
X
Placeholder_7Placeholder*
dtype0*
_output_shapes	
:*
shape:
Ą
Assign_7Assignconv2d_4/biasPlaceholder_7*
use_locking( *
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:
b
Placeholder_8Placeholder*
dtype0* 
_output_shapes
:
0*
shape:
0
¨
Assign_8Assigndense_1/kernelPlaceholder_8*
use_locking( *
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
0
X
Placeholder_9Placeholder*
dtype0*
_output_shapes	
:*
shape:

Assign_9Assigndense_1/biasPlaceholder_9*
T0*
_class
loc:@dense_1/bias*
validate_shape(*
_output_shapes	
:*
use_locking( 
a
Placeholder_10Placeholder*
shape:	*
dtype0*
_output_shapes
:	
Š
	Assign_10Assigndense_2/kernelPlaceholder_10*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	*
use_locking( 
W
Placeholder_11Placeholder*
shape:*
dtype0*
_output_shapes
:
 
	Assign_11Assigndense_2/biasPlaceholder_11*
use_locking( *
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:

IsVariableInitializedIsVariableInitializedconv2d_1/kernel*
dtype0*
_output_shapes
: *"
_class
loc:@conv2d_1/kernel

IsVariableInitialized_1IsVariableInitializedconv2d_1/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_1/bias

IsVariableInitialized_2IsVariableInitializedconv2d_2/kernel*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_3IsVariableInitializedconv2d_2/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_2/bias

IsVariableInitialized_4IsVariableInitializedconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_5IsVariableInitializedconv2d_3/bias* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_6IsVariableInitializedconv2d_4/kernel*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_7IsVariableInitializedconv2d_4/bias*
dtype0*
_output_shapes
: * 
_class
loc:@conv2d_4/bias

IsVariableInitialized_8IsVariableInitializeddense_1/kernel*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 

IsVariableInitialized_9IsVariableInitializeddense_1/bias*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes
: 

IsVariableInitialized_10IsVariableInitializeddense_2/kernel*
dtype0*
_output_shapes
: *!
_class
loc:@dense_2/kernel

IsVariableInitialized_11IsVariableInitializeddense_2/bias*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
: 
¨
initNoOp^conv2d_1/bias/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Assign^dense_1/bias/Assign^dense_1/kernel/Assign^dense_2/bias/Assign^dense_2/kernel/Assign
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_e1fbd53e6908438e964a6d9cf726cc78/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
­
save/SaveV2/tensor_namesConst"/device:CPU:0*Ń
valueÇBÄBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ę
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernelconv2d_4/biasconv2d_4/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kernel"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
°
save/RestoreV2/tensor_namesConst"/device:CPU:0*Ń
valueÇBÄBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelBconv2d_4/biasBconv2d_4/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernel*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*+
value"B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ö
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*D
_output_shapes2
0::::::::::::*
dtypes
2
¤
save/AssignAssignconv2d_1/biassave/RestoreV2*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
: 
¸
save/Assign_1Assignconv2d_1/kernelsave/RestoreV2:1*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 
¨
save/Assign_2Assignconv2d_2/biassave/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
¸
save/Assign_3Assignconv2d_2/kernelsave/RestoreV2:3*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
: @*
use_locking(
Š
save/Assign_4Assignconv2d_3/biassave/RestoreV2:4*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:
š
save/Assign_5Assignconv2d_3/kernelsave/RestoreV2:5*
validate_shape(*'
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel
Š
save/Assign_6Assignconv2d_4/biassave/RestoreV2:6*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
ş
save/Assign_7Assignconv2d_4/kernelsave/RestoreV2:7*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:
§
save/Assign_8Assigndense_1/biassave/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*
_class
loc:@dense_1/bias
°
save/Assign_9Assigndense_1/kernelsave/RestoreV2:9*
use_locking(*
T0*!
_class
loc:@dense_1/kernel*
validate_shape(* 
_output_shapes
:
0
¨
save/Assign_10Assigndense_2/biassave/RestoreV2:10*
T0*
_class
loc:@dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(
ą
save/Assign_11Assigndense_2/kernelsave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@dense_2/kernel*
validate_shape(*
_output_shapes
:	
Ú
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"É
trainable_variablesąŽ
`
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02conv2d_1/random_uniform:08
Q
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02conv2d_1/Const:08
`
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02conv2d_2/random_uniform:08
Q
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02conv2d_2/Const:08
`
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02conv2d_3/random_uniform:08
Q
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02conv2d_3/Const:08
`
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02conv2d_4/random_uniform:08
Q
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02conv2d_4/Const:08
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08"ż
	variablesąŽ
`
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02conv2d_1/random_uniform:08
Q
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02conv2d_1/Const:08
`
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02conv2d_2/random_uniform:08
Q
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02conv2d_2/Const:08
`
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02conv2d_3/random_uniform:08
Q
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02conv2d_3/Const:08
`
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02conv2d_4/random_uniform:08
Q
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02conv2d_4/Const:08
\
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:08
M
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:08
\
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:08
M
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:08*ľ
serving_defaultĄ
D
input_image_bytes/
conv2d_1_input:0˙˙˙˙˙˙˙˙˙Kd=
dense_2/Softmax:0(
dense_2/Softmax:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict