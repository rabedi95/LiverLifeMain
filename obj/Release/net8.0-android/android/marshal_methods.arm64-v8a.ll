; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [321 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [642 x i64] [
	i64 44359872337921045, ; 0: System.ServiceModel.NetTcp => 0x9d9911a0fbc415 => 191
	i64 59393587543438216, ; 1: tr/System.ServiceModel.NetNamedPipe.resources.dll => 0xd3022737767388 => 83
	i64 98382396393917666, ; 2: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 162
	i64 120698629574877762, ; 3: Mono.Android => 0x1accec39cafe242 => 320
	i64 131669012237370309, ; 4: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 176
	i64 160518225272466977, ; 5: Microsoft.Extensions.Hosting.Abstractions => 0x23a4679b5576e21 => 157
	i64 162552888780219690, ; 6: ja/System.ServiceModel.NetNamedPipe.resources.dll => 0x24180fdb8f5652a => 78
	i64 176210343261064415, ; 7: System.ServiceModel.NetNamedPipe.dll => 0x272065fa3d34cdf => 190
	i64 189862278688067135, ; 8: es/System.ServiceModel.Primitives.resources.dll => 0x2a286bc8d72ce3f => 101
	i64 196720943101637631, ; 9: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 255
	i64 210515253464952879, ; 10: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 203
	i64 210656766408556929, ; 11: Appwrite => 0x2ec673683508181 => 126
	i64 232391251801502327, ; 12: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 220
	i64 233856603507324090, ; 13: System.ServiceModel.Federation.dll => 0x33ed357846ef4ba => 187
	i64 329079579674636315, ; 14: pl\System.ServiceModel.Federation.resources => 0x49120225957701b => 41
	i64 333197648493663934, ; 15: System.DirectoryServices => 0x49fc17ef675d6be => 181
	i64 368310478436231069, ; 16: tr\System.ServiceModel.NetFramingBase.resources => 0x51c806dc23ee79d => 70
	i64 387140843282343205, ; 17: ko/System.ServiceModel.Federation.resources.dll => 0x55f668bb9e3a525 => 40
	i64 412321991111798881, ; 18: WCF.dll => 0x5b8dcaa954cf061 => 197
	i64 413889318740378791, ; 19: ja/System.ServiceModel.NetFramingBase.resources.dll => 0x5be6e247bd944a7 => 65
	i64 439161221770931646, ; 20: System.ServiceModel.Security => 0x61836cdeec86dbe => 194
	i64 453109487449598763, ; 21: cs/System.Web.Services.Description.resources.dll => 0x649c4ad9bcaeb2b => 112
	i64 519948357370865659, ; 22: ru/System.ServiceModel.Primitives.resources.dll => 0x7373a46b6a367fb => 108
	i64 535107122908063503, ; 23: Microsoft.Extensions.ObjectPool.dll => 0x76d1517d9b7670f => 160
	i64 545109961164950392, ; 24: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 25: System.Reflection.Primitives => 0x7c6829760de3975 => 280
	i64 571911706346497508, ; 26: zh-Hant\System.ServiceModel.Primitives.resources => 0x7efd6aab3aba5e4 => 111
	i64 670564002081277297, ; 27: Microsoft.Identity.Client.dll => 0x94e526837380571 => 164
	i64 703889276121812442, ; 28: System.ServiceModel.Duplex.dll => 0x9c4b79138728dda => 192
	i64 750875890346172408, ; 29: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 306
	i64 799765834175365804, ; 30: System.ComponentModel.dll => 0xb1956c9f18442ac => 240
	i64 849051935479314978, ; 31: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 32: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 208
	i64 926586271160641525, ; 33: ja/System.Web.Services.Description.resources.dll => 0xcdbe54dea48a7f5 => 117
	i64 1001381392624924420, ; 34: Microsoft.AspNetCore.Authentication.Core.dll => 0xde59f1230183704 => 135
	i64 1010599046655515943, ; 35: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 280
	i64 1049216803855315730, ; 36: zh-Hant/System.ServiceModel.Federation.resources.dll => 0xe8f911fc62ab312 => 46
	i64 1106195547578177592, ; 37: ja\System.ServiceModel.NetNamedPipe.resources => 0xf59fefd59841838 => 78
	i64 1120440138749646132, ; 38: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 224
	i64 1121665720830085036, ; 39: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1166987153734377595, ; 40: ru/System.ServiceModel.NetTcp.resources.dll => 0x1031f8a223c8207b => 95
	i64 1268860745194512059, ; 41: System.Drawing.dll => 0x119be62002c19ebb => 249
	i64 1315260462680379141, ; 42: CoreWCF.Primitives.dll => 0x1240be6c192e0f05 => 132
	i64 1320654197929453943, ; 43: Microsoft.IdentityModel.Tokens.Saml => 0x1253e7fef2b6a977 => 171
	i64 1326794923564391531, ; 44: Microsoft.AspNetCore.Authentication => 0x1269b8f40cd8dc6b => 133
	i64 1350488117176064860, ; 45: ja\System.ServiceModel.NetTcp.resources => 0x12bde5c991aa5b5c => 91
	i64 1369545283391376210, ; 46: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 216
	i64 1426556759400165484, ; 47: zh-Hans/System.ServiceModel.Http.resources.dll => 0x13cc25d07ffab06c => 58
	i64 1471138319665509160, ; 48: de/System.Web.Services.Description.resources.dll => 0x146a8881df20b328 => 113
	i64 1476839205573959279, ; 49: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 263
	i64 1486715745332614827, ; 50: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 173
	i64 1513467482682125403, ; 51: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 319
	i64 1537168428375924959, ; 52: System.Threading.Thread.dll => 0x15551e8a954ae0df => 306
	i64 1556147632182429976, ; 53: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1559087064654078745, ; 54: BCrypt.Net-Next.dll => 0x15a2fd6cc69ce319 => 127
	i64 1617235198659916586, ; 55: ko\System.ServiceModel.Primitives.resources => 0x167192d83e61f32a => 105
	i64 1624659445732251991, ; 56: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 200
	i64 1628611045998245443, ; 57: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 213
	i64 1639340239664632727, ; 58: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x16c01b432b36d397 => 137
	i64 1653644849046973826, ; 59: System.Net.WebSockets.WebSocketProtocol => 0x16f2ed3a94196d82 => 183
	i64 1659332977923810219, ; 60: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 277
	i64 1680559570755486426, ; 61: tr\System.ServiceModel.Http.resources => 0x17528c068ec382da => 57
	i64 1731380447121279447, ; 62: Newtonsoft.Json => 0x18071957e9b889d7 => 179
	i64 1735388228521408345, ; 63: System.Net.Mail.dll => 0x181556663c69b759 => 260
	i64 1743969030606105336, ; 64: System.Memory.dll => 0x1833d297e88f2af8 => 258
	i64 1764797081625604034, ; 65: fr\System.ServiceModel.Federation.resources => 0x187dd1986ef0afc2 => 37
	i64 1767386781656293639, ; 66: System.Private.Uri.dll => 0x188704e9f5582107 => 274
	i64 1795316252682057001, ; 67: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 199
	i64 1813473727062752547, ; 68: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0x192ac0bf1f143d23 => 85
	i64 1825687700144851180, ; 69: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 283
	i64 1835311033149317475, ; 70: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 71: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 220
	i64 1840441330330567270, ; 72: zh-Hant/System.ServiceModel.Primitives.resources.dll => 0x198a8fa38c4d0266 => 111
	i64 1865037103900624886, ; 73: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 148
	i64 1875417405349196092, ; 74: System.Drawing.Primitives => 0x1a06d2319b6c713c => 248
	i64 1881198190668717030, ; 75: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 76: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 174
	i64 1930726298510463061, ; 77: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 130
	i64 1959996714666907089, ; 78: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1972385128188460614, ; 79: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 293
	i64 1980725144359361681, ; 80: ru\System.ServiceModel.Federation.resources => 0x1b7cf30643395c91 => 43
	i64 1981742497975770890, ; 81: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 212
	i64 1983698669889758782, ; 82: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 83: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2040001226662520565, ; 84: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 304
	i64 2059469483644638515, ; 85: ru\System.ServiceModel.NetTcp.resources => 0x1c94b49576655533 => 95
	i64 2080945842184875448, ; 86: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 253
	i64 2102659300918482391, ; 87: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 248
	i64 2133195048986300728, ; 88: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 179
	i64 2165725771938924357, ; 89: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 201
	i64 2179947168683658163, ; 90: de\System.ServiceModel.NetNamedPipe.resources => 0x1e40ba666a820bb3 => 74
	i64 2187820665329845162, ; 91: it\System.ServiceModel.NetTcp.resources => 0x1e5cb34db53e83aa => 90
	i64 2262844636196693701, ; 92: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 208
	i64 2284054589560053283, ; 93: ru\System.ServiceModel.Primitives.resources => 0x1fb2978c3a53de23 => 108
	i64 2287834202362508563, ; 94: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 232
	i64 2302323944321350744, ; 95: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2309964453332250390, ; 96: de\System.ServiceModel.NetFramingBase.resources => 0x200ea46e7ca5ef16 => 61
	i64 2329709569556905518, ; 97: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 211
	i64 2334065076924874282, ; 98: pl\System.ServiceModel.Http.resources => 0x206443d230c07e2a => 54
	i64 2335503487726329082, ; 99: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 299
	i64 2468706141094522700, ; 100: tr\System.Web.Services.Description.resources => 0x22429b27d2c3af4c => 122
	i64 2470498323731680442, ; 101: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 204
	i64 2497223385847772520, ; 102: System.Runtime => 0x22a7eb7046413568 => 290
	i64 2547086958574651984, ; 103: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 198
	i64 2602673633151553063, ; 104: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2612152650457191105, ; 105: Microsoft.IdentityModel.Tokens.dll => 0x24403afeed9892c1 => 170
	i64 2624866290265602282, ; 106: mscorlib.dll => 0x246d65fbde2db8ea => 315
	i64 2632269733008246987, ; 107: System.Net.NameResolution => 0x2487b36034f808cb => 261
	i64 2656907746661064104, ; 108: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 154
	i64 2662981627730767622, ; 109: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2700519926408562886, ; 110: zh-Hant/System.ServiceModel.NetNamedPipe.resources.dll => 0x257a2c90aa7248c6 => 85
	i64 2706075432581334785, ; 111: System.Net.WebSockets => 0x258de944be6c0701 => 270
	i64 2760160909669527043, ; 112: ja/System.ServiceModel.NetTcp.resources.dll => 0x264e0fb92fc56e03 => 91
	i64 2815524396660695947, ; 113: System.Security.AccessControl => 0x2712c0857f68238b => 291
	i64 2895129759130297543, ; 114: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017136373564924869, ; 115: System.Net.WebProxy => 0x29df058bd93f63c5 => 268
	i64 3017704767998173186, ; 116: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 224
	i64 3075974917408215435, ; 117: zh-Hant\System.ServiceModel.Http.resources => 0x2ab00ee3e220d18b => 59
	i64 3106100055920985814, ; 118: it/System.ServiceModel.NetFramingBase.resources.dll => 0x2b1b158b45fdc6d6 => 64
	i64 3106852385031680087, ; 119: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 289
	i64 3168817962471953758, ; 120: Microsoft.Extensions.Hosting.Abstractions.dll => 0x2bf9e725d304955e => 157
	i64 3200246253487496677, ; 121: ko\System.Web.Services.Description.resources => 0x2c698f030ce59de5 => 118
	i64 3227901148727174408, ; 122: pl/System.ServiceModel.Primitives.resources.dll => 0x2ccbcefe1bf56508 => 106
	i64 3266690593535380875, ; 123: Microsoft.AspNetCore.Authorization => 0x2d559dc982c94d8b => 136
	i64 3268698509738833005, ; 124: CoreWCF.Primitives => 0x2d5cbff9eed4f46d => 132
	i64 3273060073965488372, ; 125: CoreWCF.Http.dll => 0x2d6c3ecbbd3a08f4 => 131
	i64 3283174272583324799, ; 126: de/System.ServiceModel.NetNamedPipe.resources.dll => 0x2d902d9b1d07d47f => 74
	i64 3289520064315143713, ; 127: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 210
	i64 3311221304742556517, ; 128: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 271
	i64 3325875462027654285, ; 129: System.Runtime.Numerics => 0x2e27e21c8958b48d => 286
	i64 3328758490895923850, ; 130: ja\System.ServiceModel.Federation.resources => 0x2e32203600eaba8a => 39
	i64 3328853167529574890, ; 131: System.Net.Sockets.dll => 0x2e327651a008c1ea => 266
	i64 3344514922410554693, ; 132: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 226
	i64 3396143930648122816, ; 133: Microsoft.Extensions.FileProviders.Abstractions => 0x2f2186e9506155c0 => 156
	i64 3429672777697402584, ; 134: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 176
	i64 3437845325506641314, ; 135: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 253
	i64 3494946837667399002, ; 136: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 152
	i64 3522470458906976663, ; 137: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 221
	i64 3523004241079211829, ; 138: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 151
	i64 3551103847008531295, ; 139: System.Private.CoreLib.dll => 0x31480e226177735f => 317
	i64 3552918255982455594, ; 140: ko\System.ServiceModel.NetTcp.resources => 0x314e805463d5ab2a => 92
	i64 3561390990477819316, ; 141: pl\System.ServiceModel.NetFramingBase.resources => 0x316c9a3c9db4fdb4 => 67
	i64 3567343442040498961, ; 142: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 143: System.Runtime.dll => 0x319037675df7e556 => 290
	i64 3634544395678783861, ; 144: System.ServiceModel => 0x32707edf08d21975 => 195
	i64 3638003163729360188, ; 145: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 153
	i64 3647754201059316852, ; 146: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 311
	i64 3655542548057982301, ; 147: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 152
	i64 3656732466067224761, ; 148: Microsoft.IdentityModel.Protocols.WsTrust => 0x32bf52cdbe9338b9 => 169
	i64 3661347406458881470, ; 149: pl/System.ServiceModel.Federation.resources.dll => 0x32cfb811494785be => 41
	i64 3716579019761409177, ; 150: netstandard.dll => 0x3393f0ed5c8c5c99 => 316
	i64 3724788330609220757, ; 151: it\System.ServiceModel.NetNamedPipe.resources => 0x33b11b407d7b9c95 => 77
	i64 3727469159507183293, ; 152: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 219
	i64 3847323185292082162, ; 153: fr\System.ServiceModel.Http.resources => 0x3564700d93757bf2 => 50
	i64 3869221888984012293, ; 154: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 158
	i64 3890352374528606784, ; 155: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 174
	i64 3933965368022646939, ; 156: System.Net.Requests => 0x369840a8bfadc09b => 264
	i64 3937697360741473042, ; 157: zh-Hans/System.ServiceModel.Federation.resources.dll => 0x36a582e303fd1b12 => 45
	i64 3966267475168208030, ; 158: System.Memory => 0x370b03412596249e => 258
	i64 3977057140822825553, ; 159: zh-Hans/System.Web.Services.Description.resources.dll => 0x37315865f22cda51 => 123
	i64 4005135229510678782, ; 160: Microsoft.AspNetCore.DataProtection.Abstractions => 0x379519456862f8fe => 139
	i64 4009997192427317104, ; 161: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 288
	i64 4073500526318903918, ; 162: System.Private.Xml.dll => 0x3887fb25779ae26e => 276
	i64 4119158804516806643, ; 163: ko/System.ServiceModel.Http.resources.dll => 0x392a311bc4a59ff3 => 53
	i64 4120493066591692148, ; 164: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 165: System.ComponentModel => 0x39a7562737acb67e => 240
	i64 4167269041631776580, ; 166: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 307
	i64 4168469861834746866, ; 167: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 292
	i64 4187479170553454871, ; 168: System.Linq.Expressions => 0x3a1cea1e912fa117 => 255
	i64 4205801962323029395, ; 169: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 239
	i64 4206559769820211150, ; 170: fr/System.ServiceModel.Primitives.resources.dll => 0x3a60b3d2c69527ce => 102
	i64 4225924121207573736, ; 171: Microsoft.AspNetCore.Authentication.Abstractions => 0x3aa57f992c550ce8 => 134
	i64 4234650624138384307, ; 172: tr\System.ServiceModel.Federation.resources => 0x3ac4804e77a793b3 => 44
	i64 4243591448627561453, ; 173: Microsoft.AspNetCore.Http.Extensions.dll => 0x3ae443f06354c3ed => 144
	i64 4250192876909962317, ; 174: Microsoft.AspNetCore.Hosting.Abstractions => 0x3afbb7e72f1d244d => 140
	i64 4334223412680886043, ; 175: ru/System.ServiceModel.Http.resources.dll => 0x3c26413aea06871b => 56
	i64 4351295671783217625, ; 176: cs\System.ServiceModel.Http.resources => 0x3c62e85bfd5559d9 => 47
	i64 4356591372459378815, ; 177: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4359441015448386636, ; 178: it/System.ServiceModel.NetNamedPipe.resources.dll => 0x3c7fd8819911bc4c => 77
	i64 4373617458794931033, ; 179: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 254
	i64 4428882291034034432, ; 180: ja/System.ServiceModel.Primitives.resources.dll => 0x3d768cfa7d1a1100 => 104
	i64 4463560197053177287, ; 181: pl/System.ServiceModel.NetTcp.resources.dll => 0x3df1c059aaed5dc7 => 93
	i64 4482826947393284255, ; 182: Microsoft.Bcl.Memory.dll => 0x3e36335b8cece89f => 149
	i64 4560453051006720631, ; 183: it\System.ServiceModel.NetFramingBase.resources => 0x3f49fbe3381a1a77 => 64
	i64 4616101634287018717, ; 184: pt-BR\System.ServiceModel.Primitives.resources => 0x400faffaaec722dd => 107
	i64 4679594760078841447, ; 185: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4716677666592453464, ; 186: System.Xml.XmlSerializer => 0x417501590542f358 => 313
	i64 4794310189461587505, ; 187: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 198
	i64 4795410492532947900, ; 188: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 221
	i64 4809057822547766521, ; 189: System.Drawing => 0x42bd349c3145ecf9 => 249
	i64 4814660307502931973, ; 190: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 261
	i64 4832426131961301651, ; 191: Microsoft.AspNetCore.WebSockets => 0x431039f6b6de4a93 => 146
	i64 4853321196694829351, ; 192: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 285
	i64 5071398478759053283, ; 193: ja\System.ServiceModel.Primitives.resources => 0x46613a0c08e3c7e3 => 104
	i64 5081566143765835342, ; 194: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 281
	i64 5096255990897624623, ; 195: it/System.ServiceModel.Federation.resources.dll => 0x46b989d295e8c62f => 38
	i64 5099468265966638712, ; 196: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 281
	i64 5103417709280584325, ; 197: System.Collections.Specialized => 0x46d2fb5e161b6285 => 235
	i64 5106322746114322454, ; 198: Microsoft.AspNetCore.Authentication.dll => 0x46dd4d7baea43016 => 133
	i64 5112836352847824253, ; 199: Microsoft.AspNetCore.WebUtilities.dll => 0x46f47192ee32c57d => 147
	i64 5177565741364132164, ; 200: Microsoft.AspNetCore.Http => 0x47da689c1f3db944 => 142
	i64 5178715688604046882, ; 201: ru\System.ServiceModel.Http.resources => 0x47de7e7b13fc9622 => 56
	i64 5182934613077526976, ; 202: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 235
	i64 5290267788238057277, ; 203: ko/System.Web.Services.Description.resources.dll => 0x496ace863c9eef3d => 118
	i64 5290786973231294105, ; 204: System.Runtime.Loader => 0x496ca6b869b72699 => 285
	i64 5300219786275769134, ; 205: fr/System.ServiceModel.NetTcp.resources.dll => 0x498e29d05876cb2e => 89
	i64 5375923372247632090, ; 206: ko/System.ServiceModel.NetFramingBase.resources.dll => 0x4a9b1dd2fe8a48da => 66
	i64 5423376490970181369, ; 207: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 283
	i64 5445845718793242646, ; 208: de\System.ServiceModel.Primitives.resources => 0x4b9387d3f240c816 => 100
	i64 5446034149219586269, ; 209: System.Diagnostics.Debug => 0x4b94333452e150dd => 243
	i64 5471532531798518949, ; 210: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5522859530602327440, ; 211: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 212: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 251
	i64 5573260873512690141, ; 213: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 296
	i64 5610815111739789596, ; 214: Microsoft.AspNetCore.Authentication.Core => 0x4ddd9e9de3a4d11c => 135
	i64 5650097808083101034, ; 215: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 293
	i64 5650370239627215726, ; 216: System.ServiceModel.Security.dll => 0x4e6a25cbc66b436e => 194
	i64 5692067934154308417, ; 217: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 223
	i64 5807471020555457579, ; 218: ja\System.Web.Services.Description.resources => 0x5098481fb795542b => 117
	i64 5816864004925684276, ; 219: fr\System.ServiceModel.Primitives.resources => 0x50b9a6fe5059fa34 => 102
	i64 5860375757134996729, ; 220: ru/System.ServiceModel.NetNamedPipe.resources.dll => 0x51543cb39657a4f9 => 82
	i64 5867185805380132584, ; 221: ko/System.ServiceModel.Primitives.resources.dll => 0x516c6e6780e59ee8 => 105
	i64 5938631692456801490, ; 222: tr\System.ServiceModel.NetTcp.resources => 0x526a420f60c3b4d2 => 96
	i64 5952455131197516416, ; 223: cs\System.ServiceModel.Federation.resources => 0x529b5e67847aaa80 => 34
	i64 5975693538080295492, ; 224: pt-BR\System.ServiceModel.NetTcp.resources => 0x52eded9cbfdf8a44 => 94
	i64 5979151488806146654, ; 225: System.Formats.Asn1 => 0x52fa3699a489d25e => 250
	i64 5984759512290286505, ; 226: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 294
	i64 6068057819846744445, ; 227: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6184291411622536774, ; 228: fr\System.ServiceModel.NetTcp.resources => 0x55d30445e942a646 => 89
	i64 6200764641006662125, ; 229: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 230: System.Text.Json.dll => 0x565a67a0ffe264a7 => 300
	i64 6278736998281604212, ; 231: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 273
	i64 6284145129771520194, ; 232: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 278
	i64 6288213823986309268, ; 233: ko\System.ServiceModel.NetFramingBase.resources => 0x5744392812679894 => 66
	i64 6357457916754632952, ; 234: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 125
	i64 6367018942829578670, ; 235: ja/System.ServiceModel.Federation.resources.dll => 0x585c31fe9d8a49ae => 39
	i64 6401687960814735282, ; 236: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 211
	i64 6457407416161890188, ; 237: es/System.ServiceModel.Federation.resources.dll => 0x599d51d50a4d6f8c => 36
	i64 6478287442656530074, ; 238: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 239: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 201
	i64 6506916921333231814, ; 240: ko\System.ServiceModel.Http.resources => 0x5a4d3676ff0bb0c6 => 53
	i64 6548213210057960872, ; 241: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 207
	i64 6560151584539558821, ; 242: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 161
	i64 6703725107163354527, ; 243: tr\System.ServiceModel.NetNamedPipe.resources => 0x5d086a779456d59f => 83
	i64 6743165466166707109, ; 244: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6750700927172492327, ; 245: it\System.ServiceModel.Http.resources => 0x5daf4eb9fd043c27 => 51
	i64 6777482997383978746, ; 246: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 247: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 246
	i64 6814185388980153342, ; 248: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 312
	i64 6869993514317880518, ; 249: de/System.ServiceModel.Federation.resources.dll => 0x5f571eb3d6279cc6 => 35
	i64 6876862101832370452, ; 250: System.Xml.Linq => 0x5f6f85a57d108914 => 310
	i64 6894844156784520562, ; 251: System.Numerics.Vectors => 0x5faf683aead1ad72 => 271
	i64 6911788284027924527, ; 252: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x5feb9ad2f830f02f => 141
	i64 6994714925497792253, ; 253: cs\System.ServiceModel.NetTcp.resources => 0x6112382a476b36fd => 86
	i64 7041056731259377614, ; 254: pt-BR\System.ServiceModel.Federation.resources => 0x61b6dbcabe1697ce => 42
	i64 7060448593242414269, ; 255: System.Security.Cryptography.Xml => 0x61fbc096731edcbd => 186
	i64 7083547580668757502, ; 256: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 275
	i64 7098780445870241465, ; 257: pt-BR/System.ServiceModel.NetNamedPipe.resources.dll => 0x6283ef345e95b6b9 => 81
	i64 7105430439328552570, ; 258: System.Security.Cryptography.Pkcs => 0x629b8f56a06d167a => 184
	i64 7200517792190262741, ; 259: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 0x63ed60c832616dd5 => 72
	i64 7220009545223068405, ; 260: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 261: System.Linq => 0x64e71ccf51a90a5a => 257
	i64 7316205155833392065, ; 262: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 229
	i64 7331765743953618630, ; 263: Microsoft.AspNetCore.Http.dll => 0x65bfaa1948bba6c6 => 142
	i64 7343975498128436721, ; 264: cs/System.ServiceModel.NetTcp.resources.dll => 0x65eb0ace351e2df1 => 86
	i64 7350910574546538092, ; 265: ru\System.ServiceModel.NetNamedPipe.resources => 0x6603ae3883824e6c => 82
	i64 7377312882064240630, ; 266: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 239
	i64 7411086746255647294, ; 267: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 0x66d978214e2c623e => 71
	i64 7462724204265000896, ; 268: de/System.ServiceModel.Primitives.resources.dll => 0x6790ec1fe3eccfc0 => 100
	i64 7487567311228912585, ; 269: tr/System.Web.Services.Description.resources.dll => 0x67e92ecc79a043c9 => 122
	i64 7488575175965059935, ; 270: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 310
	i64 7489048572193775167, ; 271: System.ObjectModel => 0x67ee71ff6b419e3f => 272
	i64 7503526963013706253, ; 272: System.ServiceModel.dll => 0x6821e20478ff620d => 195
	i64 7507338075031127501, ; 273: pl\System.ServiceModel.NetNamedPipe.resources => 0x682f6c3422fec5cd => 80
	i64 7654504624184590948, ; 274: System.Net.Http => 0x6a3a4366801b8264 => 259
	i64 7694700312542370399, ; 275: System.Net.Mail => 0x6ac9112a7e2cda5f => 260
	i64 7708790323521193081, ; 276: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 277: System.Private.CoreLib => 0x6b0ff375198b9c17 => 317
	i64 7735176074855944702, ; 278: Microsoft.CSharp => 0x6b58dda848e391fe => 228
	i64 7735352534559001595, ; 279: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 225
	i64 7831213279657581126, ; 280: Appwrite.dll => 0x6cae0efc7e4fda46 => 126
	i64 7836164640616011524, ; 281: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 200
	i64 7972383140441761405, ; 282: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 150
	i64 8046612836032419316, ; 283: ru/System.ServiceModel.NetFramingBase.resources.dll => 0x6fab4fbdd8cf95f4 => 69
	i64 8064050204834738623, ; 284: System.Collections.dll => 0x6fe942efa61731bf => 236
	i64 8083354569033831015, ; 285: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 210
	i64 8087206902342787202, ; 286: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 244
	i64 8161788945634753591, ; 287: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x71447fcd9444fc37 => 81
	i64 8167236081217502503, ; 288: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 318
	i64 8174477988419522883, ; 289: zh-Hans\System.ServiceModel.Http.resources => 0x7171946b93fed143 => 58
	i64 8185542183669246576, ; 290: System.Collections => 0x7198e33f4794aa70 => 236
	i64 8187568296582843689, ; 291: ru\System.ServiceModel.NetFramingBase.resources => 0x71a015fc74120d29 => 69
	i64 8205325986359039106, ; 292: System.DirectoryServices.dll => 0x71df2c82cb365482 => 181
	i64 8246048515196606205, ; 293: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 177
	i64 8248431922176115102, ; 294: ru/System.ServiceModel.Federation.resources.dll => 0x72785121934cc19e => 43
	i64 8290740647658429042, ; 295: System.Runtime.Extensions => 0x730ea0b15c929a72 => 282
	i64 8368701292315763008, ; 296: System.Security.Cryptography => 0x7423997c6fd56140 => 296
	i64 8399132193771933415, ; 297: Microsoft.Extensions.WebEncoders => 0x748fb63acf52cee7 => 163
	i64 8400357532724379117, ; 298: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 218
	i64 8410671156615598628, ; 299: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 279
	i64 8414464712956060639, ; 300: cs\System.Web.Services.Description.resources => 0x74c62f131ece23df => 112
	i64 8415323088812168844, ; 301: zh-Hans/System.ServiceModel.NetNamedPipe.resources.dll => 0x74c93bc352cad68c => 84
	i64 8476828615142258695, ; 302: BCrypt.Net-Next => 0x75a3beb69b6bb807 => 127
	i64 8493978365339866546, ; 303: pt-BR/System.ServiceModel.NetTcp.resources.dll => 0x75e0ac51fbef95b2 => 94
	i64 8518412311883997971, ; 304: System.Collections.Immutable => 0x76377add7c28e313 => 233
	i64 8542466152599865324, ; 305: it/System.ServiceModel.Http.resources.dll => 0x768cefb4b38347ec => 51
	i64 8563666267364444763, ; 306: System.Private.Uri => 0x76d841191140ca5b => 274
	i64 8599632406834268464, ; 307: CommunityToolkit.Maui => 0x7758081c784b4930 => 128
	i64 8611142787134128904, ; 308: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x7780ecbdb94c0308 => 141
	i64 8614108721271900878, ; 309: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 310: Java.Interop => 0x77b654e585b55834 => 318
	i64 8638972117149407195, ; 311: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 228
	i64 8639588376636138208, ; 312: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 217
	i64 8648495978913578441, ; 313: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 230
	i64 8655680948164704764, ; 314: cs/System.ServiceModel.NetFramingBase.resources.dll => 0x781f27f66c7939fc => 60
	i64 8677882282824630478, ; 315: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 316: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 244
	i64 8740610862248308472, ; 317: Microsoft.IdentityModel.Tokens.Saml.dll => 0x794ce344fc3b2ef8 => 171
	i64 8750104989811284373, ; 318: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x796e9e20d1131995 => 72
	i64 8823529091010338516, ; 319: Microsoft.Bcl.Memory => 0x7a7378f58eff1ed4 => 149
	i64 8840200626854743040, ; 320: it/System.ServiceModel.NetTcp.resources.dll => 0x7aaeb3a1fadccc00 => 90
	i64 8889036152528886433, ; 321: zh-Hans/System.ServiceModel.Primitives.resources.dll => 0x7b5c3348db16daa1 => 110
	i64 8941376889969657626, ; 322: System.Xml.XDocument => 0x7c1626e87187471a => 312
	i64 8955323522379913726, ; 323: Microsoft.Identity.Client => 0x7c47b34bd82799fe => 164
	i64 9016070251403168609, ; 324: tr/System.ServiceModel.Primitives.resources.dll => 0x7d1f841fdcda4b61 => 109
	i64 9018795066006812985, ; 325: de/System.ServiceModel.NetTcp.resources.dll => 0x7d2932543361b939 => 87
	i64 9045785047181495996, ; 326: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9052662452269567435, ; 327: Microsoft.IdentityModel.Protocols => 0x7da184898b0b4dcb => 167
	i64 9072430189789714220, ; 328: fr\System.Web.Services.Description.resources => 0x7de7bf3097f2172c => 115
	i64 9111603110219107042, ; 329: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 151
	i64 9206439850007503396, ; 330: pl\System.ServiceModel.NetTcp.resources => 0x7fc3d84409b2a224 => 93
	i64 9236758604623169489, ; 331: es\System.ServiceModel.Http.resources => 0x802f8f033098c7d1 => 49
	i64 9312692141327339315, ; 332: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 223
	i64 9313552142646974434, ; 333: fr/System.ServiceModel.NetNamedPipe.resources.dll => 0x81406254138d17e2 => 76
	i64 9324707631942237306, ; 334: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 199
	i64 9413000421947348542, ; 335: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0x82a1b202f4c6163e => 140
	i64 9427266486299436557, ; 336: Microsoft.IdentityModel.Logging.dll => 0x82d460ebe6d2a60d => 166
	i64 9429125686736324352, ; 337: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0x82dafbdabc6e0700 => 71
	i64 9471208464293683911, ; 338: LiverLife => 0x83707deaebe5e2c7 => 227
	i64 9488613780052192518, ; 339: cs/System.ServiceModel.Http.resources.dll => 0x83ae53f5cae32d06 => 47
	i64 9613249879929398066, ; 340: CoreWCF.Http => 0x85691fd526422332 => 131
	i64 9659729154652888475, ; 341: System.Text.RegularExpressions => 0x860e407c9991dd9b => 301
	i64 9667360217193089419, ; 342: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 245
	i64 9678050649315576968, ; 343: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 204
	i64 9698341835325479878, ; 344: it\System.Web.Services.Description.resources => 0x86976e83e4e29bc6 => 116
	i64 9702891218465930390, ; 345: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 234
	i64 9724288661446775860, ; 346: it/System.ServiceModel.Primitives.resources.dll => 0x86f39d041ee4d434 => 103
	i64 9733213995311057333, ; 347: es\System.ServiceModel.Federation.resources => 0x8713528f596049b5 => 36
	i64 9733219566593817111, ; 348: es\System.Web.Services.Description.resources => 0x871357a083b4ba17 => 114
	i64 9808709177481450983, ; 349: Mono.Android.dll => 0x881f890734e555e7 => 320
	i64 9819168441846169364, ; 350: Microsoft.IdentityModel.Protocols.dll => 0x8844b1ac75f77f14 => 167
	i64 9864374015518639636, ; 351: Microsoft.AspNetCore.Cryptography.Internal => 0x88e54be746950614 => 137
	i64 9913641436950702900, ; 352: pt-BR/System.ServiceModel.Federation.resources.dll => 0x8994545cb80a2b34 => 42
	i64 9933555792566666578, ; 353: System.Linq.Queryable.dll => 0x89db145cf475c552 => 256
	i64 9944651556817100360, ; 354: ru/System.Web.Services.Description.resources.dll => 0x8a027fe6e31e5e48 => 121
	i64 9956195530459977388, ; 355: Microsoft.Maui => 0x8a2b8315b36616ac => 175
	i64 9982270450505025232, ; 356: pt-BR/System.Web.Services.Description.resources.dll => 0x8a8826161e3b06d0 => 120
	i64 9991543690424095600, ; 357: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 358: System.Net.Http.dll => 0x8b50e941206af13b => 259
	i64 10051358222726253779, ; 359: System.Private.Xml => 0x8b7d990c97ccccd3 => 276
	i64 10055713941375345720, ; 360: fr/System.ServiceModel.Http.resources.dll => 0x8b8d128d5e9ee438 => 50
	i64 10059766989758940046, ; 361: LiverLife.dll => 0x8b9b78c73bc8438e => 227
	i64 10078727084704864206, ; 362: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 269
	i64 10092835686693276772, ; 363: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 173
	i64 10096670194649521199, ; 364: System.ServiceModel.Primitives => 0x8c1e940c2e5bdc2f => 193
	i64 10143853363526200146, ; 365: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10197415184292957254, ; 366: ko\System.ServiceModel.Federation.resources => 0x8d847f14f6f4cc46 => 40
	i64 10229024438826829339, ; 367: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 207
	i64 10243523786148452761, ; 368: Microsoft.AspNetCore.Http.Abstractions => 0x8e284e9c69a49999 => 143
	i64 10245369515835430794, ; 369: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 279
	i64 10364469296367737616, ; 370: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 278
	i64 10390244938473477758, ; 371: System.Net.WebSockets.WebSocketProtocol.dll => 0x903190b8bf03167e => 183
	i64 10406448008575299332, ; 372: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 226
	i64 10430153318873392755, ; 373: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 205
	i64 10447083246144586668, ; 374: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 148
	i64 10462231721195350770, ; 375: it\System.ServiceModel.Primitives.resources => 0x91315051b3ac2af2 => 103
	i64 10506226065143327199, ; 376: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10670374202010151210, ; 377: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 229
	i64 10714184849103829812, ; 378: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 282
	i64 10733493810775535810, ; 379: System.ServiceModel.NetFramingBase.dll => 0x94f507c09e2130c2 => 189
	i64 10785150219063592792, ; 380: System.Net.Primitives => 0x95ac8cfb68830758 => 263
	i64 10822644899632537592, ; 381: System.Linq.Queryable => 0x9631c23204ca5ff8 => 256
	i64 10880838204485145808, ; 382: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 128
	i64 10964653383833615866, ; 383: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 247
	i64 11002576679268595294, ; 384: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 159
	i64 11009005086950030778, ; 385: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 175
	i64 11018178252090604864, ; 386: Microsoft.IdentityModel.Xml => 0x98e86ebe53cb7d40 => 172
	i64 11050168729868392624, ; 387: Microsoft.AspNetCore.Http.Features => 0x995a15e9dbef58b0 => 145
	i64 11103970607964515343, ; 388: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11157832426039186247, ; 389: System.ServiceModel.NetTcp.dll => 0x9ad8957989669347 => 191
	i64 11162124722117608902, ; 390: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 222
	i64 11163525078381911178, ; 391: es/System.ServiceModel.NetTcp.resources.dll => 0x9aeccee9721e5c8a => 88
	i64 11188319605227840848, ; 392: System.Threading.Overlapped => 0x9b44e5671724e550 => 303
	i64 11191620716034178705, ; 393: cs/System.ServiceModel.Primitives.resources.dll => 0x9b509fbed81ebe91 => 99
	i64 11220793807500858938, ; 394: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 395: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 161
	i64 11235648312900863002, ; 396: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 277
	i64 11289176806901695813, ; 397: zh-Hans\System.ServiceModel.Federation.resources => 0x9cab367e45f44545 => 45
	i64 11329751333533450475, ; 398: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 308
	i64 11340910727871153756, ; 399: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 206
	i64 11347436699239206956, ; 400: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 313
	i64 11485890710487134646, ; 401: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 284
	i64 11503653075602048397, ; 402: System.ServiceModel.Http => 0x9fa52f85f697058d => 188
	i64 11517440453979132662, ; 403: Microsoft.IdentityModel.Abstractions.dll => 0x9fd62b122523d2f6 => 165
	i64 11518296021396496455, ; 404: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 405: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 222
	i64 11530571088791430846, ; 406: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 158
	i64 11597940890313164233, ; 407: netstandard => 0xa0f429ca8d1805c9 => 316
	i64 11692977985522001935, ; 408: System.Threading.Overlapped.dll => 0xa245cd869980680f => 303
	i64 11705530742807338875, ; 409: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11743665907891708234, ; 410: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 305
	i64 11855742605498539013, ; 411: zh-Hant/System.Web.Services.Description.resources.dll => 0xa4880f15d5345c05 => 124
	i64 11949116578634023363, ; 412: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa5d3ca38193641c3 => 98
	i64 12011556116648931059, ; 413: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 185
	i64 12065128715402553028, ; 414: fr/System.Web.Services.Description.resources.dll => 0xa76ff2a492ef26c4 => 115
	i64 12092606066021995775, ; 415: de/System.ServiceModel.Http.resources.dll => 0xa7d19125cdf994ff => 48
	i64 12102847907131387746, ; 416: System.Buffers => 0xa7f5f40c43256f62 => 231
	i64 12145679461940342714, ; 417: System.Text.Json => 0xa88e1f1ebcb62fba => 300
	i64 12148258109226484831, ; 418: System.ServiceModel.NetFramingBase => 0xa8974862d834045f => 189
	i64 12153312702598915601, ; 419: ja\System.ServiceModel.NetFramingBase.resources => 0xa8a93d8312a6a611 => 65
	i64 12166686570440281891, ; 420: Microsoft.IdentityModel.Protocols.WsFederation.dll => 0xa8d8c0f9549bcf23 => 168
	i64 12200538574958299032, ; 421: System.Web.Services.Description => 0xa951053154d70798 => 196
	i64 12201331334810686224, ; 422: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 288
	i64 12269460666702402136, ; 423: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 233
	i64 12341818387765915815, ; 424: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 129
	i64 12342184558428949313, ; 425: System.ServiceModel.Primitives.dll => 0xab483f76d5780b41 => 193
	i64 12441092376399691269, ; 426: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0xaca7a399c11fbe05 => 134
	i64 12451044538927396471, ; 427: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 209
	i64 12459464620379313219, ; 428: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 0xace8e90f25419443 => 97
	i64 12463830609398393788, ; 429: zh-Hant\System.Web.Services.Description.resources => 0xacf86be72dd4ebbc => 124
	i64 12466513435562512481, ; 430: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 214
	i64 12466556713286443662, ; 431: pl\System.Web.Services.Description.resources => 0xad021b47b3b3228e => 119
	i64 12475113361194491050, ; 432: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 125
	i64 12514546972983137051, ; 433: Parse.dll => 0xadac9a2ac199931b => 180
	i64 12517810545449516888, ; 434: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 246
	i64 12538491095302438457, ; 435: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 202
	i64 12550732019250633519, ; 436: System.IO.Compression => 0xae2d28465e8e1b2f => 252
	i64 12563362775336008096, ; 437: de\System.ServiceModel.Http.resources => 0xae5a07e17044b9a0 => 48
	i64 12594160867402462460, ; 438: fr\System.ServiceModel.NetNamedPipe.resources => 0xaec7729509a634fc => 76
	i64 12619476834629915808, ; 439: Parse => 0xaf216351fb6314a0 => 180
	i64 12681088699309157496, ; 440: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12689340720648847063, ; 441: es/System.ServiceModel.NetNamedPipe.resources.dll => 0xb0199827882c7ed7 => 75
	i64 12699999919562409296, ; 442: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 245
	i64 12700543734426720211, ; 443: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 203
	i64 12708922737231849740, ; 444: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 298
	i64 12717050818822477433, ; 445: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 289
	i64 12823819093633476069, ; 446: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12835242264250840079, ; 447: System.IO.Pipes => 0xb21ff0d5d6c0740f => 254
	i64 12843321153144804894, ; 448: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 162
	i64 12859557719246324186, ; 449: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 267
	i64 12925973142558461920, ; 450: de\System.ServiceModel.NetTcp.resources => 0xb3624816a26fcfe0 => 87
	i64 12986944878231358355, ; 451: ko/System.ServiceModel.NetTcp.resources.dll => 0xb43ae58f188f0b93 => 92
	i64 13068258254871114833, ; 452: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 287
	i64 13086625805112021739, ; 453: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xb59d08d5762992eb => 139
	i64 13113583242634760252, ; 454: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xb5fcce7afdc2903c => 169
	i64 13221551921002590604, ; 455: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 456: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13239552802928723181, ; 457: tr/System.ServiceModel.Federation.resources.dll => 0xb7bc5720cb9804ed => 44
	i64 13343850469010654401, ; 458: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 319
	i64 13381594904270902445, ; 459: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13404984788036896679, ; 460: Microsoft.AspNetCore.Http.Abstractions.dll => 0xba0812a45e7447a7 => 143
	i64 13450080985297233383, ; 461: pt-BR/System.ServiceModel.Primitives.resources.dll => 0xbaa8496500e0a5e7 => 107
	i64 13463706743370286408, ; 462: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 273
	i64 13465488254036897740, ; 463: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 225
	i64 13467053111158216594, ; 464: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13540124433173649601, ; 465: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 466: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13550417756503177631, ; 467: Microsoft.Extensions.FileProviders.Abstractions.dll => 0xbc0cc1280684799f => 156
	i64 13572454107664307259, ; 468: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 219
	i64 13710614125866346983, ; 469: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 291
	i64 13717397318615465333, ; 470: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 238
	i64 13755568601956062840, ; 471: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13805425092083240321, ; 472: ja/System.ServiceModel.Http.resources.dll => 0xbf96b8fa1ae2cd81 => 52
	i64 13806364379217932032, ; 473: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 0xbf9a0f40eee42f00 => 68
	i64 13814445057219246765, ; 474: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13830070810343648044, ; 475: System.ServiceModel.Http.dll => 0xbfee48208d082b2c => 188
	i64 13874392747353528814, ; 476: it\System.ServiceModel.Federation.resources => 0xc08bbeb1ac4359ee => 38
	i64 13881769479078963060, ; 477: System.Console.dll => 0xc0a5f3cade5c6774 => 241
	i64 13921917134693230900, ; 478: Microsoft.AspNetCore.WebUtilities => 0xc13495df5dd06934 => 147
	i64 13947035440391415689, ; 479: zh-Hans\System.ServiceModel.Primitives.resources => 0xc18dd2d6a6506789 => 110
	i64 13959074834287824816, ; 480: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 209
	i64 14062537208056738663, ; 481: cs\System.ServiceModel.NetNamedPipe.resources => 0xc3282b158eef7367 => 73
	i64 14100563506285742564, ; 482: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 483: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 202
	i64 14125464355221830302, ; 484: System.Threading.dll => 0xc407bafdbc707a9e => 309
	i64 14254202117188122242, ; 485: pl/System.ServiceModel.NetNamedPipe.resources.dll => 0xc5d1194db79e7682 => 80
	i64 14254574811015963973, ; 486: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 298
	i64 14313943731169726568, ; 487: it/System.Web.Services.Description.resources.dll => 0xc6a557fc274d1068 => 116
	i64 14327709162229390963, ; 488: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 295
	i64 14461014870687870182, ; 489: System.Net.Requests.dll => 0xc8afd8683afdece6 => 264
	i64 14464374589798375073, ; 490: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14497605124368440498, ; 491: pt-BR\System.ServiceModel.NetFramingBase.resources => 0xc931d70c8bdd1cb2 => 68
	i64 14522721392235705434, ; 492: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14551742072151931844, ; 493: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 299
	i64 14556034074661724008, ; 494: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 129
	i64 14561513370130550166, ; 495: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 294
	i64 14622043554576106986, ; 496: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 287
	i64 14669215534098758659, ; 497: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 154
	i64 14705122255218365489, ; 498: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14741804258040025864, ; 499: es\System.ServiceModel.NetNamedPipe.resources => 0xcc9568de04d11308 => 75
	i64 14744092281598614090, ; 500: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14750216453141343598, ; 501: ja\System.ServiceModel.Http.resources => 0xccb34bb6d19cad6e => 52
	i64 14792991364388157008, ; 502: es\System.ServiceModel.NetTcp.resources => 0xcd4b4344efc6f650 => 88
	i64 14832630590065248058, ; 503: System.Security.Claims => 0xcdd816ef5d6e873a => 292
	i64 14839664071391251657, ; 504: System.ServiceModel.Duplex => 0xcdf113d959670cc9 => 192
	i64 14852515768018889994, ; 505: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 206
	i64 14870951093111881137, ; 506: zh-Hans\System.ServiceModel.NetTcp.resources => 0xce603b3ac123fdb1 => 97
	i64 14892012299694389861, ; 507: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 508: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14905769933452734130, ; 509: es/System.ServiceModel.NetFramingBase.resources.dll => 0xcedbeec7c325eeb2 => 62
	i64 14912225920358050525, ; 510: System.Security.Principal.Windows => 0xcef2de7759506add => 297
	i64 14954917835170835695, ; 511: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 155
	i64 14984936317414011727, ; 512: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 267
	i64 14987728460634540364, ; 513: System.IO.Compression.dll => 0xcfff1ba06622494c => 252
	i64 15015154896917945444, ; 514: System.Net.Security.dll => 0xd0608bd33642dc64 => 265
	i64 15033183115947713165, ; 515: cs\System.ServiceModel.Primitives.resources => 0xd0a098650d76a28d => 99
	i64 15076659072870671916, ; 516: System.ObjectModel.dll => 0xd13b0d8c1620662c => 272
	i64 15111608613780139878, ; 517: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15112104672788120691, ; 518: de\System.Web.Services.Description.resources => 0xd1b8fb21ee0e8473 => 113
	i64 15115185479366240210, ; 519: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 251
	i64 15133485256822086103, ; 520: System.Linq.dll => 0xd204f0a9127dd9d7 => 257
	i64 15138356091203993725, ; 521: Microsoft.IdentityModel.Abstractions => 0xd2163ea89395c07d => 165
	i64 15209599533829826619, ; 522: tr/System.ServiceModel.NetTcp.resources.dll => 0xd3135a312ddfa83b => 96
	i64 15227001540531775957, ; 523: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 153
	i64 15370334346939861994, ; 524: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 205
	i64 15391712275433856905, ; 525: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 155
	i64 15403947811736892499, ; 526: tr/System.ServiceModel.Http.resources.dll => 0xd5c5d0ebd13bb453 => 57
	i64 15412490934096474927, ; 527: System.ServiceModel.Federation => 0xd5e42ad87ebfb32f => 187
	i64 15413989682962769581, ; 528: es\System.ServiceModel.Primitives.resources => 0xd5e97df3288826ad => 101
	i64 15415041375254054955, ; 529: ru\System.Web.Services.Description.resources => 0xd5ed3a7559f7882b => 121
	i64 15472743225642400231, ; 530: zh-Hant\System.ServiceModel.Federation.resources => 0xd6ba39fc513f39e7 => 46
	i64 15512084913707906237, ; 531: pt-BR\System.ServiceModel.Http.resources => 0xd745ff0adf4174bd => 55
	i64 15527772828719725935, ; 532: System.Console => 0xd77dbb1e38cd3d6f => 241
	i64 15536481058354060254, ; 533: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15541854775306130054, ; 534: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 295
	i64 15557562860424774966, ; 535: System.Net.Sockets => 0xd7e790fe7a6dc536 => 266
	i64 15565247197164990907, ; 536: Microsoft.AspNetCore.Http.Extensions => 0xd802dddb8c29f1bb => 144
	i64 15582737692548360875, ; 537: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 213
	i64 15592226634512578529, ; 538: Microsoft.AspNetCore.Authorization.dll => 0xd862b7834f81b7e1 => 136
	i64 15609085926864131306, ; 539: System.dll => 0xd89e9cf3334914ea => 314
	i64 15614406846227935001, ; 540: ko/System.ServiceModel.NetNamedPipe.resources.dll => 0xd8b1844c47d7ef19 => 79
	i64 15637857104874081957, ; 541: System.ServiceModel.NetNamedPipe => 0xd904d42f18568ea5 => 190
	i64 15661133872274321916, ; 542: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 311
	i64 15664356999916475676, ; 543: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15710114879900314733, ; 544: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 230
	i64 15743187114543869802, ; 545: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15783653065526199428, ; 546: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15796674544955155030, ; 547: zh-Hant/System.ServiceModel.Http.resources.dll => 0xdb390fcde481e256 => 59
	i64 15817206913877585035, ; 548: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 305
	i64 15819921090585165167, ; 549: pt-BR\System.Web.Services.Description.resources => 0xdb8ba66a1309fd6f => 120
	i64 15847085070278954535, ; 550: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 302
	i64 15852824340364052161, ; 551: Microsoft.AspNetCore.Http.Features.dll => 0xdc008bbee610c6c1 => 145
	i64 15963349826457351533, ; 552: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 304
	i64 15968726545588960902, ; 553: pl/System.ServiceModel.NetFramingBase.resources.dll => 0xdd9c502ff12e3e86 => 67
	i64 15982072519490392252, ; 554: Microsoft.AspNetCore.WebSockets.dll => 0xddcbba47a2c1d0bc => 146
	i64 16018552496348375205, ; 555: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 262
	i64 16027684189145026053, ; 556: Microsoft.AspNetCore.DataProtection => 0xde6dc5da0a224e05 => 138
	i64 16046481083542319511, ; 557: Microsoft.Extensions.ObjectPool => 0xdeb08d870f90b197 => 160
	i64 16114460324092078703, ; 558: Microsoft.IdentityModel.Xml.dll => 0xdfa2104964a26a6f => 172
	i64 16153500642854367575, ; 559: Microsoft.Extensions.WebEncoders.dll => 0xe02cc33ff060f157 => 163
	i64 16154507427712707110, ; 560: System => 0xe03056ea4e39aa26 => 314
	i64 16219561732052121626, ; 561: System.Net.Security => 0xe1177575db7c781a => 265
	i64 16272480664611126357, ; 562: fr\System.ServiceModel.NetFramingBase.resources => 0xe1d376f2fc8efc55 => 63
	i64 16288847719894691167, ; 563: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 564: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 159
	i64 16337011941688632206, ; 565: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 297
	i64 16454459195343277943, ; 566: System.Net.NetworkInformation => 0xe459fb756d988f77 => 262
	i64 16465012559999924934, ; 567: ko\System.ServiceModel.NetNamedPipe.resources => 0xe47f79b01d23fac6 => 79
	i64 16506257789526125213, ; 568: tr/System.ServiceModel.NetFramingBase.resources.dll => 0xe512020173baaa9d => 70
	i64 16523284800709429098, ; 569: Microsoft.AspNetCore.DataProtection.dll => 0xe54e7ffb6ce5876a => 138
	i64 16571052248489204195, ; 570: es\System.ServiceModel.NetFramingBase.resources => 0xe5f8343909a319e3 => 62
	i64 16573012286056415142, ; 571: Microsoft.IdentityModel.Protocols.WsFederation => 0xe5ff2addd893bfa6 => 168
	i64 16648892297579399389, ; 572: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 130
	i64 16649148416072044166, ; 573: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 177
	i64 16677317093839702854, ; 574: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 218
	i64 16775237837682019207, ; 575: de/System.ServiceModel.NetFramingBase.resources.dll => 0xe8cd9def31ba8b87 => 61
	i64 16833383113903931215, ; 576: mscorlib => 0xe99c30c1484d7f4f => 315
	i64 16856067890322379635, ; 577: System.Data.Common.dll => 0xe9ecc87060889373 => 242
	i64 16890310621557459193, ; 578: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 301
	i64 16933958494752847024, ; 579: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 268
	i64 16942731696432749159, ; 580: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16944803401888012179, ; 581: fr/System.ServiceModel.NetFramingBase.resources.dll => 0xeb2808eaa65d9793 => 63
	i64 16967834437018967906, ; 582: System.DirectoryServices.Protocols => 0xeb79db856227df62 => 182
	i64 16998075588627545693, ; 583: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 216
	i64 17008137082415910100, ; 584: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 234
	i64 17023676497273798524, ; 585: es/System.ServiceModel.Http.resources.dll => 0xec403f94372bbf7c => 49
	i64 17031351772568316411, ; 586: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 215
	i64 17031924682156397346, ; 587: pl\System.ServiceModel.Primitives.resources => 0xec5d8d426923d322 => 106
	i64 17062143951396181894, ; 588: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 238
	i64 17089008752050867324, ; 589: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17101677393452997189, ; 590: de\System.ServiceModel.Federation.resources => 0xed555cfb14181a45 => 35
	i64 17118171214553292978, ; 591: System.Threading.Channels => 0xed8ff6060fc420b2 => 302
	i64 17126545051278881272, ; 592: Microsoft.Net.Http.Headers.dll => 0xedadb5fbdb33b1f8 => 178
	i64 17137864900836977098, ; 593: Microsoft.IdentityModel.Tokens => 0xedd5ed53b705e9ca => 170
	i64 17163719922865397202, ; 594: cs/System.ServiceModel.Federation.resources.dll => 0xee31c85522afddd2 => 34
	i64 17182518643522243283, ; 595: zh-Hans\System.Web.Services.Description.resources => 0xee7491ab5dab8ad3 => 123
	i64 17201328579425343169, ; 596: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 237
	i64 17230721278011714856, ; 597: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 275
	i64 17260702271250283638, ; 598: System.Data.Common => 0xef8a5543bba6bc76 => 242
	i64 17271628889134319867, ; 599: WCF => 0xefb126f73539c8fb => 197
	i64 17294651574986203234, ; 600: pl/System.ServiceModel.Http.resources.dll => 0xf002f1f9f933e062 => 54
	i64 17333249706306540043, ; 601: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 247
	i64 17338386382517543202, ; 602: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 269
	i64 17342750010158924305, ; 603: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17367298616515891650, ; 604: fr/System.ServiceModel.Federation.resources.dll => 0xf1050a13699011c2 => 37
	i64 17382160109067067964, ; 605: cs/System.ServiceModel.NetNamedPipe.resources.dll => 0xf139d68649e8623c => 73
	i64 17382413002971650120, ; 606: System.DirectoryServices.Protocols.dll => 0xf13abc87bd419848 => 182
	i64 17438153253682247751, ; 607: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17470386307322966175, ; 608: System.Threading.Timer => 0xf27347c8d0d5709f => 308
	i64 17509662556995089465, ; 609: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 270
	i64 17514990004910432069, ; 610: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17523946658117960076, ; 611: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 185
	i64 17526180965016000830, ; 612: es/System.Web.Services.Description.resources.dll => 0xf33980bae0fdd93e => 114
	i64 17556740846514848528, ; 613: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 0xf3a612c7c21bc310 => 98
	i64 17623389608345532001, ; 614: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17685511033268820096, ; 615: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xf56f8e95393d5880 => 84
	i64 17685921127322830888, ; 616: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 243
	i64 17702523067201099846, ; 617: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 618: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 214
	i64 17710060891934109755, ; 619: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 212
	i64 17712670374920797664, ; 620: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 284
	i64 17777860260071588075, ; 621: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 286
	i64 17779483900781686980, ; 622: pl/System.Web.Services.Description.resources.dll => 0xf6bd6a6873de70c4 => 119
	i64 17790600151040787804, ; 623: Microsoft.IdentityModel.Logging => 0xf6e4e89427cc055c => 166
	i64 17838668724098252521, ; 624: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 231
	i64 17871147545075994307, ; 625: cs\System.ServiceModel.NetFramingBase.resources => 0xf8031201c0d94ec3 => 60
	i64 17911643751311784505, ; 626: Microsoft.Net.Http.Headers => 0xf892f1178448ba39 => 178
	i64 17996292990076949210, ; 627: System.Web.Services.Description.dll => 0xf9bfad20436392da => 196
	i64 18017743553296241350, ; 628: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 150
	i64 18025913125965088385, ; 629: System.Threading => 0xfa28e87b91334681 => 309
	i64 18099568558057551825, ; 630: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 631: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 215
	i64 18146411883821974900, ; 632: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 250
	i64 18146811631844267958, ; 633: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 237
	i64 18203743254473369877, ; 634: System.Security.Cryptography.Pkcs.dll => 0xfca0b00ad94c6915 => 184
	i64 18225059387460068507, ; 635: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 307
	i64 18245806341561545090, ; 636: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 232
	i64 18274843375259426212, ; 637: pt-BR/System.ServiceModel.Http.resources.dll => 0xfd9d4939bc3d1da4 => 55
	i64 18305135509493619199, ; 638: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 217
	i64 18324163916253801303, ; 639: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
	i64 18362437444048002214, ; 640: tr\System.ServiceModel.Primitives.resources => 0xfed47b9126d01ca6 => 109
	i64 18428404840311395189 ; 641: System.Security.Cryptography.Xml.dll => 0xffbed8907bd99375 => 186
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [642 x i32] [
	i32 191, ; 0
	i32 83, ; 1
	i32 162, ; 2
	i32 320, ; 3
	i32 176, ; 4
	i32 157, ; 5
	i32 78, ; 6
	i32 190, ; 7
	i32 101, ; 8
	i32 255, ; 9
	i32 203, ; 10
	i32 126, ; 11
	i32 220, ; 12
	i32 187, ; 13
	i32 41, ; 14
	i32 181, ; 15
	i32 70, ; 16
	i32 40, ; 17
	i32 197, ; 18
	i32 65, ; 19
	i32 194, ; 20
	i32 112, ; 21
	i32 108, ; 22
	i32 160, ; 23
	i32 7, ; 24
	i32 280, ; 25
	i32 111, ; 26
	i32 164, ; 27
	i32 192, ; 28
	i32 306, ; 29
	i32 240, ; 30
	i32 10, ; 31
	i32 208, ; 32
	i32 117, ; 33
	i32 135, ; 34
	i32 280, ; 35
	i32 46, ; 36
	i32 78, ; 37
	i32 224, ; 38
	i32 18, ; 39
	i32 95, ; 40
	i32 249, ; 41
	i32 132, ; 42
	i32 171, ; 43
	i32 133, ; 44
	i32 91, ; 45
	i32 216, ; 46
	i32 58, ; 47
	i32 113, ; 48
	i32 263, ; 49
	i32 173, ; 50
	i32 319, ; 51
	i32 306, ; 52
	i32 16, ; 53
	i32 127, ; 54
	i32 105, ; 55
	i32 200, ; 56
	i32 213, ; 57
	i32 137, ; 58
	i32 183, ; 59
	i32 277, ; 60
	i32 57, ; 61
	i32 179, ; 62
	i32 260, ; 63
	i32 258, ; 64
	i32 37, ; 65
	i32 274, ; 66
	i32 199, ; 67
	i32 85, ; 68
	i32 283, ; 69
	i32 6, ; 70
	i32 220, ; 71
	i32 111, ; 72
	i32 148, ; 73
	i32 248, ; 74
	i32 28, ; 75
	i32 174, ; 76
	i32 130, ; 77
	i32 28, ; 78
	i32 293, ; 79
	i32 43, ; 80
	i32 212, ; 81
	i32 2, ; 82
	i32 20, ; 83
	i32 304, ; 84
	i32 95, ; 85
	i32 253, ; 86
	i32 248, ; 87
	i32 179, ; 88
	i32 201, ; 89
	i32 74, ; 90
	i32 90, ; 91
	i32 208, ; 92
	i32 108, ; 93
	i32 232, ; 94
	i32 24, ; 95
	i32 61, ; 96
	i32 211, ; 97
	i32 54, ; 98
	i32 299, ; 99
	i32 122, ; 100
	i32 204, ; 101
	i32 290, ; 102
	i32 198, ; 103
	i32 27, ; 104
	i32 170, ; 105
	i32 315, ; 106
	i32 261, ; 107
	i32 154, ; 108
	i32 2, ; 109
	i32 85, ; 110
	i32 270, ; 111
	i32 91, ; 112
	i32 291, ; 113
	i32 7, ; 114
	i32 268, ; 115
	i32 224, ; 116
	i32 59, ; 117
	i32 64, ; 118
	i32 289, ; 119
	i32 157, ; 120
	i32 118, ; 121
	i32 106, ; 122
	i32 136, ; 123
	i32 132, ; 124
	i32 131, ; 125
	i32 74, ; 126
	i32 210, ; 127
	i32 271, ; 128
	i32 286, ; 129
	i32 39, ; 130
	i32 266, ; 131
	i32 226, ; 132
	i32 156, ; 133
	i32 176, ; 134
	i32 253, ; 135
	i32 152, ; 136
	i32 221, ; 137
	i32 151, ; 138
	i32 317, ; 139
	i32 92, ; 140
	i32 67, ; 141
	i32 22, ; 142
	i32 290, ; 143
	i32 195, ; 144
	i32 153, ; 145
	i32 311, ; 146
	i32 152, ; 147
	i32 169, ; 148
	i32 41, ; 149
	i32 316, ; 150
	i32 77, ; 151
	i32 219, ; 152
	i32 50, ; 153
	i32 158, ; 154
	i32 174, ; 155
	i32 264, ; 156
	i32 45, ; 157
	i32 258, ; 158
	i32 123, ; 159
	i32 139, ; 160
	i32 288, ; 161
	i32 276, ; 162
	i32 53, ; 163
	i32 33, ; 164
	i32 240, ; 165
	i32 307, ; 166
	i32 292, ; 167
	i32 255, ; 168
	i32 239, ; 169
	i32 102, ; 170
	i32 134, ; 171
	i32 44, ; 172
	i32 144, ; 173
	i32 140, ; 174
	i32 56, ; 175
	i32 47, ; 176
	i32 30, ; 177
	i32 77, ; 178
	i32 254, ; 179
	i32 104, ; 180
	i32 93, ; 181
	i32 149, ; 182
	i32 64, ; 183
	i32 107, ; 184
	i32 0, ; 185
	i32 313, ; 186
	i32 198, ; 187
	i32 221, ; 188
	i32 249, ; 189
	i32 261, ; 190
	i32 146, ; 191
	i32 285, ; 192
	i32 104, ; 193
	i32 281, ; 194
	i32 38, ; 195
	i32 281, ; 196
	i32 235, ; 197
	i32 133, ; 198
	i32 147, ; 199
	i32 142, ; 200
	i32 56, ; 201
	i32 235, ; 202
	i32 118, ; 203
	i32 285, ; 204
	i32 89, ; 205
	i32 66, ; 206
	i32 283, ; 207
	i32 100, ; 208
	i32 243, ; 209
	i32 26, ; 210
	i32 29, ; 211
	i32 251, ; 212
	i32 296, ; 213
	i32 135, ; 214
	i32 293, ; 215
	i32 194, ; 216
	i32 223, ; 217
	i32 117, ; 218
	i32 102, ; 219
	i32 82, ; 220
	i32 105, ; 221
	i32 96, ; 222
	i32 34, ; 223
	i32 94, ; 224
	i32 250, ; 225
	i32 294, ; 226
	i32 23, ; 227
	i32 89, ; 228
	i32 23, ; 229
	i32 300, ; 230
	i32 273, ; 231
	i32 278, ; 232
	i32 66, ; 233
	i32 125, ; 234
	i32 39, ; 235
	i32 211, ; 236
	i32 36, ; 237
	i32 11, ; 238
	i32 201, ; 239
	i32 53, ; 240
	i32 207, ; 241
	i32 161, ; 242
	i32 83, ; 243
	i32 19, ; 244
	i32 51, ; 245
	i32 22, ; 246
	i32 246, ; 247
	i32 312, ; 248
	i32 35, ; 249
	i32 310, ; 250
	i32 271, ; 251
	i32 141, ; 252
	i32 86, ; 253
	i32 42, ; 254
	i32 186, ; 255
	i32 275, ; 256
	i32 81, ; 257
	i32 184, ; 258
	i32 72, ; 259
	i32 26, ; 260
	i32 257, ; 261
	i32 229, ; 262
	i32 142, ; 263
	i32 86, ; 264
	i32 82, ; 265
	i32 239, ; 266
	i32 71, ; 267
	i32 100, ; 268
	i32 122, ; 269
	i32 310, ; 270
	i32 272, ; 271
	i32 195, ; 272
	i32 80, ; 273
	i32 259, ; 274
	i32 260, ; 275
	i32 17, ; 276
	i32 317, ; 277
	i32 228, ; 278
	i32 225, ; 279
	i32 126, ; 280
	i32 200, ; 281
	i32 150, ; 282
	i32 69, ; 283
	i32 236, ; 284
	i32 210, ; 285
	i32 244, ; 286
	i32 81, ; 287
	i32 318, ; 288
	i32 58, ; 289
	i32 236, ; 290
	i32 69, ; 291
	i32 181, ; 292
	i32 177, ; 293
	i32 43, ; 294
	i32 282, ; 295
	i32 296, ; 296
	i32 163, ; 297
	i32 218, ; 298
	i32 279, ; 299
	i32 112, ; 300
	i32 84, ; 301
	i32 127, ; 302
	i32 94, ; 303
	i32 233, ; 304
	i32 51, ; 305
	i32 274, ; 306
	i32 128, ; 307
	i32 141, ; 308
	i32 21, ; 309
	i32 318, ; 310
	i32 228, ; 311
	i32 217, ; 312
	i32 230, ; 313
	i32 60, ; 314
	i32 21, ; 315
	i32 244, ; 316
	i32 171, ; 317
	i32 72, ; 318
	i32 149, ; 319
	i32 90, ; 320
	i32 110, ; 321
	i32 312, ; 322
	i32 164, ; 323
	i32 109, ; 324
	i32 87, ; 325
	i32 31, ; 326
	i32 167, ; 327
	i32 115, ; 328
	i32 151, ; 329
	i32 93, ; 330
	i32 49, ; 331
	i32 223, ; 332
	i32 76, ; 333
	i32 199, ; 334
	i32 140, ; 335
	i32 166, ; 336
	i32 71, ; 337
	i32 227, ; 338
	i32 47, ; 339
	i32 131, ; 340
	i32 301, ; 341
	i32 245, ; 342
	i32 204, ; 343
	i32 116, ; 344
	i32 234, ; 345
	i32 103, ; 346
	i32 36, ; 347
	i32 114, ; 348
	i32 320, ; 349
	i32 167, ; 350
	i32 137, ; 351
	i32 42, ; 352
	i32 256, ; 353
	i32 121, ; 354
	i32 175, ; 355
	i32 120, ; 356
	i32 6, ; 357
	i32 259, ; 358
	i32 276, ; 359
	i32 50, ; 360
	i32 227, ; 361
	i32 269, ; 362
	i32 173, ; 363
	i32 193, ; 364
	i32 3, ; 365
	i32 40, ; 366
	i32 207, ; 367
	i32 143, ; 368
	i32 279, ; 369
	i32 278, ; 370
	i32 183, ; 371
	i32 226, ; 372
	i32 205, ; 373
	i32 148, ; 374
	i32 103, ; 375
	i32 1, ; 376
	i32 229, ; 377
	i32 282, ; 378
	i32 189, ; 379
	i32 263, ; 380
	i32 256, ; 381
	i32 128, ; 382
	i32 247, ; 383
	i32 159, ; 384
	i32 175, ; 385
	i32 172, ; 386
	i32 145, ; 387
	i32 12, ; 388
	i32 191, ; 389
	i32 222, ; 390
	i32 88, ; 391
	i32 303, ; 392
	i32 99, ; 393
	i32 15, ; 394
	i32 161, ; 395
	i32 277, ; 396
	i32 45, ; 397
	i32 308, ; 398
	i32 206, ; 399
	i32 313, ; 400
	i32 284, ; 401
	i32 188, ; 402
	i32 165, ; 403
	i32 13, ; 404
	i32 222, ; 405
	i32 158, ; 406
	i32 316, ; 407
	i32 303, ; 408
	i32 9, ; 409
	i32 305, ; 410
	i32 124, ; 411
	i32 98, ; 412
	i32 185, ; 413
	i32 115, ; 414
	i32 48, ; 415
	i32 231, ; 416
	i32 300, ; 417
	i32 189, ; 418
	i32 65, ; 419
	i32 168, ; 420
	i32 196, ; 421
	i32 288, ; 422
	i32 233, ; 423
	i32 129, ; 424
	i32 193, ; 425
	i32 134, ; 426
	i32 209, ; 427
	i32 97, ; 428
	i32 124, ; 429
	i32 214, ; 430
	i32 119, ; 431
	i32 125, ; 432
	i32 180, ; 433
	i32 246, ; 434
	i32 202, ; 435
	i32 252, ; 436
	i32 48, ; 437
	i32 76, ; 438
	i32 180, ; 439
	i32 14, ; 440
	i32 75, ; 441
	i32 245, ; 442
	i32 203, ; 443
	i32 298, ; 444
	i32 289, ; 445
	i32 27, ; 446
	i32 254, ; 447
	i32 162, ; 448
	i32 267, ; 449
	i32 87, ; 450
	i32 92, ; 451
	i32 287, ; 452
	i32 139, ; 453
	i32 169, ; 454
	i32 1, ; 455
	i32 15, ; 456
	i32 44, ; 457
	i32 319, ; 458
	i32 9, ; 459
	i32 143, ; 460
	i32 107, ; 461
	i32 273, ; 462
	i32 225, ; 463
	i32 29, ; 464
	i32 30, ; 465
	i32 13, ; 466
	i32 156, ; 467
	i32 219, ; 468
	i32 291, ; 469
	i32 238, ; 470
	i32 8, ; 471
	i32 52, ; 472
	i32 68, ; 473
	i32 11, ; 474
	i32 188, ; 475
	i32 38, ; 476
	i32 241, ; 477
	i32 147, ; 478
	i32 110, ; 479
	i32 209, ; 480
	i32 73, ; 481
	i32 3, ; 482
	i32 202, ; 483
	i32 309, ; 484
	i32 80, ; 485
	i32 298, ; 486
	i32 116, ; 487
	i32 295, ; 488
	i32 264, ; 489
	i32 24, ; 490
	i32 68, ; 491
	i32 5, ; 492
	i32 299, ; 493
	i32 129, ; 494
	i32 294, ; 495
	i32 287, ; 496
	i32 154, ; 497
	i32 16, ; 498
	i32 75, ; 499
	i32 32, ; 500
	i32 52, ; 501
	i32 88, ; 502
	i32 292, ; 503
	i32 192, ; 504
	i32 206, ; 505
	i32 97, ; 506
	i32 33, ; 507
	i32 0, ; 508
	i32 62, ; 509
	i32 297, ; 510
	i32 155, ; 511
	i32 267, ; 512
	i32 252, ; 513
	i32 265, ; 514
	i32 99, ; 515
	i32 272, ; 516
	i32 17, ; 517
	i32 113, ; 518
	i32 251, ; 519
	i32 257, ; 520
	i32 165, ; 521
	i32 96, ; 522
	i32 153, ; 523
	i32 205, ; 524
	i32 155, ; 525
	i32 57, ; 526
	i32 187, ; 527
	i32 101, ; 528
	i32 121, ; 529
	i32 46, ; 530
	i32 55, ; 531
	i32 241, ; 532
	i32 4, ; 533
	i32 295, ; 534
	i32 266, ; 535
	i32 144, ; 536
	i32 213, ; 537
	i32 136, ; 538
	i32 314, ; 539
	i32 79, ; 540
	i32 190, ; 541
	i32 311, ; 542
	i32 4, ; 543
	i32 230, ; 544
	i32 12, ; 545
	i32 5, ; 546
	i32 59, ; 547
	i32 305, ; 548
	i32 120, ; 549
	i32 302, ; 550
	i32 145, ; 551
	i32 304, ; 552
	i32 67, ; 553
	i32 146, ; 554
	i32 262, ; 555
	i32 138, ; 556
	i32 160, ; 557
	i32 172, ; 558
	i32 163, ; 559
	i32 314, ; 560
	i32 265, ; 561
	i32 63, ; 562
	i32 18, ; 563
	i32 159, ; 564
	i32 297, ; 565
	i32 262, ; 566
	i32 79, ; 567
	i32 70, ; 568
	i32 138, ; 569
	i32 62, ; 570
	i32 168, ; 571
	i32 130, ; 572
	i32 177, ; 573
	i32 218, ; 574
	i32 61, ; 575
	i32 315, ; 576
	i32 242, ; 577
	i32 301, ; 578
	i32 268, ; 579
	i32 25, ; 580
	i32 63, ; 581
	i32 182, ; 582
	i32 216, ; 583
	i32 234, ; 584
	i32 49, ; 585
	i32 215, ; 586
	i32 106, ; 587
	i32 238, ; 588
	i32 32, ; 589
	i32 35, ; 590
	i32 302, ; 591
	i32 178, ; 592
	i32 170, ; 593
	i32 34, ; 594
	i32 123, ; 595
	i32 237, ; 596
	i32 275, ; 597
	i32 242, ; 598
	i32 197, ; 599
	i32 54, ; 600
	i32 247, ; 601
	i32 269, ; 602
	i32 10, ; 603
	i32 37, ; 604
	i32 73, ; 605
	i32 182, ; 606
	i32 25, ; 607
	i32 308, ; 608
	i32 270, ; 609
	i32 8, ; 610
	i32 185, ; 611
	i32 114, ; 612
	i32 98, ; 613
	i32 20, ; 614
	i32 84, ; 615
	i32 243, ; 616
	i32 31, ; 617
	i32 214, ; 618
	i32 212, ; 619
	i32 284, ; 620
	i32 286, ; 621
	i32 119, ; 622
	i32 166, ; 623
	i32 231, ; 624
	i32 60, ; 625
	i32 178, ; 626
	i32 196, ; 627
	i32 150, ; 628
	i32 309, ; 629
	i32 19, ; 630
	i32 215, ; 631
	i32 250, ; 632
	i32 237, ; 633
	i32 184, ; 634
	i32 307, ; 635
	i32 232, ; 636
	i32 55, ; 637
	i32 217, ; 638
	i32 14, ; 639
	i32 109, ; 640
	i32 186 ; 641
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
