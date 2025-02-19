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

@assembly_image_cache = dso_local local_unnamed_addr global [321 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [642 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 262
	i32 3921707, ; 1: fr\System.ServiceModel.NetFramingBase.resources => 0x3bd72b => 63
	i32 10166715, ; 2: System.Net.NameResolution.dll => 0x9b21bb => 261
	i32 17613696, ; 3: es\System.ServiceModel.NetTcp.resources => 0x10cc380 => 88
	i32 28923068, ; 4: tr\System.ServiceModel.Federation.resources => 0x1b954bc => 44
	i32 39109920, ; 5: Newtonsoft.Json.dll => 0x254c520 => 179
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 270
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 306
	i32 53472207, ; 8: System.ServiceModel.Duplex.dll => 0x32febcf => 192
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 245
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 294
	i32 71084978, ; 12: cs\System.ServiceModel.NetNamedPipe.resources => 0x43cabb2 => 73
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 177
	i32 83768722, ; 14: Microsoft.AspNetCore.Cryptography.Internal => 0x4fe3592 => 137
	i32 85813540, ; 15: ja/System.ServiceModel.Primitives.resources.dll => 0x51d6924 => 104
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 284
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 302
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 267
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 294
	i32 165246403, ; 20: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 203
	i32 166617380, ; 21: de/System.ServiceModel.NetFramingBase.resources.dll => 0x9ee6124 => 61
	i32 176714968, ; 22: Microsoft.AspNetCore.WebUtilities.dll => 0xa8874d8 => 147
	i32 182336117, ; 23: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 221
	i32 192921502, ; 24: fr\System.ServiceModel.Http.resources => 0xb7fbf9e => 50
	i32 193868653, ; 25: de\System.ServiceModel.NetNamedPipe.resources => 0xb8e336d => 74
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 240
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 201
	i32 209580789, ; 30: ko\System.ServiceModel.Federation.resources => 0xc7df2f5 => 40
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 243
	i32 230752869, ; 32: Microsoft.CSharp.dll => 0xdc10265 => 228
	i32 230884747, ; 33: ru/System.ServiceModel.Primitives.resources.dll => 0xdc3058b => 108
	i32 246610117, ; 34: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 279
	i32 247181326, ; 35: es/System.ServiceModel.NetNamedPipe.resources.dll => 0xebbb00e => 75
	i32 276479776, ; 36: System.Threading.Timer.dll => 0x107abf20 => 308
	i32 280992041, ; 37: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 285314186, ; 38: it\System.ServiceModel.Primitives.resources => 0x11018c8a => 103
	i32 296834212, ; 39: zh-Hans\System.ServiceModel.Http.resources => 0x11b154a4 => 58
	i32 300686228, ; 40: Microsoft.AspNetCore.Authentication.Abstractions.dll => 0x11ec1b94 => 134
	i32 314903445, ; 41: de/System.Web.Services.Description.resources.dll => 0x12c50b95 => 113
	i32 316078633, ; 42: pl\System.ServiceModel.Http.resources => 0x12d6fa29 => 54
	i32 317674968, ; 43: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 198
	i32 320721186, ; 45: ko/System.ServiceModel.NetTcp.resources.dll => 0x131dd122 => 92
	i32 324831035, ; 46: ja/System.ServiceModel.NetFramingBase.resources.dll => 0x135c873b => 65
	i32 336156722, ; 47: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 210
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 361065771, ; 50: cs/System.ServiceModel.NetTcp.resources.dll => 0x15856d2b => 86
	i32 367780167, ; 51: System.IO.Pipes => 0x15ebe147 => 254
	i32 379916513, ; 52: System.Threading.Thread.dll => 0x16a510e1 => 306
	i32 382771021, ; 53: Microsoft.Bcl.Memory.dll => 0x16d09f4d => 149
	i32 385762202, ; 54: System.Memory.dll => 0x16fe439a => 258
	i32 392610295, ; 55: System.Threading.ThreadPool.dll => 0x1766c1f7 => 307
	i32 395744057, ; 56: _Microsoft.Android.Resource.Designer => 0x17969339 => 125
	i32 417611542, ; 57: Microsoft.AspNetCore.WebSockets.dll => 0x18e43f16 => 146
	i32 420389340, ; 58: es\System.ServiceModel.NetNamedPipe.resources => 0x190ea1dc => 75
	i32 435591531, ; 59: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 60: System.Collections => 0x1a61054f => 236
	i32 450948140, ; 61: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 209
	i32 451504562, ; 62: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 295
	i32 456096849, ; 63: zh-Hans/System.ServiceModel.Primitives.resources.dll => 0x1b2f7c51 => 110
	i32 459347974, ; 64: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 288
	i32 465846621, ; 65: mscorlib => 0x1bc4415d => 315
	i32 469710990, ; 66: System.dll => 0x1bff388e => 314
	i32 482736244, ; 67: fr/System.ServiceModel.NetNamedPipe.resources.dll => 0x1cc5f874 => 76
	i32 485463106, ; 68: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 165
	i32 490002678, ; 69: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 0x1d34d8f6 => 141
	i32 498788369, ; 70: System.ObjectModel => 0x1dbae811 => 272
	i32 500358224, ; 71: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 500534657, ; 72: tr/System.ServiceModel.Http.resources.dll => 0x1dd58d81 => 57
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 509950334, ; 74: LiverLife.dll => 0x1e65397e => 227
	i32 513247710, ; 75: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 162
	i32 520748051, ; 76: ja\System.ServiceModel.NetTcp.resources => 0x1f09fc13 => 91
	i32 525250519, ; 77: de/System.ServiceModel.NetTcp.resources.dll => 0x1f4eafd7 => 87
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 256
	i32 531014212, ; 79: ja\System.ServiceModel.Primitives.resources => 0x1fa6a244 => 104
	i32 535122277, ; 80: tr/System.ServiceModel.NetNamedPipe.resources.dll => 0x1fe55165 => 83
	i32 539058512, ; 81: Microsoft.Extensions.Logging => 0x20216150 => 158
	i32 545304856, ; 82: System.Runtime.Extensions => 0x2080b118 => 282
	i32 546455878, ; 83: System.Runtime.Serialization.Xml => 0x20924146 => 289
	i32 548916678, ; 84: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 148
	i32 558692097, ; 85: fr\System.Web.Services.Description.resources => 0x214cf701 => 115
	i32 562488221, ; 86: System.ServiceModel => 0x2186e39d => 195
	i32 569334933, ; 87: tr/System.ServiceModel.Federation.resources.dll => 0x21ef5c95 => 44
	i32 580569086, ; 88: zh-Hans\System.ServiceModel.NetTcp.resources => 0x229ac7fe => 97
	i32 592146354, ; 89: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 90: CommunityToolkit.Maui => 0x239cf51b => 128
	i32 613668793, ; 91: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 293
	i32 625044127, ; 92: es/System.ServiceModel.NetTcp.resources.dll => 0x25416a9f => 88
	i32 627609679, ; 93: Xamarin.AndroidX.CustomView => 0x2568904f => 207
	i32 627931235, ; 94: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 634015394, ; 95: tr\System.ServiceModel.Primitives.resources => 0x25ca4ea2 => 109
	i32 635078218, ; 96: de\System.ServiceModel.Primitives.resources => 0x25da864a => 100
	i32 643983915, ; 97: System.ServiceModel.Security => 0x26626a2b => 194
	i32 648503046, ; 98: de\System.ServiceModel.Federation.resources => 0x26a75f06 => 35
	i32 662205335, ; 99: System.Text.Encodings.Web.dll => 0x27787397 => 299
	i32 672442732, ; 100: System.Collections.Concurrent => 0x2814a96c => 232
	i32 683518922, ; 101: System.Net.Security => 0x28bdabca => 265
	i32 688181140, ; 102: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 103: System.Xml.Linq.dll => 0x29293ff5 => 310
	i32 700069175, ; 104: cs/System.ServiceModel.NetNamedPipe.resources.dll => 0x29ba3537 => 73
	i32 706645707, ; 105: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709152836, ; 106: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 184
	i32 709557578, ; 107: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 710880553, ; 108: fr/System.ServiceModel.Primitives.resources.dll => 0x2a5f2d29 => 102
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 285
	i32 741543376, ; 110: pl\System.Web.Services.Description.resources => 0x2c330dd0 => 119
	i32 759454413, ; 111: System.Net.Requests => 0x2d445acd => 264
	i32 762598435, ; 112: System.IO.Pipes.dll => 0x2d745423 => 254
	i32 767064363, ; 113: it/System.ServiceModel.NetNamedPipe.resources.dll => 0x2db8792b => 77
	i32 775507847, ; 114: System.IO.Compression => 0x2e394f87 => 252
	i32 777317022, ; 115: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 116: Microsoft.Extensions.Options => 0x2f0980eb => 161
	i32 804715423, ; 117: System.Data.Common => 0x2ff6fb9f => 242
	i32 823281589, ; 118: System.Private.Uri.dll => 0x311247b5 => 274
	i32 823444754, ; 119: zh-Hant\System.ServiceModel.Http.resources => 0x3114c512 => 59
	i32 828535308, ; 120: System.ServiceModel.NetNamedPipe => 0x3162720c => 190
	i32 830298997, ; 121: System.IO.Compression.Brotli => 0x317d5b75 => 251
	i32 852919649, ; 122: pt-BR/System.ServiceModel.Primitives.resources.dll => 0x32d68561 => 107
	i32 904024072, ; 123: System.ComponentModel.Primitives.dll => 0x35e25008 => 238
	i32 911108515, ; 124: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 253
	i32 926902833, ; 125: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 955402788, ; 126: Newtonsoft.Json => 0x38f24a24 => 179
	i32 959135198, ; 127: fr/System.ServiceModel.NetFramingBase.resources.dll => 0x392b3dde => 63
	i32 967690846, ; 128: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 210
	i32 972805734, ; 129: System.ServiceModel.Http => 0x39fbd666 => 188
	i32 975236339, ; 130: System.Diagnostics.Tracing => 0x3a20ecf3 => 247
	i32 975874589, ; 131: System.Xml.XDocument => 0x3a2aaa1d => 312
	i32 980852653, ; 132: pl\System.ServiceModel.Federation.resources => 0x3a769fad => 41
	i32 986514023, ; 133: System.Private.DataContractSerialization.dll => 0x3acd0267 => 273
	i32 992768348, ; 134: System.Collections.dll => 0x3b2c715c => 236
	i32 1012816738, ; 135: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 220
	i32 1019214401, ; 136: System.Drawing => 0x3cbffa41 => 249
	i32 1028951442, ; 137: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 155
	i32 1029334545, ; 138: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1033084130, ; 139: cs/System.ServiceModel.NetFramingBase.resources.dll => 0x3d939ce2 => 60
	i32 1035644815, ; 140: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 199
	i32 1036536393, ; 141: System.Drawing.Primitives.dll => 0x3dc84a49 => 248
	i32 1044663988, ; 142: System.Linq.Expressions.dll => 0x3e444eb4 => 255
	i32 1047490775, ; 143: ru/System.ServiceModel.Http.resources.dll => 0x3e6f70d7 => 56
	i32 1052210849, ; 144: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 212
	i32 1066465193, ; 145: WCF => 0x3f90f7a9 => 197
	i32 1081414353, ; 146: System.ServiceModel.Http.dll => 0x407512d1 => 188
	i32 1082857460, ; 147: System.ComponentModel.TypeConverter => 0x408b17f4 => 239
	i32 1083376331, ; 148: System.DirectoryServices => 0x409302cb => 181
	i32 1084122840, ; 149: Xamarin.Kotlin.StdLib => 0x409e66d8 => 225
	i32 1095172895, ; 150: it/System.ServiceModel.NetTcp.resources.dll => 0x4147031f => 90
	i32 1098259244, ; 151: System => 0x41761b2c => 314
	i32 1110309514, ; 152: Microsoft.Extensions.Hosting.Abstractions => 0x422dfa8a => 157
	i32 1112354281, ; 153: Microsoft.AspNetCore.Authentication.Abstractions => 0x424d2de9 => 134
	i32 1117830343, ; 154: ru/System.ServiceModel.Federation.resources.dll => 0x42a0bcc7 => 43
	i32 1118262833, ; 155: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1131748925, ; 156: ru\System.ServiceModel.Http.resources => 0x43751e3d => 56
	i32 1137475283, ; 157: fr\System.ServiceModel.Federation.resources => 0x43cc7ed3 => 37
	i32 1142243660, ; 158: zh-Hant/System.ServiceModel.Http.resources.dll => 0x4415414c => 59
	i32 1162065116, ; 159: Microsoft.Bcl.Memory => 0x4543b4dc => 149
	i32 1163987173, ; 160: Appwrite.dll => 0x456108e5 => 126
	i32 1168523401, ; 161: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1173126369, ; 162: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 156
	i32 1178241025, ; 163: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 217
	i32 1203215381, ; 164: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1204575371, ; 165: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 151
	i32 1205230995, ; 166: it/System.ServiceModel.Http.resources.dll => 0x47d65d93 => 51
	i32 1207862497, ; 167: System.ServiceModel.NetTcp.dll => 0x47fe84e1 => 191
	i32 1214827643, ; 168: CommunityToolkit.Mvvm => 0x4868cc7b => 130
	i32 1220193633, ; 169: Microsoft.Net.Http.Headers => 0x48baad61 => 178
	i32 1234928153, ; 170: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1236289705, ; 171: Microsoft.AspNetCore.Hosting.Server.Abstractions => 0x49b048a9 => 141
	i32 1253011324, ; 172: Microsoft.Win32.Registry => 0x4aaf6f7c => 230
	i32 1260983243, ; 173: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1280076198, ; 174: cs\System.Web.Services.Description.resources => 0x4c4c69a6 => 112
	i32 1293217323, ; 175: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 208
	i32 1296184643, ; 176: pl\System.ServiceModel.NetFramingBase.resources => 0x4d423543 => 67
	i32 1307310235, ; 177: pl/System.ServiceModel.Http.resources.dll => 0x4debf89b => 54
	i32 1309188875, ; 178: System.Private.DataContractSerialization => 0x4e08a30b => 273
	i32 1314523075, ; 179: fr/System.ServiceModel.NetTcp.resources.dll => 0x4e5a07c3 => 89
	i32 1324164729, ; 180: System.Linq => 0x4eed2679 => 257
	i32 1324212547, ; 181: pt-BR\System.ServiceModel.NetTcp.resources => 0x4eede143 => 94
	i32 1360479413, ; 182: it\System.ServiceModel.Federation.resources => 0x511744b5 => 38
	i32 1361525254, ; 183: ru\System.ServiceModel.NetNamedPipe.resources => 0x51273a06 => 82
	i32 1366316721, ; 184: zh-Hans\System.Web.Services.Description.resources => 0x517056b1 => 123
	i32 1373134921, ; 185: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 186: Xamarin.AndroidX.SavedState => 0x52114ed3 => 220
	i32 1379779777, ; 187: System.Resources.ResourceManager => 0x523dc4c1 => 281
	i32 1385448968, ; 188: fr/System.Web.Services.Description.resources.dll => 0x52944608 => 115
	i32 1394641819, ; 189: System.ServiceModel.Primitives => 0x53208b9b => 193
	i32 1397695725, ; 190: Microsoft.IdentityModel.Xml => 0x534f24ed => 172
	i32 1406073936, ; 191: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 204
	i32 1408764838, ; 192: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 287
	i32 1415600846, ; 193: pl/System.Web.Services.Description.resources.dll => 0x54605ace => 119
	i32 1423907884, ; 194: zh-Hant/System.ServiceModel.Primitives.resources.dll => 0x54df1c2c => 111
	i32 1430672901, ; 195: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1430830959, ; 196: zh-Hant\System.ServiceModel.NetFramingBase.resources => 0x5548bf6f => 72
	i32 1442844750, ; 197: cs/System.ServiceModel.Primitives.resources.dll => 0x5600104e => 99
	i32 1446764972, ; 198: System.Web.Services.Description => 0x563be1ac => 196
	i32 1450960925, ; 199: Parse => 0x567be81d => 180
	i32 1452070440, ; 200: System.Formats.Asn1.dll => 0x568cd628 => 250
	i32 1457743152, ; 201: System.Runtime.Extensions.dll => 0x56e36530 => 282
	i32 1458022317, ; 202: System.Net.Security.dll => 0x56e7a7ad => 265
	i32 1461004990, ; 203: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 204: System.Collections.Immutable.dll => 0x5718a9ef => 233
	i32 1462112819, ; 205: System.IO.Compression.dll => 0x57261233 => 252
	i32 1469204771, ; 206: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 200
	i32 1470490898, ; 207: Microsoft.Extensions.Primitives => 0x57a5e912 => 162
	i32 1479771757, ; 208: System.Collections.Immutable => 0x5833866d => 233
	i32 1480492111, ; 209: System.IO.Compression.Brotli.dll => 0x583e844f => 251
	i32 1487239319, ; 210: Microsoft.Win32.Primitives => 0x58a57897 => 229
	i32 1493001747, ; 211: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1496356098, ; 212: pt-BR\System.ServiceModel.NetFramingBase.resources => 0x59309502 => 68
	i32 1514721132, ; 213: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 214: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 301
	i32 1551623176, ; 215: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1552155078, ; 216: System.ServiceModel.NetFramingBase => 0x5c8401c6 => 189
	i32 1580037396, ; 217: System.Threading.Overlapped => 0x5e2d7514 => 303
	i32 1590860858, ; 218: System.ServiceModel.NetTcp => 0x5ed29c3a => 191
	i32 1618516317, ; 219: System.Net.WebSockets.Client.dll => 0x6078995d => 269
	i32 1622152042, ; 220: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 214
	i32 1624863272, ; 221: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 223
	i32 1626255391, ; 222: Microsoft.IdentityModel.Protocols.WsTrust => 0x60eeb01f => 169
	i32 1628529952, ; 223: pt-BR/System.ServiceModel.Http.resources.dll => 0x61116520 => 55
	i32 1629788937, ; 224: cs\System.ServiceModel.Primitives.resources => 0x61249b09 => 99
	i32 1634654947, ; 225: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 129
	i32 1636350590, ; 226: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 206
	i32 1639515021, ; 227: System.Net.Http.dll => 0x61b9038d => 259
	i32 1639986890, ; 228: System.Text.RegularExpressions => 0x61c036ca => 301
	i32 1641389582, ; 229: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 237
	i32 1656530436, ; 230: ja/System.ServiceModel.NetNamedPipe.resources.dll => 0x62bca604 => 78
	i32 1657153582, ; 231: System.Runtime => 0x62c6282e => 290
	i32 1658251792, ; 232: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 224
	i32 1658431748, ; 233: ja\System.Web.Services.Description.resources => 0x62d9a904 => 117
	i32 1661950287, ; 234: ru/System.ServiceModel.NetNamedPipe.resources.dll => 0x630f594f => 82
	i32 1677501392, ; 235: System.Net.Primitives.dll => 0x63fca3d0 => 263
	i32 1678508291, ; 236: System.Net.WebSockets => 0x640c0103 => 270
	i32 1679769178, ; 237: System.Security.Cryptography => 0x641f3e5a => 296
	i32 1701287491, ; 238: System.DirectoryServices.Protocols.dll => 0x65679643 => 182
	i32 1701541528, ; 239: System.Diagnostics.Debug.dll => 0x656b7698 => 243
	i32 1717748983, ; 240: ko/System.ServiceModel.Federation.resources.dll => 0x6662c4f7 => 40
	i32 1729485958, ; 241: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 202
	i32 1736233607, ; 242: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 243: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1749969296, ; 244: it/System.ServiceModel.Federation.resources.dll => 0x684e6990 => 38
	i32 1750313021, ; 245: Microsoft.Win32.Primitives.dll => 0x6853a83d => 229
	i32 1763938596, ; 246: System.Diagnostics.TraceSource.dll => 0x69239124 => 246
	i32 1766324549, ; 247: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 221
	i32 1770582343, ; 248: Microsoft.Extensions.Logging.dll => 0x6988f147 => 158
	i32 1775568156, ; 249: de/System.ServiceModel.Primitives.resources.dll => 0x69d5051c => 100
	i32 1780572499, ; 250: Mono.Android.Runtime.dll => 0x6a216153 => 319
	i32 1782862114, ; 251: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1787719884, ; 252: tr/System.ServiceModel.NetFramingBase.resources.dll => 0x6a8e70cc => 70
	i32 1788241197, ; 253: Xamarin.AndroidX.Fragment => 0x6a96652d => 209
	i32 1791755720, ; 254: Microsoft.AspNetCore.Authentication.dll => 0x6acc05c8 => 133
	i32 1792213857, ; 255: ru\System.ServiceModel.Federation.resources => 0x6ad30361 => 43
	i32 1793755602, ; 256: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1794500907, ; 257: Microsoft.Identity.Client.dll => 0x6af5e92b => 164
	i32 1796167890, ; 258: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 148
	i32 1800314317, ; 259: zh-Hant/System.Web.Services.Description.resources.dll => 0x6b4e9dcd => 124
	i32 1808609942, ; 260: Xamarin.AndroidX.Loader => 0x6bcd3296 => 214
	i32 1813058853, ; 261: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 225
	i32 1813201214, ; 262: Xamarin.Google.Android.Material => 0x6c13413e => 224
	i32 1818569960, ; 263: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 218
	i32 1819327070, ; 264: Microsoft.AspNetCore.Http.Features.dll => 0x6c70ba5e => 145
	i32 1820883333, ; 265: Microsoft.AspNetCore.Cryptography.Internal.dll => 0x6c887985 => 137
	i32 1824175904, ; 266: System.Text.Encoding.Extensions => 0x6cbab720 => 298
	i32 1824722060, ; 267: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 287
	i32 1827118058, ; 268: pl\System.ServiceModel.NetNamedPipe.resources => 0x6ce79bea => 80
	i32 1828688058, ; 269: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 159
	i32 1834522491, ; 270: pt-BR\System.ServiceModel.Http.resources => 0x6d58977b => 55
	i32 1842015223, ; 271: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1852096909, ; 272: tr/System.ServiceModel.NetTcp.resources.dll => 0x6e64c18d => 96
	i32 1853025655, ; 273: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 274: System.Linq.Expressions => 0x6ec71a65 => 255
	i32 1870090363, ; 275: ko/System.ServiceModel.NetNamedPipe.resources.dll => 0x6f77507b => 79
	i32 1870277092, ; 276: System.Reflection.Primitives => 0x6f7a29e4 => 280
	i32 1875935024, ; 277: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1882505209, ; 278: tr/System.ServiceModel.Primitives.resources.dll => 0x7034bff9 => 109
	i32 1898237753, ; 279: System.Reflection.DispatchProxy => 0x7124cf39 => 277
	i32 1900610850, ; 280: System.Resources.ResourceManager.dll => 0x71490522 => 281
	i32 1910275211, ; 281: System.Collections.NonGeneric.dll => 0x71dc7c8b => 234
	i32 1917682536, ; 282: CoreWCF.Primitives.dll => 0x724d8368 => 132
	i32 1922109462, ; 283: System.ServiceModel.Primitives.dll => 0x72911016 => 193
	i32 1928288591, ; 284: Microsoft.AspNetCore.Http.Abstractions => 0x72ef594f => 143
	i32 1932085498, ; 285: fr\System.ServiceModel.Primitives.resources => 0x732948fa => 102
	i32 1939592360, ; 286: System.Private.Xml.Linq => 0x739bd4a8 => 275
	i32 1946106882, ; 287: es\System.ServiceModel.NetFramingBase.resources => 0x73ff3c02 => 62
	i32 1953680223, ; 288: Microsoft.AspNetCore.DataProtection.Abstractions => 0x7472cb5f => 139
	i32 1954170934, ; 289: fr/System.ServiceModel.Federation.resources.dll => 0x747a4836 => 37
	i32 1958787763, ; 290: de\System.Web.Services.Description.resources => 0x74c0bab3 => 113
	i32 1960645073, ; 291: ko\System.ServiceModel.NetTcp.resources => 0x74dd11d1 => 92
	i32 1968388702, ; 292: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 152
	i32 1973329537, ; 293: ru/System.ServiceModel.NetFramingBase.resources.dll => 0x759e9e81 => 69
	i32 1978330673, ; 294: zh-Hant\System.Web.Services.Description.resources => 0x75eaee31 => 124
	i32 1986222447, ; 295: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 170
	i32 1999793157, ; 296: ja/System.ServiceModel.NetTcp.resources.dll => 0x77326c05 => 91
	i32 2003115576, ; 297: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2011961780, ; 298: System.Buffers.dll => 0x77ec19b4 => 231
	i32 2016390154, ; 299: Parse.dll => 0x782fac0a => 180
	i32 2019465201, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 212
	i32 2025202353, ; 301: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 302: System.Private.Xml => 0x79eb68ee => 276
	i32 2055257422, ; 303: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 211
	i32 2066184531, ; 304: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 305: System.Diagnostics.TraceSource => 0x7b6f419e => 246
	i32 2075706075, ; 306: Microsoft.AspNetCore.Http.Abstractions.dll => 0x7bb8c2db => 143
	i32 2076659885, ; 307: Microsoft.Extensions.WebEncoders => 0x7bc750ad => 163
	i32 2078280433, ; 308: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 0x7be00af1 => 71
	i32 2079903147, ; 309: System.Runtime.dll => 0x7bf8cdab => 290
	i32 2085039813, ; 310: System.Security.Cryptography.Xml.dll => 0x7c472ec5 => 186
	i32 2086675053, ; 311: System.ServiceModel.NetFramingBase.dll => 0x7c60226d => 189
	i32 2090596640, ; 312: System.Numerics.Vectors => 0x7c9bf920 => 271
	i32 2092919810, ; 313: System.ServiceModel.dll => 0x7cbf6c02 => 195
	i32 2093814594, ; 314: Microsoft.IdentityModel.Tokens.Saml.dll => 0x7ccd1342 => 171
	i32 2098812199, ; 315: de/System.ServiceModel.Http.resources.dll => 0x7d195527 => 48
	i32 2100860373, ; 316: it\System.Web.Services.Description.resources => 0x7d3895d5 => 116
	i32 2118004960, ; 317: fr\System.ServiceModel.NetNamedPipe.resources => 0x7e3e30e0 => 76
	i32 2127167465, ; 318: System.Console => 0x7ec9ffe9 => 241
	i32 2132115774, ; 319: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 0x7f15813e => 72
	i32 2142473426, ; 320: System.Collections.Specialized => 0x7fb38cd2 => 235
	i32 2143790110, ; 321: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 313
	i32 2159891885, ; 322: Microsoft.Maui => 0x80bd55ad => 175
	i32 2169148018, ; 323: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 324: Microsoft.Extensions.Options.dll => 0x820d22b3 => 161
	i32 2186953162, ; 325: LiverLife => 0x825a41ca => 227
	i32 2192057212, ; 326: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 159
	i32 2193016926, ; 327: System.ObjectModel.dll => 0x82b6c85e => 272
	i32 2201107256, ; 328: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 226
	i32 2201231467, ; 329: System.Net.Http => 0x8334206b => 259
	i32 2204417087, ; 330: Microsoft.Extensions.ObjectPool => 0x8364bc3f => 160
	i32 2207618523, ; 331: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2223829768, ; 332: ko/System.ServiceModel.Primitives.resources.dll => 0x848cf308 => 105
	i32 2224792570, ; 333: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 0x849ba3fa => 98
	i32 2227276228, ; 334: cs\System.ServiceModel.NetFramingBase.resources => 0x84c189c4 => 60
	i32 2242871324, ; 335: Microsoft.AspNetCore.Http.dll => 0x85af801c => 142
	i32 2253551641, ; 336: Microsoft.IdentityModel.Protocols => 0x86527819 => 167
	i32 2265110946, ; 337: System.Security.AccessControl.dll => 0x8702d9a2 => 291
	i32 2266799131, ; 338: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 153
	i32 2270573516, ; 339: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 340: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 219
	i32 2291847450, ; 341: Microsoft.AspNetCore.DataProtection.dll => 0x889ad11a => 138
	i32 2292263403, ; 342: zh-Hant\System.ServiceModel.Primitives.resources => 0x88a129eb => 111
	i32 2294984242, ; 343: pl/System.ServiceModel.NetFramingBase.resources.dll => 0x88caae32 => 67
	i32 2295906218, ; 344: System.Net.Sockets => 0x88d8bfaa => 266
	i32 2298471582, ; 345: System.Net.Mail => 0x88ffe49e => 260
	i32 2303942373, ; 346: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 347: System.Private.CoreLib.dll => 0x896b7878 => 317
	i32 2306840234, ; 348: cs\System.ServiceModel.Federation.resources => 0x897f96aa => 34
	i32 2310401230, ; 349: es/System.Web.Services.Description.resources.dll => 0x89b5ecce => 114
	i32 2333576127, ; 350: pt-BR/System.ServiceModel.NetTcp.resources.dll => 0x8b178bbf => 94
	i32 2340441535, ; 351: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 283
	i32 2348932370, ; 352: Microsoft.IdentityModel.Tokens.Saml => 0x8c01dd12 => 171
	i32 2353062107, ; 353: System.Net.Primitives => 0x8c40e0db => 263
	i32 2362364481, ; 354: ko\System.Web.Services.Description.resources => 0x8cced241 => 118
	i32 2368005991, ; 355: System.Xml.ReaderWriter.dll => 0x8d24e767 => 311
	i32 2369706906, ; 356: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 166
	i32 2371007202, ; 357: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 152
	i32 2383496789, ; 358: System.Security.Principal.Windows.dll => 0x8e114655 => 297
	i32 2393708825, ; 359: es\System.ServiceModel.Http.resources => 0x8ead1919 => 49
	i32 2395872292, ; 360: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2427813419, ; 361: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 362: System.Console.dll => 0x912896e5 => 241
	i32 2454894271, ; 363: pl/System.ServiceModel.NetTcp.resources.dll => 0x9252b6bf => 93
	i32 2458592288, ; 364: Microsoft.AspNetCore.Authentication.Core => 0x928b2420 => 135
	i32 2458678730, ; 365: System.Net.Sockets.dll => 0x928c75ca => 266
	i32 2461098579, ; 366: Microsoft.IdentityModel.Protocols.WsFederation => 0x92b16253 => 168
	i32 2466230705, ; 367: fr/System.ServiceModel.Http.resources.dll => 0x92ffb1b1 => 50
	i32 2471841756, ; 368: netstandard.dll => 0x93554fdc => 316
	i32 2475788418, ; 369: Java.Interop.dll => 0x93918882 => 318
	i32 2476423391, ; 370: Appwrite => 0x939b38df => 126
	i32 2480646305, ; 371: Microsoft.Maui.Controls => 0x93dba8a1 => 173
	i32 2483266164, ; 372: cs/System.Web.Services.Description.resources.dll => 0x9403a274 => 112
	i32 2483903535, ; 373: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 237
	i32 2491939797, ; 374: pt-BR\System.ServiceModel.NetNamedPipe.resources => 0x9487fbd5 => 81
	i32 2503402960, ; 375: de\System.ServiceModel.NetFramingBase.resources => 0x9536e5d0 => 61
	i32 2537015816, ; 376: Microsoft.AspNetCore.Authorization => 0x9737ca08 => 136
	i32 2538310050, ; 377: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 279
	i32 2539621919, ; 378: es/System.ServiceModel.Federation.resources.dll => 0x975f8e1f => 36
	i32 2550873716, ; 379: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2560511009, ; 380: it/System.Web.Services.Description.resources.dll => 0x989e4c21 => 116
	i32 2562349572, ; 381: Microsoft.CSharp => 0x98ba5a04 => 228
	i32 2570120770, ; 382: System.Text.Encodings.Web => 0x9930ee42 => 299
	i32 2574359397, ; 383: tr\System.ServiceModel.NetFramingBase.resources => 0x99719b65 => 70
	i32 2577645437, ; 384: ko/System.ServiceModel.NetFramingBase.resources.dll => 0x99a3bf7d => 66
	i32 2585220780, ; 385: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 298
	i32 2589602615, ; 386: System.Threading.ThreadPool => 0x9a5a3337 => 307
	i32 2591523840, ; 387: it/System.ServiceModel.Primitives.resources.dll => 0x9a778400 => 103
	i32 2592341985, ; 388: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 156
	i32 2593496499, ; 389: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2594125473, ; 390: Microsoft.AspNetCore.Hosting.Abstractions => 0x9a9f36a1 => 140
	i32 2602618737, ; 391: CoreWCF.Http => 0x9b20cf71 => 131
	i32 2605712449, ; 392: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 226
	i32 2617129537, ; 393: System.Private.Xml.dll => 0x9bfe3a41 => 276
	i32 2620871830, ; 394: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 206
	i32 2626831493, ; 395: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2633959305, ; 396: Microsoft.AspNetCore.Http.Extensions.dll => 0x9cff0789 => 144
	i32 2640290731, ; 397: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 166
	i32 2642291320, ; 398: System.Net.WebSockets.WebSocketProtocol.dll => 0x9d7e2a78 => 183
	i32 2654295266, ; 399: ru/System.ServiceModel.NetTcp.resources.dll => 0x9e3554e2 => 95
	i32 2659772221, ; 400: es\System.ServiceModel.Federation.resources => 0x9e88e73d => 36
	i32 2660759594, ; 401: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 185
	i32 2663698177, ; 402: System.Runtime.Loader => 0x9ec4cf01 => 285
	i32 2664396074, ; 403: System.Xml.XDocument.dll => 0x9ecf752a => 312
	i32 2665622720, ; 404: System.Drawing.Primitives => 0x9ee22cc0 => 248
	i32 2676780864, ; 405: System.Data.Common.dll => 0x9f8c6f40 => 242
	i32 2686887180, ; 406: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 289
	i32 2705830069, ; 407: ru\System.Web.Services.Description.resources => 0xa147b0b5 => 121
	i32 2705927368, ; 408: zh-Hant/System.ServiceModel.Federation.resources.dll => 0xa1492cc8 => 46
	i32 2712765783, ; 409: pl/System.ServiceModel.Primitives.resources.dll => 0xa1b18557 => 106
	i32 2715334215, ; 410: System.Threading.Tasks.dll => 0xa1d8b647 => 305
	i32 2717744543, ; 411: System.Security.Claims => 0xa1fd7d9f => 292
	i32 2724373263, ; 412: System.Runtime.Numerics.dll => 0xa262a30f => 286
	i32 2724977475, ; 413: pt-BR/System.ServiceModel.Federation.resources.dll => 0xa26bdb43 => 42
	i32 2732626843, ; 414: Xamarin.AndroidX.Activity => 0xa2e0939b => 198
	i32 2735172069, ; 415: System.Threading.Channels => 0xa30769e5 => 302
	i32 2735631878, ; 416: Microsoft.AspNetCore.Authorization.dll => 0xa30e6e06 => 136
	i32 2737747696, ; 417: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 200
	i32 2740051746, ; 418: Microsoft.Identity.Client => 0xa351df22 => 164
	i32 2740877318, ; 419: it\System.ServiceModel.NetTcp.resources => 0xa35e7806 => 90
	i32 2742465751, ; 420: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 0xa376b4d7 => 97
	i32 2752995522, ; 421: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2753493119, ; 422: System.ServiceModel.Security.dll => 0xa41ef87f => 194
	i32 2756478476, ; 423: zh-Hant\System.ServiceModel.NetTcp.resources => 0xa44c860c => 98
	i32 2758225723, ; 424: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 174
	i32 2764765095, ; 425: Microsoft.Maui.dll => 0xa4caf7a7 => 175
	i32 2778768386, ; 426: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 222
	i32 2780661947, ; 427: pl/System.ServiceModel.NetNamedPipe.resources.dll => 0xa5bd88bb => 80
	i32 2785988530, ; 428: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 429: Microsoft.Maui.Graphics => 0xa7008e0b => 177
	i32 2806116107, ; 430: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 431: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 204
	i32 2822016028, ; 432: zh-Hans/System.ServiceModel.NetNamedPipe.resources.dll => 0xa8348c1c => 84
	i32 2831556043, ; 433: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2849599387, ; 434: System.Threading.Overlapped.dll => 0xa9d96f9b => 303
	i32 2850549256, ; 435: Microsoft.AspNetCore.Http.Features => 0xa9e7ee08 => 145
	i32 2853208004, ; 436: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 222
	i32 2861189240, ; 437: Microsoft.Maui.Essentials => 0xaa8a4878 => 176
	i32 2867946736, ; 438: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 185
	i32 2868488919, ; 439: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 129
	i32 2899241291, ; 440: it\System.ServiceModel.Http.resources => 0xaccee94b => 51
	i32 2905242038, ; 441: mscorlib.dll => 0xad2a79b6 => 315
	i32 2909740682, ; 442: System.Private.CoreLib => 0xad6f1e8a => 317
	i32 2916838712, ; 443: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 223
	i32 2917500511, ; 444: zh-Hant/System.ServiceModel.NetNamedPipe.resources.dll => 0xade5865f => 85
	i32 2919462931, ; 445: System.Numerics.Vectors.dll => 0xae037813 => 271
	i32 2921417940, ; 446: System.Security.Cryptography.Xml => 0xae214cd4 => 186
	i32 2930358886, ; 447: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 0xaea9ba66 => 139
	i32 2940926066, ; 448: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 245
	i32 2958066338, ; 449: pl\System.ServiceModel.Primitives.resources => 0xb05082a2 => 106
	i32 2958246600, ; 450: de\System.ServiceModel.Http.resources => 0xb05342c8 => 48
	i32 2959614098, ; 451: System.ComponentModel.dll => 0xb0682092 => 240
	i32 2968338931, ; 452: System.Security.Principal.Windows => 0xb0ed41f3 => 297
	i32 2970759306, ; 453: BCrypt.Net-Next.dll => 0xb112308a => 127
	i32 2972252294, ; 454: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 293
	i32 2978368250, ; 455: Microsoft.AspNetCore.Hosting.Abstractions.dll => 0xb1864afa => 140
	i32 2978675010, ; 456: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 208
	i32 2985026235, ; 457: ja\System.ServiceModel.NetNamedPipe.resources => 0xb1ebe2bb => 78
	i32 2991460102, ; 458: WCF.dll => 0xb24e0f06 => 197
	i32 2996646946, ; 459: Microsoft.AspNetCore.Http => 0xb29d3422 => 142
	i32 3022610030, ; 460: ja\System.ServiceModel.Http.resources => 0xb4295e6e => 52
	i32 3033331042, ; 461: Microsoft.AspNetCore.Authentication.Core.dll => 0xb4ccf562 => 135
	i32 3036999524, ; 462: Microsoft.AspNetCore.Http.Extensions => 0xb504ef64 => 144
	i32 3038032645, ; 463: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 125
	i32 3046511124, ; 464: es/System.ServiceModel.Primitives.resources.dll => 0xb5961214 => 101
	i32 3049900938, ; 465: pt-BR/System.ServiceModel.NetNamedPipe.resources.dll => 0xb5c9cb8a => 81
	i32 3057625584, ; 466: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 215
	i32 3059408633, ; 467: Mono.Android.Runtime => 0xb65adef9 => 319
	i32 3059793426, ; 468: System.ComponentModel.Primitives => 0xb660be12 => 238
	i32 3069363400, ; 469: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 150
	i32 3075834255, ; 470: System.Threading.Tasks => 0xb755818f => 305
	i32 3077302341, ; 471: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3084678329, ; 472: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 170
	i32 3090735792, ; 473: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 295
	i32 3093090641, ; 474: Microsoft.Extensions.WebEncoders.dll => 0xb85cd151 => 163
	i32 3099732863, ; 475: System.Security.Claims.dll => 0xb8c22b7f => 292
	i32 3103600923, ; 476: System.Formats.Asn1 => 0xb8fd311b => 250
	i32 3123044289, ; 477: System.ServiceModel.Duplex => 0xba25dfc1 => 192
	i32 3123119788, ; 478: Microsoft.IdentityModel.Protocols.WsTrust.dll => 0xba2706ac => 169
	i32 3124832203, ; 479: System.Threading.Tasks.Extensions => 0xba4127cb => 304
	i32 3132293585, ; 480: System.Security.AccessControl => 0xbab301d1 => 291
	i32 3147165239, ; 481: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 247
	i32 3155681111, ; 482: Microsoft.AspNetCore.DataProtection => 0xbc17df57 => 138
	i32 3157052235, ; 483: System.ServiceModel.Federation.dll => 0xbc2ccb4b => 187
	i32 3159123045, ; 484: System.Reflection.Primitives.dll => 0xbc4c6465 => 280
	i32 3159587175, ; 485: cs/System.ServiceModel.Http.resources.dll => 0xbc537967 => 47
	i32 3160747431, ; 486: System.IO.MemoryMappedFiles => 0xbc652da7 => 253
	i32 3178803400, ; 487: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 216
	i32 3180757527, ; 488: Microsoft.AspNetCore.WebSockets => 0xbd968217 => 146
	i32 3184440510, ; 489: pt-BR\System.ServiceModel.Federation.resources => 0xbdceb4be => 42
	i32 3195844289, ; 490: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 150
	i32 3206733304, ; 491: ja/System.ServiceModel.Federation.resources.dll => 0xbf22ddf8 => 39
	i32 3220365878, ; 492: System.Threading => 0xbff2e236 => 309
	i32 3241028803, ; 493: it\System.ServiceModel.NetNamedPipe.resources => 0xc12e2cc3 => 77
	i32 3251039220, ; 494: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 277
	i32 3258312781, ; 495: Xamarin.AndroidX.CardView => 0xc235e84d => 202
	i32 3265493905, ; 496: System.Linq.Queryable.dll => 0xc2a37b91 => 256
	i32 3265893370, ; 497: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 304
	i32 3278332997, ; 498: zh-Hans/System.ServiceModel.Http.resources.dll => 0xc3676445 => 58
	i32 3279906254, ; 499: Microsoft.Win32.Registry.dll => 0xc37f65ce => 230
	i32 3291006565, ; 500: fr\System.ServiceModel.NetTcp.resources => 0xc428c665 => 89
	i32 3300764913, ; 501: Microsoft.AspNetCore.WebUtilities => 0xc4bdacf1 => 147
	i32 3305363605, ; 502: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3316684772, ; 503: System.Net.Requests.dll => 0xc5b097e4 => 264
	i32 3317135071, ; 504: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 207
	i32 3340202976, ; 505: tr\System.ServiceModel.NetNamedPipe.resources => 0xc71773e0 => 83
	i32 3346324047, ; 506: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 217
	i32 3347128195, ; 507: tr\System.ServiceModel.Http.resources => 0xc7811f83 => 57
	i32 3357674450, ; 508: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 509: System.Text.Json => 0xc82afec1 => 300
	i32 3362522851, ; 510: Xamarin.AndroidX.Core => 0xc86c06e3 => 205
	i32 3366347497, ; 511: Java.Interop => 0xc8a662e9 => 318
	i32 3374879918, ; 512: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 167
	i32 3374999561, ; 513: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 219
	i32 3381016424, ; 514: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3390256484, ; 515: System.DirectoryServices.Protocols => 0xca133564 => 182
	i32 3400209963, ; 516: pt-BR\System.Web.Services.Description.resources => 0xcaab162b => 120
	i32 3406727474, ; 517: zh-Hant\System.ServiceModel.Federation.resources => 0xcb0e8932 => 46
	i32 3428513518, ; 518: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 154
	i32 3430777524, ; 519: netstandard => 0xcc7d82b4 => 316
	i32 3437750368, ; 520: System.Web.Services.Description.dll => 0xcce7e860 => 196
	i32 3441434180, ; 521: Microsoft.IdentityModel.Protocols.WsFederation.dll => 0xcd201e44 => 168
	i32 3447165740, ; 522: ja/System.ServiceModel.Http.resources.dll => 0xcd77932c => 52
	i32 3450008806, ; 523: ja\System.ServiceModel.Federation.resources => 0xcda2f4e6 => 39
	i32 3453180490, ; 524: ko\System.ServiceModel.Primitives.resources => 0xcdd35a4a => 105
	i32 3463511458, ; 525: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 526: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 239
	i32 3472012038, ; 527: BCrypt.Net-Next => 0xcef2b306 => 127
	i32 3476120550, ; 528: Mono.Android => 0xcf3163e6 => 320
	i32 3479583265, ; 529: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3482217531, ; 530: cs\System.ServiceModel.Http.resources => 0xcf8e6c3b => 47
	i32 3483609038, ; 531: es/System.ServiceModel.Http.resources.dll => 0xcfa3a7ce => 49
	i32 3484440000, ; 532: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 533: System.Text.Json.dll => 0xcfbaacae => 300
	i32 3509114376, ; 534: System.Xml.Linq => 0xd128d608 => 310
	i32 3521184679, ; 535: ru\System.ServiceModel.NetFramingBase.resources => 0xd1e103a7 => 69
	i32 3548480101, ; 536: de/System.ServiceModel.Federation.resources.dll => 0xd3818265 => 35
	i32 3560100363, ; 537: System.Threading.Timer => 0xd432d20b => 308
	i32 3580333612, ; 538: zh-Hans\System.ServiceModel.Federation.resources => 0xd5678e2c => 45
	i32 3580758918, ; 539: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3594787188, ; 540: System.Net.WebSockets.WebSocketProtocol => 0xd6441974 => 183
	i32 3598340787, ; 541: System.Net.WebSockets.Client => 0xd67a52b3 => 269
	i32 3605274052, ; 542: ja\System.ServiceModel.NetFramingBase.resources => 0xd6e41dc4 => 65
	i32 3605918211, ; 543: tr\System.ServiceModel.NetTcp.resources => 0xd6edf203 => 96
	i32 3608519521, ; 544: System.Linq.dll => 0xd715a361 => 257
	i32 3624195450, ; 545: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 283
	i32 3632773286, ; 546: zh-Hans\System.ServiceModel.NetNamedPipe.resources => 0xd887b8a6 => 84
	i32 3638233600, ; 547: ru\System.ServiceModel.Primitives.resources => 0xd8db0a00 => 108
	i32 3641597786, ; 548: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 211
	i32 3641688426, ; 549: it/System.ServiceModel.NetFramingBase.resources.dll => 0xd90fc16a => 64
	i32 3643446276, ; 550: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 551: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 216
	i32 3657292374, ; 552: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 153
	i32 3660523487, ; 553: System.Net.NetworkInformation => 0xda2f27df => 262
	i32 3661988251, ; 554: CoreWCF.Http.dll => 0xda45819b => 131
	i32 3664118907, ; 555: pt-BR\System.ServiceModel.Primitives.resources => 0xda66047b => 107
	i32 3672681054, ; 556: Mono.Android.dll => 0xdae8aa5e => 320
	i32 3675849680, ; 557: cs\System.ServiceModel.NetTcp.resources => 0xdb1903d0 => 86
	i32 3679252191, ; 558: ru/System.Web.Services.Description.resources.dll => 0xdb4ceedf => 121
	i32 3680281109, ; 559: ko/System.ServiceModel.Http.resources.dll => 0xdb5ca215 => 53
	i32 3682565725, ; 560: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 201
	i32 3685718856, ; 561: pl/System.ServiceModel.Federation.resources.dll => 0xdbaf9b48 => 41
	i32 3690488555, ; 562: pl\System.ServiceModel.NetTcp.resources => 0xdbf862eb => 93
	i32 3697841164, ; 563: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3700591436, ; 564: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 165
	i32 3700619798, ; 565: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 0xdc92fa16 => 68
	i32 3700866549, ; 566: System.Net.WebProxy.dll => 0xdc96bdf5 => 268
	i32 3701464072, ; 567: tr\System.Web.Services.Description.resources => 0xdc9fdc08 => 122
	i32 3705132617, ; 568: it\System.ServiceModel.NetFramingBase.resources => 0xdcd7d649 => 64
	i32 3705703420, ; 569: tr/System.Web.Services.Description.resources.dll => 0xdce08bfc => 122
	i32 3709546624, ; 570: ru\System.ServiceModel.NetTcp.resources => 0xdd1b3080 => 95
	i32 3724971120, ; 571: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 215
	i32 3732100267, ; 572: System.Net.NameResolution => 0xde7354ab => 261
	i32 3743991391, ; 573: de\System.ServiceModel.NetTcp.resources => 0xdf28c65f => 87
	i32 3748608112, ; 574: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 244
	i32 3765508441, ; 575: Microsoft.Extensions.ObjectPool.dll => 0xe0711959 => 160
	i32 3786282454, ; 576: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 203
	i32 3792276235, ; 577: System.Collections.NonGeneric => 0xe2098b0b => 234
	i32 3802395368, ; 578: System.Collections.Specialized.dll => 0xe2a3f2e8 => 235
	i32 3807198597, ; 579: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 184
	i32 3813989096, ; 580: ko\System.ServiceModel.NetFramingBase.resources => 0xe354dae8 => 66
	i32 3815305727, ; 581: CoreWCF.Primitives => 0xe368f1ff => 132
	i32 3817368567, ; 582: CommunityToolkit.Maui.dll => 0xe3886bf7 => 128
	i32 3818324168, ; 583: es\System.Web.Services.Description.resources => 0xe39700c8 => 114
	i32 3819260425, ; 584: System.Net.WebProxy => 0xe3a54a09 => 268
	i32 3823082795, ; 585: System.Security.Cryptography.dll => 0xe3df9d2b => 296
	i32 3831382396, ; 586: es\System.ServiceModel.Primitives.resources => 0xe45e417c => 101
	i32 3836405899, ; 587: cs/System.ServiceModel.Federation.resources.dll => 0xe4aae88b => 34
	i32 3841636137, ; 588: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 155
	i32 3844307129, ; 589: System.Net.Mail.dll => 0xe52378b9 => 260
	i32 3849253459, ; 590: System.Runtime.InteropServices.dll => 0xe56ef253 => 284
	i32 3876601672, ; 591: zh-Hans\System.ServiceModel.NetFramingBase.resources => 0xe7103f48 => 71
	i32 3885497537, ; 592: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 267
	i32 3889960447, ; 593: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 594: System.Collections.Concurrent.dll => 0xe839deed => 232
	i32 3896760992, ; 595: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 205
	i32 3917319797, ; 596: System.ServiceModel.Federation => 0xe97d8e75 => 187
	i32 3928044579, ; 597: System.Xml.ReaderWriter => 0xea213423 => 311
	i32 3931092270, ; 598: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 218
	i32 3937699821, ; 599: pt-BR/System.Web.Services.Description.resources.dll => 0xeab487ed => 120
	i32 3948719759, ; 600: es/System.ServiceModel.NetFramingBase.resources.dll => 0xeb5cae8f => 62
	i32 3955647286, ; 601: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 199
	i32 3971291721, ; 602: System.ServiceModel.NetNamedPipe.dll => 0xecb51a49 => 190
	i32 3980434154, ; 603: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3982238525, ; 604: System.DirectoryServices.dll => 0xed5c233d => 181
	i32 3987592930, ; 605: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4025784931, ; 606: System.Memory => 0xeff49a63 => 258
	i32 4043772061, ; 607: zh-Hans/System.ServiceModel.Federation.resources.dll => 0xf107109d => 45
	i32 4044155772, ; 608: Microsoft.Net.Http.Headers.dll => 0xf10ceb7c => 178
	i32 4046471985, ; 609: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 174
	i32 4054681211, ; 610: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 278
	i32 4068434129, ; 611: System.Private.Xml.Linq.dll => 0xf27f60d1 => 275
	i32 4073602200, ; 612: System.Threading.dll => 0xf2ce3c98 => 309
	i32 4078967171, ; 613: Microsoft.Extensions.Hosting.Abstractions.dll => 0xf3201983 => 157
	i32 4081805871, ; 614: zh-Hans\System.ServiceModel.Primitives.resources => 0xf34b6a2f => 110
	i32 4094352644, ; 615: Microsoft.Maui.Essentials.dll => 0xf40add04 => 176
	i32 4099507663, ; 616: System.Drawing.dll => 0xf45985cf => 249
	i32 4100113165, ; 617: System.Private.Uri => 0xf462c30d => 274
	i32 4101842092, ; 618: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 151
	i32 4102112229, ; 619: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4118552436, ; 620: Microsoft.AspNetCore.Authentication => 0xf57c1f74 => 133
	i32 4120300202, ; 621: de/System.ServiceModel.NetNamedPipe.resources.dll => 0xf596caaa => 74
	i32 4125707920, ; 622: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 623: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 154
	i32 4129780829, ; 624: ja/System.Web.Services.Description.resources.dll => 0xf627745d => 117
	i32 4137271634, ; 625: Microsoft.IdentityModel.Xml.dll => 0xf699c152 => 172
	i32 4147710070, ; 626: ko\System.ServiceModel.NetNamedPipe.resources => 0xf7390876 => 79
	i32 4147896353, ; 627: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 278
	i32 4150914736, ; 628: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4159265925, ; 629: System.Xml.XmlSerializer => 0xf7e95c85 => 313
	i32 4181436372, ; 630: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 288
	i32 4182413190, ; 631: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 213
	i32 4213026141, ; 632: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 244
	i32 4215017764, ; 633: zh-Hans/System.Web.Services.Description.resources.dll => 0xfb3c1124 => 123
	i32 4222345914, ; 634: ko/System.Web.Services.Description.resources.dll => 0xfbabe2ba => 118
	i32 4260525087, ; 635: System.Buffers => 0xfdf2741f => 231
	i32 4261754524, ; 636: ko\System.ServiceModel.Http.resources => 0xfe05369c => 53
	i32 4266814471, ; 637: zh-Hant\System.ServiceModel.NetNamedPipe.resources => 0xfe526c07 => 85
	i32 4271975918, ; 638: Microsoft.Maui.Controls.dll => 0xfea12dee => 173
	i32 4274623895, ; 639: CommunityToolkit.Mvvm.dll => 0xfec99597 => 130
	i32 4274976490, ; 640: System.Runtime.Numerics => 0xfecef6ea => 286
	i32 4292120959 ; 641: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 213
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [642 x i32] [
	i32 262, ; 0
	i32 63, ; 1
	i32 261, ; 2
	i32 88, ; 3
	i32 44, ; 4
	i32 179, ; 5
	i32 270, ; 6
	i32 306, ; 7
	i32 192, ; 8
	i32 245, ; 9
	i32 33, ; 10
	i32 294, ; 11
	i32 73, ; 12
	i32 177, ; 13
	i32 137, ; 14
	i32 104, ; 15
	i32 284, ; 16
	i32 302, ; 17
	i32 267, ; 18
	i32 294, ; 19
	i32 203, ; 20
	i32 61, ; 21
	i32 147, ; 22
	i32 221, ; 23
	i32 50, ; 24
	i32 74, ; 25
	i32 30, ; 26
	i32 31, ; 27
	i32 240, ; 28
	i32 201, ; 29
	i32 40, ; 30
	i32 243, ; 31
	i32 228, ; 32
	i32 108, ; 33
	i32 279, ; 34
	i32 75, ; 35
	i32 308, ; 36
	i32 2, ; 37
	i32 103, ; 38
	i32 58, ; 39
	i32 134, ; 40
	i32 113, ; 41
	i32 54, ; 42
	i32 30, ; 43
	i32 198, ; 44
	i32 92, ; 45
	i32 65, ; 46
	i32 15, ; 47
	i32 210, ; 48
	i32 14, ; 49
	i32 86, ; 50
	i32 254, ; 51
	i32 306, ; 52
	i32 149, ; 53
	i32 258, ; 54
	i32 307, ; 55
	i32 125, ; 56
	i32 146, ; 57
	i32 75, ; 58
	i32 26, ; 59
	i32 236, ; 60
	i32 209, ; 61
	i32 295, ; 62
	i32 110, ; 63
	i32 288, ; 64
	i32 315, ; 65
	i32 314, ; 66
	i32 76, ; 67
	i32 165, ; 68
	i32 141, ; 69
	i32 272, ; 70
	i32 13, ; 71
	i32 57, ; 72
	i32 7, ; 73
	i32 227, ; 74
	i32 162, ; 75
	i32 91, ; 76
	i32 87, ; 77
	i32 256, ; 78
	i32 104, ; 79
	i32 83, ; 80
	i32 158, ; 81
	i32 282, ; 82
	i32 289, ; 83
	i32 148, ; 84
	i32 115, ; 85
	i32 195, ; 86
	i32 44, ; 87
	i32 97, ; 88
	i32 21, ; 89
	i32 128, ; 90
	i32 293, ; 91
	i32 88, ; 92
	i32 207, ; 93
	i32 19, ; 94
	i32 109, ; 95
	i32 100, ; 96
	i32 194, ; 97
	i32 35, ; 98
	i32 299, ; 99
	i32 232, ; 100
	i32 265, ; 101
	i32 1, ; 102
	i32 310, ; 103
	i32 73, ; 104
	i32 16, ; 105
	i32 184, ; 106
	i32 4, ; 107
	i32 102, ; 108
	i32 285, ; 109
	i32 119, ; 110
	i32 264, ; 111
	i32 254, ; 112
	i32 77, ; 113
	i32 252, ; 114
	i32 25, ; 115
	i32 161, ; 116
	i32 242, ; 117
	i32 274, ; 118
	i32 59, ; 119
	i32 190, ; 120
	i32 251, ; 121
	i32 107, ; 122
	i32 238, ; 123
	i32 253, ; 124
	i32 28, ; 125
	i32 179, ; 126
	i32 63, ; 127
	i32 210, ; 128
	i32 188, ; 129
	i32 247, ; 130
	i32 312, ; 131
	i32 41, ; 132
	i32 273, ; 133
	i32 236, ; 134
	i32 220, ; 135
	i32 249, ; 136
	i32 155, ; 137
	i32 3, ; 138
	i32 60, ; 139
	i32 199, ; 140
	i32 248, ; 141
	i32 255, ; 142
	i32 56, ; 143
	i32 212, ; 144
	i32 197, ; 145
	i32 188, ; 146
	i32 239, ; 147
	i32 181, ; 148
	i32 225, ; 149
	i32 90, ; 150
	i32 314, ; 151
	i32 157, ; 152
	i32 134, ; 153
	i32 43, ; 154
	i32 16, ; 155
	i32 56, ; 156
	i32 37, ; 157
	i32 59, ; 158
	i32 149, ; 159
	i32 126, ; 160
	i32 22, ; 161
	i32 156, ; 162
	i32 217, ; 163
	i32 20, ; 164
	i32 151, ; 165
	i32 51, ; 166
	i32 191, ; 167
	i32 130, ; 168
	i32 178, ; 169
	i32 18, ; 170
	i32 141, ; 171
	i32 230, ; 172
	i32 2, ; 173
	i32 112, ; 174
	i32 208, ; 175
	i32 67, ; 176
	i32 54, ; 177
	i32 273, ; 178
	i32 89, ; 179
	i32 257, ; 180
	i32 94, ; 181
	i32 38, ; 182
	i32 82, ; 183
	i32 123, ; 184
	i32 32, ; 185
	i32 220, ; 186
	i32 281, ; 187
	i32 115, ; 188
	i32 193, ; 189
	i32 172, ; 190
	i32 204, ; 191
	i32 287, ; 192
	i32 119, ; 193
	i32 111, ; 194
	i32 0, ; 195
	i32 72, ; 196
	i32 99, ; 197
	i32 196, ; 198
	i32 180, ; 199
	i32 250, ; 200
	i32 282, ; 201
	i32 265, ; 202
	i32 6, ; 203
	i32 233, ; 204
	i32 252, ; 205
	i32 200, ; 206
	i32 162, ; 207
	i32 233, ; 208
	i32 251, ; 209
	i32 229, ; 210
	i32 10, ; 211
	i32 68, ; 212
	i32 5, ; 213
	i32 301, ; 214
	i32 25, ; 215
	i32 189, ; 216
	i32 303, ; 217
	i32 191, ; 218
	i32 269, ; 219
	i32 214, ; 220
	i32 223, ; 221
	i32 169, ; 222
	i32 55, ; 223
	i32 99, ; 224
	i32 129, ; 225
	i32 206, ; 226
	i32 259, ; 227
	i32 301, ; 228
	i32 237, ; 229
	i32 78, ; 230
	i32 290, ; 231
	i32 224, ; 232
	i32 117, ; 233
	i32 82, ; 234
	i32 263, ; 235
	i32 270, ; 236
	i32 296, ; 237
	i32 182, ; 238
	i32 243, ; 239
	i32 40, ; 240
	i32 202, ; 241
	i32 23, ; 242
	i32 1, ; 243
	i32 38, ; 244
	i32 229, ; 245
	i32 246, ; 246
	i32 221, ; 247
	i32 158, ; 248
	i32 100, ; 249
	i32 319, ; 250
	i32 17, ; 251
	i32 70, ; 252
	i32 209, ; 253
	i32 133, ; 254
	i32 43, ; 255
	i32 9, ; 256
	i32 164, ; 257
	i32 148, ; 258
	i32 124, ; 259
	i32 214, ; 260
	i32 225, ; 261
	i32 224, ; 262
	i32 218, ; 263
	i32 145, ; 264
	i32 137, ; 265
	i32 298, ; 266
	i32 287, ; 267
	i32 80, ; 268
	i32 159, ; 269
	i32 55, ; 270
	i32 29, ; 271
	i32 96, ; 272
	i32 26, ; 273
	i32 255, ; 274
	i32 79, ; 275
	i32 280, ; 276
	i32 8, ; 277
	i32 109, ; 278
	i32 277, ; 279
	i32 281, ; 280
	i32 234, ; 281
	i32 132, ; 282
	i32 193, ; 283
	i32 143, ; 284
	i32 102, ; 285
	i32 275, ; 286
	i32 62, ; 287
	i32 139, ; 288
	i32 37, ; 289
	i32 113, ; 290
	i32 92, ; 291
	i32 152, ; 292
	i32 69, ; 293
	i32 124, ; 294
	i32 170, ; 295
	i32 91, ; 296
	i32 5, ; 297
	i32 231, ; 298
	i32 180, ; 299
	i32 212, ; 300
	i32 0, ; 301
	i32 276, ; 302
	i32 211, ; 303
	i32 4, ; 304
	i32 246, ; 305
	i32 143, ; 306
	i32 163, ; 307
	i32 71, ; 308
	i32 290, ; 309
	i32 186, ; 310
	i32 189, ; 311
	i32 271, ; 312
	i32 195, ; 313
	i32 171, ; 314
	i32 48, ; 315
	i32 116, ; 316
	i32 76, ; 317
	i32 241, ; 318
	i32 72, ; 319
	i32 235, ; 320
	i32 313, ; 321
	i32 175, ; 322
	i32 12, ; 323
	i32 161, ; 324
	i32 227, ; 325
	i32 159, ; 326
	i32 272, ; 327
	i32 226, ; 328
	i32 259, ; 329
	i32 160, ; 330
	i32 14, ; 331
	i32 105, ; 332
	i32 98, ; 333
	i32 60, ; 334
	i32 142, ; 335
	i32 167, ; 336
	i32 291, ; 337
	i32 153, ; 338
	i32 8, ; 339
	i32 219, ; 340
	i32 138, ; 341
	i32 111, ; 342
	i32 67, ; 343
	i32 266, ; 344
	i32 260, ; 345
	i32 18, ; 346
	i32 317, ; 347
	i32 34, ; 348
	i32 114, ; 349
	i32 94, ; 350
	i32 283, ; 351
	i32 171, ; 352
	i32 263, ; 353
	i32 118, ; 354
	i32 311, ; 355
	i32 166, ; 356
	i32 152, ; 357
	i32 297, ; 358
	i32 49, ; 359
	i32 13, ; 360
	i32 10, ; 361
	i32 241, ; 362
	i32 93, ; 363
	i32 135, ; 364
	i32 266, ; 365
	i32 168, ; 366
	i32 50, ; 367
	i32 316, ; 368
	i32 318, ; 369
	i32 126, ; 370
	i32 173, ; 371
	i32 112, ; 372
	i32 237, ; 373
	i32 81, ; 374
	i32 61, ; 375
	i32 136, ; 376
	i32 279, ; 377
	i32 36, ; 378
	i32 11, ; 379
	i32 116, ; 380
	i32 228, ; 381
	i32 299, ; 382
	i32 70, ; 383
	i32 66, ; 384
	i32 298, ; 385
	i32 307, ; 386
	i32 103, ; 387
	i32 156, ; 388
	i32 20, ; 389
	i32 140, ; 390
	i32 131, ; 391
	i32 226, ; 392
	i32 276, ; 393
	i32 206, ; 394
	i32 15, ; 395
	i32 144, ; 396
	i32 166, ; 397
	i32 183, ; 398
	i32 95, ; 399
	i32 36, ; 400
	i32 185, ; 401
	i32 285, ; 402
	i32 312, ; 403
	i32 248, ; 404
	i32 242, ; 405
	i32 289, ; 406
	i32 121, ; 407
	i32 46, ; 408
	i32 106, ; 409
	i32 305, ; 410
	i32 292, ; 411
	i32 286, ; 412
	i32 42, ; 413
	i32 198, ; 414
	i32 302, ; 415
	i32 136, ; 416
	i32 200, ; 417
	i32 164, ; 418
	i32 90, ; 419
	i32 97, ; 420
	i32 21, ; 421
	i32 194, ; 422
	i32 98, ; 423
	i32 174, ; 424
	i32 175, ; 425
	i32 222, ; 426
	i32 80, ; 427
	i32 27, ; 428
	i32 177, ; 429
	i32 6, ; 430
	i32 204, ; 431
	i32 84, ; 432
	i32 19, ; 433
	i32 303, ; 434
	i32 145, ; 435
	i32 222, ; 436
	i32 176, ; 437
	i32 185, ; 438
	i32 129, ; 439
	i32 51, ; 440
	i32 315, ; 441
	i32 317, ; 442
	i32 223, ; 443
	i32 85, ; 444
	i32 271, ; 445
	i32 186, ; 446
	i32 139, ; 447
	i32 245, ; 448
	i32 106, ; 449
	i32 48, ; 450
	i32 240, ; 451
	i32 297, ; 452
	i32 127, ; 453
	i32 293, ; 454
	i32 140, ; 455
	i32 208, ; 456
	i32 78, ; 457
	i32 197, ; 458
	i32 142, ; 459
	i32 52, ; 460
	i32 135, ; 461
	i32 144, ; 462
	i32 125, ; 463
	i32 101, ; 464
	i32 81, ; 465
	i32 215, ; 466
	i32 319, ; 467
	i32 238, ; 468
	i32 150, ; 469
	i32 305, ; 470
	i32 12, ; 471
	i32 170, ; 472
	i32 295, ; 473
	i32 163, ; 474
	i32 292, ; 475
	i32 250, ; 476
	i32 192, ; 477
	i32 169, ; 478
	i32 304, ; 479
	i32 291, ; 480
	i32 247, ; 481
	i32 138, ; 482
	i32 187, ; 483
	i32 280, ; 484
	i32 47, ; 485
	i32 253, ; 486
	i32 216, ; 487
	i32 146, ; 488
	i32 42, ; 489
	i32 150, ; 490
	i32 39, ; 491
	i32 309, ; 492
	i32 77, ; 493
	i32 277, ; 494
	i32 202, ; 495
	i32 256, ; 496
	i32 304, ; 497
	i32 58, ; 498
	i32 230, ; 499
	i32 89, ; 500
	i32 147, ; 501
	i32 7, ; 502
	i32 264, ; 503
	i32 207, ; 504
	i32 83, ; 505
	i32 217, ; 506
	i32 57, ; 507
	i32 24, ; 508
	i32 300, ; 509
	i32 205, ; 510
	i32 318, ; 511
	i32 167, ; 512
	i32 219, ; 513
	i32 3, ; 514
	i32 182, ; 515
	i32 120, ; 516
	i32 46, ; 517
	i32 154, ; 518
	i32 316, ; 519
	i32 196, ; 520
	i32 168, ; 521
	i32 52, ; 522
	i32 39, ; 523
	i32 105, ; 524
	i32 11, ; 525
	i32 239, ; 526
	i32 127, ; 527
	i32 320, ; 528
	i32 24, ; 529
	i32 47, ; 530
	i32 49, ; 531
	i32 23, ; 532
	i32 300, ; 533
	i32 310, ; 534
	i32 69, ; 535
	i32 35, ; 536
	i32 308, ; 537
	i32 45, ; 538
	i32 31, ; 539
	i32 183, ; 540
	i32 269, ; 541
	i32 65, ; 542
	i32 96, ; 543
	i32 257, ; 544
	i32 283, ; 545
	i32 84, ; 546
	i32 108, ; 547
	i32 211, ; 548
	i32 64, ; 549
	i32 28, ; 550
	i32 216, ; 551
	i32 153, ; 552
	i32 262, ; 553
	i32 131, ; 554
	i32 107, ; 555
	i32 320, ; 556
	i32 86, ; 557
	i32 121, ; 558
	i32 53, ; 559
	i32 201, ; 560
	i32 41, ; 561
	i32 93, ; 562
	i32 33, ; 563
	i32 165, ; 564
	i32 68, ; 565
	i32 268, ; 566
	i32 122, ; 567
	i32 64, ; 568
	i32 122, ; 569
	i32 95, ; 570
	i32 215, ; 571
	i32 261, ; 572
	i32 87, ; 573
	i32 244, ; 574
	i32 160, ; 575
	i32 203, ; 576
	i32 234, ; 577
	i32 235, ; 578
	i32 184, ; 579
	i32 66, ; 580
	i32 132, ; 581
	i32 128, ; 582
	i32 114, ; 583
	i32 268, ; 584
	i32 296, ; 585
	i32 101, ; 586
	i32 34, ; 587
	i32 155, ; 588
	i32 260, ; 589
	i32 284, ; 590
	i32 71, ; 591
	i32 267, ; 592
	i32 32, ; 593
	i32 232, ; 594
	i32 205, ; 595
	i32 187, ; 596
	i32 311, ; 597
	i32 218, ; 598
	i32 120, ; 599
	i32 62, ; 600
	i32 199, ; 601
	i32 190, ; 602
	i32 27, ; 603
	i32 181, ; 604
	i32 9, ; 605
	i32 258, ; 606
	i32 45, ; 607
	i32 178, ; 608
	i32 174, ; 609
	i32 278, ; 610
	i32 275, ; 611
	i32 309, ; 612
	i32 157, ; 613
	i32 110, ; 614
	i32 176, ; 615
	i32 249, ; 616
	i32 274, ; 617
	i32 151, ; 618
	i32 22, ; 619
	i32 133, ; 620
	i32 74, ; 621
	i32 17, ; 622
	i32 154, ; 623
	i32 117, ; 624
	i32 172, ; 625
	i32 79, ; 626
	i32 278, ; 627
	i32 29, ; 628
	i32 313, ; 629
	i32 288, ; 630
	i32 213, ; 631
	i32 244, ; 632
	i32 123, ; 633
	i32 118, ; 634
	i32 231, ; 635
	i32 53, ; 636
	i32 85, ; 637
	i32 173, ; 638
	i32 130, ; 639
	i32 286, ; 640
	i32 213 ; 641
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
