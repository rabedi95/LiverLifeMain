; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [470 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [940 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 3921707, ; 1: fr\System.ServiceModel.NetFramingBase.resources => 0x3bd72b => 404
	i32 10166715, ; 2: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 17613696, ; 4: es\System.ServiceModel.NetTcp.resources => 0x10cc380 => 429
	i32 28923068, ; 5: tr\System.ServiceModel.Federation.resources => 0x1b954bc => 385
	i32 32687329, ; 6: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 299
	i32 34715100, ; 7: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 333
	i32 34839235, ; 8: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39109920, ; 9: Newtonsoft.Json.dll => 0x254c520 => 235
	i32 39485524, ; 10: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 11: System.Threading.Thread => 0x28aa24d => 145
	i32 53472207, ; 12: System.ServiceModel.Duplex.dll => 0x32febcf => 251
	i32 65960268, ; 13: Microsoft.Win32.SystemEvents.dll => 0x3ee794c => 234
	i32 66541672, ; 14: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 15: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 374
	i32 68219467, ; 16: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 71084978, ; 17: cs\System.ServiceModel.NetNamedPipe.resources => 0x43cabb2 => 414
	i32 72070932, ; 18: Microsoft.Maui.Graphics.dll => 0x44bb714 => 232
	i32 82292897, ; 19: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 83768722, ; 20: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 185
	i32 85813540, ; 21: ja/System.ServiceModel.Primitives.resources.dll => 0x51d6924 => 445
	i32 101534019, ; 22: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 317
	i32 117431740, ; 23: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 24: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 317
	i32 122350210, ; 25: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 26: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 337
	i32 142721839, ; 27: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 28: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 29: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 30: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 273
	i32 166617380, ; 31: de/System.ServiceModel.NetFramingBase.resources.dll => 0x9ee6124 => 402
	i32 176265551, ; 32: System.ServiceProcess => 0xa81994f => 132
	i32 176714968, ; 33: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 195
	i32 182336117, ; 34: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 319
	i32 184328833, ; 35: System.ValueTuple.dll => 0xafca281 => 151
	i32 192921502, ; 36: fr\System.ServiceModel.Http.resources => 0xb7fbf9e => 391
	i32 193868653, ; 37: de\System.ServiceModel.NetNamedPipe.resources => 0xb8e336d => 415
	i32 195452805, ; 38: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 371
	i32 199333315, ; 39: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 372
	i32 205061960, ; 40: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 41: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 271
	i32 209580789, ; 42: ko\System.ServiceModel.Federation.resources => 0xc7df2f5 => 381
	i32 220171995, ; 43: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 44: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 293
	i32 230752869, ; 45: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 230884747, ; 46: ru/System.ServiceModel.Primitives.resources.dll => 0xdc3058b => 449
	i32 231409092, ; 47: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 48: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 49: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 247181326, ; 50: es/System.ServiceModel.NetNamedPipe.resources.dll => 0xebbb00e => 416
	i32 261689757, ; 51: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 276
	i32 276479776, ; 52: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 53: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 295
	i32 280482487, ; 54: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 292
	i32 280992041, ; 55: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 343
	i32 285314186, ; 56: it\System.ServiceModel.Primitives.resources => 0x11018c8a => 444
	i32 291076382, ; 57: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 296834212, ; 58: zh-Hans\System.ServiceModel.Http.resources => 0x11b154a4 => 399
	i32 298918909, ; 59: System.Net.Ping.dll => 0x11d123fd => 69
	i32 300686228, ; 60: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 182
	i32 314903445, ; 61: de/System.Web.Services.Description.resources.dll => 0x12c50b95 => 454
	i32 316078633, ; 62: pl\System.ServiceModel.Http.resources => 0x12d6fa29 => 395
	i32 317674968, ; 63: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 371
	i32 318968648, ; 64: Xamarin.AndroidX.Activity.dll => 0x13031348 => 262
	i32 320721186, ; 65: ko/System.ServiceModel.NetTcp.resources.dll => 0x131dd122 => 433
	i32 321597661, ; 66: System.Numerics => 0x132b30dd => 83
	i32 324831035, ; 67: ja/System.ServiceModel.NetFramingBase.resources.dll => 0x135c873b => 406
	i32 336156722, ; 68: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 356
	i32 342366114, ; 69: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 294
	i32 356389973, ; 70: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 355
	i32 360082299, ; 71: System.ServiceModel.Web => 0x15766b7b => 131
	i32 361065771, ; 72: cs/System.ServiceModel.NetTcp.resources.dll => 0x15856d2b => 427
	i32 367780167, ; 73: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 74: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 75: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 76: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 382771021, ; 77: Microsoft.Bcl.Memory.dll => 0x16d09f4d => 197
	i32 385762202, ; 78: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 79: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 80: _Microsoft.Android.Resource.Designer => 0x17969339 => 469
	i32 403441872, ; 81: WindowsBase => 0x180c08d0 => 165
	i32 417611542, ; 82: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 194
	i32 420389340, ; 83: es\System.ServiceModel.NetNamedPipe.resources => 0x190ea1dc => 416
	i32 435591531, ; 84: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 367
	i32 441335492, ; 85: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 277
	i32 442565967, ; 86: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 87: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 290
	i32 451504562, ; 88: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456096849, ; 89: zh-Hans/System.ServiceModel.Primitives.resources.dll => 0x1b2f7c51 => 451
	i32 456227837, ; 90: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 91: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 92: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 93: System.dll => 0x1bff388e => 164
	i32 476646585, ; 94: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 292
	i32 482736244, ; 95: fr/System.ServiceModel.NetNamedPipe.resources.dll => 0x1cc5f874 => 417
	i32 485463106, ; 96: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 218
	i32 486930444, ; 97: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 305
	i32 490002678, ; 98: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 189
	i32 498788369, ; 99: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 100: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 354
	i32 500534657, ; 101: tr/System.ServiceModel.Http.resources.dll => 0x1dd58d81 => 398
	i32 503918385, ; 102: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 348
	i32 509950334, ; 103: LiverLife.dll => 0x1e65397e => 0
	i32 513247710, ; 104: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 215
	i32 520748051, ; 105: ja\System.ServiceModel.NetTcp.resources => 0x1f09fc13 => 432
	i32 525250519, ; 106: de/System.ServiceModel.NetTcp.resources.dll => 0x1f4eafd7 => 428
	i32 526420162, ; 107: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 108: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 337
	i32 530272170, ; 109: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 531014212, ; 110: ja\System.ServiceModel.Primitives.resources => 0x1fa6a244 => 445
	i32 535122277, ; 111: tr/System.ServiceModel.NetNamedPipe.resources.dll => 0x1fe55165 => 424
	i32 539058512, ; 112: Microsoft.Extensions.Logging => 0x20216150 => 207
	i32 540030774, ; 113: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 114: System.Runtime.Extensions => 0x2080b118 => 103
	i32 545795345, ; 115: Microsoft.Extensions.Logging.Configuration.dll => 0x20882d11 => 209
	i32 546455878, ; 116: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 548916678, ; 117: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 196
	i32 549171840, ; 118: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 119: Jsr305Binding => 0x213954e7 => 330
	i32 558692097, ; 120: fr\System.Web.Services.Description.resources => 0x214cf701 => 456
	i32 562488221, ; 121: System.ServiceModel => 0x2186e39d => 254
	i32 569334933, ; 122: tr/System.ServiceModel.Federation.resources.dll => 0x21ef5c95 => 385
	i32 569601784, ; 123: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 328
	i32 577335427, ; 124: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 580569086, ; 125: zh-Hans\System.ServiceModel.NetTcp.resources => 0x229ac7fe => 438
	i32 592146354, ; 126: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 362
	i32 597488923, ; 127: CommunityToolkit.Maui => 0x239cf51b => 175
	i32 601371474, ; 128: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 129: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 130: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 625044127, ; 131: es/System.ServiceModel.NetTcp.resources.dll => 0x25416a9f => 429
	i32 627609679, ; 132: Xamarin.AndroidX.CustomView => 0x2568904f => 282
	i32 627931235, ; 133: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 360
	i32 634015394, ; 134: tr\System.ServiceModel.Primitives.resources => 0x25ca4ea2 => 450
	i32 635078218, ; 135: de\System.ServiceModel.Primitives.resources => 0x25da864a => 441
	i32 639843206, ; 136: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 288
	i32 643868501, ; 137: System.Net => 0x2660a755 => 81
	i32 643983915, ; 138: System.ServiceModel.Security => 0x26626a2b => 253
	i32 648503046, ; 139: de\System.ServiceModel.Federation.resources => 0x26a75f06 => 376
	i32 662205335, ; 140: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 141: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 324
	i32 666292255, ; 142: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 269
	i32 672442732, ; 143: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 144: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 145: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 342
	i32 690569205, ; 146: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 147: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 339
	i32 692151471, ; 148: Microsoft.Extensions.Logging.Console.dll => 0x294164af => 210
	i32 693804605, ; 149: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 150: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700069175, ; 151: cs/System.ServiceModel.NetNamedPipe.resources.dll => 0x29ba3537 => 414
	i32 700284507, ; 152: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 334
	i32 700358131, ; 153: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 154: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 357
	i32 709152836, ; 155: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 242
	i32 709557578, ; 156: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 345
	i32 710880553, ; 157: fr/System.ServiceModel.Primitives.resources.dll => 0x2a5f2d29 => 443
	i32 720511267, ; 158: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 338
	i32 722857257, ; 159: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 731701662, ; 160: Microsoft.Extensions.Options.ConfigurationExtensions => 0x2b9ce19e => 214
	i32 735137430, ; 161: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 741543376, ; 162: pl\System.Web.Services.Description.resources => 0x2c330dd0 => 460
	i32 752232764, ; 163: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 164: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 259
	i32 759454413, ; 165: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 166: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 767064363, ; 167: it/System.ServiceModel.NetNamedPipe.resources.dll => 0x2db8792b => 418
	i32 775507847, ; 168: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 169: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 366
	i32 789151979, ; 170: Microsoft.Extensions.Options => 0x2f0980eb => 213
	i32 790371945, ; 171: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 283
	i32 804715423, ; 172: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 173: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 297
	i32 809851609, ; 174: System.Drawing.Common.dll => 0x30455ad9 => 239
	i32 823281589, ; 175: System.Private.Uri.dll => 0x311247b5 => 86
	i32 823444754, ; 176: zh-Hant\System.ServiceModel.Http.resources => 0x3114c512 => 400
	i32 828535308, ; 177: System.ServiceModel.NetNamedPipe => 0x3162720c => 249
	i32 830298997, ; 178: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 179: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 180: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 181: Xamarin.AndroidX.Print => 0x3246f6cd => 310
	i32 852919649, ; 182: pt-BR/System.ServiceModel.Primitives.resources.dll => 0x32d68561 => 448
	i32 873119928, ; 183: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 184: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 185: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 186: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 187: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 188: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 369
	i32 928116545, ; 189: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 333
	i32 952186615, ; 190: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 955402788, ; 191: Newtonsoft.Json => 0x38f24a24 => 235
	i32 956575887, ; 192: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 338
	i32 959135198, ; 193: fr/System.ServiceModel.NetFramingBase.resources.dll => 0x392b3dde => 404
	i32 966729478, ; 194: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 331
	i32 967690846, ; 195: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 294
	i32 972805734, ; 196: System.ServiceModel.Http => 0x39fbd666 => 247
	i32 975236339, ; 197: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 198: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 980852653, ; 199: pl\System.ServiceModel.Federation.resources => 0x3a769fad => 382
	i32 986514023, ; 200: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 201: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 202: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 203: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 204: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 205: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 314
	i32 1019214401, ; 206: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 207: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 204
	i32 1029334545, ; 208: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 344
	i32 1031528504, ; 209: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 332
	i32 1033084130, ; 210: cs/System.ServiceModel.NetFramingBase.resources.dll => 0x3d939ce2 => 401
	i32 1035644815, ; 211: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 267
	i32 1036536393, ; 212: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 213: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1047490775, ; 214: ru/System.ServiceModel.Http.resources.dll => 0x3e6f70d7 => 397
	i32 1052210849, ; 215: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 301
	i32 1066465193, ; 216: WCF => 0x3f90f7a9 => 257
	i32 1067306892, ; 217: GoogleGson => 0x3f9dcf8c => 180
	i32 1081414353, ; 218: System.ServiceModel.Http.dll => 0x407512d1 => 247
	i32 1082857460, ; 219: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1083376331, ; 220: System.DirectoryServices => 0x409302cb => 237
	i32 1084122840, ; 221: Xamarin.Kotlin.StdLib => 0x409e66d8 => 335
	i32 1095172895, ; 222: it/System.ServiceModel.NetTcp.resources.dll => 0x4147031f => 431
	i32 1098259244, ; 223: System => 0x41761b2c => 164
	i32 1110309514, ; 224: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 206
	i32 1112354281, ; 225: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 182
	i32 1117830343, ; 226: ru/System.ServiceModel.Federation.resources.dll => 0x42a0bcc7 => 384
	i32 1118262833, ; 227: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 357
	i32 1121599056, ; 228: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 300
	i32 1127624469, ; 229: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 211
	i32 1131748925, ; 230: ru\System.ServiceModel.Http.resources => 0x43751e3d => 397
	i32 1137475283, ; 231: fr\System.ServiceModel.Federation.resources => 0x43cc7ed3 => 378
	i32 1142243660, ; 232: zh-Hant/System.ServiceModel.Http.resources.dll => 0x4415414c => 400
	i32 1145483052, ; 233: System.Windows.Extensions.dll => 0x4446af2c => 256
	i32 1149092582, ; 234: Xamarin.AndroidX.Window => 0x447dc2e6 => 327
	i32 1162065116, ; 235: Microsoft.Bcl.Memory => 0x4543b4dc => 197
	i32 1163987173, ; 236: Appwrite.dll => 0x456108e5 => 173
	i32 1168523401, ; 237: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 363
	i32 1170634674, ; 238: System.Web.dll => 0x45c677b2 => 153
	i32 1173126369, ; 239: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 205
	i32 1175144683, ; 240: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 323
	i32 1178241025, ; 241: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 308
	i32 1203215381, ; 242: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 361
	i32 1204270330, ; 243: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 269
	i32 1204575371, ; 244: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 199
	i32 1205230995, ; 245: it/System.ServiceModel.Http.resources.dll => 0x47d65d93 => 392
	i32 1207862497, ; 246: System.ServiceModel.NetTcp.dll => 0x47fe84e1 => 250
	i32 1208641965, ; 247: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1214827643, ; 248: CommunityToolkit.Mvvm => 0x4868cc7b => 177
	i32 1219128291, ; 249: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1220193633, ; 250: Microsoft.Net.Http.Headers => 0x48baad61 => 233
	i32 1234928153, ; 251: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 359
	i32 1236289705, ; 252: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 189
	i32 1243150071, ; 253: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 328
	i32 1253011324, ; 254: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 255: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 343
	i32 1264511973, ; 256: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 318
	i32 1267360935, ; 257: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 322
	i32 1273260888, ; 258: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 274
	i32 1275534314, ; 259: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 339
	i32 1278448581, ; 260: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 266
	i32 1280076198, ; 261: cs\System.Web.Services.Description.resources => 0x4c4c69a6 => 453
	i32 1293217323, ; 262: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 285
	i32 1296184643, ; 263: pl\System.ServiceModel.NetFramingBase.resources => 0x4d423543 => 408
	i32 1307310235, ; 264: pl/System.ServiceModel.Http.resources.dll => 0x4debf89b => 395
	i32 1309188875, ; 265: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1314523075, ; 266: fr/System.ServiceModel.NetTcp.resources.dll => 0x4e5a07c3 => 430
	i32 1322716291, ; 267: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 327
	i32 1324164729, ; 268: System.Linq => 0x4eed2679 => 61
	i32 1324212547, ; 269: pt-BR\System.ServiceModel.NetTcp.resources => 0x4eede143 => 435
	i32 1335329327, ; 270: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1360479413, ; 271: it\System.ServiceModel.Federation.resources => 0x511744b5 => 379
	i32 1361525254, ; 272: ru\System.ServiceModel.NetNamedPipe.resources => 0x51273a06 => 423
	i32 1364015309, ; 273: System.IO => 0x514d38cd => 57
	i32 1366316721, ; 274: zh-Hans\System.Web.Services.Description.resources => 0x517056b1 => 464
	i32 1373134921, ; 275: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 373
	i32 1376866003, ; 276: Xamarin.AndroidX.SavedState => 0x52114ed3 => 314
	i32 1379779777, ; 277: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1385448968, ; 278: fr/System.Web.Services.Description.resources.dll => 0x52944608 => 456
	i32 1394641819, ; 279: System.ServiceModel.Primitives => 0x53208b9b => 252
	i32 1397695725, ; 280: Microsoft.IdentityModel.Xml => 0x534f24ed => 226
	i32 1402170036, ; 281: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 282: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 278
	i32 1408764838, ; 283: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 284: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1415600846, ; 285: pl/System.Web.Services.Description.resources.dll => 0x54605ace => 460
	i32 1422545099, ; 286: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1423907884, ; 287: zh-Hant/System.ServiceModel.Primitives.resources.dll => 0x54df1c2c => 452
	i32 1430672901, ; 288: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 341
	i32 1430830959, ; 289: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x5548bf6f => 413
	i32 1434145427, ; 290: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 291: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 331
	i32 1439761251, ; 292: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1442844750, ; 293: cs/System.ServiceModel.Primitives.resources.dll => 0x5600104e => 440
	i32 1446764972, ; 294: System.Web.Services.Description => 0x563be1ac => 255
	i32 1450960925, ; 295: Parse => 0x567be81d => 236
	i32 1452070440, ; 296: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 297: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 298: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 299: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1460893475, ; 300: System.IdentityModel.Tokens.Jwt => 0x57137723 => 240
	i32 1461004990, ; 301: es\Microsoft.Maui.Controls.resources => 0x57152abe => 347
	i32 1461234159, ; 302: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 303: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 304: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 305: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 268
	i32 1470490898, ; 306: Microsoft.Extensions.Primitives => 0x57a5e912 => 215
	i32 1479771757, ; 307: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 308: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 309: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 310: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 315
	i32 1493001747, ; 311: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 351
	i32 1496356098, ; 312: pt-BR\System.ServiceModel.NetFramingBase.resources => 0x59309502 => 409
	i32 1498168481, ; 313: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 219
	i32 1514721132, ; 314: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 346
	i32 1536373174, ; 315: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 316: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 317: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 318: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 319: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 366
	i32 1552155078, ; 320: System.ServiceModel.NetFramingBase => 0x5c8401c6 => 248
	i32 1565862583, ; 321: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 322: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 323: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 324: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 325: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 284
	i32 1590860858, ; 326: System.ServiceModel.NetTcp => 0x5ed29c3a => 250
	i32 1592978981, ; 327: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 328: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 332
	i32 1601112923, ; 329: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 330: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 466
	i32 1604827217, ; 331: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 332: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 333: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 304
	i32 1622358360, ; 334: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 335: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 326
	i32 1626255391, ; 336: Microsoft.IdentityModel.Protocols.WsTrust => 0x60eeb01f => 223
	i32 1628529952, ; 337: pt-BR/System.ServiceModel.Http.resources.dll => 0x61116520 => 396
	i32 1629788937, ; 338: cs\System.ServiceModel.Primitives.resources => 0x61249b09 => 440
	i32 1634654947, ; 339: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 176
	i32 1635184631, ; 340: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 288
	i32 1636350590, ; 341: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 281
	i32 1639515021, ; 342: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 343: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 344: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1656530436, ; 345: ja/System.ServiceModel.NetNamedPipe.resources.dll => 0x62bca604 => 419
	i32 1657153582, ; 346: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 347: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 320
	i32 1658251792, ; 348: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 329
	i32 1658431748, ; 349: ja\System.Web.Services.Description.resources => 0x62d9a904 => 458
	i32 1661950287, ; 350: ru/System.ServiceModel.NetNamedPipe.resources.dll => 0x630f594f => 423
	i32 1670060433, ; 351: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 276
	i32 1675553242, ; 352: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 353: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 354: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 355: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 356: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 357: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 358: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 336
	i32 1701287491, ; 359: System.DirectoryServices.Protocols.dll => 0x65679643 => 238
	i32 1701541528, ; 360: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1717748983, ; 361: ko/System.ServiceModel.Federation.resources.dll => 0x6662c4f7 => 381
	i32 1720223769, ; 362: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 297
	i32 1726116996, ; 363: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 364: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 365: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 272
	i32 1736233607, ; 366: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 364
	i32 1743415430, ; 367: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 342
	i32 1744735666, ; 368: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 369: Mono.Android.Export => 0x6816ab6a => 169
	i32 1749969296, ; 370: it/System.ServiceModel.Federation.resources.dll => 0x684e6990 => 379
	i32 1750313021, ; 371: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 372: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 373: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 374: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 375: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 319
	i32 1770582343, ; 376: Microsoft.Extensions.Logging.dll => 0x6988f147 => 207
	i32 1775568156, ; 377: de/System.ServiceModel.Primitives.resources.dll => 0x69d5051c => 441
	i32 1776026572, ; 378: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 379: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 380: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 381: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 358
	i32 1787719884, ; 382: tr/System.ServiceModel.NetFramingBase.resources.dll => 0x6a8e70cc => 411
	i32 1788241197, ; 383: Xamarin.AndroidX.Fragment => 0x6a96652d => 290
	i32 1791755720, ; 384: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 181
	i32 1792213857, ; 385: ru\System.ServiceModel.Federation.resources => 0x6ad30361 => 384
	i32 1793755602, ; 386: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 350
	i32 1794500907, ; 387: Microsoft.Identity.Client.dll => 0x6af5e92b => 217
	i32 1796167890, ; 388: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 196
	i32 1800314317, ; 389: zh-Hant/System.Web.Services.Description.resources.dll => 0x6b4e9dcd => 465
	i32 1808609942, ; 390: Xamarin.AndroidX.Loader => 0x6bcd3296 => 304
	i32 1813058853, ; 391: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 335
	i32 1813201214, ; 392: Xamarin.Google.Android.Material => 0x6c13413e => 329
	i32 1818569960, ; 393: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 309
	i32 1818787751, ; 394: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1819327070, ; 395: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 193
	i32 1820883333, ; 396: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 185
	i32 1824175904, ; 397: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 398: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827118058, ; 399: pl\System.ServiceModel.NetNamedPipe.resources => 0x6ce79bea => 421
	i32 1827303595, ; 400: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 468
	i32 1828688058, ; 401: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 208
	i32 1829150748, ; 402: System.Windows.Extensions => 0x6d06a01c => 256
	i32 1834522491, ; 403: pt-BR\System.ServiceModel.Http.resources => 0x6d58977b => 396
	i32 1842015223, ; 404: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 370
	i32 1847515442, ; 405: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 259
	i32 1852096909, ; 406: tr/System.ServiceModel.NetTcp.resources.dll => 0x6e64c18d => 437
	i32 1853025655, ; 407: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 367
	i32 1858542181, ; 408: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870090363, ; 409: ko/System.ServiceModel.NetNamedPipe.resources.dll => 0x6f77507b => 420
	i32 1870277092, ; 410: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1875935024, ; 411: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 349
	i32 1879696579, ; 412: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1882505209, ; 413: tr/System.ServiceModel.Primitives.resources.dll => 0x7034bff9 => 450
	i32 1885316902, ; 414: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 270
	i32 1885918049, ; 415: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 468
	i32 1888955245, ; 416: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 417: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 418: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 419: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 420: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1917682536, ; 421: CoreWCF.Primitives.dll => 0x724d8368 => 179
	i32 1922109462, ; 422: System.ServiceModel.Primitives.dll => 0x72911016 => 252
	i32 1928288591, ; 423: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 191
	i32 1932085498, ; 424: fr\System.ServiceModel.Primitives.resources => 0x732948fa => 443
	i32 1939592360, ; 425: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1946106882, ; 426: es\System.ServiceModel.NetFramingBase.resources => 0x73ff3c02 => 403
	i32 1953680223, ; 427: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 187
	i32 1954170934, ; 428: fr/System.ServiceModel.Federation.resources.dll => 0x747a4836 => 378
	i32 1956758971, ; 429: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1958787763, ; 430: de\System.Web.Services.Description.resources => 0x74c0bab3 => 454
	i32 1960645073, ; 431: ko\System.ServiceModel.NetTcp.resources => 0x74dd11d1 => 433
	i32 1961813231, ; 432: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 316
	i32 1968388702, ; 433: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 200
	i32 1973329537, ; 434: ru/System.ServiceModel.NetFramingBase.resources.dll => 0x759e9e81 => 410
	i32 1978330673, ; 435: zh-Hant\System.Web.Services.Description.resources => 0x75eaee31 => 465
	i32 1983156543, ; 436: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 336
	i32 1985761444, ; 437: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 261
	i32 1986222447, ; 438: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 224
	i32 1999793157, ; 439: ja/System.ServiceModel.NetTcp.resources.dll => 0x77326c05 => 432
	i32 2003115576, ; 440: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 346
	i32 2011961780, ; 441: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2016390154, ; 442: Parse.dll => 0x782fac0a => 236
	i32 2019465201, ; 443: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 301
	i32 2025202353, ; 444: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 341
	i32 2031763787, ; 445: Xamarin.Android.Glide => 0x791a414b => 258
	i32 2045470958, ; 446: System.Private.Xml => 0x79eb68ee => 88
	i32 2048278909, ; 447: Microsoft.Extensions.Configuration.Binder.dll => 0x7a16417d => 202
	i32 2055257422, ; 448: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 296
	i32 2060060697, ; 449: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 450: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 345
	i32 2070888862, ; 451: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2075706075, ; 452: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 191
	i32 2076659885, ; 453: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 216
	i32 2078280433, ; 454: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 0x7be00af1 => 412
	i32 2079903147, ; 455: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2085039813, ; 456: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 244
	i32 2086675053, ; 457: System.ServiceModel.NetFramingBase.dll => 0x7c60226d => 248
	i32 2090596640, ; 458: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2092919810, ; 459: System.ServiceModel.dll => 0x7cbf6c02 => 254
	i32 2093814594, ; 460: Microsoft.IdentityModel.Tokens.Saml.dll => 0x7ccd1342 => 225
	i32 2098812199, ; 461: de/System.ServiceModel.Http.resources.dll => 0x7d195527 => 389
	i32 2100860373, ; 462: it\System.Web.Services.Description.resources => 0x7d3895d5 => 457
	i32 2118004960, ; 463: fr\System.ServiceModel.NetNamedPipe.resources => 0x7e3e30e0 => 417
	i32 2127167465, ; 464: System.Console => 0x7ec9ffe9 => 20
	i32 2132115774, ; 465: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 0x7f15813e => 413
	i32 2142473426, ; 466: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 467: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 468: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 469: Microsoft.Maui => 0x80bd55ad => 230
	i32 2169148018, ; 470: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 353
	i32 2181898931, ; 471: Microsoft.Extensions.Options.dll => 0x820d22b3 => 213
	i32 2186953162, ; 472: LiverLife => 0x825a41ca => 0
	i32 2192057212, ; 473: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 208
	i32 2193016926, ; 474: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 475: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 340
	i32 2201231467, ; 476: System.Net.Http => 0x8334206b => 64
	i32 2204417087, ; 477: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 212
	i32 2207618523, ; 478: it\Microsoft.Maui.Controls.resources => 0x839595db => 355
	i32 2217644978, ; 479: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 323
	i32 2222056684, ; 480: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2223829768, ; 481: ko/System.ServiceModel.Primitives.resources.dll => 0x848cf308 => 446
	i32 2224792570, ; 482: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 0x849ba3fa => 439
	i32 2227276228, ; 483: cs\System.ServiceModel.NetFramingBase.resources => 0x84c189c4 => 401
	i32 2242871324, ; 484: Microsoft.AspNetCore.Http.dll => 0x85af801c => 190
	i32 2244775296, ; 485: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 305
	i32 2252106437, ; 486: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2253551641, ; 487: Microsoft.IdentityModel.Protocols => 0x86527819 => 221
	i32 2256313426, ; 488: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 489: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 490: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 201
	i32 2267999099, ; 491: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 260
	i32 2270573516, ; 492: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 349
	i32 2279755925, ; 493: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 312
	i32 2291847450, ; 494: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 186
	i32 2292263403, ; 495: zh-Hant\System.ServiceModel.Primitives.resources => 0x88a129eb => 452
	i32 2293034957, ; 496: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2294984242, ; 497: pl/System.ServiceModel.NetFramingBase.resources.dll => 0x88caae32 => 408
	i32 2295906218, ; 498: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 499: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 500: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 359
	i32 2305521784, ; 501: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2306840234, ; 502: cs\System.ServiceModel.Federation.resources => 0x897f96aa => 375
	i32 2310401230, ; 503: es/System.Web.Services.Description.resources.dll => 0x89b5ecce => 455
	i32 2315684594, ; 504: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 264
	i32 2320631194, ; 505: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2333576127, ; 506: pt-BR/System.ServiceModel.NetTcp.resources.dll => 0x8b178bbf => 435
	i32 2340441535, ; 507: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 508: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2348932370, ; 509: Microsoft.IdentityModel.Tokens.Saml => 0x8c01dd12 => 225
	i32 2353062107, ; 510: System.Net.Primitives => 0x8c40e0db => 70
	i32 2362364481, ; 511: ko\System.Web.Services.Description.resources => 0x8cced241 => 459
	i32 2368005991, ; 512: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369706906, ; 513: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 220
	i32 2371007202, ; 514: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 200
	i32 2378619854, ; 515: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 516: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2393708825, ; 517: es\System.ServiceModel.Http.resources => 0x8ead1919 => 390
	i32 2395872292, ; 518: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 354
	i32 2401565422, ; 519: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 520: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 287
	i32 2409983638, ; 521: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 467
	i32 2421380589, ; 522: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 523: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 274
	i32 2427813419, ; 524: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 351
	i32 2435356389, ; 525: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 526: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 527: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2454894271, ; 528: pl/System.ServiceModel.NetTcp.resources.dll => 0x9252b6bf => 434
	i32 2458592288, ; 529: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 183
	i32 2458678730, ; 530: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 531: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2461098579, ; 532: Microsoft.IdentityModel.Protocols.WsFederation => 0x92b16253 => 222
	i32 2465532216, ; 533: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 277
	i32 2466230705, ; 534: fr/System.ServiceModel.Http.resources.dll => 0x92ffb1b1 => 391
	i32 2471841756, ; 535: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 536: Java.Interop.dll => 0x93918882 => 168
	i32 2476423391, ; 537: Appwrite => 0x939b38df => 173
	i32 2480646305, ; 538: Microsoft.Maui.Controls => 0x93dba8a1 => 228
	i32 2483266164, ; 539: cs/System.Web.Services.Description.resources.dll => 0x9403a274 => 453
	i32 2483903535, ; 540: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 541: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 542: System.AppContext.dll => 0x94798bc5 => 6
	i32 2491939797, ; 543: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x9487fbd5 => 422
	i32 2501346920, ; 544: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2503402960, ; 545: de\System.ServiceModel.NetFramingBase.resources => 0x9536e5d0 => 402
	i32 2505896520, ; 546: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 299
	i32 2522472828, ; 547: Xamarin.Android.Glide.dll => 0x9659e17c => 258
	i32 2537015816, ; 548: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 184
	i32 2538310050, ; 549: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2539621919, ; 550: es/System.ServiceModel.Federation.resources.dll => 0x975f8e1f => 377
	i32 2550873716, ; 551: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 352
	i32 2560511009, ; 552: it/System.Web.Services.Description.resources.dll => 0x989e4c21 => 457
	i32 2562349572, ; 553: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 554: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2574359397, ; 555: tr\System.ServiceModel.NetFramingBase.resources => 0x99719b65 => 411
	i32 2577645437, ; 556: ko/System.ServiceModel.NetFramingBase.resources.dll => 0x99a3bf7d => 407
	i32 2581783588, ; 557: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 300
	i32 2581819634, ; 558: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 322
	i32 2585220780, ; 559: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 560: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 561: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2591523840, ; 562: it/System.ServiceModel.Primitives.resources.dll => 0x9a778400 => 444
	i32 2592341985, ; 563: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 205
	i32 2593496499, ; 564: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 361
	i32 2594125473, ; 565: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 188
	i32 2602618737, ; 566: CoreWCF.Http => 0x9b20cf71 => 178
	i32 2605712449, ; 567: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 340
	i32 2615233544, ; 568: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 291
	i32 2616218305, ; 569: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 211
	i32 2617129537, ; 570: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 571: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 572: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 281
	i32 2624644809, ; 573: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 286
	i32 2626831493, ; 574: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 356
	i32 2627185994, ; 575: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 576: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 577: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 295
	i32 2633959305, ; 578: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 192
	i32 2640290731, ; 579: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 220
	i32 2642291320, ; 580: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 241
	i32 2654295266, ; 581: ru/System.ServiceModel.NetTcp.resources.dll => 0x9e3554e2 => 436
	i32 2659772221, ; 582: es\System.ServiceModel.Federation.resources => 0x9e88e73d => 377
	i32 2660759594, ; 583: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 243
	i32 2663391936, ; 584: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 260
	i32 2663698177, ; 585: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 586: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 587: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 588: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 589: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 590: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 591: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 320
	i32 2705830069, ; 592: ru\System.Web.Services.Description.resources => 0xa147b0b5 => 462
	i32 2705927368, ; 593: zh-Hant/System.ServiceModel.Federation.resources.dll => 0xa1492cc8 => 387
	i32 2712765783, ; 594: pl/System.ServiceModel.Primitives.resources.dll => 0xa1b18557 => 447
	i32 2715334215, ; 595: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 596: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 597: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 598: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2724977475, ; 599: pt-BR/System.ServiceModel.Federation.resources.dll => 0xa26bdb43 => 383
	i32 2732626843, ; 600: Xamarin.AndroidX.Activity => 0xa2e0939b => 262
	i32 2735172069, ; 601: System.Threading.Channels => 0xa30769e5 => 139
	i32 2735631878, ; 602: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 184
	i32 2737747696, ; 603: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 268
	i32 2740051746, ; 604: Microsoft.Identity.Client => 0xa351df22 => 217
	i32 2740877318, ; 605: it\System.ServiceModel.NetTcp.resources => 0xa35e7806 => 431
	i32 2740948882, ; 606: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2742465751, ; 607: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 0xa376b4d7 => 438
	i32 2748088231, ; 608: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 609: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 362
	i32 2753493119, ; 610: System.ServiceModel.Security.dll => 0xa41ef87f => 253
	i32 2756478476, ; 611: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa44c860c => 439
	i32 2758225723, ; 612: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 229
	i32 2764765095, ; 613: Microsoft.Maui.dll => 0xa4caf7a7 => 230
	i32 2765824710, ; 614: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2770495804, ; 615: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 334
	i32 2778768386, ; 616: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 325
	i32 2779977773, ; 617: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 313
	i32 2780661947, ; 618: pl/System.ServiceModel.NetNamedPipe.resources.dll => 0xa5bd88bb => 421
	i32 2785988530, ; 619: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 368
	i32 2788224221, ; 620: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 291
	i32 2795666278, ; 621: Microsoft.Win32.SystemEvents => 0xa6a27b66 => 234
	i32 2801831435, ; 622: Microsoft.Maui.Graphics => 0xa7008e0b => 232
	i32 2803228030, ; 623: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 624: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 347
	i32 2810250172, ; 625: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 278
	i32 2819470561, ; 626: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 627: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 628: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 313
	i32 2822016028, ; 629: zh-Hans/System.ServiceModel.NetNamedPipe.resources.dll => 0xa8348c1c => 425
	i32 2824502124, ; 630: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 631: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 360
	i32 2838993487, ; 632: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 302
	i32 2841355853, ; 633: System.Security.Permissions => 0xa95ba64d => 245
	i32 2849599387, ; 634: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2850549256, ; 635: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 193
	i32 2853208004, ; 636: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 325
	i32 2855708567, ; 637: Xamarin.AndroidX.Transition => 0xaa36a797 => 321
	i32 2861098320, ; 638: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 639: Microsoft.Maui.Essentials => 0xaa8a4878 => 231
	i32 2867946736, ; 640: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 243
	i32 2868488919, ; 641: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 176
	i32 2870099610, ; 642: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 263
	i32 2875164099, ; 643: Jsr305Binding.dll => 0xab5f85c3 => 330
	i32 2875220617, ; 644: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 645: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 289
	i32 2887636118, ; 646: System.Net.dll => 0xac1dd496 => 81
	i32 2899241291, ; 647: it\System.ServiceModel.Http.resources => 0xaccee94b => 392
	i32 2899753641, ; 648: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 649: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 650: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 651: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 652: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 653: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 326
	i32 2917500511, ; 654: zh-Hant/System.ServiceModel.NetNamedPipe.resources.dll => 0xade5865f => 426
	i32 2919462931, ; 655: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 656: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 265
	i32 2921417940, ; 657: System.Security.Cryptography.Xml => 0xae214cd4 => 244
	i32 2930358886, ; 658: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 187
	i32 2936416060, ; 659: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 660: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 661: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2958066338, ; 662: pl\System.ServiceModel.Primitives.resources => 0xb05082a2 => 447
	i32 2958246600, ; 663: de\System.ServiceModel.Http.resources => 0xb05342c8 => 389
	i32 2959614098, ; 664: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 665: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2970759306, ; 666: BCrypt.Net-Next.dll => 0xb112308a => 174
	i32 2971004615, ; 667: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 0xb115eec7 => 214
	i32 2972252294, ; 668: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978368250, ; 669: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 188
	i32 2978675010, ; 670: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 285
	i32 2985026235, ; 671: ja\System.ServiceModel.NetNamedPipe.resources => 0xb1ebe2bb => 419
	i32 2987532451, ; 672: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 316
	i32 2991460102, ; 673: WCF.dll => 0xb24e0f06 => 257
	i32 2996646946, ; 674: Microsoft.AspNetCore.Http => 0xb29d3422 => 190
	i32 2996846495, ; 675: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 298
	i32 3016983068, ; 676: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 318
	i32 3022610030, ; 677: ja\System.ServiceModel.Http.resources => 0xb4295e6e => 393
	i32 3023353419, ; 678: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 679: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 293
	i32 3033331042, ; 680: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 183
	i32 3036999524, ; 681: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 192
	i32 3038032645, ; 682: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 469
	i32 3046511124, ; 683: es/System.ServiceModel.Primitives.resources.dll => 0xb5961214 => 442
	i32 3049900938, ; 684: pt-BR/System.ServiceModel.NetNamedPipe.resources.dll => 0xb5c9cb8a => 422
	i32 3056245963, ; 685: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 315
	i32 3057625584, ; 686: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 306
	i32 3059408633, ; 687: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 688: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 689: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 198
	i32 3075834255, ; 690: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 691: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 353
	i32 3084678329, ; 692: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 224
	i32 3090735792, ; 693: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3093090641, ; 694: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 216
	i32 3099732863, ; 695: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 696: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3109243939, ; 697: Microsoft.Extensions.Logging.Configuration => 0xb9534c23 => 209
	i32 3111772706, ; 698: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 699: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3123044289, ; 700: System.ServiceModel.Duplex => 0xba25dfc1 => 251
	i32 3123119788, ; 701: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xba2706ac => 223
	i32 3124832203, ; 702: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 703: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 704: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 705: GoogleGson.dll => 0xbba64c02 => 180
	i32 3155681111, ; 706: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 186
	i32 3157052235, ; 707: System.ServiceModel.Federation.dll => 0xbc2ccb4b => 246
	i32 3159123045, ; 708: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3159587175, ; 709: cs/System.ServiceModel.Http.resources.dll => 0xbc537967 => 388
	i32 3160747431, ; 710: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 711: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 307
	i32 3180757527, ; 712: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 194
	i32 3184440510, ; 713: pt-BR\System.ServiceModel.Federation.resources => 0xbdceb4be => 383
	i32 3192346100, ; 714: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 715: System.Web => 0xbe592c0c => 153
	i32 3195844289, ; 716: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 198
	i32 3204380047, ; 717: System.Data.dll => 0xbefef58f => 24
	i32 3206733304, ; 718: ja/System.ServiceModel.Federation.resources.dll => 0xbf22ddf8 => 380
	i32 3209718065, ; 719: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 720: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 284
	i32 3213246214, ; 721: System.Security.Permissions.dll => 0xbf863f06 => 245
	i32 3220365878, ; 722: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 723: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3241028803, ; 724: it\System.ServiceModel.NetNamedPipe.resources => 0xc12e2cc3 => 418
	i32 3251039220, ; 725: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 726: Xamarin.AndroidX.CardView => 0xc235e84d => 272
	i32 3265493905, ; 727: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 728: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 729: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3278332997, ; 730: zh-Hans/System.ServiceModel.Http.resources.dll => 0xc3676445 => 399
	i32 3279906254, ; 731: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 732: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 733: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3291006565, ; 734: fr\System.ServiceModel.NetTcp.resources => 0xc428c665 => 430
	i32 3299363146, ; 735: System.Text.Encoding => 0xc4a8494a => 135
	i32 3300764913, ; 736: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 195
	i32 3303498502, ; 737: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 738: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 348
	i32 3312457198, ; 739: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 219
	i32 3316684772, ; 740: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 741: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 282
	i32 3317144872, ; 742: System.Data => 0xc5b79d28 => 24
	i32 3340202976, ; 743: tr\System.ServiceModel.NetNamedPipe.resources => 0xc71773e0 => 424
	i32 3340431453, ; 744: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 270
	i32 3345895724, ; 745: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 311
	i32 3346324047, ; 746: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 308
	i32 3347128195, ; 747: tr\System.ServiceModel.Http.resources => 0xc7811f83 => 398
	i32 3357674450, ; 748: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 365
	i32 3358260929, ; 749: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 750: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 263
	i32 3362522851, ; 751: Xamarin.AndroidX.Core => 0xc86c06e3 => 279
	i32 3366347497, ; 752: Java.Interop => 0xc8a662e9 => 168
	i32 3374879918, ; 753: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 221
	i32 3374999561, ; 754: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 312
	i32 3381016424, ; 755: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 344
	i32 3390256484, ; 756: System.DirectoryServices.Protocols => 0xca133564 => 238
	i32 3395150330, ; 757: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3400209963, ; 758: pt-BR\System.Web.Services.Description.resources => 0xcaab162b => 461
	i32 3403906625, ; 759: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 760: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 283
	i32 3406727474, ; 761: zh-Hant\System.ServiceModel.Federation.resources => 0xcb0e8932 => 387
	i32 3421170118, ; 762: Microsoft.Extensions.Configuration.Binder => 0xcbeae9c6 => 202
	i32 3428513518, ; 763: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 203
	i32 3429136800, ; 764: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 765: netstandard => 0xcc7d82b4 => 167
	i32 3437750368, ; 766: System.Web.Services.Description.dll => 0xcce7e860 => 255
	i32 3441283291, ; 767: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 286
	i32 3441434180, ; 768: Microsoft.IdentityModel.Protocols.WsFederation.dll => 0xcd201e44 => 222
	i32 3445260447, ; 769: System.Formats.Tar => 0xcd5a809f => 39
	i32 3447165740, ; 770: ja/System.ServiceModel.Http.resources.dll => 0xcd77932c => 393
	i32 3450008806, ; 771: ja\System.ServiceModel.Federation.resources => 0xcda2f4e6 => 380
	i32 3452344032, ; 772: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 227
	i32 3453180490, ; 773: ko\System.ServiceModel.Primitives.resources => 0xcdd35a4a => 446
	i32 3463511458, ; 774: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 352
	i32 3471940407, ; 775: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3472012038, ; 776: BCrypt.Net-Next => 0xcef2b306 => 174
	i32 3476120550, ; 777: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 778: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 365
	i32 3482217531, ; 779: cs\System.ServiceModel.Http.resources => 0xcf8e6c3b => 388
	i32 3483609038, ; 780: es/System.ServiceModel.Http.resources.dll => 0xcfa3a7ce => 390
	i32 3484440000, ; 781: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 364
	i32 3485117614, ; 782: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 783: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 784: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 275
	i32 3509114376, ; 785: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 786: System.Security.dll => 0xd1854eb4 => 130
	i32 3521184679, ; 787: ru\System.ServiceModel.NetFramingBase.resources => 0xd1e103a7 => 410
	i32 3530912306, ; 788: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 789: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3548480101, ; 790: de/System.ServiceModel.Federation.resources.dll => 0xd3818265 => 376
	i32 3560100363, ; 791: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 792: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580333612, ; 793: zh-Hans\System.ServiceModel.Federation.resources => 0xd5678e2c => 386
	i32 3580758918, ; 794: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 372
	i32 3594787188, ; 795: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 241
	i32 3597029428, ; 796: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 261
	i32 3598340787, ; 797: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3605274052, ; 798: ja\System.ServiceModel.NetFramingBase.resources => 0xd6e41dc4 => 406
	i32 3605918211, ; 799: tr\System.ServiceModel.NetTcp.resources => 0xd6edf203 => 437
	i32 3608519521, ; 800: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 801: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 802: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 310
	i32 3632773286, ; 803: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xd887b8a6 => 425
	i32 3633644679, ; 804: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 265
	i32 3638233600, ; 805: ru\System.ServiceModel.Primitives.resources => 0xd8db0a00 => 449
	i32 3638274909, ; 806: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 807: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 296
	i32 3641688426, ; 808: it/System.ServiceModel.NetFramingBase.resources.dll => 0xd90fc16a => 405
	i32 3643446276, ; 809: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 369
	i32 3643854240, ; 810: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 307
	i32 3645089577, ; 811: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 812: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 201
	i32 3660523487, ; 813: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3661988251, ; 814: CoreWCF.Http.dll => 0xda45819b => 178
	i32 3664118907, ; 815: pt-BR\System.ServiceModel.Primitives.resources => 0xda66047b => 448
	i32 3672681054, ; 816: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3675849680, ; 817: cs\System.ServiceModel.NetTcp.resources => 0xdb1903d0 => 427
	i32 3676670898, ; 818: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 466
	i32 3679252191, ; 819: ru/System.Web.Services.Description.resources.dll => 0xdb4ceedf => 462
	i32 3680281109, ; 820: ko/System.ServiceModel.Http.resources.dll => 0xdb5ca215 => 394
	i32 3682565725, ; 821: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 271
	i32 3684561358, ; 822: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 275
	i32 3685718856, ; 823: pl/System.ServiceModel.Federation.resources.dll => 0xdbaf9b48 => 382
	i32 3689375977, ; 824: System.Drawing.Common => 0xdbe768e9 => 239
	i32 3690488555, ; 825: pl\System.ServiceModel.NetTcp.resources => 0xdbf862eb => 434
	i32 3697841164, ; 826: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 374
	i32 3700591436, ; 827: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 218
	i32 3700619798, ; 828: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 0xdc92fa16 => 409
	i32 3700866549, ; 829: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3701464072, ; 830: tr\System.Web.Services.Description.resources => 0xdc9fdc08 => 463
	i32 3705132617, ; 831: it\System.ServiceModel.NetFramingBase.resources => 0xdcd7d649 => 405
	i32 3705703420, ; 832: tr/System.Web.Services.Description.resources.dll => 0xdce08bfc => 463
	i32 3706696989, ; 833: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 280
	i32 3709546624, ; 834: ru\System.ServiceModel.NetTcp.resources => 0xdd1b3080 => 436
	i32 3716563718, ; 835: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 836: Xamarin.AndroidX.Annotation => 0xdda814c6 => 264
	i32 3724971120, ; 837: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 306
	i32 3732100267, ; 838: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 839: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3743991391, ; 840: de\System.ServiceModel.NetTcp.resources => 0xdf28c65f => 428
	i32 3748608112, ; 841: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 842: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3765508441, ; 843: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 212
	i32 3786282454, ; 844: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 273
	i32 3792276235, ; 845: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 846: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 227
	i32 3802395368, ; 847: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3807198597, ; 848: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 242
	i32 3813989096, ; 849: ko\System.ServiceModel.NetFramingBase.resources => 0xe354dae8 => 407
	i32 3815305727, ; 850: CoreWCF.Primitives => 0xe368f1ff => 179
	i32 3817368567, ; 851: CommunityToolkit.Maui.dll => 0xe3886bf7 => 175
	i32 3818324168, ; 852: es\System.Web.Services.Description.resources => 0xe39700c8 => 455
	i32 3819260425, ; 853: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 854: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 855: System.Numerics.dll => 0xe4436460 => 83
	i32 3831382396, ; 856: es\System.ServiceModel.Primitives.resources => 0xe45e417c => 442
	i32 3836405899, ; 857: cs/System.ServiceModel.Federation.resources.dll => 0xe4aae88b => 375
	i32 3841636137, ; 858: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 204
	i32 3844307129, ; 859: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 860: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 861: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 862: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 863: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876601672, ; 864: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0xe7103f48 => 412
	i32 3885497537, ; 865: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 866: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 321
	i32 3888767677, ; 867: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 311
	i32 3889960447, ; 868: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 373
	i32 3896106733, ; 869: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 870: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 279
	i32 3901907137, ; 871: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3917319797, ; 872: System.ServiceModel.Federation => 0xe97d8e75 => 246
	i32 3920810846, ; 873: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 874: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 324
	i32 3928044579, ; 875: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 876: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 877: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 309
	i32 3937699821, ; 878: pt-BR/System.Web.Services.Description.resources.dll => 0xeab487ed => 461
	i32 3945713374, ; 879: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3948719759, ; 880: es/System.ServiceModel.NetFramingBase.resources.dll => 0xeb5cae8f => 403
	i32 3953953790, ; 881: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 882: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 267
	i32 3959773229, ; 883: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 298
	i32 3971291721, ; 884: System.ServiceModel.NetNamedPipe.dll => 0xecb51a49 => 249
	i32 3980434154, ; 885: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 368
	i32 3982238525, ; 886: System.DirectoryServices.dll => 0xed5c233d => 237
	i32 3987592930, ; 887: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 350
	i32 4003436829, ; 888: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 889: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 266
	i32 4025784931, ; 890: System.Memory => 0xeff49a63 => 62
	i32 4043772061, ; 891: zh-Hans/System.ServiceModel.Federation.resources.dll => 0xf107109d => 386
	i32 4044155772, ; 892: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 233
	i32 4046471985, ; 893: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 229
	i32 4054681211, ; 894: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 895: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 896: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4075152723, ; 897: Microsoft.Extensions.Logging.Console => 0xf2e5e553 => 210
	i32 4078967171, ; 898: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 206
	i32 4081805871, ; 899: zh-Hans\System.ServiceModel.Primitives.resources => 0xf34b6a2f => 451
	i32 4094352644, ; 900: Microsoft.Maui.Essentials.dll => 0xf40add04 => 231
	i32 4099507663, ; 901: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 902: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 903: Xamarin.AndroidX.Emoji2 => 0xf479582c => 287
	i32 4101842092, ; 904: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 199
	i32 4102112229, ; 905: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 363
	i32 4118552436, ; 906: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 181
	i32 4120300202, ; 907: de/System.ServiceModel.NetNamedPipe.resources.dll => 0xf596caaa => 415
	i32 4125707920, ; 908: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 358
	i32 4126470640, ; 909: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 203
	i32 4127667938, ; 910: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4129780829, ; 911: ja/System.Web.Services.Description.resources.dll => 0xf627745d => 458
	i32 4130442656, ; 912: System.AppContext => 0xf6318da0 => 6
	i32 4137271634, ; 913: Microsoft.IdentityModel.Xml.dll => 0xf699c152 => 226
	i32 4147710070, ; 914: ko\System.ServiceModel.NetNamedPipe.resources => 0xf7390876 => 420
	i32 4147896353, ; 915: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 916: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 370
	i32 4151237749, ; 917: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 918: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 919: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 920: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 921: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 922: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 303
	i32 4182880526, ; 923: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 467
	i32 4185676441, ; 924: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 925: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 926: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4215017764, ; 927: zh-Hans/System.Web.Services.Description.resources.dll => 0xfb3c1124 => 464
	i32 4222345914, ; 928: ko/System.Web.Services.Description.resources.dll => 0xfbabe2ba => 459
	i32 4256097574, ; 929: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 280
	i32 4258378803, ; 930: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 302
	i32 4260525087, ; 931: System.Buffers => 0xfdf2741f => 7
	i32 4261754524, ; 932: ko\System.ServiceModel.Http.resources => 0xfe05369c => 394
	i32 4263231520, ; 933: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 240
	i32 4266814471, ; 934: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0xfe526c07 => 426
	i32 4271975918, ; 935: Microsoft.Maui.Controls.dll => 0xfea12dee => 228
	i32 4274623895, ; 936: CommunityToolkit.Mvvm.dll => 0xfec99597 => 177
	i32 4274976490, ; 937: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 938: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 303
	i32 4294763496 ; 939: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 289
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [940 x i32] [
	i32 68, ; 0
	i32 404, ; 1
	i32 67, ; 2
	i32 108, ; 3
	i32 429, ; 4
	i32 385, ; 5
	i32 299, ; 6
	i32 333, ; 7
	i32 48, ; 8
	i32 235, ; 9
	i32 80, ; 10
	i32 145, ; 11
	i32 251, ; 12
	i32 234, ; 13
	i32 30, ; 14
	i32 374, ; 15
	i32 124, ; 16
	i32 414, ; 17
	i32 232, ; 18
	i32 102, ; 19
	i32 185, ; 20
	i32 445, ; 21
	i32 317, ; 22
	i32 107, ; 23
	i32 317, ; 24
	i32 139, ; 25
	i32 337, ; 26
	i32 77, ; 27
	i32 124, ; 28
	i32 13, ; 29
	i32 273, ; 30
	i32 402, ; 31
	i32 132, ; 32
	i32 195, ; 33
	i32 319, ; 34
	i32 151, ; 35
	i32 391, ; 36
	i32 415, ; 37
	i32 371, ; 38
	i32 372, ; 39
	i32 18, ; 40
	i32 271, ; 41
	i32 381, ; 42
	i32 26, ; 43
	i32 293, ; 44
	i32 1, ; 45
	i32 449, ; 46
	i32 59, ; 47
	i32 42, ; 48
	i32 91, ; 49
	i32 416, ; 50
	i32 276, ; 51
	i32 147, ; 52
	i32 295, ; 53
	i32 292, ; 54
	i32 343, ; 55
	i32 444, ; 56
	i32 54, ; 57
	i32 399, ; 58
	i32 69, ; 59
	i32 182, ; 60
	i32 454, ; 61
	i32 395, ; 62
	i32 371, ; 63
	i32 262, ; 64
	i32 433, ; 65
	i32 83, ; 66
	i32 406, ; 67
	i32 356, ; 68
	i32 294, ; 69
	i32 355, ; 70
	i32 131, ; 71
	i32 427, ; 72
	i32 55, ; 73
	i32 149, ; 74
	i32 74, ; 75
	i32 145, ; 76
	i32 197, ; 77
	i32 62, ; 78
	i32 146, ; 79
	i32 469, ; 80
	i32 165, ; 81
	i32 194, ; 82
	i32 416, ; 83
	i32 367, ; 84
	i32 277, ; 85
	i32 12, ; 86
	i32 290, ; 87
	i32 125, ; 88
	i32 451, ; 89
	i32 152, ; 90
	i32 113, ; 91
	i32 166, ; 92
	i32 164, ; 93
	i32 292, ; 94
	i32 417, ; 95
	i32 218, ; 96
	i32 305, ; 97
	i32 189, ; 98
	i32 84, ; 99
	i32 354, ; 100
	i32 398, ; 101
	i32 348, ; 102
	i32 0, ; 103
	i32 215, ; 104
	i32 432, ; 105
	i32 428, ; 106
	i32 150, ; 107
	i32 337, ; 108
	i32 60, ; 109
	i32 445, ; 110
	i32 424, ; 111
	i32 207, ; 112
	i32 51, ; 113
	i32 103, ; 114
	i32 209, ; 115
	i32 114, ; 116
	i32 196, ; 117
	i32 40, ; 118
	i32 330, ; 119
	i32 456, ; 120
	i32 254, ; 121
	i32 385, ; 122
	i32 328, ; 123
	i32 120, ; 124
	i32 438, ; 125
	i32 362, ; 126
	i32 175, ; 127
	i32 52, ; 128
	i32 44, ; 129
	i32 119, ; 130
	i32 429, ; 131
	i32 282, ; 132
	i32 360, ; 133
	i32 450, ; 134
	i32 441, ; 135
	i32 288, ; 136
	i32 81, ; 137
	i32 253, ; 138
	i32 376, ; 139
	i32 136, ; 140
	i32 324, ; 141
	i32 269, ; 142
	i32 8, ; 143
	i32 73, ; 144
	i32 342, ; 145
	i32 155, ; 146
	i32 339, ; 147
	i32 210, ; 148
	i32 154, ; 149
	i32 92, ; 150
	i32 414, ; 151
	i32 334, ; 152
	i32 45, ; 153
	i32 357, ; 154
	i32 242, ; 155
	i32 345, ; 156
	i32 443, ; 157
	i32 338, ; 158
	i32 109, ; 159
	i32 214, ; 160
	i32 129, ; 161
	i32 460, ; 162
	i32 25, ; 163
	i32 259, ; 164
	i32 72, ; 165
	i32 55, ; 166
	i32 418, ; 167
	i32 46, ; 168
	i32 366, ; 169
	i32 213, ; 170
	i32 283, ; 171
	i32 22, ; 172
	i32 297, ; 173
	i32 239, ; 174
	i32 86, ; 175
	i32 400, ; 176
	i32 249, ; 177
	i32 43, ; 178
	i32 160, ; 179
	i32 71, ; 180
	i32 310, ; 181
	i32 448, ; 182
	i32 3, ; 183
	i32 42, ; 184
	i32 63, ; 185
	i32 16, ; 186
	i32 53, ; 187
	i32 369, ; 188
	i32 333, ; 189
	i32 105, ; 190
	i32 235, ; 191
	i32 338, ; 192
	i32 404, ; 193
	i32 331, ; 194
	i32 294, ; 195
	i32 247, ; 196
	i32 34, ; 197
	i32 158, ; 198
	i32 382, ; 199
	i32 85, ; 200
	i32 32, ; 201
	i32 12, ; 202
	i32 51, ; 203
	i32 56, ; 204
	i32 314, ; 205
	i32 36, ; 206
	i32 204, ; 207
	i32 344, ; 208
	i32 332, ; 209
	i32 401, ; 210
	i32 267, ; 211
	i32 35, ; 212
	i32 58, ; 213
	i32 397, ; 214
	i32 301, ; 215
	i32 257, ; 216
	i32 180, ; 217
	i32 247, ; 218
	i32 17, ; 219
	i32 237, ; 220
	i32 335, ; 221
	i32 431, ; 222
	i32 164, ; 223
	i32 206, ; 224
	i32 182, ; 225
	i32 384, ; 226
	i32 357, ; 227
	i32 300, ; 228
	i32 211, ; 229
	i32 397, ; 230
	i32 378, ; 231
	i32 400, ; 232
	i32 256, ; 233
	i32 327, ; 234
	i32 197, ; 235
	i32 173, ; 236
	i32 363, ; 237
	i32 153, ; 238
	i32 205, ; 239
	i32 323, ; 240
	i32 308, ; 241
	i32 361, ; 242
	i32 269, ; 243
	i32 199, ; 244
	i32 392, ; 245
	i32 250, ; 246
	i32 29, ; 247
	i32 177, ; 248
	i32 52, ; 249
	i32 233, ; 250
	i32 359, ; 251
	i32 189, ; 252
	i32 328, ; 253
	i32 5, ; 254
	i32 343, ; 255
	i32 318, ; 256
	i32 322, ; 257
	i32 274, ; 258
	i32 339, ; 259
	i32 266, ; 260
	i32 453, ; 261
	i32 285, ; 262
	i32 408, ; 263
	i32 395, ; 264
	i32 85, ; 265
	i32 430, ; 266
	i32 327, ; 267
	i32 61, ; 268
	i32 435, ; 269
	i32 112, ; 270
	i32 379, ; 271
	i32 423, ; 272
	i32 57, ; 273
	i32 464, ; 274
	i32 373, ; 275
	i32 314, ; 276
	i32 99, ; 277
	i32 456, ; 278
	i32 252, ; 279
	i32 226, ; 280
	i32 19, ; 281
	i32 278, ; 282
	i32 111, ; 283
	i32 101, ; 284
	i32 460, ; 285
	i32 102, ; 286
	i32 452, ; 287
	i32 341, ; 288
	i32 413, ; 289
	i32 104, ; 290
	i32 331, ; 291
	i32 71, ; 292
	i32 440, ; 293
	i32 255, ; 294
	i32 236, ; 295
	i32 38, ; 296
	i32 32, ; 297
	i32 103, ; 298
	i32 73, ; 299
	i32 240, ; 300
	i32 347, ; 301
	i32 9, ; 302
	i32 123, ; 303
	i32 46, ; 304
	i32 268, ; 305
	i32 215, ; 306
	i32 9, ; 307
	i32 43, ; 308
	i32 4, ; 309
	i32 315, ; 310
	i32 351, ; 311
	i32 409, ; 312
	i32 219, ; 313
	i32 346, ; 314
	i32 31, ; 315
	i32 138, ; 316
	i32 92, ; 317
	i32 93, ; 318
	i32 366, ; 319
	i32 248, ; 320
	i32 49, ; 321
	i32 141, ; 322
	i32 112, ; 323
	i32 140, ; 324
	i32 284, ; 325
	i32 250, ; 326
	i32 115, ; 327
	i32 332, ; 328
	i32 157, ; 329
	i32 466, ; 330
	i32 76, ; 331
	i32 79, ; 332
	i32 304, ; 333
	i32 37, ; 334
	i32 326, ; 335
	i32 223, ; 336
	i32 396, ; 337
	i32 440, ; 338
	i32 176, ; 339
	i32 288, ; 340
	i32 281, ; 341
	i32 64, ; 342
	i32 138, ; 343
	i32 15, ; 344
	i32 419, ; 345
	i32 116, ; 346
	i32 320, ; 347
	i32 329, ; 348
	i32 458, ; 349
	i32 423, ; 350
	i32 276, ; 351
	i32 48, ; 352
	i32 70, ; 353
	i32 80, ; 354
	i32 126, ; 355
	i32 94, ; 356
	i32 121, ; 357
	i32 336, ; 358
	i32 238, ; 359
	i32 26, ; 360
	i32 381, ; 361
	i32 297, ; 362
	i32 97, ; 363
	i32 28, ; 364
	i32 272, ; 365
	i32 364, ; 366
	i32 342, ; 367
	i32 149, ; 368
	i32 169, ; 369
	i32 379, ; 370
	i32 4, ; 371
	i32 98, ; 372
	i32 33, ; 373
	i32 93, ; 374
	i32 319, ; 375
	i32 207, ; 376
	i32 441, ; 377
	i32 21, ; 378
	i32 41, ; 379
	i32 170, ; 380
	i32 358, ; 381
	i32 411, ; 382
	i32 290, ; 383
	i32 181, ; 384
	i32 384, ; 385
	i32 350, ; 386
	i32 217, ; 387
	i32 196, ; 388
	i32 465, ; 389
	i32 304, ; 390
	i32 335, ; 391
	i32 329, ; 392
	i32 309, ; 393
	i32 2, ; 394
	i32 193, ; 395
	i32 185, ; 396
	i32 134, ; 397
	i32 111, ; 398
	i32 421, ; 399
	i32 468, ; 400
	i32 208, ; 401
	i32 256, ; 402
	i32 396, ; 403
	i32 370, ; 404
	i32 259, ; 405
	i32 437, ; 406
	i32 367, ; 407
	i32 58, ; 408
	i32 420, ; 409
	i32 95, ; 410
	i32 349, ; 411
	i32 39, ; 412
	i32 450, ; 413
	i32 270, ; 414
	i32 468, ; 415
	i32 25, ; 416
	i32 94, ; 417
	i32 89, ; 418
	i32 99, ; 419
	i32 10, ; 420
	i32 179, ; 421
	i32 252, ; 422
	i32 191, ; 423
	i32 443, ; 424
	i32 87, ; 425
	i32 403, ; 426
	i32 187, ; 427
	i32 378, ; 428
	i32 100, ; 429
	i32 454, ; 430
	i32 433, ; 431
	i32 316, ; 432
	i32 200, ; 433
	i32 410, ; 434
	i32 465, ; 435
	i32 336, ; 436
	i32 261, ; 437
	i32 224, ; 438
	i32 432, ; 439
	i32 346, ; 440
	i32 7, ; 441
	i32 236, ; 442
	i32 301, ; 443
	i32 341, ; 444
	i32 258, ; 445
	i32 88, ; 446
	i32 202, ; 447
	i32 296, ; 448
	i32 154, ; 449
	i32 345, ; 450
	i32 33, ; 451
	i32 191, ; 452
	i32 216, ; 453
	i32 412, ; 454
	i32 116, ; 455
	i32 244, ; 456
	i32 248, ; 457
	i32 82, ; 458
	i32 254, ; 459
	i32 225, ; 460
	i32 389, ; 461
	i32 457, ; 462
	i32 417, ; 463
	i32 20, ; 464
	i32 413, ; 465
	i32 11, ; 466
	i32 162, ; 467
	i32 3, ; 468
	i32 230, ; 469
	i32 353, ; 470
	i32 213, ; 471
	i32 0, ; 472
	i32 208, ; 473
	i32 84, ; 474
	i32 340, ; 475
	i32 64, ; 476
	i32 212, ; 477
	i32 355, ; 478
	i32 323, ; 479
	i32 143, ; 480
	i32 446, ; 481
	i32 439, ; 482
	i32 401, ; 483
	i32 190, ; 484
	i32 305, ; 485
	i32 157, ; 486
	i32 221, ; 487
	i32 41, ; 488
	i32 117, ; 489
	i32 201, ; 490
	i32 260, ; 491
	i32 349, ; 492
	i32 312, ; 493
	i32 186, ; 494
	i32 452, ; 495
	i32 131, ; 496
	i32 408, ; 497
	i32 75, ; 498
	i32 66, ; 499
	i32 359, ; 500
	i32 172, ; 501
	i32 375, ; 502
	i32 455, ; 503
	i32 264, ; 504
	i32 143, ; 505
	i32 435, ; 506
	i32 106, ; 507
	i32 151, ; 508
	i32 225, ; 509
	i32 70, ; 510
	i32 459, ; 511
	i32 156, ; 512
	i32 220, ; 513
	i32 200, ; 514
	i32 121, ; 515
	i32 127, ; 516
	i32 390, ; 517
	i32 354, ; 518
	i32 152, ; 519
	i32 287, ; 520
	i32 467, ; 521
	i32 141, ; 522
	i32 274, ; 523
	i32 351, ; 524
	i32 20, ; 525
	i32 14, ; 526
	i32 135, ; 527
	i32 434, ; 528
	i32 183, ; 529
	i32 75, ; 530
	i32 59, ; 531
	i32 222, ; 532
	i32 277, ; 533
	i32 391, ; 534
	i32 167, ; 535
	i32 168, ; 536
	i32 173, ; 537
	i32 228, ; 538
	i32 453, ; 539
	i32 15, ; 540
	i32 74, ; 541
	i32 6, ; 542
	i32 422, ; 543
	i32 23, ; 544
	i32 402, ; 545
	i32 299, ; 546
	i32 258, ; 547
	i32 184, ; 548
	i32 91, ; 549
	i32 377, ; 550
	i32 352, ; 551
	i32 457, ; 552
	i32 1, ; 553
	i32 136, ; 554
	i32 411, ; 555
	i32 407, ; 556
	i32 300, ; 557
	i32 322, ; 558
	i32 134, ; 559
	i32 69, ; 560
	i32 146, ; 561
	i32 444, ; 562
	i32 205, ; 563
	i32 361, ; 564
	i32 188, ; 565
	i32 178, ; 566
	i32 340, ; 567
	i32 291, ; 568
	i32 211, ; 569
	i32 88, ; 570
	i32 96, ; 571
	i32 281, ; 572
	i32 286, ; 573
	i32 356, ; 574
	i32 31, ; 575
	i32 45, ; 576
	i32 295, ; 577
	i32 192, ; 578
	i32 220, ; 579
	i32 241, ; 580
	i32 436, ; 581
	i32 377, ; 582
	i32 243, ; 583
	i32 260, ; 584
	i32 109, ; 585
	i32 158, ; 586
	i32 35, ; 587
	i32 22, ; 588
	i32 114, ; 589
	i32 57, ; 590
	i32 320, ; 591
	i32 462, ; 592
	i32 387, ; 593
	i32 447, ; 594
	i32 144, ; 595
	i32 118, ; 596
	i32 120, ; 597
	i32 110, ; 598
	i32 383, ; 599
	i32 262, ; 600
	i32 139, ; 601
	i32 184, ; 602
	i32 268, ; 603
	i32 217, ; 604
	i32 431, ; 605
	i32 54, ; 606
	i32 438, ; 607
	i32 105, ; 608
	i32 362, ; 609
	i32 253, ; 610
	i32 439, ; 611
	i32 229, ; 612
	i32 230, ; 613
	i32 133, ; 614
	i32 334, ; 615
	i32 325, ; 616
	i32 313, ; 617
	i32 421, ; 618
	i32 368, ; 619
	i32 291, ; 620
	i32 234, ; 621
	i32 232, ; 622
	i32 159, ; 623
	i32 347, ; 624
	i32 278, ; 625
	i32 163, ; 626
	i32 132, ; 627
	i32 313, ; 628
	i32 425, ; 629
	i32 161, ; 630
	i32 360, ; 631
	i32 302, ; 632
	i32 245, ; 633
	i32 140, ; 634
	i32 193, ; 635
	i32 325, ; 636
	i32 321, ; 637
	i32 169, ; 638
	i32 231, ; 639
	i32 243, ; 640
	i32 176, ; 641
	i32 263, ; 642
	i32 330, ; 643
	i32 40, ; 644
	i32 289, ; 645
	i32 81, ; 646
	i32 392, ; 647
	i32 56, ; 648
	i32 37, ; 649
	i32 97, ; 650
	i32 166, ; 651
	i32 172, ; 652
	i32 326, ; 653
	i32 426, ; 654
	i32 82, ; 655
	i32 265, ; 656
	i32 244, ; 657
	i32 187, ; 658
	i32 98, ; 659
	i32 30, ; 660
	i32 159, ; 661
	i32 447, ; 662
	i32 389, ; 663
	i32 18, ; 664
	i32 127, ; 665
	i32 174, ; 666
	i32 214, ; 667
	i32 119, ; 668
	i32 188, ; 669
	i32 285, ; 670
	i32 419, ; 671
	i32 316, ; 672
	i32 257, ; 673
	i32 190, ; 674
	i32 298, ; 675
	i32 318, ; 676
	i32 393, ; 677
	i32 165, ; 678
	i32 293, ; 679
	i32 183, ; 680
	i32 192, ; 681
	i32 469, ; 682
	i32 442, ; 683
	i32 422, ; 684
	i32 315, ; 685
	i32 306, ; 686
	i32 170, ; 687
	i32 16, ; 688
	i32 198, ; 689
	i32 144, ; 690
	i32 353, ; 691
	i32 224, ; 692
	i32 125, ; 693
	i32 216, ; 694
	i32 118, ; 695
	i32 38, ; 696
	i32 209, ; 697
	i32 115, ; 698
	i32 47, ; 699
	i32 251, ; 700
	i32 223, ; 701
	i32 142, ; 702
	i32 117, ; 703
	i32 34, ; 704
	i32 180, ; 705
	i32 186, ; 706
	i32 246, ; 707
	i32 95, ; 708
	i32 388, ; 709
	i32 53, ; 710
	i32 307, ; 711
	i32 194, ; 712
	i32 383, ; 713
	i32 129, ; 714
	i32 153, ; 715
	i32 198, ; 716
	i32 24, ; 717
	i32 380, ; 718
	i32 161, ; 719
	i32 284, ; 720
	i32 245, ; 721
	i32 148, ; 722
	i32 104, ; 723
	i32 418, ; 724
	i32 89, ; 725
	i32 272, ; 726
	i32 60, ; 727
	i32 142, ; 728
	i32 100, ; 729
	i32 399, ; 730
	i32 5, ; 731
	i32 13, ; 732
	i32 122, ; 733
	i32 430, ; 734
	i32 135, ; 735
	i32 195, ; 736
	i32 28, ; 737
	i32 348, ; 738
	i32 219, ; 739
	i32 72, ; 740
	i32 282, ; 741
	i32 24, ; 742
	i32 424, ; 743
	i32 270, ; 744
	i32 311, ; 745
	i32 308, ; 746
	i32 398, ; 747
	i32 365, ; 748
	i32 137, ; 749
	i32 263, ; 750
	i32 279, ; 751
	i32 168, ; 752
	i32 221, ; 753
	i32 312, ; 754
	i32 344, ; 755
	i32 238, ; 756
	i32 101, ; 757
	i32 461, ; 758
	i32 123, ; 759
	i32 283, ; 760
	i32 387, ; 761
	i32 202, ; 762
	i32 203, ; 763
	i32 163, ; 764
	i32 167, ; 765
	i32 255, ; 766
	i32 286, ; 767
	i32 222, ; 768
	i32 39, ; 769
	i32 393, ; 770
	i32 380, ; 771
	i32 227, ; 772
	i32 446, ; 773
	i32 352, ; 774
	i32 17, ; 775
	i32 174, ; 776
	i32 171, ; 777
	i32 365, ; 778
	i32 388, ; 779
	i32 390, ; 780
	i32 364, ; 781
	i32 137, ; 782
	i32 150, ; 783
	i32 275, ; 784
	i32 155, ; 785
	i32 130, ; 786
	i32 410, ; 787
	i32 19, ; 788
	i32 65, ; 789
	i32 376, ; 790
	i32 147, ; 791
	i32 47, ; 792
	i32 386, ; 793
	i32 372, ; 794
	i32 241, ; 795
	i32 261, ; 796
	i32 79, ; 797
	i32 406, ; 798
	i32 437, ; 799
	i32 61, ; 800
	i32 106, ; 801
	i32 310, ; 802
	i32 425, ; 803
	i32 265, ; 804
	i32 449, ; 805
	i32 49, ; 806
	i32 296, ; 807
	i32 405, ; 808
	i32 369, ; 809
	i32 307, ; 810
	i32 14, ; 811
	i32 201, ; 812
	i32 68, ; 813
	i32 178, ; 814
	i32 448, ; 815
	i32 171, ; 816
	i32 427, ; 817
	i32 466, ; 818
	i32 462, ; 819
	i32 394, ; 820
	i32 271, ; 821
	i32 275, ; 822
	i32 382, ; 823
	i32 239, ; 824
	i32 434, ; 825
	i32 374, ; 826
	i32 218, ; 827
	i32 409, ; 828
	i32 78, ; 829
	i32 463, ; 830
	i32 405, ; 831
	i32 463, ; 832
	i32 280, ; 833
	i32 436, ; 834
	i32 108, ; 835
	i32 264, ; 836
	i32 306, ; 837
	i32 67, ; 838
	i32 63, ; 839
	i32 428, ; 840
	i32 27, ; 841
	i32 160, ; 842
	i32 212, ; 843
	i32 273, ; 844
	i32 10, ; 845
	i32 227, ; 846
	i32 11, ; 847
	i32 242, ; 848
	i32 407, ; 849
	i32 179, ; 850
	i32 175, ; 851
	i32 455, ; 852
	i32 78, ; 853
	i32 126, ; 854
	i32 83, ; 855
	i32 442, ; 856
	i32 375, ; 857
	i32 204, ; 858
	i32 66, ; 859
	i32 107, ; 860
	i32 65, ; 861
	i32 128, ; 862
	i32 122, ; 863
	i32 412, ; 864
	i32 77, ; 865
	i32 321, ; 866
	i32 311, ; 867
	i32 373, ; 868
	i32 8, ; 869
	i32 279, ; 870
	i32 2, ; 871
	i32 246, ; 872
	i32 44, ; 873
	i32 324, ; 874
	i32 156, ; 875
	i32 128, ; 876
	i32 309, ; 877
	i32 461, ; 878
	i32 23, ; 879
	i32 403, ; 880
	i32 133, ; 881
	i32 267, ; 882
	i32 298, ; 883
	i32 249, ; 884
	i32 368, ; 885
	i32 237, ; 886
	i32 350, ; 887
	i32 29, ; 888
	i32 266, ; 889
	i32 62, ; 890
	i32 386, ; 891
	i32 233, ; 892
	i32 229, ; 893
	i32 90, ; 894
	i32 87, ; 895
	i32 148, ; 896
	i32 210, ; 897
	i32 206, ; 898
	i32 451, ; 899
	i32 231, ; 900
	i32 36, ; 901
	i32 86, ; 902
	i32 287, ; 903
	i32 199, ; 904
	i32 363, ; 905
	i32 181, ; 906
	i32 415, ; 907
	i32 358, ; 908
	i32 203, ; 909
	i32 50, ; 910
	i32 458, ; 911
	i32 6, ; 912
	i32 226, ; 913
	i32 420, ; 914
	i32 90, ; 915
	i32 370, ; 916
	i32 21, ; 917
	i32 162, ; 918
	i32 96, ; 919
	i32 50, ; 920
	i32 113, ; 921
	i32 303, ; 922
	i32 467, ; 923
	i32 130, ; 924
	i32 76, ; 925
	i32 27, ; 926
	i32 464, ; 927
	i32 459, ; 928
	i32 280, ; 929
	i32 302, ; 930
	i32 7, ; 931
	i32 394, ; 932
	i32 240, ; 933
	i32 426, ; 934
	i32 228, ; 935
	i32 177, ; 936
	i32 110, ; 937
	i32 303, ; 938
	i32 289 ; 939
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

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
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
