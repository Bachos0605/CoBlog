; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [282 x i64] [
	i64 15690660930947125, ; 0: Microsoft.DotNet.PlatformAbstractions.dll => 0x37be92af148835 => 35
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 45
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 52
	i64 160518225272466977, ; 3: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 41
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 130
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 79
	i64 232391251801502327, ; 6: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 100
	i64 295915112840604065, ; 7: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 101
	i64 456145817121827372, ; 8: App1.dll => 0x6548e343353aa2c => 0
	i64 486223428996552534, ; 9: ZstdSharp.dll => 0x6bf69a1eecfd756 => 111
	i64 535107122908063503, ; 10: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 43
	i64 634308326490598313, ; 11: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 92
	i64 702024105029695270, ; 12: System.Drawing.Common => 0x9be17343c0e7726 => 115
	i64 720058930071658100, ; 13: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 88
	i64 872800313462103108, ; 14: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 85
	i64 940822596282819491, ; 15: System.Transactions => 0xd0e792aa81923a3 => 113
	i64 982068613551266738, ; 16: Microsoft.AspNetCore.ResponseCaching.Abstractions.dll => 0xda1023367c89bb2 => 30
	i64 1000557547492888992, ; 17: Mono.Security.dll => 0xde2b1c9cba651a0 => 140
	i64 1001381392624924420, ; 18: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 19
	i64 1120440138749646132, ; 19: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 109
	i64 1315114680217950157, ; 20: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 74
	i64 1425944114962822056, ; 21: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 120
	i64 1624659445732251991, ; 22: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 72
	i64 1628611045998245443, ; 23: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 94
	i64 1636321030536304333, ; 24: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 89
	i64 1731380447121279447, ; 25: Newtonsoft.Json => 0x18071957e9b889d7 => 54
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1795316252682057001, ; 27: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 73
	i64 1825687700144851180, ; 28: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 124
	i64 1836611346387731153, ; 29: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 100
	i64 1865037103900624886, ; 30: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 34
	i64 1875917498431009007, ; 31: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 71
	i64 1981742497975770890, ; 32: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 93
	i64 2040001226662520565, ; 33: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 2
	i64 2133195048986300728, ; 34: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 54
	i64 2136356949452311481, ; 35: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 97
	i64 2165725771938924357, ; 36: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 77
	i64 2262844636196693701, ; 37: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 85
	i64 2284400282711631002, ; 38: System.Web.Services => 0x1fb3d1f42fd4249a => 122
	i64 2315304989185124968, ; 39: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 5
	i64 2329709569556905518, ; 40: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 91
	i64 2335503487726329082, ; 41: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 68
	i64 2337758774805907496, ; 42: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 64
	i64 2443621855109524048, ; 43: AWSSDK.Core.dll => 0x21e97d215f2f2a50 => 14
	i64 2470498323731680442, ; 44: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 80
	i64 2479423007379663237, ; 45: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 104
	i64 2497223385847772520, ; 46: System.Runtime => 0x22a7eb7046413568 => 65
	i64 2547086958574651984, ; 47: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 70
	i64 2592350477072141967, ; 48: System.Xml.dll => 0x23f9e10627330e8f => 69
	i64 2624866290265602282, ; 49: mscorlib.dll => 0x246d65fbde2db8ea => 53
	i64 2656907746661064104, ; 50: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 38
	i64 2783046991838674048, ; 51: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 64
	i64 2815524396660695947, ; 52: System.Security.AccessControl => 0x2712c0857f68238b => 66
	i64 3017704767998173186, ; 53: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 109
	i64 3021884968805928991, ; 54: Microsoft.AspNetCore.Authorization.Policy => 0x29efe45e55c5101f => 21
	i64 3168817962471953758, ; 55: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 41
	i64 3266690593535380875, ; 56: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 20
	i64 3289520064315143713, ; 57: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 90
	i64 3311221304742556517, ; 58: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 63
	i64 3396143930648122816, ; 59: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 40
	i64 3522470458906976663, ; 60: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 102
	i64 3531994851595924923, ; 61: System.Numerics => 0x31042a9aade235bb => 62
	i64 3571415421602489686, ; 62: System.Runtime.dll => 0x319037675df7e556 => 65
	i64 3638003163729360188, ; 63: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 36
	i64 3647754201059316852, ; 64: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 134
	i64 3716579019761409177, ; 65: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 66: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 99
	i64 3966267475168208030, ; 67: System.Memory => 0x370b03412596249e => 61
	i64 4009997192427317104, ; 68: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 129
	i64 4184189618158325478, ; 69: MongoDB.Driver.dll => 0x3a113a49f7344ee6 => 50
	i64 4187479170553454871, ; 70: System.Linq.Expressions => 0x3a1cea1e912fa117 => 130
	i64 4225924121207573736, ; 71: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 18
	i64 4243591448627561453, ; 72: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 26
	i64 4250192876909962317, ; 73: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 22
	i64 4525561845656915374, ; 74: System.ServiceModel.Internals => 0x3ece06856b710dae => 121
	i64 4636684751163556186, ; 75: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 106
	i64 4782108999019072045, ; 76: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 76
	i64 4794310189461587505, ; 77: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 70
	i64 4795410492532947900, ; 78: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 102
	i64 4926014167703849846, ; 79: MongoDB.Driver => 0x445cb7c950878b76 => 50
	i64 5112836352847824253, ; 80: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 33
	i64 5177565741364132164, ; 81: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 25
	i64 5203618020066742981, ; 82: Xamarin.Essentials => 0x4836f704f0e652c5 => 108
	i64 5205316157927637098, ; 83: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 96
	i64 5376510917114486089, ; 84: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 104
	i64 5388159308784456503, ; 85: Snappier => 0x4ac69657f94fd337 => 56
	i64 5408338804355907810, ; 86: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 103
	i64 5423376490970181369, ; 87: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 124
	i64 5446034149219586269, ; 88: System.Diagnostics.Debug => 0x4b94333452e150dd => 11
	i64 5448796023926118037, ; 89: MongoDB.Libmongocrypt.dll => 0x4b9e031d63ad5695 => 51
	i64 5507995362134886206, ; 90: System.Core.dll => 0x4c705499688c873e => 58
	i64 5527431512186326818, ; 91: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 10
	i64 5593115988096097561, ; 92: Microsoft.AspNetCore.Routing.dll => 0x4d9ebd5b8a069d19 => 32
	i64 5610815111739789596, ; 93: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 19
	i64 5917160574407189813, ; 94: App1 => 0x521dfa31247ca535 => 0
	i64 6319713645133255417, ; 95: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 92
	i64 6401687960814735282, ; 96: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 91
	i64 6476067149090213100, ; 97: SharpCompress => 0x59df9cc2ab194cec => 55
	i64 6504860066809920875, ; 98: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 77
	i64 6548213210057960872, ; 99: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 83
	i64 6560151584539558821, ; 100: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 44
	i64 6591024623626361694, ; 101: System.Web.Services.dll => 0x5b7805f9751a1b5e => 122
	i64 6617685658146568858, ; 102: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 138
	i64 6659513131007730089, ; 103: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 88
	i64 6814185388980153342, ; 104: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 127
	i64 6876862101832370452, ; 105: System.Xml.Linq => 0x5f6f85a57d108914 => 123
	i64 6894844156784520562, ; 106: System.Numerics.Vectors => 0x5faf683aead1ad72 => 63
	i64 6911788284027924527, ; 107: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 23
	i64 7103753931438454322, ; 108: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 87
	i64 7112547816752919026, ; 109: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 5
	i64 7243049202045766964, ; 110: MongoDB.Bson.dll => 0x64847adfba9d4d34 => 48
	i64 7270811800166795866, ; 111: System.Linq => 0x64e71ccf51a90a5a => 9
	i64 7331765743953618630, ; 112: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 25
	i64 7338192458477945005, ; 113: System.Reflection => 0x65d67f295d0740ad => 7
	i64 7473077275758116397, ; 114: Microsoft.DotNet.PlatformAbstractions => 0x67b5b430309b3e2d => 35
	i64 7488575175965059935, ; 115: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 123
	i64 7489048572193775167, ; 116: System.ObjectModel => 0x67ee71ff6b419e3f => 132
	i64 7637365915383206639, ; 117: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 108
	i64 7654504624184590948, ; 118: System.Net.Http => 0x6a3a4366801b8264 => 119
	i64 7729023323672879921, ; 119: DnsClient.dll => 0x6b4301c3443b2331 => 16
	i64 7735176074855944702, ; 120: Microsoft.CSharp => 0x6b58dda848e391fe => 137
	i64 7820441508502274321, ; 121: System.Data => 0x6c87ca1e14ff8111 => 112
	i64 7824823231109474690, ; 122: Microsoft.AspNetCore.Authorization.Policy.dll => 0x6c975b4560812982 => 21
	i64 7836164640616011524, ; 123: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 72
	i64 8044118961405839122, ; 124: System.ComponentModel.Composition => 0x6fa2739369944712 => 118
	i64 8064050204834738623, ; 125: System.Collections.dll => 0x6fe942efa61731bf => 6
	i64 8083354569033831015, ; 126: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 90
	i64 8087206902342787202, ; 127: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 59
	i64 8103644804370223335, ; 128: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 114
	i64 8113615946733131500, ; 129: System.Reflection.Extensions => 0x70995ab73cf916ec => 13
	i64 8167236081217502503, ; 130: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 17
	i64 8185542183669246576, ; 131: System.Collections => 0x7198e33f4794aa70 => 6
	i64 8290740647658429042, ; 132: System.Runtime.Extensions => 0x730ea0b15c929a72 => 4
	i64 8308610922448049511, ; 133: MongoDB.Bson => 0x734e1d9cf1725567 => 48
	i64 8519205576476231015, ; 134: Microsoft.AspNetCore.Mvc.Core.dll => 0x763a4c55ca648567 => 29
	i64 8601935802264776013, ; 135: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 103
	i64 8611142787134128904, ; 136: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 23
	i64 8626175481042262068, ; 137: Java.Interop => 0x77b654e585b55834 => 17
	i64 8638972117149407195, ; 138: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 137
	i64 8648495978913578441, ; 139: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 47
	i64 8684531736582871431, ; 140: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 117
	i64 8725526185868997716, ; 141: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 59
	i64 8941376889969657626, ; 142: System.Xml.XDocument => 0x7c1626e87187471a => 127
	i64 9324707631942237306, ; 143: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 73
	i64 9413000421947348542, ; 144: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 22
	i64 9461546124022044683, ; 145: AWSSDK.Core => 0x834e2a12044ed80b => 14
	i64 9584643793929893533, ; 146: System.IO.dll => 0x85037ebfbbd7f69d => 8
	i64 9659729154652888475, ; 147: System.Text.RegularExpressions => 0x860e407c9991dd9b => 133
	i64 9662334977499516867, ; 148: System.Numerics.dll => 0x8617827802b0cfc3 => 62
	i64 9678050649315576968, ; 149: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 80
	i64 9808709177481450983, ; 150: Mono.Android.dll => 0x881f890734e555e7 => 52
	i64 9834056768316610435, ; 151: System.Transactions.dll => 0x8879968718899783 => 113
	i64 9938556199016768930, ; 152: Microsoft.AspNetCore.Routing => 0x89ecd834cea6a5a2 => 32
	i64 9998632235833408227, ; 153: Mono.Security => 0x8ac2470b209ebae3 => 140
	i64 10038780035334861115, ; 154: System.Net.Http.dll => 0x8b50e941206af13b => 119
	i64 10229024438826829339, ; 155: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 83
	i64 10243523786148452761, ; 156: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 24
	i64 10360651442923773544, ; 157: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10430153318873392755, ; 158: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 81
	i64 10447083246144586668, ; 159: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 34
	i64 10458986597687352396, ; 160: Microsoft.AspNetCore.Routing.Abstractions => 0x9125c8e581b9dc4c => 31
	i64 10566960649245365243, ; 161: System.Globalization.dll => 0x92a562b96dcd13fb => 128
	i64 10714184849103829812, ; 162: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 4
	i64 10847732767863316357, ; 163: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 74
	i64 10964653383833615866, ; 164: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 139
	i64 11002576679268595294, ; 165: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 42
	i64 11023048688141570732, ; 166: System.Core => 0x98f9bc61168392ac => 58
	i64 11037814507248023548, ; 167: System.Xml => 0x992e31d0412bf7fc => 69
	i64 11050168729868392624, ; 168: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 27
	i64 11162124722117608902, ; 169: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 107
	i64 11226290749488709958, ; 170: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 44
	i64 11244247448620239658, ; 171: DnsClient => 0x9c0b977add9a0b2a => 16
	i64 11340910727871153756, ; 172: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 82
	i64 11392833485892708388, ; 173: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 98
	i64 11432101114902388181, ; 174: System.AppContext => 0x9ea6fb64e61a9dd5 => 3
	i64 11485890710487134646, ; 175: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 125
	i64 11529969570048099689, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 107
	i64 11580057168383206117, ; 177: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 71
	i64 11597940890313164233, ; 178: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 179: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 87
	i64 11743665907891708234, ; 180: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 126
	i64 12102847907131387746, ; 181: System.Buffers => 0xa7f5f40c43256f62 => 57
	i64 12123043025855404482, ; 182: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 13
	i64 12137774235383566651, ; 183: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 105
	i64 12201331334810686224, ; 184: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 129
	i64 12441092376399691269, ; 185: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 18
	i64 12451044538927396471, ; 186: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 86
	i64 12466513435562512481, ; 187: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 95
	i64 12487638416075308985, ; 188: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 84
	i64 12538491095302438457, ; 189: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 78
	i64 12550732019250633519, ; 190: System.IO.Compression => 0xae2d28465e8e1b2f => 116
	i64 12700543734426720211, ; 191: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 79
	i64 12708238894395270091, ; 192: System.IO => 0xb05cbbf17d3ba3cb => 8
	i64 12708922737231849740, ; 193: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 136
	i64 12843321153144804894, ; 194: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 45
	i64 12843770487262409629, ; 195: System.AppContext.dll => 0xb23e3d357debf39d => 3
	i64 12963446364377008305, ; 196: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 115
	i64 13308002692117796025, ; 197: Microsoft.AspNetCore.Routing.Abstractions.dll => 0xb8af85f08d9f94b9 => 31
	i64 13370592475155966277, ; 198: System.Runtime.Serialization => 0xb98de304062ea945 => 120
	i64 13401370062847626945, ; 199: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 105
	i64 13404984788036896679, ; 200: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 24
	i64 13418404731555841257, ; 201: MongoDB.Driver.Core => 0xba37c00274ce84e9 => 49
	i64 13454009404024712428, ; 202: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 110
	i64 13491513212026656886, ; 203: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 75
	i64 13550417756503177631, ; 204: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 40
	i64 13572454107664307259, ; 205: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 99
	i64 13618112415141049676, ; 206: Microsoft.AspNetCore.Mvc.Core => 0xbcfd4116f7d1b54c => 29
	i64 13647894001087880694, ; 207: System.Data.dll => 0xbd670f48cb071df6 => 112
	i64 13664641607527540181, ; 208: MongoDB.Libmongocrypt => 0xbda28f24c7b3a5d5 => 51
	i64 13710614125866346983, ; 209: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 66
	i64 13713329104121190199, ; 210: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 131
	i64 13921917134693230900, ; 211: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 33
	i64 13955418299340266673, ; 212: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 39
	i64 13959074834287824816, ; 213: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 86
	i64 14124974489674258913, ; 214: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 78
	i64 14125464355221830302, ; 215: System.Threading.dll => 0xc407bafdbc707a9e => 12
	i64 14172845254133543601, ; 216: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 97
	i64 14254574811015963973, ; 217: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 136
	i64 14261073672896646636, ; 218: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 98
	i64 14261232074598307362, ; 219: Microsoft.AspNetCore.Mvc.Abstractions => 0xc5ea130339d6d622 => 28
	i64 14327695147300244862, ; 220: System.Reflection.dll => 0xc6d632d338eb4d7e => 7
	i64 14528548208938697926, ; 221: Microsoft.AspNetCore.Mvc.Abstractions.dll => 0xc99fc59ed7edc4c6 => 28
	i64 14551742072151931844, ; 222: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 68
	i64 14644440854989303794, ; 223: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 96
	i64 14669215534098758659, ; 224: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 38
	i64 14792063746108907174, ; 225: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 110
	i64 14819054087695749454, ; 226: SharpCompress.dll => 0xcda7db2d9467d14e => 55
	i64 14852515768018889994, ; 227: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 82
	i64 14912225920358050525, ; 228: System.Security.Principal.Windows => 0xcef2de7759506add => 67
	i64 14935719434541007538, ; 229: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 138
	i64 14954917835170835695, ; 230: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 37
	i64 14987728460634540364, ; 231: System.IO.Compression.dll => 0xcfff1ba06622494c => 116
	i64 14988210264188246988, ; 232: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 84
	i64 15076659072870671916, ; 233: System.ObjectModel.dll => 0xd13b0d8c1620662c => 132
	i64 15133485256822086103, ; 234: System.Linq.dll => 0xd204f0a9127dd9d7 => 9
	i64 15227001540531775957, ; 235: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 36
	i64 15234786388537674379, ; 236: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 131
	i64 15370334346939861994, ; 237: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 81
	i64 15391712275433856905, ; 238: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 37
	i64 15526743539506359484, ; 239: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15565247197164990907, ; 240: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 26
	i64 15582737692548360875, ; 241: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 94
	i64 15592226634512578529, ; 242: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 20
	i64 15609085926864131306, ; 243: System.dll => 0xd89e9cf3334914ea => 60
	i64 15620595871140898079, ; 244: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 39
	i64 15661133872274321916, ; 245: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 134
	i64 15710114879900314733, ; 246: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 47
	i64 15755368083429170162, ; 247: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 10
	i64 15777549416145007739, ; 248: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 101
	i64 15817206913877585035, ; 249: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 126
	i64 15852824340364052161, ; 250: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 27
	i64 15942979176950631493, ; 251: MongoDB.Driver.Core.dll => 0xdd40d71787978c45 => 49
	i64 15963349826457351533, ; 252: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 2
	i64 16046481083542319511, ; 253: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 43
	i64 16154507427712707110, ; 254: System => 0xe03056ea4e39aa26 => 60
	i64 16321164108206115771, ; 255: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 42
	i64 16337011941688632206, ; 256: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 67
	i64 16344871930018146979, ; 257: Microsoft.AspNetCore.ResponseCaching.Abstractions => 0xe2d4a66be7fc2aa3 => 30
	i64 16442365378858692411, ; 258: Snappier.dll => 0xe42f04325a0daf3b => 56
	i64 16565028646146589191, ; 259: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 118
	i64 16822611501064131242, ; 260: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 114
	i64 16833383113903931215, ; 261: mscorlib => 0xe99c30c1484d7f4f => 53
	i64 16890310621557459193, ; 262: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 133
	i64 17037200463775726619, ; 263: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 89
	i64 17126545051278881272, ; 264: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 46
	i64 17154287038065938077, ; 265: AWSSDK.SecurityToken => 0xee10452c7f020e9d => 15
	i64 17179789585722495361, ; 266: AWSSDK.SecurityToken.dll => 0xee6adf9b14f1d181 => 15
	i64 17333249706306540043, ; 267: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 139
	i64 17544493274320527064, ; 268: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 76
	i64 17627500474728259406, ; 269: System.Globalization => 0xf4a176498a351f4e => 128
	i64 17685921127322830888, ; 270: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 11
	i64 17704177640604968747, ; 271: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 95
	i64 17710060891934109755, ; 272: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 93
	i64 17712670374920797664, ; 273: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 125
	i64 17838668724098252521, ; 274: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 57
	i64 17911643751311784505, ; 275: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 46
	i64 17928294245072900555, ; 276: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 117
	i64 17979120673405951447, ; 277: ZstdSharp => 0xf982aafeb83e5dd7 => 111
	i64 18025913125965088385, ; 278: System.Threading => 0xfa28e87b91334681 => 12
	i64 18116111925905154859, ; 279: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 75
	i64 18129453464017766560, ; 280: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 121
	i64 18380184030268848184 ; 281: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 106
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [282 x i32] [
	i32 35, i32 45, i32 52, i32 41, i32 130, i32 79, i32 100, i32 101, ; 0..7
	i32 0, i32 111, i32 43, i32 92, i32 115, i32 88, i32 85, i32 113, ; 8..15
	i32 30, i32 140, i32 19, i32 109, i32 74, i32 120, i32 72, i32 94, ; 16..23
	i32 89, i32 54, i32 61, i32 73, i32 124, i32 100, i32 34, i32 71, ; 24..31
	i32 93, i32 2, i32 54, i32 97, i32 77, i32 85, i32 122, i32 5, ; 32..39
	i32 91, i32 68, i32 64, i32 14, i32 80, i32 104, i32 65, i32 70, ; 40..47
	i32 69, i32 53, i32 38, i32 64, i32 66, i32 109, i32 21, i32 41, ; 48..55
	i32 20, i32 90, i32 63, i32 40, i32 102, i32 62, i32 65, i32 36, ; 56..63
	i32 134, i32 1, i32 99, i32 61, i32 129, i32 50, i32 130, i32 18, ; 64..71
	i32 26, i32 22, i32 121, i32 106, i32 76, i32 70, i32 102, i32 50, ; 72..79
	i32 33, i32 25, i32 108, i32 96, i32 104, i32 56, i32 103, i32 124, ; 80..87
	i32 11, i32 51, i32 58, i32 10, i32 32, i32 19, i32 0, i32 92, ; 88..95
	i32 91, i32 55, i32 77, i32 83, i32 44, i32 122, i32 138, i32 88, ; 96..103
	i32 127, i32 123, i32 63, i32 23, i32 87, i32 5, i32 48, i32 9, ; 104..111
	i32 25, i32 7, i32 35, i32 123, i32 132, i32 108, i32 119, i32 16, ; 112..119
	i32 137, i32 112, i32 21, i32 72, i32 118, i32 6, i32 90, i32 59, ; 120..127
	i32 114, i32 13, i32 17, i32 6, i32 4, i32 48, i32 29, i32 103, ; 128..135
	i32 23, i32 17, i32 137, i32 47, i32 117, i32 59, i32 127, i32 73, ; 136..143
	i32 22, i32 14, i32 8, i32 133, i32 62, i32 80, i32 52, i32 113, ; 144..151
	i32 32, i32 140, i32 119, i32 83, i32 24, i32 135, i32 81, i32 34, ; 152..159
	i32 31, i32 128, i32 4, i32 74, i32 139, i32 42, i32 58, i32 69, ; 160..167
	i32 27, i32 107, i32 44, i32 16, i32 82, i32 98, i32 3, i32 125, ; 168..175
	i32 107, i32 71, i32 1, i32 87, i32 126, i32 57, i32 13, i32 105, ; 176..183
	i32 129, i32 18, i32 86, i32 95, i32 84, i32 78, i32 116, i32 79, ; 184..191
	i32 8, i32 136, i32 45, i32 3, i32 115, i32 31, i32 120, i32 105, ; 192..199
	i32 24, i32 49, i32 110, i32 75, i32 40, i32 99, i32 29, i32 112, ; 200..207
	i32 51, i32 66, i32 131, i32 33, i32 39, i32 86, i32 78, i32 12, ; 208..215
	i32 97, i32 136, i32 98, i32 28, i32 7, i32 28, i32 68, i32 96, ; 216..223
	i32 38, i32 110, i32 55, i32 82, i32 67, i32 138, i32 37, i32 116, ; 224..231
	i32 84, i32 132, i32 9, i32 36, i32 131, i32 81, i32 37, i32 135, ; 232..239
	i32 26, i32 94, i32 20, i32 60, i32 39, i32 134, i32 47, i32 10, ; 240..247
	i32 101, i32 126, i32 27, i32 49, i32 2, i32 43, i32 60, i32 42, ; 248..255
	i32 67, i32 30, i32 56, i32 118, i32 114, i32 53, i32 133, i32 89, ; 256..263
	i32 46, i32 15, i32 15, i32 139, i32 76, i32 128, i32 11, i32 95, ; 264..271
	i32 93, i32 125, i32 57, i32 46, i32 117, i32 111, i32 12, i32 75, ; 272..279
	i32 121, i32 106 ; 280..281
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
