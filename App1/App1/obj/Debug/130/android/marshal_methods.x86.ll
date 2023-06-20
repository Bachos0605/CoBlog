; ModuleID = 'obj\Debug\130\android\marshal_methods.x86.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [282 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 39
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 92
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 110
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 54
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 101
	i32 117431740, ; 5: System.Runtime.InteropServices => 0x6ffddbc => 125
	i32 120558881, ; 6: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 101
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 79
	i32 176714968, ; 8: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 33
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 102
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 77
	i32 212724149, ; 11: MongoDB.Driver.Core => 0xcade9b5 => 49
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 11
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 89
	i32 230752869, ; 14: Microsoft.CSharp.dll => 0xdc10265 => 137
	i32 231814094, ; 15: System.Globalization => 0xdd133ce => 128
	i32 232815796, ; 16: System.Web.Services => 0xde07cb4 => 122
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 87
	i32 300686228, ; 18: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 18
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 70
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 62
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 90
	i32 344827588, ; 22: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0x148da6c4 => 30
	i32 384051609, ; 23: Microsoft.AspNetCore.Routing.dll => 0x16e42999 => 32
	i32 385762202, ; 24: System.Memory.dll => 0x16fe439a => 61
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 108
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 6
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 86
	i32 459347974, ; 28: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 129
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 53
	i32 469710990, ; 30: System.dll => 0x1bff388e => 60
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 87
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 96
	i32 490002678, ; 33: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 23
	i32 498788369, ; 34: System.ObjectModel => 0x1dbae811 => 132
	i32 513247710, ; 35: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 45
	i32 526420162, ; 36: System.Transactions.dll => 0x1f6088c2 => 113
	i32 540030774, ; 37: System.IO.FileSystem.dll => 0x20303736 => 5
	i32 545304856, ; 38: System.Runtime.Extensions => 0x2080b118 => 4
	i32 548916678, ; 39: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 34
	i32 605376203, ; 40: System.IO.Compression.FileSystem => 0x24154ecb => 117
	i32 627609679, ; 41: Xamarin.AndroidX.CustomView => 0x2568904f => 83
	i32 662205335, ; 42: System.Text.Encodings.Web.dll => 0x27787397 => 68
	i32 663517072, ; 43: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 106
	i32 666292255, ; 44: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 74
	i32 690569205, ; 45: System.Xml.Linq.dll => 0x29293ff5 => 123
	i32 709365442, ; 46: App1 => 0x2a480ec2 => 0
	i32 724146010, ; 47: Microsoft.AspNetCore.Authorization.Policy.dll => 0x2b29975a => 21
	i32 726425535, ; 48: MongoDB.Libmongocrypt.dll => 0x2b4c5fbf => 51
	i32 775507847, ; 49: System.IO.Compression => 0x2e394f87 => 116
	i32 789151979, ; 50: Microsoft.Extensions.Options => 0x2f0980eb => 44
	i32 809851609, ; 51: System.Drawing.Common.dll => 0x30455ad9 => 115
	i32 843511501, ; 52: Xamarin.AndroidX.Print => 0x3246f6cd => 98
	i32 877678880, ; 53: System.Globalization.dll => 0x34505120 => 128
	i32 928116545, ; 54: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 110
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 54
	i32 962901365, ; 56: MongoDB.Driver.Core.dll => 0x3964b575 => 49
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 90
	i32 975236339, ; 58: System.Diagnostics.Tracing => 0x3a20ecf3 => 139
	i32 975874589, ; 59: System.Xml.XDocument => 0x3a2aaa1d => 127
	i32 992768348, ; 60: System.Collections.dll => 0x3b2c715c => 6
	i32 994442037, ; 61: System.IO.FileSystem => 0x3b45fb35 => 5
	i32 1012816738, ; 62: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 100
	i32 1028951442, ; 63: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 37
	i32 1035644815, ; 64: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 73
	i32 1044663988, ; 65: System.Linq.Expressions.dll => 0x3e444eb4 => 130
	i32 1052210849, ; 66: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 93
	i32 1098259244, ; 67: System => 0x41761b2c => 60
	i32 1099692271, ; 68: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 35
	i32 1110309514, ; 69: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 41
	i32 1111289522, ; 70: DnsClient.dll => 0x423ceeb2 => 16
	i32 1112354281, ; 71: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 18
	i32 1173126369, ; 72: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 40
	i32 1175144683, ; 73: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 104
	i32 1204270330, ; 74: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 74
	i32 1220193633, ; 75: Microsoft.Net.Http.Headers => 0x48baad61 => 46
	i32 1236289705, ; 76: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 23
	i32 1253011324, ; 77: Microsoft.Win32.Registry => 0x4aaf6f7c => 47
	i32 1267360935, ; 78: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 105
	i32 1267908789, ; 79: Microsoft.AspNetCore.Routing => 0x4b92c0b5 => 32
	i32 1293217323, ; 80: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 85
	i32 1324164729, ; 81: System.Linq => 0x4eed2679 => 9
	i32 1364015309, ; 82: System.IO => 0x514d38cd => 8
	i32 1365406463, ; 83: System.ServiceModel.Internals.dll => 0x516272ff => 121
	i32 1376866003, ; 84: Xamarin.AndroidX.SavedState => 0x52114ed3 => 100
	i32 1391893274, ; 85: MongoDB.Bson.dll => 0x52f69b1a => 48
	i32 1406073936, ; 86: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 80
	i32 1411638395, ; 87: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 64
	i32 1457743152, ; 88: System.Runtime.Extensions.dll => 0x56e36530 => 4
	i32 1462112819, ; 89: System.IO.Compression.dll => 0x57261233 => 116
	i32 1469204771, ; 90: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 72
	i32 1470490898, ; 91: Microsoft.Extensions.Primitives => 0x57a5e912 => 45
	i32 1543031311, ; 92: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 133
	i32 1550322496, ; 93: System.Reflection.Extensions.dll => 0x5c680b40 => 13
	i32 1565862583, ; 94: System.IO.FileSystem.Primitives => 0x5d552ab7 => 10
	i32 1582372066, ; 95: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 84
	i32 1592978981, ; 96: System.Runtime.Serialization.dll => 0x5ef2ee25 => 120
	i32 1622152042, ; 97: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 95
	i32 1622358360, ; 98: System.Dynamic.Runtime => 0x60b33958 => 131
	i32 1636350590, ; 99: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 82
	i32 1639515021, ; 100: System.Net.Http.dll => 0x61b9038d => 119
	i32 1639986890, ; 101: System.Text.RegularExpressions => 0x61c036ca => 133
	i32 1657153582, ; 102: System.Runtime => 0x62c6282e => 65
	i32 1658251792, ; 103: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 109
	i32 1670326403, ; 104: AWSSDK.Core.dll => 0x638f2883 => 14
	i32 1701541528, ; 105: System.Diagnostics.Debug.dll => 0x656b7698 => 11
	i32 1726116996, ; 106: System.Reflection.dll => 0x66e27484 => 7
	i32 1729485958, ; 107: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 78
	i32 1765942094, ; 108: System.Reflection.Extensions => 0x6942234e => 13
	i32 1766324549, ; 109: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 102
	i32 1776026572, ; 110: System.Core.dll => 0x69dc03cc => 58
	i32 1788241197, ; 111: Xamarin.AndroidX.Fragment => 0x6a96652d => 86
	i32 1796167890, ; 112: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 34
	i32 1807397336, ; 113: MongoDB.Driver => 0x6bbab1d8 => 50
	i32 1808609942, ; 114: Xamarin.AndroidX.Loader => 0x6bcd3296 => 95
	i32 1813201214, ; 115: Xamarin.Google.Android.Material => 0x6c13413e => 109
	i32 1819327070, ; 116: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 27
	i32 1824175904, ; 117: System.Text.Encoding.Extensions => 0x6cbab720 => 136
	i32 1828688058, ; 118: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 42
	i32 1835989518, ; 119: Snappier => 0x6d6efa0e => 56
	i32 1858542181, ; 120: System.Linq.Expressions => 0x6ec71a65 => 130
	i32 1867746548, ; 121: Xamarin.Essentials.dll => 0x6f538cf4 => 108
	i32 1885316902, ; 122: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 75
	i32 1894524299, ; 123: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 35
	i32 1919157823, ; 124: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 97
	i32 1928288591, ; 125: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 24
	i32 1988094259, ; 126: AWSSDK.SecurityToken.dll => 0x767fe933 => 15
	i32 2011961780, ; 127: System.Buffers.dll => 0x77ec19b4 => 57
	i32 2019465201, ; 128: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 93
	i32 2055257422, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 91
	i32 2075706075, ; 130: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 24
	i32 2079903147, ; 131: System.Runtime.dll => 0x7bf8cdab => 65
	i32 2090596640, ; 132: System.Numerics.Vectors => 0x7c9bf920 => 63
	i32 2097448633, ; 133: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 88
	i32 2181898931, ; 134: Microsoft.Extensions.Options.dll => 0x820d22b3 => 44
	i32 2182738860, ; 135: Microsoft.AspNetCore.Mvc.Core.dll => 0x8219f3ac => 29
	i32 2192057212, ; 136: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 42
	i32 2193016926, ; 137: System.ObjectModel.dll => 0x82b6c85e => 132
	i32 2197979891, ; 138: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 39
	i32 2201231467, ; 139: System.Net.Http => 0x8334206b => 119
	i32 2204417087, ; 140: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 43
	i32 2217644978, ; 141: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 104
	i32 2242871324, ; 142: Microsoft.AspNetCore.Http.dll => 0x85af801c => 25
	i32 2244775296, ; 143: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 96
	i32 2256548716, ; 144: Xamarin.AndroidX.MultiDex => 0x8680336c => 97
	i32 2265110946, ; 145: System.Security.AccessControl.dll => 0x8702d9a2 => 66
	i32 2266799131, ; 146: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 36
	i32 2279755925, ; 147: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 99
	i32 2285293097, ; 148: Microsoft.AspNetCore.Mvc.Abstractions => 0x8836ce29 => 28
	i32 2290594010, ; 149: SharpCompress.dll => 0x8887b0da => 55
	i32 2315684594, ; 150: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 71
	i32 2321784778, ; 151: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0x8a639fca => 28
	i32 2340441535, ; 152: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 124
	i32 2368005991, ; 153: System.Xml.ReaderWriter.dll => 0x8d24e767 => 134
	i32 2383496789, ; 154: System.Security.Principal.Windows.dll => 0x8e114655 => 67
	i32 2454642406, ; 155: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458592288, ; 156: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 19
	i32 2471841756, ; 157: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 158: Java.Interop.dll => 0x93918882 => 17
	i32 2490993605, ; 159: System.AppContext.dll => 0x94798bc5 => 3
	i32 2501346920, ; 160: System.Data.DataSetExtensions => 0x95178668 => 114
	i32 2505896520, ; 161: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 92
	i32 2537015816, ; 162: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 20
	i32 2562349572, ; 163: Microsoft.CSharp => 0x98ba5a04 => 137
	i32 2570120770, ; 164: System.Text.Encodings.Web => 0x9930ee42 => 68
	i32 2581819634, ; 165: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 105
	i32 2585220780, ; 166: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 136
	i32 2592341985, ; 167: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 40
	i32 2593268061, ; 168: Microsoft.AspNetCore.Routing.Abstractions.dll => 0x9a92215d => 31
	i32 2594125473, ; 169: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 22
	i32 2611359322, ; 170: ZstdSharp.dll => 0x9ba62e5a => 111
	i32 2620871830, ; 171: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 82
	i32 2633959305, ; 172: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 26
	i32 2664396074, ; 173: System.Xml.XDocument.dll => 0x9ecf752a => 127
	i32 2693849962, ; 174: System.IO.dll => 0xa090e36a => 8
	i32 2715334215, ; 175: System.Threading.Tasks.dll => 0xa1d8b647 => 126
	i32 2725980451, ; 176: SharpCompress => 0xa27b2923 => 55
	i32 2728513968, ; 177: MongoDB.Libmongocrypt => 0xa2a1d1b0 => 51
	i32 2732626843, ; 178: Xamarin.AndroidX.Activity => 0xa2e0939b => 70
	i32 2735631878, ; 179: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 20
	i32 2737747696, ; 180: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 72
	i32 2765824710, ; 181: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 138
	i32 2778768386, ; 182: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2810250172, ; 183: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 80
	i32 2819470561, ; 184: System.Xml.dll => 0xa80db4e1 => 69
	i32 2850549256, ; 185: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 27
	i32 2853208004, ; 186: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2855708567, ; 187: Xamarin.AndroidX.Transition => 0xaa36a797 => 103
	i32 2900621748, ; 188: System.Dynamic.Runtime.dll => 0xace3f9b4 => 131
	i32 2901442782, ; 189: System.Reflection => 0xacf080de => 7
	i32 2903344695, ; 190: System.ComponentModel.Composition => 0xad0d8637 => 118
	i32 2905242038, ; 191: mscorlib.dll => 0xad2a79b6 => 53
	i32 2919462931, ; 192: System.Numerics.Vectors.dll => 0xae037813 => 63
	i32 2968338931, ; 193: System.Security.Principal.Windows => 0xb0ed41f3 => 67
	i32 2978368250, ; 194: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 22
	i32 2978675010, ; 195: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 85
	i32 2996646946, ; 196: Microsoft.AspNetCore.Http => 0xb29d3422 => 25
	i32 3024354802, ; 197: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 89
	i32 3033331042, ; 198: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 19
	i32 3036999524, ; 199: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 26
	i32 3075834255, ; 200: System.Threading.Tasks => 0xb755818f => 126
	i32 3089219899, ; 201: ZstdSharp => 0xb821c13b => 111
	i32 3111772706, ; 202: System.Runtime.Serialization => 0xb979e222 => 120
	i32 3113762169, ; 203: Microsoft.AspNetCore.Routing.Abstractions => 0xb9983d79 => 31
	i32 3124832203, ; 204: System.Threading.Tasks.Extensions => 0xba4127cb => 2
	i32 3132293585, ; 205: System.Security.AccessControl => 0xbab301d1 => 66
	i32 3143283668, ; 206: AWSSDK.SecurityToken => 0xbb5ab3d4 => 15
	i32 3147165239, ; 207: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 139
	i32 3151576809, ; 208: Microsoft.AspNetCore.Mvc.Core => 0xbbd93ee9 => 29
	i32 3173064269, ; 209: DnsClient => 0xbd211e4d => 16
	i32 3204380047, ; 210: System.Data.dll => 0xbefef58f => 112
	i32 3211777861, ; 211: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 84
	i32 3220365878, ; 212: System.Threading => 0xbff2e236 => 12
	i32 3228018376, ; 213: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xc067a6c8 => 30
	i32 3247949154, ; 214: Mono.Security => 0xc197c562 => 140
	i32 3252856589, ; 215: MongoDB.Driver.dll => 0xc1e2a70d => 50
	i32 3258312781, ; 216: Xamarin.AndroidX.CardView => 0xc235e84d => 78
	i32 3258876633, ; 217: MongoDB.Bson => 0xc23e82d9 => 48
	i32 3265893370, ; 218: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 2
	i32 3267021929, ; 219: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 76
	i32 3279906254, ; 220: Microsoft.Win32.Registry.dll => 0xc37f65ce => 47
	i32 3299363146, ; 221: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 222: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 33
	i32 3317135071, ; 223: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 83
	i32 3317144872, ; 224: System.Data => 0xc5b79d28 => 112
	i32 3340431453, ; 225: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 75
	i32 3353484488, ; 226: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 88
	i32 3362522851, ; 227: Xamarin.AndroidX.Core => 0xc86c06e3 => 81
	i32 3366347497, ; 228: Java.Interop => 0xc8a662e9 => 17
	i32 3374999561, ; 229: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 99
	i32 3395150330, ; 230: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 64
	i32 3404865022, ; 231: System.ServiceModel.Internals => 0xcaf21dfe => 121
	i32 3414721009, ; 232: App1.dll => 0xcb8881f1 => 0
	i32 3428513518, ; 233: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 38
	i32 3429136800, ; 234: System.Xml => 0xcc6479a0 => 69
	i32 3430777524, ; 235: netstandard => 0xcc7d82b4 => 1
	i32 3457240403, ; 236: AWSSDK.Core => 0xce114d53 => 14
	i32 3476120550, ; 237: Mono.Android => 0xcf3163e6 => 52
	i32 3486566296, ; 238: System.Transactions => 0xcfd0c798 => 113
	i32 3501239056, ; 239: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 76
	i32 3509114376, ; 240: System.Xml.Linq => 0xd128d608 => 123
	i32 3567349600, ; 241: System.ComponentModel.Composition.dll => 0xd4a16f60 => 118
	i32 3608519521, ; 242: System.Linq.dll => 0xd715a361 => 9
	i32 3624195450, ; 243: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 124
	i32 3627220390, ; 244: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 98
	i32 3638274909, ; 245: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 10
	i32 3641597786, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 91
	i32 3657292374, ; 247: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 36
	i32 3672681054, ; 248: Mono.Android.dll => 0xdae8aa5e => 52
	i32 3676310014, ; 249: System.Web.Services.dll => 0xdb2009fe => 122
	i32 3682565725, ; 250: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 77
	i32 3689375977, ; 251: System.Drawing.Common => 0xdbe768e9 => 115
	i32 3718780102, ; 252: Xamarin.AndroidX.Annotation => 0xdda814c6 => 71
	i32 3748608112, ; 253: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 59
	i32 3765508441, ; 254: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 43
	i32 3786282454, ; 255: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 79
	i32 3791210109, ; 256: Snappier.dll => 0xe1f9467d => 56
	i32 3829621856, ; 257: System.Numerics.dll => 0xe4436460 => 62
	i32 3841636137, ; 258: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 37
	i32 3849253459, ; 259: System.Runtime.InteropServices.dll => 0xe56ef253 => 125
	i32 3885922214, ; 260: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 103
	i32 3896760992, ; 261: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 81
	i32 3920810846, ; 262: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 117
	i32 3921031405, ; 263: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 106
	i32 3928044579, ; 264: System.Xml.ReaderWriter => 0xea213423 => 134
	i32 3945713374, ; 265: System.Data.DataSetExtensions.dll => 0xeb2ecede => 114
	i32 3953953790, ; 266: System.Text.Encoding.CodePages => 0xebac8bfe => 138
	i32 3955647286, ; 267: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 73
	i32 4025784931, ; 268: System.Memory => 0xeff49a63 => 61
	i32 4044155772, ; 269: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 46
	i32 4073602200, ; 270: System.Threading.dll => 0xf2ce3c98 => 12
	i32 4078967171, ; 271: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 41
	i32 4105002889, ; 272: Mono.Security.dll => 0xf4ad5f89 => 140
	i32 4126470640, ; 273: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 38
	i32 4130442656, ; 274: System.AppContext => 0xf6318da0 => 3
	i32 4141580284, ; 275: Microsoft.AspNetCore.Authorization.Policy => 0xf6db7ffc => 21
	i32 4151237749, ; 276: System.Core => 0xf76edc75 => 58
	i32 4181436372, ; 277: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 129
	i32 4182413190, ; 278: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 94
	i32 4213026141, ; 279: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 59
	i32 4260525087, ; 280: System.Buffers => 0xfdf2741f => 57
	i32 4292120959 ; 281: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 94
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [282 x i32] [
	i32 39, i32 92, i32 110, i32 54, i32 101, i32 125, i32 101, i32 79, ; 0..7
	i32 33, i32 102, i32 77, i32 49, i32 11, i32 89, i32 137, i32 128, ; 8..15
	i32 122, i32 87, i32 18, i32 70, i32 62, i32 90, i32 30, i32 32, ; 16..23
	i32 61, i32 108, i32 6, i32 86, i32 129, i32 53, i32 60, i32 87, ; 24..31
	i32 96, i32 23, i32 132, i32 45, i32 113, i32 5, i32 4, i32 34, ; 32..39
	i32 117, i32 83, i32 68, i32 106, i32 74, i32 123, i32 0, i32 21, ; 40..47
	i32 51, i32 116, i32 44, i32 115, i32 98, i32 128, i32 110, i32 54, ; 48..55
	i32 49, i32 90, i32 139, i32 127, i32 6, i32 5, i32 100, i32 37, ; 56..63
	i32 73, i32 130, i32 93, i32 60, i32 35, i32 41, i32 16, i32 18, ; 64..71
	i32 40, i32 104, i32 74, i32 46, i32 23, i32 47, i32 105, i32 32, ; 72..79
	i32 85, i32 9, i32 8, i32 121, i32 100, i32 48, i32 80, i32 64, ; 80..87
	i32 4, i32 116, i32 72, i32 45, i32 133, i32 13, i32 10, i32 84, ; 88..95
	i32 120, i32 95, i32 131, i32 82, i32 119, i32 133, i32 65, i32 109, ; 96..103
	i32 14, i32 11, i32 7, i32 78, i32 13, i32 102, i32 58, i32 86, ; 104..111
	i32 34, i32 50, i32 95, i32 109, i32 27, i32 136, i32 42, i32 56, ; 112..119
	i32 130, i32 108, i32 75, i32 35, i32 97, i32 24, i32 15, i32 57, ; 120..127
	i32 93, i32 91, i32 24, i32 65, i32 63, i32 88, i32 44, i32 29, ; 128..135
	i32 42, i32 132, i32 39, i32 119, i32 43, i32 104, i32 25, i32 96, ; 136..143
	i32 97, i32 66, i32 36, i32 99, i32 28, i32 55, i32 71, i32 28, ; 144..151
	i32 124, i32 134, i32 67, i32 135, i32 19, i32 1, i32 17, i32 3, ; 152..159
	i32 114, i32 92, i32 20, i32 137, i32 68, i32 105, i32 136, i32 40, ; 160..167
	i32 31, i32 22, i32 111, i32 82, i32 26, i32 127, i32 8, i32 126, ; 168..175
	i32 55, i32 51, i32 70, i32 20, i32 72, i32 138, i32 107, i32 80, ; 176..183
	i32 69, i32 27, i32 107, i32 103, i32 131, i32 7, i32 118, i32 53, ; 184..191
	i32 63, i32 67, i32 22, i32 85, i32 25, i32 89, i32 19, i32 26, ; 192..199
	i32 126, i32 111, i32 120, i32 31, i32 2, i32 66, i32 15, i32 139, ; 200..207
	i32 29, i32 16, i32 112, i32 84, i32 12, i32 30, i32 140, i32 50, ; 208..215
	i32 78, i32 48, i32 2, i32 76, i32 47, i32 135, i32 33, i32 83, ; 216..223
	i32 112, i32 75, i32 88, i32 81, i32 17, i32 99, i32 64, i32 121, ; 224..231
	i32 0, i32 38, i32 69, i32 1, i32 14, i32 52, i32 113, i32 76, ; 232..239
	i32 123, i32 118, i32 9, i32 124, i32 98, i32 10, i32 91, i32 36, ; 240..247
	i32 52, i32 122, i32 77, i32 115, i32 71, i32 59, i32 43, i32 79, ; 248..255
	i32 56, i32 62, i32 37, i32 125, i32 103, i32 81, i32 117, i32 106, ; 256..263
	i32 134, i32 114, i32 138, i32 73, i32 61, i32 46, i32 12, i32 41, ; 264..271
	i32 140, i32 38, i32 3, i32 21, i32 58, i32 129, i32 94, i32 59, ; 272..279
	i32 57, i32 94 ; 280..281
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "stackrealign" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"NumRegisterParameters", i32 0}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
