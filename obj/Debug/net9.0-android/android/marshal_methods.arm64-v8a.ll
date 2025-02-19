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

@assembly_image_cache = dso_local local_unnamed_addr global [473 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1419 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 340
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 319
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x01b4147f5099147e, ; 4: lib-es-System.ServiceModel.NetFramingBase.resources.dll.so => 406
	i64 u0x02123411c4e01926, ; 5: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 308
	i64 u0x022e81ea9c46e03a, ; 6: lib_CommunityToolkit.Maui.Core.dll.so => 177
	i64 u0x022f31be406de945, ; 7: Microsoft.Extensions.Options.ConfigurationExtensions => 214
	i64 u0x02827b47e97f2378, ; 8: System.Security.Cryptography.Pkcs.dll => 239
	i64 u0x0284512fad379f7e, ; 9: System.Runtime.Handles => 105
	i64 u0x02a4c5a44384f885, ; 10: Microsoft.Extensions.Caching.Memory => 199
	i64 u0x02abedc11addc1ed, ; 11: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02e46d1ad43222f6, ; 12: lib-es-System.ServiceModel.NetNamedPipe.resources.dll.so => 419
	i64 u0x02f55bf70672f5c8, ; 13: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 14: lib_Xamarin.AndroidX.AppCompat.dll.so => 262
	i64 u0x0332080b93de39e8, ; 15: lib-ko-System.ServiceModel.NetTcp.resources.dll.so => 436
	i64 u0x03621c804933a890, ; 16: System.Buffers => 7
	i64 u0x0377283fc1d7573a, ; 17: Microsoft.AspNetCore.DataProtection.Abstractions.dll => 188
	i64 u0x0399610510a38a38, ; 18: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x03b83394b41533a3, ; 19: lib_System.Net.WebSockets.WebSocketProtocol.dll.so => 238
	i64 u0x03e59dbcdb672e0c, ; 20: ko/System.ServiceModel.NetNamedPipe.resources.dll => 423
	i64 u0x043032f1d071fae0, ; 21: ru/Microsoft.Maui.Controls.resources => 368
	i64 u0x044440a55165631e, ; 22: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 346
	i64 u0x046eb1581a80c6b0, ; 23: vi/Microsoft.Maui.Controls.resources => 374
	i64 u0x0470607fd33c32db, ; 24: Microsoft.IdentityModel.Abstractions.dll => 217
	i64 u0x047408741db2431a, ; 25: Xamarin.AndroidX.DynamicAnimation => 282
	i64 u0x04d57b7ee27097d4, ; 26: es/System.Web.Services.Description.resources.dll => 458
	i64 u0x0514f1a3ae77a228, ; 27: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 336
	i64 u0x0517ef04e06e9f76, ; 28: System.Net.Primitives => 71
	i64 u0x0536103900cb32e8, ; 29: lib_Microsoft.IdentityModel.Tokens.Saml.dll.so => 224
	i64 u0x0565d18c6da3de38, ; 30: Xamarin.AndroidX.RecyclerView => 312
	i64 u0x0581db89237110e9, ; 31: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 32: Microsoft.Maui.dll => 229
	i64 u0x05a1c25e78e22d87, ; 33: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x05c27cf2b380bbf2, ; 34: lib_Microsoft.AspNetCore.Hosting.Server.Abstractions.dll.so => 190
	i64 u0x06076b5d2b581f08, ; 35: zh-HK/Microsoft.Maui.Controls.resources => 375
	i64 u0x06168c5c025b28b4, ; 36: pl/System.ServiceModel.NetFramingBase.resources => 411
	i64 u0x06388ffe9f6c161a, ; 37: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 38: System.Configuration.dll => 19
	i64 u0x066bc49ad3fdac8f, ; 39: pt-BR/System.ServiceModel.Primitives.resources => 451
	i64 u0x067f95c5ddab55b3, ; 40: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 287
	i64 u0x0680a433c781bb3d, ; 41: Xamarin.AndroidX.Collection.Jvm => 269
	i64 u0x069fff96ec92a91d, ; 42: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 43: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 284
	i64 u0x072496def57d8011, ; 44: Microsoft.Extensions.WebEncoders.dll => 216
	i64 u0x0739448d84d3b016, ; 45: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 322
	i64 u0x07469f2eecce9e85, ; 46: mscorlib.dll => 167
	i64 u0x0747be857ce04d9a, ; 47: es/System.ServiceModel.Federation.resources => 380
	i64 u0x075602897289dbeb, ; 48: pl/System.ServiceModel.NetNamedPipe.resources => 424
	i64 u0x07c04588bd7473fd, ; 49: lib-cs-System.ServiceModel.Primitives.resources.dll.so => 443
	i64 u0x07c57877c7ba78ad, ; 50: ru/Microsoft.Maui.Controls.resources.dll => 368
	i64 u0x07dcdc7460a0c5e4, ; 51: System.Collections.NonGeneric => 10
	i64 u0x07df6145bf7c4ae8, ; 52: tr/System.ServiceModel.Primitives.resources.dll => 453
	i64 u0x07facf341f169bb5, ; 53: cs/System.ServiceModel.Http.resources => 391
	i64 u0x08122e52765333c8, ; 54: lib_Microsoft.Extensions.Logging.Debug.dll.so => 211
	i64 u0x08130b8ab839d58b, ; 55: pt-BR/System.ServiceModel.Http.resources => 399
	i64 u0x08662d7e43e96768, ; 56: pl/System.ServiceModel.NetTcp.resources => 437
	i64 u0x08836ae19c27b9da, ; 57: lib_System.ServiceModel.Security.dll.so => 249
	i64 u0x088610fc2509f69e, ; 58: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 323
	i64 u0x08a7c865576bbde7, ; 59: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 60: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 279
	i64 u0x08f3c9788ee2153c, ; 61: Xamarin.AndroidX.DrawerLayout => 281
	i64 u0x09138715c92dba90, ; 62: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 63: lib_Microsoft.Extensions.Options.dll.so => 213
	i64 u0x092266563089ae3e, ; 64: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 65: System.Security.Cryptography => 127
	i64 u0x09d931c8a4087ae3, ; 66: lib_Microsoft.AspNetCore.DataProtection.Abstractions.dll.so => 188
	i64 u0x09e2b9f743db21a8, ; 67: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x09f0570dfb8f954c, ; 68: lib-cs-System.ServiceModel.NetTcp.resources.dll.so => 430
	i64 u0x0a805f95d98f597b, ; 69: lib_Microsoft.Extensions.Caching.Abstractions.dll.so => 198
	i64 u0x0a980941fa112bc4, ; 70: System.Security.Cryptography.Xml => 241
	i64 u0x0abb3e2b271edc45, ; 71: System.Threading.Channels.dll => 140
	i64 u0x0ac1788730e4eecb, ; 72: de/System.ServiceModel.Http.resources.dll => 392
	i64 u0x0b06b1feab070143, ; 73: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 74: sk/Microsoft.Maui.Controls.resources => 369
	i64 u0x0b6aff547b84fbe9, ; 75: Xamarin.KotlinX.Serialization.Core.Jvm => 343
	i64 u0x0be2e1f8ce4064ed, ; 76: Xamarin.AndroidX.ViewPager => 325
	i64 u0x0c0edaaebec7f4bb, ; 77: Microsoft.Extensions.Logging.Console => 210
	i64 u0x0c18eb6b2c720a2e, ; 78: cs/System.ServiceModel.Federation.resources => 378
	i64 u0x0c3ca6cc978e2aae, ; 79: pt-BR/Microsoft.Maui.Controls.resources => 365
	i64 u0x0c59ad9fbbd43abe, ; 80: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 81: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 256
	i64 u0x0c6924c4d04dd909, ; 82: lib_System.DirectoryServices.Protocols.dll.so => 236
	i64 u0x0c74af560004e816, ; 83: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 84: lib_Microsoft.Maui.Essentials.dll.so => 230
	i64 u0x0c83c82812e96127, ; 85: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 86: Xamarin.AndroidX.Security.SecurityCrypto => 316
	i64 u0x0d13cd7cce4284e4, ; 87: System.Security.SecureString => 130
	i64 u0x0d2e7553e8cf3809, ; 88: lib-ja-System.ServiceModel.NetNamedPipe.resources.dll.so => 422
	i64 u0x0d3b5ab8b2766190, ; 89: lib_Microsoft.Bcl.AsyncInterfaces.dll.so => 197
	i64 u0x0d5a030936d9686b, ; 90: CoreWCF.Http.dll => 179
	i64 u0x0d63f4f73521c24f, ; 91: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 315
	i64 u0x0da6790e304298ea, ; 92: tr/System.ServiceModel.NetNamedPipe.resources => 427
	i64 u0x0e04e702012f8463, ; 93: Xamarin.AndroidX.Emoji2 => 283
	i64 u0x0e14e73a54dda68e, ; 94: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0e9efb024ed678c7, ; 95: ko/System.Web.Services.Description.resources.dll => 462
	i64 u0x0eb46d9d238eb95d, ; 96: zh-Hant/System.Web.Services.Description.resources.dll => 468
	i64 u0x0f19324fa82e4da6, ; 97: ru/System.ServiceModel.NetTcp.resources.dll => 439
	i64 u0x0f2df8e7aeba3631, ; 98: fr/System.ServiceModel.NetNamedPipe.resources => 420
	i64 u0x0f37dd7a62ae99af, ; 99: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 270
	i64 u0x0f5e7abaa7cf470a, ; 100: System.Net.HttpListener => 66
	i64 u0x0f948418e9ebd6de, ; 101: Microsoft.AspNetCore.Hosting.Abstractions.dll => 189
	i64 u0x1001f97bbe242e64, ; 102: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102861e4055f511a, ; 103: Microsoft.Bcl.AsyncInterfaces.dll => 197
	i64 u0x102a31b45304b1da, ; 104: Xamarin.AndroidX.CustomView => 278
	i64 u0x102bde114e8d673c, ; 105: fr/System.ServiceModel.Federation.resources => 381
	i64 u0x1065c4cb554c3d75, ; 106: System.IO.IsolatedStorage.dll => 52
	i64 u0x108f2a264461e619, ; 107: ko/System.ServiceModel.Http.resources => 397
	i64 u0x10f6cfcbcf801616, ; 108: System.IO.Compression.Brotli => 43
	i64 u0x1140109eb2e77ceb, ; 109: Microsoft.Extensions.ObjectPool.dll => 212
	i64 u0x114443cdcf2091f1, ; 110: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 111: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 112: System.Net.WebSockets.dll => 81
	i64 u0x11f26371eee0d3c1, ; 113: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 298
	i64 u0x11fbe62d469cc1c8, ; 114: Microsoft.VisualStudio.DesignTools.TapContract.dll => 471
	i64 u0x12128b3f59302d47, ; 115: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 116: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 117: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 118: Xamarin.AndroidX.RecyclerView.dll => 312
	i64 u0x12d3b63863d4ab0b, ; 119: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x130a61c2e887bb6e, ; 120: zh-Hant/System.ServiceModel.Http.resources => 403
	i64 u0x134eab1061c395ee, ; 121: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 122: Xamarin.AndroidX.Browser => 266
	i64 u0x13a01de0cbc3f06c, ; 123: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 352
	i64 u0x13beedefb0e28a45, ; 124: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 125: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 126: he/Microsoft.Maui.Controls.resources => 353
	i64 u0x13fd5cd93094a4e2, ; 127: BCrypt.Net-Next => 175
	i64 u0x143d8ea60a6a4011, ; 128: Microsoft.Extensions.DependencyInjection.Abstractions => 204
	i64 u0x147103369fd947e4, ; 129: zh-Hans/System.ServiceModel.Federation.resources => 389
	i64 u0x1497051b917530bd, ; 130: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14b78ce3adce0011, ; 131: Microsoft.VisualStudio.DesignTools.TapContract => 471
	i64 u0x14e68447938213b7, ; 132: Xamarin.AndroidX.Collection.Ktx.dll => 270
	i64 u0x152a448bd1e745a7, ; 133: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 134: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x155876daad16fa9c, ; 135: de/System.ServiceModel.NetNamedPipe.resources => 418
	i64 u0x159b534a3ef12dc2, ; 136: cs/System.ServiceModel.Http.resources.dll => 391
	i64 u0x15bdc156ed462f2f, ; 137: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 138: System.Resources.Writer.dll => 101
	i64 u0x16085c59a916cbf7, ; 139: pl/System.ServiceModel.NetNamedPipe.resources.dll => 424
	i64 u0x162ded4f872e2108, ; 140: ko/System.ServiceModel.Primitives.resources.dll => 449
	i64 u0x16bf2a22df043a09, ; 141: System.IO.Pipes.dll => 56
	i64 u0x16ea2b318ad2d830, ; 142: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 143: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 144: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 145: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 146: Xamarin.KotlinX.Coroutines.Core => 340
	i64 u0x1752c12f1e1fc00c, ; 147: System.Core => 21
	i64 u0x1765c11c666590c3, ; 148: lib-ko-System.ServiceModel.NetNamedPipe.resources.dll.so => 423
	i64 u0x17b56e25558a5d36, ; 149: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 356
	i64 u0x17d9f0347eceffae, ; 150: lib-fr-System.ServiceModel.NetFramingBase.resources.dll.so => 407
	i64 u0x17f9358913beb16a, ; 151: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 152: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 153: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 343
	i64 u0x18a9befae51bb361, ; 154: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 155: nb/Microsoft.Maui.Controls.resources.dll => 362
	i64 u0x193d7a04b7eda8bc, ; 156: lib_Xamarin.AndroidX.Print.dll.so => 310
	i64 u0x19710970522a4c01, ; 157: es/System.ServiceModel.NetNamedPipe.resources.dll => 419
	i64 u0x19777fba3c41b398, ; 158: Xamarin.AndroidX.Startup.StartupRuntime.dll => 318
	i64 u0x19a4c090f14ebb66, ; 159: System.Security.Claims => 119
	i64 u0x19c0ab2196420f08, ; 160: tr/System.ServiceModel.Primitives.resources => 453
	i64 u0x19eddc7da46cb519, ; 161: CoreWCF.Http => 179
	i64 u0x1a63352be1054efd, ; 162: Microsoft.AspNetCore.Hosting.Server.Abstractions.dll => 190
	i64 u0x1a91866a319e9259, ; 163: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 164: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 165: lib-th-Microsoft.Maui.Controls.resources.dll.so => 371
	i64 u0x1aea8f1c3b282172, ; 166: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b4b7a1d0d265fa2, ; 167: Xamarin.Android.Glide.DiskLruCache => 255
	i64 u0x1b4ed5f9d1cf859d, ; 168: lib-tr-System.ServiceModel.Federation.resources.dll.so => 388
	i64 u0x1b9ff281906566bf, ; 169: es/System.ServiceModel.NetFramingBase.resources => 406
	i64 u0x1bbdb16cfa73e785, ; 170: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 299
	i64 u0x1bc766e07b2b4241, ; 171: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 313
	i64 u0x1bea5a36aa1ed8de, ; 172: Microsoft.AspNetCore.Http.Extensions => 193
	i64 u0x1bfbe514fa2c4675, ; 173: Microsoft.IdentityModel.Protocols.WsFederation.dll => 221
	i64 u0x1c6fb87921b609ec, ; 174: tr/System.Web.Services.Description.resources => 466
	i64 u0x1c753b5ff15bce1b, ; 175: Mono.Android.Runtime.dll => 171
	i64 u0x1c99fa64da553c6c, ; 176: System.ServiceModel.NetNamedPipe => 245
	i64 u0x1cd47467799d8250, ; 177: System.Threading.Tasks.dll => 145
	i64 u0x1d219bde965f2231, ; 178: lib-pl-System.ServiceModel.Federation.resources.dll.so => 385
	i64 u0x1d23eafdc6dc346c, ; 179: System.Globalization.Calendars.dll => 40
	i64 u0x1d32a3a761ab10c7, ; 180: pl/System.ServiceModel.Primitives.resources.dll => 450
	i64 u0x1d4c109ca6e27ed8, ; 181: lib_Microsoft.Maui.Controls.Compatibility.dll.so => 226
	i64 u0x1da4110562816681, ; 182: Xamarin.AndroidX.Security.SecurityCrypto.dll => 316
	i64 u0x1db6820994506bf5, ; 183: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 184: System.Diagnostics.StackTrace => 30
	i64 u0x1dd2a7d5c8d3d2b6, ; 185: tr/System.ServiceModel.NetFramingBase.resources.dll => 414
	i64 u0x1e38b678b501ccd6, ; 186: zh-Hant/System.ServiceModel.NetNamedPipe.resources.dll => 429
	i64 u0x1e3d87657e9659bc, ; 187: Xamarin.AndroidX.Navigation.UI => 309
	i64 u0x1e71143913d56c10, ; 188: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 360
	i64 u0x1e7c31185e2fb266, ; 189: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1ed8fcce5e9b50a0, ; 190: Microsoft.Extensions.Options.dll => 213
	i64 u0x1f055d15d807e1b2, ; 191: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 192: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 193: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 194: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 320
	i64 u0x1fb89ca66dfcabab, ; 195: it/System.ServiceModel.NetTcp.resources.dll => 434
	i64 u0x20237ea48006d7a8, ; 196: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 197: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20b46a69e4b42003, ; 198: LiverLife.dll => 0
	i64 u0x20fab3cf2dfbc8df, ; 199: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 200: System.Globalization => 42
	i64 u0x21419508838f7547, ; 201: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 202: System.Runtime => 117
	i64 u0x2198e5bc8b7153fa, ; 203: Xamarin.AndroidX.Annotation.Experimental.dll => 260
	i64 u0x219ea1b751a4dee4, ; 204: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21c922d09413aedd, ; 205: lib-pt-BR-System.ServiceModel.NetNamedPipe.resources.dll.so => 425
	i64 u0x21cc7e445dcd5469, ; 206: System.Reflection.Emit.ILGeneration => 91
	i64 u0x21cf001ca3f38aa0, ; 207: it/System.ServiceModel.NetNamedPipe.resources => 421
	i64 u0x220fd4f2e7c48170, ; 208: th/Microsoft.Maui.Controls.resources => 371
	i64 u0x224538d85ed15a82, ; 209: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 210: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22bfeeba49e6aa35, ; 211: cs/System.ServiceModel.NetFramingBase.resources.dll => 404
	i64 u0x22fbc14e981e3b45, ; 212: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 470
	i64 u0x23528a4ba1887701, ; 213: tr/System.ServiceModel.Http.resources.dll => 401
	i64 u0x237be844f1f812c7, ; 214: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 215: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 216: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x23ebb0be6a1f9c46, ; 217: ru/System.ServiceModel.NetFramingBase.resources.dll => 413
	i64 u0x2407aef2bbe8fadf, ; 218: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 219: Xamarin.AndroidX.Core.dll => 275
	i64 u0x2434c1866d776788, ; 220: it/System.ServiceModel.Primitives.resources.dll => 447
	i64 u0x247619fe4413f8bf, ; 221: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x248ba06617481add, ; 222: zh-Hant/System.ServiceModel.Federation.resources.dll => 390
	i64 u0x24de8d301281575e, ; 223: Xamarin.Android.Glide => 253
	i64 u0x252073cc3caa62c2, ; 224: fr/Microsoft.Maui.Controls.resources.dll => 352
	i64 u0x256b8d41255f01b1, ; 225: Xamarin.Google.Crypto.Tink.Android => 331
	i64 u0x2662c629b96b0b30, ; 226: lib_Xamarin.Kotlin.StdLib.dll.so => 335
	i64 u0x268c1439f13bcc29, ; 227: lib_Microsoft.Extensions.Primitives.dll.so => 215
	i64 u0x2694bf6f7e20d41f, ; 228: WCF.dll => 252
	i64 u0x26a670e154a9c54b, ; 229: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 230: System.IO.dll => 58
	i64 u0x270a44600c921861, ; 231: System.IdentityModel.Tokens.Jwt => 237
	i64 u0x273f3515de5faf0d, ; 232: id/Microsoft.Maui.Controls.resources.dll => 357
	i64 u0x2742545f9094896d, ; 233: hr/Microsoft.Maui.Controls.resources => 355
	i64 u0x2759af78ab94d39b, ; 234: System.Net.WebSockets => 81
	i64 u0x277289bda3869388, ; 235: de/System.ServiceModel.Federation.resources.dll => 379
	i64 u0x27b2b16f3e9de038, ; 236: Xamarin.Google.Crypto.Tink.Android.dll => 331
	i64 u0x27b410442fad6cf1, ; 237: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 238: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 239: System.Net.Primitives.dll => 71
	i64 u0x286835e259162700, ; 240: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 311
	i64 u0x28b311fffbc0f8df, ; 241: Microsoft.AspNetCore.WebUtilities => 196
	i64 u0x28e29ea3dda9f3d1, ; 242: zh-Hans/System.ServiceModel.NetTcp.resources => 441
	i64 u0x2949f3617a02c6b2, ; 243: Xamarin.AndroidX.ExifInterface => 285
	i64 u0x29f947844fb7fc11, ; 244: Microsoft.Maui.Controls.HotReload.Forms => 469
	i64 u0x2a128783efe70ba0, ; 245: uk/Microsoft.Maui.Controls.resources.dll => 373
	i64 u0x2a20ac106f144888, ; 246: ko/System.ServiceModel.Federation.resources => 384
	i64 u0x2a3b095612184159, ; 247: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 248: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2ad156c8e1354139, ; 249: fi/Microsoft.Maui.Controls.resources => 351
	i64 u0x2ad5d6b13b7a3e04, ; 250: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 251: System.Text.RegularExpressions.dll => 139
	i64 u0x2af615542f04da50, ; 252: System.IdentityModel.Tokens.Jwt.dll => 237
	i64 u0x2afc1c4f898552ee, ; 253: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b0c21e667d8f1ef, ; 254: lib-tr-System.ServiceModel.NetFramingBase.resources.dll.so => 414
	i64 u0x2b148910ed40fbf9, ; 255: zh-Hant/Microsoft.Maui.Controls.resources.dll => 377
	i64 u0x2b6989d78cba9a15, ; 256: Xamarin.AndroidX.Concurrent.Futures.dll => 271
	i64 u0x2b9b351a8ec65c76, ; 257: System.ServiceModel.Primitives.dll => 248
	i64 u0x2b9de547b3b4bde5, ; 258: Parse => 234
	i64 u0x2c26c7650afbcba2, ; 259: tr/System.ServiceModel.NetFramingBase.resources => 414
	i64 u0x2c40db0dbedda89b, ; 260: lib_Microsoft.AspNetCore.WebUtilities.dll.so => 196
	i64 u0x2c52b6785191227e, ; 261: lib_Microsoft.Extensions.Logging.Configuration.dll.so => 209
	i64 u0x2c6188de848df9f3, ; 262: lib-cs-System.ServiceModel.NetNamedPipe.resources.dll.so => 417
	i64 u0x2c8bd14bb93a7d82, ; 263: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 364
	i64 u0x2cbd9262ca785540, ; 264: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 265: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 266: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 267: System.Threading.dll => 149
	i64 u0x2d47774b7d993f59, ; 268: sv/Microsoft.Maui.Controls.resources.dll => 370
	i64 u0x2d5ffcae1ad0aaca, ; 269: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 270: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 271: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e44180014afa07e, ; 272: System.ServiceModel.NetFramingBase => 244
	i64 u0x2e5a40c319acb800, ; 273: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 274: el/Microsoft.Maui.Controls.resources.dll => 349
	i64 u0x2ec7c4d022908b76, ; 275: lib-zh-Hans-System.Web.Services.Description.resources.dll.so => 467
	i64 u0x2f02f94df3200fe5, ; 276: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 277: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 278: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 279: lib_System.Xml.dll.so => 164
	i64 u0x2f8b8b1fa14a8448, ; 280: zh-Hans/System.ServiceModel.NetFramingBase.resources => 415
	i64 u0x2feb4d2fcda05cfd, ; 281: Microsoft.Extensions.Caching.Abstractions.dll => 198
	i64 u0x309ee9eeec09a71e, ; 282: lib_Xamarin.AndroidX.Fragment.dll.so => 286
	i64 u0x309f2bedefa9a318, ; 283: Microsoft.IdentityModel.Abstractions => 217
	i64 u0x30c6dda129408828, ; 284: System.IO.IsolatedStorage => 52
	i64 u0x3115b96f750a95ee, ; 285: System.ServiceModel.Federation => 242
	i64 u0x31178b041713f680, ; 286: lib-it-System.ServiceModel.NetNamedPipe.resources.dll.so => 421
	i64 u0x31195fef5d8fb552, ; 287: _Microsoft.Android.Resource.Designer.dll => 472
	i64 u0x312c8ed623cbfc8d, ; 288: Xamarin.AndroidX.Window.dll => 327
	i64 u0x31496b779ed0663d, ; 289: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x32243413e774362a, ; 290: Xamarin.AndroidX.CardView.dll => 267
	i64 u0x3235427f8d12dae1, ; 291: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x329753a17a517811, ; 292: fr/Microsoft.Maui.Controls.resources => 352
	i64 u0x32aa989ff07a84ff, ; 293: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x32f48f558fd2b41c, ; 294: lib-cs-System.Web.Services.Description.resources.dll.so => 456
	i64 u0x331b02bf05209a46, ; 295: zh-Hans/System.ServiceModel.NetNamedPipe.resources.dll => 428
	i64 u0x33829542f112d59b, ; 296: System.Collections.Immutable => 9
	i64 u0x33979d0005dca3ae, ; 297: es/System.Web.Services.Description.resources => 458
	i64 u0x33a31443733849fe, ; 298: lib-es-Microsoft.Maui.Controls.resources.dll.so => 350
	i64 u0x33baa7cbfc56e24c, ; 299: CoreWCF.Primitives => 180
	i64 u0x341abc357fbb4ebf, ; 300: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 301: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34ba7926775157ee, ; 302: fr/System.ServiceModel.Http.resources.dll => 394
	i64 u0x34dfd74fe2afcf37, ; 303: Microsoft.Maui => 229
	i64 u0x34e292762d9615df, ; 304: cs/Microsoft.Maui.Controls.resources.dll => 346
	i64 u0x34fda75514bd8bb7, ; 305: lib_Microsoft.IdentityModel.Protocols.WsTrust.dll.so => 222
	i64 u0x3508234247f48404, ; 306: Microsoft.Maui.Controls => 227
	i64 u0x353590da528c9d22, ; 307: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 308: lib_Xamarin.AndroidX.ViewPager2.dll.so => 326
	i64 u0x355282fc1c909694, ; 309: Microsoft.Extensions.Configuration => 200
	i64 u0x3552fc5d578f0fbf, ; 310: Xamarin.AndroidX.Arch.Core.Common => 264
	i64 u0x355c649948d55d97, ; 311: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x3598b7b6237a86b6, ; 312: lib_Microsoft.AspNetCore.Authentication.dll.so => 182
	i64 u0x35ea9d1c6834bc8c, ; 313: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 302
	i64 u0x3628ab68db23a01a, ; 314: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 315: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 316: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 317: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 318: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 319: System.Reflection.Primitives.dll => 96
	i64 u0x375a0c086b00470b, ; 320: Microsoft.AspNetCore.Authentication.dll => 182
	i64 u0x376bf93e521a5417, ; 321: lib_Xamarin.Jetbrains.Annotations.dll.so => 334
	i64 u0x37bc29f3183003b6, ; 322: lib_System.IO.dll.so => 58
	i64 u0x37fb35a39cd89631, ; 323: de/System.ServiceModel.NetTcp.resources => 431
	i64 u0x37fd73cba07e0b9d, ; 324: lib_Microsoft.AspNetCore.Cryptography.Internal.dll.so => 186
	i64 u0x380134e03b1e160a, ; 325: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 326: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x383410cfa2a31339, ; 327: de/System.ServiceModel.Primitives.resources => 444
	i64 u0x385c17636bb6fe6e, ; 328: Xamarin.AndroidX.CustomView.dll => 278
	i64 u0x38869c811d74050e, ; 329: System.Net.NameResolution.dll => 68
	i64 u0x38d77e34f978d1b6, ; 330: System.ServiceModel.Primitives => 248
	i64 u0x38e93ec1c057cdf6, ; 331: Microsoft.IdentityModel.Protocols => 220
	i64 u0x39108a67af853ffa, ; 332: lib-de-System.Web.Services.Description.resources.dll.so => 457
	i64 u0x393c226616977fdb, ; 333: lib_Xamarin.AndroidX.ViewPager.dll.so => 325
	i64 u0x395e37c3334cf82a, ; 334: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 345
	i64 u0x395f717707d372c7, ; 335: fr/System.ServiceModel.Primitives.resources.dll => 446
	i64 u0x39aa39fda111d9d3, ; 336: Newtonsoft.Json => 233
	i64 u0x39c3107c28752af1, ; 337: lib_Microsoft.Extensions.FileProviders.Abstractions.dll.so => 205
	i64 u0x3ab5859054645f72, ; 338: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad699f278ab9353, ; 339: lib-ko-System.ServiceModel.NetFramingBase.resources.dll.so => 410
	i64 u0x3ad75090c3fac0e9, ; 340: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 313
	i64 u0x3ae44ac43a1fbdbb, ; 341: System.Runtime.Serialization => 116
	i64 u0x3b8103a61ccb341b, ; 342: es/System.ServiceModel.NetTcp.resources => 432
	i64 u0x3b860f9932505633, ; 343: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3bea9ebe8c027c01, ; 344: lib_Microsoft.IdentityModel.Tokens.dll.so => 223
	i64 u0x3bfec727ed47fa97, ; 345: ru/System.ServiceModel.Federation.resources => 387
	i64 u0x3c3aafb6b3a00bf6, ; 346: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 347: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 348: Xamarin.Kotlin.StdLib => 335
	i64 u0x3c7e5ed3d5db71bb, ; 349: System.Security => 131
	i64 u0x3ca05b43ec08224f, ; 350: Microsoft.AspNetCore.Http.Extensions.dll => 193
	i64 u0x3cbb3644a83a76bd, ; 351: it/System.ServiceModel.Federation.resources.dll => 382
	i64 u0x3cd9d281d402eb9b, ; 352: Xamarin.AndroidX.Browser.dll => 266
	i64 u0x3cec4f158c2d0869, ; 353: ko/System.ServiceModel.Primitives.resources => 449
	i64 u0x3d1c50cc001a991e, ; 354: Xamarin.Google.Guava.ListenableFuture.dll => 333
	i64 u0x3d2b1913edfc08d7, ; 355: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 356: System.Xml.Linq => 156
	i64 u0x3d8a8f400514a790, ; 357: Xamarin.AndroidX.Fragment.Ktx.dll => 287
	i64 u0x3d9c2a242b040a50, ; 358: lib_Xamarin.AndroidX.Core.dll.so => 275
	i64 u0x3dbb6b9f5ab90fa7, ; 359: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 282
	i64 u0x3e5441657549b213, ; 360: Xamarin.AndroidX.ResourceInspection.Annotation => 313
	i64 u0x3e57d4d195c53c2e, ; 361: System.Reflection.TypeExtensions => 97
	i64 u0x3e580c35ecfc1247, ; 362: lib_Microsoft.AspNetCore.Http.dll.so => 191
	i64 u0x3e616ab4ed1f3f15, ; 363: lib_System.Data.dll.so => 24
	i64 u0x3e6a340cc96f2e46, ; 364: lib-pt-BR-System.ServiceModel.Primitives.resources.dll.so => 451
	i64 u0x3f14138f647d1838, ; 365: zh-Hans/System.Web.Services.Description.resources => 467
	i64 u0x3f1d226e6e06db7e, ; 366: Xamarin.AndroidX.SlidingPaneLayout.dll => 317
	i64 u0x3f510adf788828dd, ; 367: System.Threading.Tasks.Extensions => 143
	i64 u0x3f6f5914291cdcf7, ; 368: Microsoft.Extensions.Hosting.Abstractions => 206
	i64 u0x3fb0be225913eb6b, ; 369: fr/System.ServiceModel.Primitives.resources => 446
	i64 u0x40268eb2c3e5e8d4, ; 370: lib-pt-BR-System.ServiceModel.Federation.resources.dll.so => 386
	i64 u0x407740ff2e914d86, ; 371: Xamarin.AndroidX.Print.dll => 310
	i64 u0x407a10bb4bf95829, ; 372: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 306
	i64 u0x40c98b6bd77346d4, ; 373: Microsoft.VisualBasic.dll => 3
	i64 u0x41833cf766d27d96, ; 374: mscorlib => 167
	i64 u0x41cab042be111c34, ; 375: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 263
	i64 u0x423a9ecc4d905a88, ; 376: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 377: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 378: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 379: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 380: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x431612591b56dba0, ; 381: cs/System.ServiceModel.Primitives.resources => 443
	i64 u0x43375950ec7c1b6a, ; 382: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 383: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 384: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 258
	i64 u0x43564d2d913fd6b1, ; 385: es/System.ServiceModel.Federation.resources.dll => 380
	i64 u0x437d06c381ed575a, ; 386: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 387: pl/Microsoft.Maui.Controls.resources.dll => 364
	i64 u0x43abf7a7601b2bef, ; 388: pl/System.ServiceModel.Http.resources.dll => 398
	i64 u0x43e8ca5bc927ff37, ; 389: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 284
	i64 u0x43ffdb4d66f61308, ; 390: Microsoft.Extensions.Logging.Console.dll => 210
	i64 u0x4441ec36856b0733, ; 391: es/System.ServiceModel.Http.resources.dll => 393
	i64 u0x448bd33429269b19, ; 392: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 393: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 394: Xamarin.Kotlin.StdLib.dll => 335
	i64 u0x451a3b176c5f5864, ; 395: lib-it-System.Web.Services.Description.resources.dll.so => 460
	i64 u0x45344658e8f1a46d, ; 396: Microsoft.AspNetCore.Authentication.Core => 184
	i64 u0x4545802489b736b9, ; 397: Xamarin.AndroidX.Fragment.Ktx => 287
	i64 u0x454b4d1e66bb783c, ; 398: Xamarin.AndroidX.Lifecycle.Process => 295
	i64 u0x458d2df79ac57c1d, ; 399: lib_System.IdentityModel.Tokens.Jwt.dll.so => 237
	i64 u0x45a355d5d8e07edd, ; 400: ru/System.ServiceModel.NetNamedPipe.resources.dll => 426
	i64 u0x45c40276a42e283e, ; 401: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 402: System.AppContext.dll => 6
	i64 u0x463d680a1dec0810, ; 403: System.Security.Cryptography.Xml.dll => 241
	i64 u0x4687b1cc0feabf8f, ; 404: pt-BR/System.ServiceModel.NetTcp.resources => 438
	i64 u0x46a4213bc97fe5ae, ; 405: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 368
	i64 u0x47358bd471172e1d, ; 406: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47482983e855006a, ; 407: es/System.ServiceModel.NetTcp.resources.dll => 432
	i64 u0x47daf4e1afbada10, ; 408: pt/Microsoft.Maui.Controls.resources => 366
	i64 u0x47fa70fa792b8adb, ; 409: fr/System.ServiceModel.Http.resources => 394
	i64 u0x480c0a47dd42dd81, ; 410: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x4875b1ef38ec0862, ; 411: System.ServiceModel.dll => 250
	i64 u0x488d293220a4fe37, ; 412: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 289
	i64 u0x491a662076bc9a46, ; 413: it/System.ServiceModel.NetFramingBase.resources => 408
	i64 u0x4956bf53b9c53cbb, ; 414: es/System.ServiceModel.NetFramingBase.resources.dll => 406
	i64 u0x49575e19a82569ac, ; 415: zh-Hant/System.ServiceModel.NetFramingBase.resources.dll => 416
	i64 u0x497eb1d03ac05c8a, ; 416: lib_Microsoft.Extensions.WebEncoders.dll.so => 216
	i64 u0x49d025a0a7359fa5, ; 417: lib-pl-System.ServiceModel.Primitives.resources.dll.so => 450
	i64 u0x49e952f19a4e2022, ; 418: System.ObjectModel => 85
	i64 u0x49ea01c721d701b5, ; 419: lib_Microsoft.Net.Http.Headers.dll.so => 232
	i64 u0x49f9e6948a8131e4, ; 420: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 324
	i64 u0x4a01f51359a6d10e, ; 421: ru/System.ServiceModel.Http.resources.dll => 400
	i64 u0x4a0387b5291990a6, ; 422: lib_LiverLife.dll.so => 0
	i64 u0x4a5667b2462a664b, ; 423: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 309
	i64 u0x4a7a18981dbd56bc, ; 424: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4a98740422e9357a, ; 425: pl/System.Web.Services.Description.resources.dll => 463
	i64 u0x4aa5c60350917c06, ; 426: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 294
	i64 u0x4b07a0ed0ab33ff4, ; 427: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 428: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 429: System.Text.Json => 138
	i64 u0x4c7755cf07ad2d5f, ; 430: System.Net.Http.Json.dll => 64
	i64 u0x4c8185b93923bcbf, ; 431: ru/System.ServiceModel.NetFramingBase.resources => 413
	i64 u0x4cc5f15266470798, ; 432: lib_Xamarin.AndroidX.Loader.dll.so => 304
	i64 u0x4cf6f67dc77aacd2, ; 433: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 434: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 435: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 436: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 437: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 438: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 264
	i64 u0x4d7793536e79c309, ; 439: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 440: System.Runtime.Loader.dll => 110
	i64 u0x4da4a8f0f6a70fdc, ; 441: Microsoft.Maui.Controls.Compatibility.dll => 226
	i64 u0x4dcf44c3c9b076a2, ; 442: it/Microsoft.Maui.Controls.resources.dll => 358
	i64 u0x4dd9247f1d2c3235, ; 443: Xamarin.AndroidX.Loader.dll => 304
	i64 u0x4e0d050c4646ebab, ; 444: lib-tr-System.ServiceModel.NetNamedPipe.resources.dll.so => 427
	i64 u0x4e25143931f12a64, ; 445: Parse.dll => 234
	i64 u0x4e2aeee78e2c4a87, ; 446: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 311
	i64 u0x4e32f00cb0937401, ; 447: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 448: System.Text.Encoding.CodePages => 134
	i64 u0x4ebd0c4b82c5eefc, ; 449: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 450: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 451: ca/Microsoft.Maui.Controls.resources => 345
	i64 u0x4fdc964ec1888e25, ; 452: lib_Microsoft.Extensions.Configuration.Binder.dll.so => 202
	i64 u0x4ffd65baff757598, ; 453: Microsoft.IdentityModel.Tokens => 223
	i64 u0x5037f0be3c28c7a3, ; 454: lib_Microsoft.Maui.Controls.dll.so => 227
	i64 u0x50ae1710326f19b5, ; 455: ru/System.ServiceModel.NetTcp.resources => 439
	i64 u0x50c3a29b21050d45, ; 456: System.Linq.Parallel.dll => 60
	i64 u0x5112ed116d87baf8, ; 457: CommunityToolkit.Mvvm => 178
	i64 u0x5116b21580ae6eb0, ; 458: Microsoft.Extensions.Configuration.Binder.dll => 202
	i64 u0x5131bbe80989093f, ; 459: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 301
	i64 u0x516324a5050a7e3c, ; 460: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 461: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 462: System.Drawing => 36
	i64 u0x51eac63211d0f61c, ; 463: ja/System.Web.Services.Description.resources.dll => 461
	i64 u0x5216f09c5c4c95c8, ; 464: Microsoft.AspNetCore.Authentication.Abstractions => 183
	i64 u0x521a910269354815, ; 465: fr/System.ServiceModel.NetFramingBase.resources => 407
	i64 u0x5247c5c32a4140f0, ; 466: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 467: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 298
	i64 u0x526ce79eb8e90527, ; 468: lib_System.Net.Primitives.dll.so => 71
	i64 u0x527497f521875686, ; 469: Microsoft.AspNetCore.Http.Abstractions => 192
	i64 u0x52829f00b4467c38, ; 470: lib_System.Data.Common.dll.so => 22
	i64 u0x529ffe06f39ab8db, ; 471: Xamarin.AndroidX.Core => 275
	i64 u0x52be94ff42700e8a, ; 472: cs/System.Web.Services.Description.resources.dll => 456
	i64 u0x52ff996554dbf352, ; 473: Microsoft.Maui.Graphics => 231
	i64 u0x5324b9a9dedb24aa, ; 474: Microsoft.AspNetCore.Cryptography.Internal => 186
	i64 u0x5332096658d1c250, ; 475: lib-ja-System.ServiceModel.Primitives.resources.dll.so => 448
	i64 u0x535f7e40e8fef8af, ; 476: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 369
	i64 u0x53978aac584c666e, ; 477: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x539fb7ecc3c8ef60, ; 478: zh-Hans/System.Web.Services.Description.resources.dll => 467
	i64 u0x53a96d5c86c9e194, ; 479: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 480: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 481: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 375
	i64 u0x53e450ebd586f842, ; 482: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 305
	i64 u0x5435e6f049e9bc37, ; 483: System.Security.Claims.dll => 119
	i64 u0x5457fa7c2ea8234d, ; 484: ko/System.ServiceModel.NetTcp.resources.dll => 436
	i64 u0x54795225dd1587af, ; 485: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 486: Xamarin.AndroidX.Lifecycle.Common.dll => 290
	i64 u0x54a0124adceadbc7, ; 487: Microsoft.AspNetCore.DataProtection => 187
	i64 u0x556e8b63b660ab8b, ; 488: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 291
	i64 u0x5588627c9a108ec9, ; 489: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 490: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55da662db51b0d0a, ; 491: ko/System.ServiceModel.NetNamedPipe.resources => 423
	i64 u0x55fa0c610fe93bb1, ; 492: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 493: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x564c325249a9f66f, ; 494: lib_System.ServiceModel.NetFramingBase.dll.so => 244
	i64 u0x564f338c00f45c4e, ; 495: System.ServiceModel.Security.dll => 249
	i64 u0x56a8b26e1aeae27b, ; 496: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 497: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 498: System.Private.Uri => 87
	i64 u0x575ea136f0458b87, ; 499: lib-de-System.ServiceModel.NetFramingBase.resources.dll.so => 405
	i64 u0x576499c9f52fea31, ; 500: Xamarin.AndroidX.Annotation => 259
	i64 u0x579a06fed6eec900, ; 501: System.Private.CoreLib.dll => 173
	i64 u0x57adda3c951abb33, ; 502: Microsoft.Extensions.Hosting.Abstractions.dll => 206
	i64 u0x57c542c14049b66d, ; 503: System.Diagnostics.DiagnosticSource => 27
	i64 u0x57e01be59902581a, ; 504: lib-pt-BR-System.ServiceModel.NetFramingBase.resources.dll.so => 412
	i64 u0x57e05166ece2809d, ; 505: System.ServiceModel.NetNamedPipe.dll => 245
	i64 u0x581a8bd5cfda563e, ; 506: System.Threading.Timer => 148
	i64 u0x584ac38e21d2fde1, ; 507: Microsoft.Extensions.Configuration.Binder => 202
	i64 u0x58601b2dda4a27b9, ; 508: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 359
	i64 u0x58688d9af496b168, ; 509: Microsoft.Extensions.DependencyInjection.dll => 203
	i64 u0x587f59a16b329d9c, ; 510: Microsoft.Net.Http.Headers => 232
	i64 u0x588c167a79db6bfb, ; 511: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 332
	i64 u0x5906028ae5151104, ; 512: Xamarin.AndroidX.Activity.Ktx => 258
	i64 u0x595a356d23e8da9a, ; 513: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59b3b52a0d319260, ; 514: CoreWCF.Primitives.dll => 180
	i64 u0x59c270386bf40142, ; 515: Microsoft.AspNetCore.Hosting.Server.Abstractions => 190
	i64 u0x59ce7a94c58f2695, ; 516: lib-pl-System.ServiceModel.NetTcp.resources.dll.so => 437
	i64 u0x59ddb23cfc360e17, ; 517: lib-zh-Hant-System.ServiceModel.Primitives.resources.dll.so => 455
	i64 u0x59f9e60b9475085f, ; 518: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 260
	i64 u0x5a745f5101a75527, ; 519: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 520: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 274
	i64 u0x5a8f6699f4a1caa9, ; 521: lib_System.Threading.dll.so => 149
	i64 u0x5ae1c42eef178fa6, ; 522: lib-ru-System.ServiceModel.Federation.resources.dll.so => 387
	i64 u0x5ae8e4f3eae4d547, ; 523: Xamarin.AndroidX.Legacy.Support.Core.Utils => 289
	i64 u0x5ae9cd33b15841bf, ; 524: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 525: System.Private.DataContractSerialization => 86
	i64 u0x5b5f0e240a06a2a2, ; 526: da/Microsoft.Maui.Controls.resources.dll => 347
	i64 u0x5b8109e8e14c5e3e, ; 527: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 528: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 294
	i64 u0x5bdf16b09da116ab, ; 529: Xamarin.AndroidX.Collection => 268
	i64 u0x5beaa5537d2016c6, ; 530: ko/System.ServiceModel.NetTcp.resources => 436
	i64 u0x5c019d5266093159, ; 531: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 299
	i64 u0x5c30a4a35f9cc8c4, ; 532: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 533: lib_Microsoft.Extensions.Logging.dll.so => 207
	i64 u0x5c53c29f5073b0c9, ; 534: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 535: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 536: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d40c9b15181641f, ; 537: lib_Xamarin.AndroidX.Emoji2.dll.so => 283
	i64 u0x5d50f5a48a25d1bb, ; 538: cs/System.ServiceModel.NetNamedPipe.resources.dll => 417
	i64 u0x5d67fb6a3d77b941, ; 539: lib-de-System.ServiceModel.Http.resources.dll.so => 392
	i64 u0x5d6ca10d35e9485b, ; 540: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 271
	i64 u0x5d7ec76c1c703055, ; 541: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 542: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 543: Xamarin.AndroidX.Collection.Jvm.dll => 269
	i64 u0x5e467bc8f09ad026, ; 544: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 545: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 546: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 547: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 548: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 549: System.Net.HttpListener.dll => 66
	i64 u0x5ef0acd1d8df19b8, ; 550: lib-zh-Hant-System.Web.Services.Description.resources.dll.so => 468
	i64 u0x5f36ccf5c6a57e24, ; 551: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 552: System.Data.Common => 22
	i64 u0x5f5dead1729ff57e, ; 553: lib-zh-Hans-System.ServiceModel.NetNamedPipe.resources.dll.so => 428
	i64 u0x5f9a2d823f664957, ; 554: lib-el-Microsoft.Maui.Controls.resources.dll.so => 349
	i64 u0x5fa6da9c3cd8142a, ; 555: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 342
	i64 u0x5fac98e0b37a5b9d, ; 556: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x5fd02402d97cdaab, ; 557: lib_Microsoft.Extensions.ObjectPool.dll.so => 212
	i64 u0x5fe9f6784e283873, ; 558: ja/System.ServiceModel.NetTcp.resources => 435
	i64 u0x609f4b7b63d802d4, ; 559: lib_Microsoft.Extensions.DependencyInjection.dll.so => 203
	i64 u0x60cd4e33d7e60134, ; 560: Xamarin.KotlinX.Coroutines.Core.Jvm => 341
	i64 u0x60f62d786afcf130, ; 561: System.Memory => 63
	i64 u0x61bb78c89f867353, ; 562: System.IO => 58
	i64 u0x61be8d1299194243, ; 563: Microsoft.Maui.Controls.Xaml => 228
	i64 u0x61d2cba29557038f, ; 564: de/Microsoft.Maui.Controls.resources => 348
	i64 u0x61d88f399afb2f45, ; 565: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 566: System.Private.CoreLib => 173
	i64 u0x631f98ea9b294775, ; 567: lib-fr-System.ServiceModel.NetNamedPipe.resources.dll.so => 420
	i64 u0x63d5e3aa4ef9b931, ; 568: Xamarin.KotlinX.Coroutines.Android.dll => 339
	i64 u0x63f1f6883c1e23c2, ; 569: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 570: Xamarin.Google.Android.Material.dll => 329
	i64 u0x640e3b14dbd325c2, ; 571: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x642bb5b52ddaa236, ; 572: pt-BR/System.ServiceModel.Federation.resources => 386
	i64 u0x64587004560099b9, ; 573: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 574: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x652e228a3d19ed88, ; 575: de/System.ServiceModel.NetNamedPipe.resources.dll => 418
	i64 u0x653870ccb2a90289, ; 576: WCF => 252
	i64 u0x6564a54ee07ff3d3, ; 577: ja/System.ServiceModel.Primitives.resources.dll => 448
	i64 u0x6565fba2cd8f235b, ; 578: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 302
	i64 u0x658f524e4aba7dad, ; 579: CommunityToolkit.Maui.dll => 176
	i64 u0x65ecac39144dd3cc, ; 580: Microsoft.Maui.Controls.dll => 227
	i64 u0x65ece51227bfa724, ; 581: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 582: Xamarin.AndroidX.Annotation.Jvm.dll => 261
	i64 u0x6679b2337ee6b22a, ; 583: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 584: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 585: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 301
	i64 u0x66d13304ce1a3efa, ; 586: Xamarin.AndroidX.CursorAdapter => 277
	i64 u0x66fc75e2c1d29d35, ; 587: pt-BR/System.ServiceModel.Http.resources.dll => 399
	i64 u0x670aff70911d9fa5, ; 588: zh-Hans/System.ServiceModel.Federation.resources.dll => 389
	i64 u0x674303f65d8fad6f, ; 589: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 590: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 273
	i64 u0x67c0802770244408, ; 591: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 592: lib_System.Formats.Tar.dll.so => 39
	i64 u0x682e32a3fa5d0870, ; 593: cs/System.ServiceModel.NetFramingBase.resources => 404
	i64 u0x68558ec653afa616, ; 594: lib-da-Microsoft.Maui.Controls.resources.dll.so => 347
	i64 u0x6872ec7a2e36b1ac, ; 595: System.Drawing.Primitives.dll => 35
	i64 u0x68770b93bfc21a10, ; 596: lib-zh-Hant-System.ServiceModel.NetNamedPipe.resources.dll.so => 429
	i64 u0x68bb2c417aa9b61c, ; 597: Xamarin.KotlinX.AtomicFU.dll => 337
	i64 u0x68fbbbe2eb455198, ; 598: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 599: he/Microsoft.Maui.Controls.resources.dll => 353
	i64 u0x695ad2c875d94379, ; 600: lib-ru-System.Web.Services.Description.resources.dll.so => 465
	i64 u0x69a3e26c76f6eec4, ; 601: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 328
	i64 u0x69ad9c8949c089ce, ; 602: System.ServiceModel.Duplex.dll => 247
	i64 u0x6a4d7577b2317255, ; 603: System.Runtime.InteropServices.dll => 108
	i64 u0x6a898fd8e0027f5f, ; 604: lib-it-System.ServiceModel.Http.resources.dll.so => 395
	i64 u0x6ace3b74b15ee4a4, ; 605: nb/Microsoft.Maui.Controls.resources => 362
	i64 u0x6afcedb171067e2b, ; 606: System.Core.dll => 21
	i64 u0x6b0384b6e0da1492, ; 607: System.ServiceModel.Duplex => 247
	i64 u0x6b59389970ee1fc9, ; 608: lib-ja-System.ServiceModel.NetFramingBase.resources.dll.so => 409
	i64 u0x6bef98e124147c24, ; 609: Xamarin.Jetbrains.Annotations => 334
	i64 u0x6c0d56cccdc3d6af, ; 610: System.ServiceModel.Security => 249
	i64 u0x6c375d328bf6e758, ; 611: pl/System.ServiceModel.Federation.resources => 385
	i64 u0x6ce874bff138ce2b, ; 612: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 300
	i64 u0x6d0a12b2adba20d8, ; 613: System.Security.Cryptography.ProtectedData.dll => 240
	i64 u0x6d12bfaa99c72b1f, ; 614: lib_Microsoft.Maui.Graphics.dll.so => 231
	i64 u0x6d70755158ca866e, ; 615: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 616: Microsoft.Extensions.Primitives => 215
	i64 u0x6d7eeca99577fc8b, ; 617: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 618: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 619: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 277
	i64 u0x6d87383d6be82905, ; 620: lib-es-System.ServiceModel.NetTcp.resources.dll.so => 432
	i64 u0x6d8bf5f20c354799, ; 621: System.ServiceModel.NetFramingBase.dll => 244
	i64 u0x6d9bea6b3e895cf7, ; 622: Microsoft.Extensions.Primitives.dll => 215
	i64 u0x6dd9bf4083de3f6a, ; 623: Xamarin.AndroidX.DocumentFile.dll => 280
	i64 u0x6df9966caa8dde54, ; 624: pt-BR/System.ServiceModel.NetFramingBase.resources => 412
	i64 u0x6dfd14f3374dea80, ; 625: fr/System.ServiceModel.NetTcp.resources => 433
	i64 u0x6e25a02c3833319a, ; 626: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 307
	i64 u0x6e46b608de8d2d37, ; 627: lib-pl-System.ServiceModel.NetFramingBase.resources.dll.so => 411
	i64 u0x6e79c6bd8627412a, ; 628: Xamarin.AndroidX.SavedState.SavedState.Ktx => 315
	i64 u0x6e838d9a2a6f6c9e, ; 629: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e87abad812686e7, ; 630: lib-ru-System.ServiceModel.Http.resources.dll.so => 400
	i64 u0x6e9965ce1095e60a, ; 631: lib_System.Core.dll.so => 21
	i64 u0x6ee83429f000d8b2, ; 632: zh-Hans/System.ServiceModel.NetFramingBase.resources.dll => 415
	i64 u0x6fd2265da78b93a4, ; 633: lib_Microsoft.Maui.dll.so => 229
	i64 u0x6fdfc7de82c33008, ; 634: cs/Microsoft.Maui.Controls.resources => 346
	i64 u0x6fea42939b3dbc23, ; 635: Microsoft.AspNetCore.WebSockets.dll => 195
	i64 u0x6ffc4967cc47ba57, ; 636: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 637: System.IO.FileSystem.dll => 51
	i64 u0x7081016708b8d5e3, ; 638: pt-BR/System.ServiceModel.Federation.resources.dll => 386
	i64 u0x70c1154d9ce7bd51, ; 639: Xamarin.Kotlin.StdLib.Common.dll => 336
	i64 u0x70e99f48c05cb921, ; 640: tr/Microsoft.Maui.Controls.resources.dll => 372
	i64 u0x70fd3deda22442d2, ; 641: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 362
	i64 u0x713112014e7bcddd, ; 642: ja/System.ServiceModel.Federation.resources.dll => 383
	i64 u0x7147470744a19d10, ; 643: ru/System.ServiceModel.Primitives.resources => 452
	i64 u0x71485e7ffdb4b958, ; 644: System.Reflection.Extensions => 94
	i64 u0x715fb0ff95d2580a, ; 645: pl/System.ServiceModel.NetTcp.resources.dll => 437
	i64 u0x7162a2fce67a945f, ; 646: lib_Xamarin.Android.Glide.Annotations.dll.so => 254
	i64 u0x71a495ea3761dde8, ; 647: lib-it-Microsoft.Maui.Controls.resources.dll.so => 358
	i64 u0x71ad672adbe48f35, ; 648: System.ComponentModel.Primitives.dll => 16
	i64 u0x71bc142d620e986a, ; 649: lib_System.Security.Cryptography.Pkcs.dll.so => 239
	i64 u0x7221269c09f481ba, ; 650: lib-es-System.ServiceModel.Federation.resources.dll.so => 380
	i64 u0x725f5a9e82a45c81, ; 651: System.Security.Cryptography.Encoding => 123
	i64 u0x72b1fb4109e08d7b, ; 652: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 355
	i64 u0x72e0300099accce1, ; 653: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 654: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 655: Xamarin.Google.ErrorProne.Annotations.dll => 332
	i64 u0x733551c04d9cc934, ; 656: lib_CoreWCF.Http.dll.so => 179
	i64 u0x734b76fdc0dc05bb, ; 657: lib_GoogleGson.dll.so => 181
	i64 u0x73a6be34e822f9d1, ; 658: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 659: lib_System.Memory.dll.so => 63
	i64 u0x73efe3fe81397f7d, ; 660: tr/System.ServiceModel.NetTcp.resources => 440
	i64 u0x73fd725e25508c92, ; 661: ja/System.ServiceModel.Http.resources.dll => 396
	i64 u0x743a1eccf080489a, ; 662: WindowsBase.dll => 166
	i64 u0x748e45a5491b990a, ; 663: zh-Hans/System.ServiceModel.Primitives.resources => 454
	i64 u0x755a91767330b3d4, ; 664: lib_Microsoft.Extensions.Configuration.dll.so => 200
	i64 u0x75c326eb821b85c4, ; 665: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x76012e7334db86e5, ; 666: lib_Xamarin.AndroidX.SavedState.dll.so => 314
	i64 u0x76990c4120a9d046, ; 667: lib-fr-System.ServiceModel.Http.resources.dll.so => 394
	i64 u0x76ca07b878f44da0, ; 668: System.Runtime.Numerics.dll => 111
	i64 u0x7720bbea3c69ef22, ; 669: pl/System.ServiceModel.Http.resources => 398
	i64 u0x7736c8a96e51a061, ; 670: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 261
	i64 u0x778a805e625329ef, ; 671: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 672: Xamarin.KotlinX.AtomicFU.Jvm => 338
	i64 u0x77949a8bd3fbba4e, ; 673: lib-zh-Hant-System.ServiceModel.NetTcp.resources.dll.so => 442
	i64 u0x77f8a4acc2fdc449, ; 674: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 675: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 361
	i64 u0x782c5d8eb99ff201, ; 676: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 677: th/Microsoft.Maui.Controls.resources.dll => 371
	i64 u0x785583be4be89193, ; 678: lib-zh-Hans-System.ServiceModel.NetFramingBase.resources.dll.so => 415
	i64 u0x78a45e51311409b6, ; 679: Xamarin.AndroidX.Fragment.dll => 286
	i64 u0x78a877f2596620e6, ; 680: lib_Microsoft.AspNetCore.WebSockets.dll.so => 195
	i64 u0x78ed4ab8f9d800a1, ; 681: Xamarin.AndroidX.Lifecycle.ViewModel => 300
	i64 u0x78f8254f77f884f2, ; 682: lib_System.ServiceModel.NetTcp.dll.so => 246
	i64 u0x79e0d4b3d9096568, ; 683: ja/System.ServiceModel.NetNamedPipe.resources.dll => 422
	i64 u0x7a39601d6f0bb831, ; 684: lib_Xamarin.KotlinX.AtomicFU.dll.so => 337
	i64 u0x7a7e7eddf79c5d26, ; 685: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 300
	i64 u0x7a9a57d43b0845fa, ; 686: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 687: Xamarin.AndroidX.Collection.dll => 268
	i64 u0x7adb8da2ac89b647, ; 688: fi/Microsoft.Maui.Controls.resources.dll => 351
	i64 u0x7b13d9eaa944ade8, ; 689: Xamarin.AndroidX.DynamicAnimation.dll => 282
	i64 u0x7b4927e421291c41, ; 690: Microsoft.IdentityModel.JsonWebTokens.dll => 218
	i64 u0x7b856fa105a9ef99, ; 691: Microsoft.AspNetCore.WebSockets => 195
	i64 u0x7bef86a4335c4870, ; 692: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 693: sk/Microsoft.Maui.Controls.resources.dll => 369
	i64 u0x7c2a0bd1e0f988fc, ; 694: lib-de-Microsoft.Maui.Controls.resources.dll.so => 348
	i64 u0x7c41d387501568ba, ; 695: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 696: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 272
	i64 u0x7c8bd73959bbb0a8, ; 697: zh-Hant/System.ServiceModel.NetFramingBase.resources => 416
	i64 u0x7cc637f941f716d0, ; 698: CommunityToolkit.Maui.Core => 177
	i64 u0x7cd2ec8eaf5241cd, ; 699: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 700: Xamarin.Jetbrains.Annotations.dll => 334
	i64 u0x7d02354365aee2fa, ; 701: lib-fr-System.ServiceModel.Federation.resources.dll.so => 381
	i64 u0x7d649b75d580bb42, ; 702: ms/Microsoft.Maui.Controls.resources.dll => 361
	i64 u0x7d8ee2bdc8e3aad1, ; 703: System.Numerics.Vectors => 83
	i64 u0x7df5df8db8eaa6ac, ; 704: Microsoft.Extensions.Logging.Debug => 211
	i64 u0x7dfc3d6d9d8d7b70, ; 705: System.Collections => 12
	i64 u0x7e2e564fa2f76c65, ; 706: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 707: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4084a672f9c30e, ; 708: lib_System.Security.Cryptography.Xml.dll.so => 241
	i64 u0x7e4465b3f78ad8d0, ; 709: Xamarin.KotlinX.Serialization.Core.dll => 342
	i64 u0x7e571cad5915e6c3, ; 710: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 295
	i64 u0x7e6b1ca712437d7d, ; 711: Xamarin.AndroidX.Emoji2.ViewsHelper => 284
	i64 u0x7e946809d6008ef2, ; 712: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0272c1b4a9635, ; 713: lib_Xamarin.Android.Glide.dll.so => 253
	i64 u0x7ecc13347c8fd849, ; 714: lib_System.ComponentModel.dll.so => 18
	i64 u0x7eff369f2e01cf95, ; 715: Microsoft.AspNetCore.Http.Features => 194
	i64 u0x7f00ddd9b9ca5a13, ; 716: Xamarin.AndroidX.ViewPager.dll => 325
	i64 u0x7f9351cd44b1273f, ; 717: Microsoft.Extensions.Configuration.Abstractions => 201
	i64 u0x7fbd557c99b3ce6f, ; 718: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 293
	i64 u0x7fd423ee8ec71b4e, ; 719: lib-cs-System.ServiceModel.Federation.resources.dll.so => 378
	i64 u0x8076a9a44a2ca331, ; 720: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 721: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 470
	i64 u0x80d3153596637bd3, ; 722: lib-zh-Hant-System.ServiceModel.Http.resources.dll.so => 403
	i64 u0x80da183a87731838, ; 723: System.Reflection.Metadata => 95
	i64 u0x811b4d215b576447, ; 724: System.Net.WebSockets.WebSocketProtocol.dll => 238
	i64 u0x812c069d5cdecc17, ; 725: System.dll => 165
	i64 u0x81381be520a60adb, ; 726: Xamarin.AndroidX.Interpolator.dll => 288
	i64 u0x81657cec2b31e8aa, ; 727: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 728: zh-Hant/Microsoft.Maui.Controls.resources => 377
	i64 u0x822aa49008112ebe, ; 729: Microsoft.Extensions.ObjectPool => 212
	i64 u0x8277f2be6b5ce05f, ; 730: Xamarin.AndroidX.AppCompat => 262
	i64 u0x828f06563b30bc50, ; 731: lib_Xamarin.AndroidX.CardView.dll.so => 267
	i64 u0x82920a8d9194a019, ; 732: Xamarin.KotlinX.AtomicFU.Jvm.dll => 338
	i64 u0x82b399cb01b531c4, ; 733: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 734: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 735: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 736: uk/Microsoft.Maui.Controls.resources => 373
	i64 u0x833fbaaf1783b01c, ; 737: lib-ko-System.ServiceModel.Primitives.resources.dll.so => 449
	i64 u0x8351877ccf75a94c, ; 738: lib-es-System.ServiceModel.Http.resources.dll.so => 393
	i64 u0x83a7afd2c49adc86, ; 739: lib_Microsoft.IdentityModel.Abstractions.dll.so => 217
	i64 u0x83c14ba66c8e2b8c, ; 740: zh-Hans/Microsoft.Maui.Controls.resources => 376
	i64 u0x846ce984efea52c7, ; 741: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 742: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 743: System.Runtime.Serialization.Json.dll => 113
	i64 u0x84b913cb6ead65d0, ; 744: lib-tr-System.ServiceModel.NetTcp.resources.dll.so => 440
	i64 u0x84f20950c4c7164b, ; 745: Microsoft.AspNetCore.Http => 191
	i64 u0x850c5ba0b57ce8e7, ; 746: lib_Xamarin.AndroidX.Collection.dll.so => 268
	i64 u0x851d02edd334b044, ; 747: Xamarin.AndroidX.VectorDrawable => 322
	i64 u0x85c919db62150978, ; 748: Xamarin.AndroidX.Transition.dll => 321
	i64 u0x8631da6322beaf74, ; 749: ja/System.ServiceModel.NetFramingBase.resources => 409
	i64 u0x8662aaeb94fef37f, ; 750: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x866d7e7592718c99, ; 751: System.ServiceModel => 250
	i64 u0x86a909228dc7657b, ; 752: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 377
	i64 u0x86b3e00c36b84509, ; 753: Microsoft.Extensions.Configuration.dll => 200
	i64 u0x86b62cb077ec4fd7, ; 754: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 755: Xamarin.AndroidX.Annotation.Experimental => 260
	i64 u0x872a5b14c18d328c, ; 756: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 757: Xamarin.Android.Glide.Annotations.dll => 254
	i64 u0x878e0bbd0ce1b004, ; 758: lib-pl-System.ServiceModel.Http.resources.dll.so => 398
	i64 u0x87a22aa00ca54eb5, ; 759: it/System.Web.Services.Description.resources => 460
	i64 u0x87c69b87d9283884, ; 760: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87d6cb5c641c5f07, ; 761: Microsoft.AspNetCore.Http.Abstractions.dll => 192
	i64 u0x87f6569b25707834, ; 762: System.IO.Compression.Brotli.dll => 43
	i64 u0x8842b3a5d2d3fb36, ; 763: Microsoft.Maui.Essentials => 230
	i64 u0x88926583efe7ee86, ; 764: Xamarin.AndroidX.Activity.Ktx.dll => 258
	i64 u0x88ba6bc4f7762b03, ; 765: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 766: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 341
	i64 u0x8930322c7bd8f768, ; 767: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 768: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 769: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 770: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a0b6f586fccda8a, ; 771: lib_Microsoft.AspNetCore.Http.Extensions.dll.so => 193
	i64 u0x8a14bf4400a024af, ; 772: lib_Microsoft.AspNetCore.Http.Features.dll.so => 194
	i64 u0x8a19e3dc71b34b2c, ; 773: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8a399a706fcbce4b, ; 774: Microsoft.Extensions.Caching.Abstractions => 198
	i64 u0x8a71752fbc7da61f, ; 775: cs/System.Web.Services.Description.resources => 456
	i64 u0x8ad229ea26432ee2, ; 776: Xamarin.AndroidX.Loader => 304
	i64 u0x8afcc90f8e8c2e2b, ; 777: ru/System.ServiceModel.Federation.resources.dll => 387
	i64 u0x8b4ff5d0fdd5faa1, ; 778: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 779: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 780: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 781: lib-he-Microsoft.Maui.Controls.resources.dll.so => 353
	i64 u0x8bb8206f414c7c3b, ; 782: Microsoft.AspNetCore.Authentication.Core.dll => 184
	i64 u0x8c575135aa1ccef4, ; 783: Microsoft.Extensions.FileProviders.Abstractions => 205
	i64 u0x8cb6d28731d97279, ; 784: System.DirectoryServices.Protocols => 236
	i64 u0x8cb8f612b633affb, ; 785: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 315
	i64 u0x8cdfdb4ce85fb925, ; 786: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 787: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 788: Xamarin.AndroidX.CursorAdapter.dll => 277
	i64 u0x8d52f7ea2796c531, ; 789: Xamarin.AndroidX.Emoji2.dll => 283
	i64 u0x8d7b8ab4b3310ead, ; 790: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 791: System.Collections.Concurrent => 8
	i64 u0x8dce248c34c54ef3, ; 792: lib_Microsoft.AspNetCore.Hosting.Abstractions.dll.so => 189
	i64 u0x8ec6e06a61c1baeb, ; 793: lib_Newtonsoft.Json.dll.so => 233
	i64 u0x8ed807bfe9858dfc, ; 794: Xamarin.AndroidX.Navigation.Common => 306
	i64 u0x8ee08b8194a30f48, ; 795: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 354
	i64 u0x8ef7601039857a44, ; 796: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 367
	i64 u0x8f32c6f611f6ffab, ; 797: pt/Microsoft.Maui.Controls.resources.dll => 366
	i64 u0x8f44b45eb046bbd1, ; 798: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 799: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 365
	i64 u0x8f89a9946e9a8fdf, ; 800: ja/System.ServiceModel.NetFramingBase.resources.dll => 409
	i64 u0x8fa1f9e5b4c70998, ; 801: zh-Hant/System.ServiceModel.NetNamedPipe.resources => 429
	i64 u0x8fbf5b0114c6dcef, ; 802: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 803: Xamarin.KotlinX.Serialization.Core => 342
	i64 u0x90263f8448b8f572, ; 804: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 805: _Microsoft.Android.Resource.Designer => 472
	i64 u0x90393bd4865292f3, ; 806: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 807: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 808: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 301
	i64 u0x907b636704ad79ef, ; 809: lib_Microsoft.Maui.Controls.Xaml.dll.so => 228
	i64 u0x90e9efbfd68593e0, ; 810: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 292
	i64 u0x91418dc638b29e68, ; 811: lib_Xamarin.AndroidX.CustomView.dll.so => 278
	i64 u0x9157bd523cd7ed36, ; 812: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 813: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 814: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 815: ca/Microsoft.Maui.Controls.resources.dll => 345
	i64 u0x92054e486c0c7ea7, ; 816: System.IO.FileSystem.DriveInfo => 48
	i64 u0x9218ebac4a13547d, ; 817: zh-Hant/System.ServiceModel.Primitives.resources.dll => 455
	i64 u0x923bad60e6cb0021, ; 818: System.ServiceModel.Federation.dll => 242
	i64 u0x928614058c40c4cd, ; 819: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92b138fffca2b01e, ; 820: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 265
	i64 u0x92ce77ee04e6f7dd, ; 821: lib-tr-System.Web.Services.Description.resources.dll.so => 466
	i64 u0x92dfc2bfc6c6a888, ; 822: Xamarin.AndroidX.Lifecycle.LiveData => 292
	i64 u0x932854049fafcef3, ; 823: pl/System.Web.Services.Description.resources => 463
	i64 u0x933da2c779423d68, ; 824: Xamarin.Android.Glide.Annotations => 254
	i64 u0x9341e399de892d37, ; 825: lib-ja-System.ServiceModel.NetTcp.resources.dll.so => 435
	i64 u0x937da0a16be46300, ; 826: lib_Microsoft.IdentityModel.Protocols.WsFederation.dll.so => 221
	i64 u0x9388aad9b7ae40ce, ; 827: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 290
	i64 u0x93cfa73ab28d6e35, ; 828: ms/Microsoft.Maui.Controls.resources => 361
	i64 u0x941c00d21e5c0679, ; 829: lib_Xamarin.AndroidX.Transition.dll.so => 321
	i64 u0x944077d8ca3c6580, ; 830: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 831: System.Xml => 164
	i64 u0x948d746a7702861f, ; 832: Microsoft.IdentityModel.Logging.dll => 219
	i64 u0x94c8990839c4bdb1, ; 833: lib_Xamarin.AndroidX.Interpolator.dll.so => 288
	i64 u0x9564283c37ed59a9, ; 834: lib_Microsoft.IdentityModel.Logging.dll.so => 219
	i64 u0x95f877d329f69012, ; 835: lib_System.ServiceModel.Primitives.dll.so => 248
	i64 u0x95fbf10ee2f6bba2, ; 836: de/System.ServiceModel.NetFramingBase.resources => 405
	i64 u0x9606d8de2a1bdf46, ; 837: de/System.Web.Services.Description.resources => 457
	i64 u0x967fc325e09bfa8c, ; 838: es/Microsoft.Maui.Controls.resources => 350
	i64 u0x9686161486d34b81, ; 839: lib_Xamarin.AndroidX.ExifInterface.dll.so => 285
	i64 u0x9732d8dbddea3d9a, ; 840: id/Microsoft.Maui.Controls.resources => 357
	i64 u0x978be80e5210d31b, ; 841: Microsoft.Maui.Graphics.dll => 231
	i64 u0x97b8c771ea3e4220, ; 842: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 843: System.Collections.Concurrent.dll => 8
	i64 u0x97e62b58d5c7d5f9, ; 844: lib_Microsoft.Extensions.Logging.Console.dll.so => 210
	i64 u0x984184e3c70d4419, ; 845: GoogleGson => 181
	i64 u0x9843944103683dd3, ; 846: Xamarin.AndroidX.Core.Core.Ktx => 276
	i64 u0x98d720cc4597562c, ; 847: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 848: System.Linq.Expressions => 59
	i64 u0x993cc632e821c001, ; 849: Microsoft.Maui.Controls.Compatibility => 226
	i64 u0x996ceeb8a3da3d67, ; 850: System.Threading.Overlapped.dll => 141
	i64 u0x99934fbe450187c6, ; 851: lib-it-System.ServiceModel.NetTcp.resources.dll.so => 434
	i64 u0x999cb19e1a04ffd3, ; 852: CommunityToolkit.Mvvm.dll => 178
	i64 u0x99a00ca5270c6878, ; 853: Xamarin.AndroidX.Navigation.Runtime => 308
	i64 u0x99cdc6d1f2d3a72f, ; 854: ko/Microsoft.Maui.Controls.resources.dll => 360
	i64 u0x9a01b1da98b6ee10, ; 855: Xamarin.AndroidX.Lifecycle.Runtime.dll => 296
	i64 u0x9a0cc42c6f36dfc9, ; 856: lib_Microsoft.IdentityModel.Protocols.dll.so => 220
	i64 u0x9a5ccc274fd6e6ee, ; 857: Jsr305Binding.dll => 330
	i64 u0x9ae6940b11c02876, ; 858: lib_Xamarin.AndroidX.Window.dll.so => 327
	i64 u0x9b211a749105beac, ; 859: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 860: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 861: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 340
	i64 u0x9bd8cc74558ad4c7, ; 862: Xamarin.KotlinX.AtomicFU => 337
	i64 u0x9c244ac7cda32d26, ; 863: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c403155b5502882, ; 864: lib-ru-System.ServiceModel.Primitives.resources.dll.so => 452
	i64 u0x9c465f280cf43733, ; 865: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 339
	i64 u0x9c8f6872beab6408, ; 866: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 867: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 868: Xamarin.AndroidX.CustomView.PoolingContainer => 279
	i64 u0x9d5dbcf5a48583fe, ; 869: lib_Xamarin.AndroidX.Activity.dll.so => 257
	i64 u0x9d74dee1a7725f34, ; 870: Microsoft.Extensions.Configuration.Abstractions.dll => 201
	i64 u0x9e4534b6adaf6e84, ; 871: nl/Microsoft.Maui.Controls.resources => 363
	i64 u0x9e4b95dec42769f7, ; 872: System.Diagnostics.Debug.dll => 26
	i64 u0x9e6a8a55037a5caa, ; 873: es/System.ServiceModel.Primitives.resources.dll => 445
	i64 u0x9eaf1efdf6f7267e, ; 874: Xamarin.AndroidX.Navigation.Common.dll => 306
	i64 u0x9eb8a556818001d1, ; 875: pt-BR/System.ServiceModel.NetNamedPipe.resources.dll => 425
	i64 u0x9ebd8db4d3870726, ; 876: de/System.ServiceModel.NetFramingBase.resources.dll => 405
	i64 u0x9ef542cf1f78c506, ; 877: Xamarin.AndroidX.Lifecycle.LiveData.Core => 293
	i64 u0x9f1905ae37dbd11c, ; 878: System.ServiceModel.NetTcp.dll => 246
	i64 u0x9f25cb98123b3ca9, ; 879: lib-es-System.Web.Services.Description.resources.dll.so => 458
	i64 u0x9f684513be542dc3, ; 880: fr/System.Web.Services.Description.resources => 459
	i64 u0x9fa837427b466b41, ; 881: lib-cs-System.ServiceModel.NetFramingBase.resources.dll.so => 404
	i64 u0xa00832eb975f56a8, ; 882: lib_System.Net.dll.so => 82
	i64 u0xa01cc297ba3b76e8, ; 883: LiverLife => 0
	i64 u0xa0223992a68bef2a, ; 884: fr/System.ServiceModel.Federation.resources.dll => 381
	i64 u0xa0ad78236b7b267f, ; 885: Xamarin.AndroidX.Window => 327
	i64 u0xa0cc72702627edad, ; 886: ko/System.ServiceModel.Http.resources.dll => 397
	i64 u0xa0d8259f4cc284ec, ; 887: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 888: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 331
	i64 u0xa0ff9b3e34d92f11, ; 889: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa1264cb81e9af76f, ; 890: ru/System.ServiceModel.NetNamedPipe.resources => 426
	i64 u0xa12fbfb4da97d9f3, ; 891: System.Threading.Timer.dll => 148
	i64 u0xa1440773ee9d341e, ; 892: Xamarin.Google.Android.Material => 329
	i64 u0xa1b9d7c27f47219f, ; 893: Xamarin.AndroidX.Navigation.UI.dll => 309
	i64 u0xa2572680829d2c7c, ; 894: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 895: System.Xml.XmlDocument.dll => 162
	i64 u0xa28b7bc6161ac02d, ; 896: zh-Hans/System.ServiceModel.NetNamedPipe.resources => 428
	i64 u0xa308401900e5bed3, ; 897: lib_mscorlib.dll.so => 167
	i64 u0xa322e794ce57c4bb, ; 898: es/System.ServiceModel.NetNamedPipe.resources => 419
	i64 u0xa37a376ac4d769f4, ; 899: lib-cs-System.ServiceModel.Http.resources.dll.so => 391
	i64 u0xa395572e7da6c99d, ; 900: lib_System.Security.dll.so => 131
	i64 u0xa3c64c49e90a9987, ; 901: System.Security.Cryptography.Pkcs => 239
	i64 u0xa3e683f24b43af6f, ; 902: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 903: Xamarin.AndroidX.VectorDrawable.Animated => 323
	i64 u0xa46aa1eaa214539b, ; 904: ko/Microsoft.Maui.Controls.resources => 360
	i64 u0xa46b089096bcb03d, ; 905: lib-pt-BR-System.Web.Services.Description.resources.dll.so => 464
	i64 u0xa4d20d2ff0563d26, ; 906: lib_CommunityToolkit.Mvvm.dll.so => 178
	i64 u0xa4edc8f2ceae241a, ; 907: System.Data.Common.dll => 22
	i64 u0xa546a7b3b135e528, ; 908: fr/System.ServiceModel.NetFramingBase.resources.dll => 407
	i64 u0xa5494f40f128ce6a, ; 909: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 910: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 911: Xamarin.AndroidX.DocumentFile => 280
	i64 u0xa5b7152421ed6d98, ; 912: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 913: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 914: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 915: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 916: System.Security.Cryptography.dll => 127
	i64 u0xa61975a5a37873ea, ; 917: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 918: lib_Jsr305Binding.dll.so => 330
	i64 u0xa66cbee0130865f7, ; 919: lib_WindowsBase.dll.so => 166
	i64 u0xa6728c80aa03961b, ; 920: lib-de-System.ServiceModel.NetNamedPipe.resources.dll.so => 418
	i64 u0xa67dbee13e1df9ca, ; 921: Xamarin.AndroidX.SavedState.dll => 314
	i64 u0xa684b098dd27b296, ; 922: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 316
	i64 u0xa68a420042bb9b1f, ; 923: Xamarin.AndroidX.DrawerLayout.dll => 281
	i64 u0xa6d26156d1cacc7c, ; 924: Xamarin.Android.Glide.dll => 253
	i64 u0xa75386b5cb9595aa, ; 925: Xamarin.AndroidX.Lifecycle.Runtime.Android => 297
	i64 u0xa75cf331ee476318, ; 926: lib_Microsoft.AspNetCore.Http.Abstractions.dll.so => 192
	i64 u0xa763fbb98df8d9fb, ; 927: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 928: Xamarin.AndroidX.Lifecycle.Common.Jvm => 291
	i64 u0xa7c31b56b4dc7b33, ; 929: hu/Microsoft.Maui.Controls.resources => 356
	i64 u0xa7eab29ed44b4e7a, ; 930: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 931: Microsoft.VisualBasic.Core => 2
	i64 u0xa859a95830f367ff, ; 932: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 302
	i64 u0xa8b52f21e0dbe690, ; 933: System.Runtime.Serialization.dll => 116
	i64 u0xa8e58fed601d5cd0, ; 934: ja/System.ServiceModel.Primitives.resources => 448
	i64 u0xa8e6320dd07580ef, ; 935: lib_Microsoft.IdentityModel.JsonWebTokens.dll.so => 218
	i64 u0xa8e93b98fddb1ccf, ; 936: lib-de-System.ServiceModel.NetTcp.resources.dll.so => 431
	i64 u0xa8ee4ed7de2efaee, ; 937: Xamarin.AndroidX.Annotation.dll => 259
	i64 u0xa94eefbc7cfedcce, ; 938: it/System.ServiceModel.Http.resources.dll => 395
	i64 u0xa94fc7dde26e269d, ; 939: it/System.ServiceModel.NetTcp.resources => 434
	i64 u0xa95590e7c57438a4, ; 940: System.Configuration => 19
	i64 u0xa964304b5631e28a, ; 941: CommunityToolkit.Maui.Core.dll => 177
	i64 u0xaa2219c8e3449ff5, ; 942: Microsoft.Extensions.Logging.Abstractions => 208
	i64 u0xaa443ac34067eeef, ; 943: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 944: System.Net.Http => 65
	i64 u0xaa8b9d6559fcd7e4, ; 945: lib_System.Web.Services.Description.dll.so => 251
	i64 u0xaa9a7b0214a5cc5c, ; 946: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaac37c5748c2aa, ; 947: pt-BR/System.Web.Services.Description.resources.dll => 464
	i64 u0xaaaf86367285a918, ; 948: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 204
	i64 u0xaaf84bb3f052a265, ; 949: el/Microsoft.Maui.Controls.resources => 349
	i64 u0xab36205a984a7bb8, ; 950: lib_System.ServiceModel.NetNamedPipe.dll.so => 245
	i64 u0xab3ce65e409334c2, ; 951: fr/System.ServiceModel.NetTcp.resources.dll => 433
	i64 u0xab793a8643b06cd4, ; 952: zh-Hant/System.ServiceModel.NetTcp.resources => 442
	i64 u0xab9af77b5b67a0b8, ; 953: Xamarin.AndroidX.ConstraintLayout.Core => 273
	i64 u0xab9c1b2687d86b0b, ; 954: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xabe49106840cf011, ; 955: cs/System.ServiceModel.NetTcp.resources => 430
	i64 u0xac2118054eb44149, ; 956: zh-Hant/System.ServiceModel.Http.resources.dll => 403
	i64 u0xac28371847bb16df, ; 957: ja/System.Web.Services.Description.resources => 461
	i64 u0xac2af3fa195a15ce, ; 958: System.Runtime.Numerics => 111
	i64 u0xac522e2fd8080df8, ; 959: es/System.ServiceModel.Http.resources => 393
	i64 u0xac5376a2a538dc10, ; 960: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 293
	i64 u0xac5acae88f60357e, ; 961: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 962: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 963: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 964: ro/Microsoft.Maui.Controls.resources => 367
	i64 u0xacdd9e4180d56dda, ; 965: Xamarin.AndroidX.Concurrent.Futures => 271
	i64 u0xacf42eea7ef9cd12, ; 966: System.Threading.Channels => 140
	i64 u0xacf586c96b6cc561, ; 967: ko/System.Web.Services.Description.resources => 462
	i64 u0xacfe7011c572e5ba, ; 968: lib_System.ServiceModel.Duplex.dll.so => 247
	i64 u0xad5a21382e17b2b7, ; 969: ru/System.Web.Services.Description.resources => 465
	i64 u0xad5deb3acac67dc2, ; 970: lib-fr-System.ServiceModel.NetTcp.resources.dll.so => 433
	i64 u0xad7e82ed3b0f16d0, ; 971: lib_Xamarin.AndroidX.DocumentFile.dll.so => 280
	i64 u0xad89c07347f1bad6, ; 972: nl/Microsoft.Maui.Controls.resources.dll => 363
	i64 u0xadb5a50910764244, ; 973: lib-ru-System.ServiceModel.NetFramingBase.resources.dll.so => 413
	i64 u0xadbb53caf78a79d2, ; 974: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 975: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 976: Xamarin.AndroidX.Collection.Ktx => 270
	i64 u0xadd8eda2edf396ad, ; 977: Xamarin.Android.Glide.GifDecoder => 256
	i64 u0xadf4cf30debbeb9a, ; 978: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 979: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 980: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 981: Java.Interop => 169
	i64 u0xae40fdf36f7c3346, ; 982: tr/System.ServiceModel.Http.resources => 401
	i64 u0xae53579c90db1107, ; 983: System.ObjectModel.dll => 85
	i64 u0xaec7c0c7e2ed4575, ; 984: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 338
	i64 u0xaf732d0b2193b8f5, ; 985: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xafdb94dbccd9d11c, ; 986: Xamarin.AndroidX.Lifecycle.LiveData.dll => 292
	i64 u0xafe29f45095518e7, ; 987: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 303
	i64 u0xb036f413731fcb9d, ; 988: pt-BR/System.ServiceModel.NetFramingBase.resources.dll => 412
	i64 u0xb03ae931fb25607e, ; 989: Xamarin.AndroidX.ConstraintLayout => 272
	i64 u0xb05cc42cd94c6d9d, ; 990: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 370
	i64 u0xb0ac21bec8f428c5, ; 991: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 299
	i64 u0xb0bb43dc52ea59f9, ; 992: System.Diagnostics.Tracing.dll => 34
	i64 u0xb0e3780674195d08, ; 993: lib-ko-System.ServiceModel.Http.resources.dll.so => 397
	i64 u0xb1dd05401aa8ee63, ; 994: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 995: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 996: System.Security.Cryptography.Csp => 122
	i64 u0xb2a1959fe95c5402, ; 997: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 998: da/Microsoft.Maui.Controls.resources => 347
	i64 u0xb2ecf898d76f162b, ; 999: tr/System.ServiceModel.NetNamedPipe.resources.dll => 427
	i64 u0xb3011a0a57f7ffb2, ; 1000: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 470
	i64 u0xb30cdaca6dd92ee6, ; 1001: lib-ko-System.ServiceModel.Federation.resources.dll.so => 384
	i64 u0xb3874072ee0ecf8c, ; 1002: Xamarin.AndroidX.VectorDrawable.Animated.dll => 323
	i64 u0xb398860d6ed7ba2f, ; 1003: System.Security.Cryptography.ProtectedData => 240
	i64 u0xb39c2f8e81d944e3, ; 1004: Appwrite => 174
	i64 u0xb3f0a0fcda8d3ebc, ; 1005: Xamarin.AndroidX.CardView => 267
	i64 u0xb43fcd02a3d99ca2, ; 1006: zh-Hans/System.ServiceModel.Http.resources => 402
	i64 u0xb46be1aa6d4fff93, ; 1007: hi/Microsoft.Maui.Controls.resources => 354
	i64 u0xb477491be13109d8, ; 1008: ar/Microsoft.Maui.Controls.resources => 344
	i64 u0xb4bd7015ecee9d86, ; 1009: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 1010: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4ed53550e240e00, ; 1011: lib-pl-System.ServiceModel.NetNamedPipe.resources.dll.so => 424
	i64 u0xb4ff710863453fda, ; 1012: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb52aa297a3a175b1, ; 1013: lib_Microsoft.AspNetCore.Authentication.Core.dll.so => 184
	i64 u0xb545f78b0415b9b9, ; 1014: Microsoft.AspNetCore.WebUtilities.dll => 196
	i64 u0xb5c38bf497a4cfe2, ; 1015: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 1016: Microsoft.Extensions.Logging.Abstractions.dll => 208
	i64 u0xb5ea31d5244c6626, ; 1017: System.Threading.ThreadPool.dll => 147
	i64 u0xb6472b33c61c2225, ; 1018: pt-BR/System.Web.Services.Description.resources => 464
	i64 u0xb66575354464a3ec, ; 1019: Xamarin.Kotlin.StdLib.Common => 336
	i64 u0xb6810b6e31e19016, ; 1020: ja/System.ServiceModel.NetTcp.resources.dll => 435
	i64 u0xb7212c4683a94afe, ; 1021: System.Drawing.Primitives => 35
	i64 u0xb736bb849856fcb1, ; 1022: lib-de-System.ServiceModel.Federation.resources.dll.so => 379
	i64 u0xb7b52173eb160717, ; 1023: it/System.ServiceModel.NetFramingBase.resources.dll => 408
	i64 u0xb7b7753d1f319409, ; 1024: sv/Microsoft.Maui.Controls.resources => 370
	i64 u0xb80417965e9eec49, ; 1025: lib-ru-System.ServiceModel.NetTcp.resources.dll.so => 439
	i64 u0xb81a2c6e0aee50fe, ; 1026: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8ae3f1ddbf6632a, ; 1027: ru/System.ServiceModel.Primitives.resources.dll => 452
	i64 u0xb8b0a9b3dfbc5cb7, ; 1028: Xamarin.AndroidX.Window.Extensions.Core.Core => 328
	i64 u0xb8c60af47c08d4da, ; 1029: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 1030: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 1031: Microsoft.CSharp.dll => 1
	i64 u0xb95c522c772254d2, ; 1032: Microsoft.AspNetCore.DataProtection.dll => 187
	i64 u0xb9b4b4053cc2768f, ; 1033: it/System.Web.Services.Description.resources.dll => 460
	i64 u0xb9b8001adf4ed7cc, ; 1034: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 317
	i64 u0xb9bb3050c244aac0, ; 1035: Appwrite.dll => 174
	i64 u0xb9f64d3b230def68, ; 1036: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 366
	i64 u0xb9fc3c8a556e3691, ; 1037: ja/Microsoft.Maui.Controls.resources => 359
	i64 u0xba4670aa94a2b3c6, ; 1038: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 1039: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 1040: lib_System.Windows.dll.so => 155
	i64 u0xbb0fb4261b15ceaa, ; 1041: lib-it-System.ServiceModel.Primitives.resources.dll.so => 447
	i64 u0xbb286883bc35db36, ; 1042: System.Transactions.dll => 151
	i64 u0xbb54ec6fb2d03594, ; 1043: lib-zh-Hant-System.ServiceModel.Federation.resources.dll.so => 390
	i64 u0xbb639e0337b3d979, ; 1044: Microsoft.AspNetCore.Http.dll => 191
	i64 u0xbb65706fde942ce3, ; 1045: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 1046: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 1047: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc260cdba33291a3, ; 1048: Xamarin.AndroidX.Arch.Core.Common.dll => 264
	i64 u0xbcd36316d29f27b4, ; 1049: lib_Microsoft.AspNetCore.Authorization.dll.so => 185
	i64 u0xbd0e2c0d55246576, ; 1050: System.Net.Http.dll => 65
	i64 u0xbd1eaddf5b8d294f, ; 1051: pt-BR/System.ServiceModel.NetTcp.resources.dll => 438
	i64 u0xbd3fbd85b9e1cb29, ; 1052: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 1053: Xamarin.AndroidX.ViewPager2 => 326
	i64 u0xbd4f572d2bd0a789, ; 1054: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5d0b88d3d647a5, ; 1055: lib_Xamarin.AndroidX.Browser.dll.so => 266
	i64 u0xbd877b14d0b56392, ; 1056: System.Runtime.Intrinsics.dll => 109
	i64 u0xbde4cd9bb9008cb3, ; 1057: lib_Microsoft.AspNetCore.Authentication.Abstractions.dll.so => 183
	i64 u0xbe04c77645f06233, ; 1058: Microsoft.Extensions.Logging.Configuration => 209
	i64 u0xbe54984cf301dc4a, ; 1059: de/System.ServiceModel.Federation.resources => 379
	i64 u0xbe65a49036345cf4, ; 1060: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 1061: Xamarin.AndroidX.AppCompat.AppCompatResources => 263
	i64 u0xbee637a43bb91f81, ; 1062: Microsoft.IdentityModel.Protocols.WsTrust => 222
	i64 u0xbef9919db45b4ca7, ; 1063: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 1064: lib_Xamarin.AndroidX.Annotation.dll.so => 259
	i64 u0xbf677a56a0f14616, ; 1065: Microsoft.AspNetCore.Authentication => 182
	i64 u0xbfc1e1fb3095f2b3, ; 1066: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xbfe46510e1852010, ; 1067: ko/System.ServiceModel.NetFramingBase.resources.dll => 410
	i64 u0xc040a4ab55817f58, ; 1068: ar/Microsoft.Maui.Controls.resources.dll => 344
	i64 u0xc07cadab29efeba0, ; 1069: Xamarin.AndroidX.Core.Core.Ktx.dll => 276
	i64 u0xc0d928351ab5ca77, ; 1070: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 1071: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 1072: System.Resources.Writer => 101
	i64 u0xc12890eb145545dd, ; 1073: lib-tr-System.ServiceModel.Http.resources.dll.so => 401
	i64 u0xc12b8b3afa48329c, ; 1074: lib_System.Linq.dll.so => 62
	i64 u0xc12f3d4943ba8357, ; 1075: tr/System.ServiceModel.Federation.resources.dll => 388
	i64 u0xc183ca0b74453aa9, ; 1076: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1a3b3eb30a78244, ; 1077: lib-de-System.ServiceModel.Primitives.resources.dll.so => 444
	i64 u0xc1ebdc7e6a943450, ; 1078: Microsoft.AspNetCore.Authorization.dll => 185
	i64 u0xc1ff9ae3cdb6e1e6, ; 1079: Xamarin.AndroidX.Activity.dll => 257
	i64 u0xc26c064effb1dea9, ; 1080: System.Buffers.dll => 7
	i64 u0xc278de356ad8a9e3, ; 1081: Microsoft.IdentityModel.Logging => 219
	i64 u0xc28c50f32f81cc73, ; 1082: ja/Microsoft.Maui.Controls.resources.dll => 359
	i64 u0xc2902288a6b71969, ; 1083: lib-zh-Hant-System.ServiceModel.NetFramingBase.resources.dll.so => 416
	i64 u0xc2902f6cf5452577, ; 1084: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 1085: System.IO.FileSystem.Watcher => 50
	i64 u0xc2b6c7ee1d841808, ; 1086: ko/System.ServiceModel.NetFramingBase.resources => 410
	i64 u0xc2bcfec99f69365e, ; 1087: Xamarin.AndroidX.ViewPager2.dll => 326
	i64 u0xc30b52815b58ac2c, ; 1088: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc36d7d89c652f455, ; 1089: System.Threading.Overlapped => 141
	i64 u0xc373cc79ffb39da5, ; 1090: lib-es-System.ServiceModel.Primitives.resources.dll.so => 445
	i64 u0xc38b5d7cc4abbd1c, ; 1091: BCrypt.Net-Next.dll => 175
	i64 u0xc396b285e59e5493, ; 1092: GoogleGson.dll => 181
	i64 u0xc3c86c1e5e12f03d, ; 1093: WindowsBase => 166
	i64 u0xc3de36b39f4396f1, ; 1094: tr/System.ServiceModel.NetTcp.resources.dll => 440
	i64 u0xc421b61fd853169d, ; 1095: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 1096: System.Runtime.Serialization.Json => 113
	i64 u0xc4729ec995102cc9, ; 1097: lib_System.DirectoryServices.dll.so => 235
	i64 u0xc48d5bbc1d9c4baf, ; 1098: Microsoft.IdentityModel.Tokens.Saml => 224
	i64 u0xc4d3858ed4d08512, ; 1099: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 303
	i64 u0xc4d69851fe06342f, ; 1100: lib_Microsoft.Extensions.Caching.Memory.dll.so => 199
	i64 u0xc50fded0ded1418c, ; 1101: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 1102: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 1103: Xamarin.AndroidX.Navigation.Fragment => 307
	i64 u0xc5325b2fcb37446f, ; 1104: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 1105: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 255
	i64 u0xc5a0f4b95a699af7, ; 1106: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5c0f9d7738fb03e, ; 1107: lib-it-System.ServiceModel.Federation.resources.dll.so => 382
	i64 u0xc5cdcd5b6277579e, ; 1108: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 1109: Xamarin.AndroidX.Tracing.Tracing => 320
	i64 u0xc6706bc8aa7fe265, ; 1110: Xamarin.AndroidX.Annotation.Jvm => 261
	i64 u0xc712817c78889718, ; 1111: ko/System.ServiceModel.Federation.resources.dll => 384
	i64 u0xc72e9ec1ea923425, ; 1112: ru/System.Web.Services.Description.resources.dll => 465
	i64 u0xc7c01e7d7c93a110, ; 1113: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 1114: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 1115: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 1116: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 1117: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc9c62c8f354ac568, ; 1118: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xc9e54b32fc19baf3, ; 1119: lib_CommunityToolkit.Maui.dll.so => 176
	i64 u0xca32340d8d54dcd5, ; 1120: Microsoft.Extensions.Caching.Memory.dll => 199
	i64 u0xca3a723e7342c5b6, ; 1121: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 372
	i64 u0xca5801070d9fccfb, ; 1122: System.Text.Encoding => 136
	i64 u0xca5c0406fdba256b, ; 1123: lib_BCrypt.Net-Next.dll.so => 175
	i64 u0xcab3493c70141c2d, ; 1124: pl/Microsoft.Maui.Controls.resources => 364
	i64 u0xcacfddc9f7c6de76, ; 1125: ro/Microsoft.Maui.Controls.resources.dll => 367
	i64 u0xcadbc92899a777f0, ; 1126: Xamarin.AndroidX.Startup.StartupRuntime => 318
	i64 u0xcb27a7b77c658eac, ; 1127: System.ServiceModel.Http => 243
	i64 u0xcb4b6bc37bef4b50, ; 1128: System.Web.Services.Description => 251
	i64 u0xcb710684476552c5, ; 1129: lib-fr-System.Web.Services.Description.resources.dll.so => 459
	i64 u0xcba1cb79f45292b5, ; 1130: Xamarin.Android.Glide.GifDecoder.dll => 256
	i64 u0xcbb5f80c7293e696, ; 1131: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 1132: lib__Microsoft.Android.Resource.Designer.dll.so => 472
	i64 u0xcc15da1e07bbd994, ; 1133: Xamarin.AndroidX.SlidingPaneLayout => 317
	i64 u0xcc182c3afdc374d6, ; 1134: Microsoft.Bcl.AsyncInterfaces => 197
	i64 u0xcc2876b32ef2794c, ; 1135: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 1136: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 341
	i64 u0xcc76886e09b88260, ; 1137: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 343
	i64 u0xcc9fa2923aa1c9ef, ; 1138: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 1139: zh-Hans/Microsoft.Maui.Controls.resources.dll => 376
	i64 u0xcd10a42808629144, ; 1140: System.Net.Requests => 73
	i64 u0xcdb6fabc1cfaeb73, ; 1141: zh-Hans/System.ServiceModel.Primitives.resources.dll => 454
	i64 u0xcdca1b920e9f53ba, ; 1142: Xamarin.AndroidX.Interpolator => 288
	i64 u0xcdd0c48b6937b21c, ; 1143: Xamarin.AndroidX.SwipeRefreshLayout => 319
	i64 u0xcded723a6ffdcede, ; 1144: System.DirectoryServices => 235
	i64 u0xce366153aaa26f70, ; 1145: System.DirectoryServices.Protocols.dll => 236
	i64 u0xce5fa9297be87bb1, ; 1146: it/System.ServiceModel.Primitives.resources => 447
	i64 u0xcf23d8093f3ceadf, ; 1147: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf3a9996a625b6e2, ; 1148: Microsoft.Extensions.Logging.Configuration.dll => 209
	i64 u0xcf5ff6b6b2c4c382, ; 1149: System.Net.Mail.dll => 67
	i64 u0xcf87dee0ed05a5e2, ; 1150: lib_WCF.dll.so => 252
	i64 u0xcf8fc898f98b0d34, ; 1151: System.Private.Xml.Linq => 88
	i64 u0xcff7588e2a9def65, ; 1152: fr/System.ServiceModel.NetNamedPipe.resources.dll => 420
	i64 u0xd04b5f59ed596e31, ; 1153: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 1154: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd07cfc64a7f15335, ; 1155: lib-ja-System.ServiceModel.Http.resources.dll.so => 396
	i64 u0xd0bf912ead88ee7d, ; 1156: lib-ja-System.ServiceModel.Federation.resources.dll.so => 383
	i64 u0xd0de8a113e976700, ; 1157: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 1158: System.Runtime.Extensions => 104
	i64 u0xd1194e1d8a8de83c, ; 1159: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 291
	i64 u0xd12beacdfc14f696, ; 1160: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 1161: System.Net.Quic.dll => 72
	i64 u0xd22a0c4630f2fe66, ; 1162: lib_System.Security.Cryptography.ProtectedData.dll.so => 240
	i64 u0xd2b06aa278ba1e89, ; 1163: lib-fr-System.ServiceModel.Primitives.resources.dll.so => 446
	i64 u0xd3144156a3727ebe, ; 1164: Xamarin.Google.Guava.ListenableFuture => 333
	i64 u0xd333d0af9e423810, ; 1165: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 1166: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 1167: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 263
	i64 u0xd3651b6fc3125825, ; 1168: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 1169: Microsoft.Extensions.Logging.dll => 207
	i64 u0xd3801faafafb7698, ; 1170: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e162f03c80c90e, ; 1171: lib-zh-Hans-System.ServiceModel.Federation.resources.dll.so => 389
	i64 u0xd3e4c8d6a2d5d470, ; 1172: it/Microsoft.Maui.Controls.resources => 358
	i64 u0xd3edcc1f25459a50, ; 1173: System.Reflection.Emit => 93
	i64 u0xd42961eb350ea9e6, ; 1174: tr/System.ServiceModel.Federation.resources => 388
	i64 u0xd430e52f84548b3f, ; 1175: lib-zh-Hans-System.ServiceModel.Http.resources.dll.so => 402
	i64 u0xd4645626dffec99d, ; 1176: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 204
	i64 u0xd479da96507999c9, ; 1177: lib-ko-System.Web.Services.Description.resources.dll.so => 462
	i64 u0xd4cd620631410343, ; 1178: ja/System.ServiceModel.Http.resources => 396
	i64 u0xd4fa0abb79079ea9, ; 1179: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 1180: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 303
	i64 u0xd5d04bef8478ea19, ; 1181: Xamarin.AndroidX.Tracing.Tracing.dll => 320
	i64 u0xd60815f26a12e140, ; 1182: Microsoft.Extensions.Logging.Debug.dll => 211
	i64 u0xd65786d27a4ad960, ; 1183: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 469
	i64 u0xd6694f8359737e4e, ; 1184: Xamarin.AndroidX.SavedState => 314
	i64 u0xd68e59f35157fed7, ; 1185: de/System.ServiceModel.Primitives.resources.dll => 444
	i64 u0xd6949e129339eae5, ; 1186: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 276
	i64 u0xd6d21782156bc35b, ; 1187: Xamarin.AndroidX.SwipeRefreshLayout.dll => 319
	i64 u0xd6de019f6af72435, ; 1188: Xamarin.AndroidX.ConstraintLayout.Core.dll => 273
	i64 u0xd6f58632fedbb216, ; 1189: Microsoft.IdentityModel.Tokens.Saml.dll => 224
	i64 u0xd70956d1e6deefb9, ; 1190: Jsr305Binding => 330
	i64 u0xd72329819cbbbc44, ; 1191: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 201
	i64 u0xd72c760af136e863, ; 1192: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 1193: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd77577a4207e0a2d, ; 1194: ja/System.ServiceModel.NetNamedPipe.resources => 422
	i64 u0xd7b3764ada9d341d, ; 1195: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 208
	i64 u0xd7f0088bc5ad71f2, ; 1196: Xamarin.AndroidX.VersionedParcelable => 324
	i64 u0xd8638978c13b5b54, ; 1197: zh-Hans/System.ServiceModel.NetTcp.resources.dll => 441
	i64 u0xd8ada8775a813f2d, ; 1198: lib_CoreWCF.Primitives.dll.so => 180
	i64 u0xd8fb25e28ae30a12, ; 1199: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 311
	i64 u0xd9f96c9b0f02d881, ; 1200: lib-it-System.ServiceModel.NetFramingBase.resources.dll.so => 408
	i64 u0xda1dfa4c534a9251, ; 1201: Microsoft.Extensions.DependencyInjection => 203
	i64 u0xda7740deb9e6ec16, ; 1202: lib_Parse.dll.so => 234
	i64 u0xdad05a11827959a3, ; 1203: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 1204: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 1205: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 374
	i64 u0xdb58816721c02a59, ; 1206: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdb8dc7749e90ae5a, ; 1207: pt-BR/System.ServiceModel.Primitives.resources.dll => 451
	i64 u0xdbeda89f832aa805, ; 1208: vi/Microsoft.Maui.Controls.resources.dll => 374
	i64 u0xdbf2a779fbc3ac31, ; 1209: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 1210: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 1211: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc484a3cce4807d7, ; 1212: lib-tr-System.ServiceModel.Primitives.resources.dll.so => 453
	i64 u0xdc75032002d1a212, ; 1213: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdc89732e0ecf0693, ; 1214: Microsoft.IdentityModel.Protocols.WsFederation => 221
	i64 u0xdca8be7403f92d4f, ; 1215: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 1216: Microsoft.Extensions.Logging => 207
	i64 u0xdd2b722d78ef5f43, ; 1217: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 1218: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 1219: System.Numerics.dll => 84
	i64 u0xdddcdd701e911af1, ; 1220: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 289
	i64 u0xdde30e6b77aa6f6c, ; 1221: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 376
	i64 u0xde110ae80fa7c2e2, ; 1222: System.Xml.XDocument.dll => 159
	i64 u0xde4726fcdf63a198, ; 1223: Xamarin.AndroidX.Transition => 321
	i64 u0xde572c2b2fb32f93, ; 1224: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 1225: hr/Microsoft.Maui.Controls.resources.dll => 355
	i64 u0xdee075f3477ef6be, ; 1226: Xamarin.AndroidX.ExifInterface.dll => 285
	i64 u0xdf4b773de8fb1540, ; 1227: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 1228: System.Net.Ping => 70
	i64 u0xdfa4850418b6c99a, ; 1229: Microsoft.AspNetCore.Hosting.Abstractions => 189
	i64 u0xe0142572c095a480, ; 1230: Xamarin.AndroidX.AppCompat.dll => 262
	i64 u0xe021eaa401792a05, ; 1231: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 1232: Xamarin.AndroidX.CoordinatorLayout.dll => 274
	i64 u0xe044fafdd86febde, ; 1233: de/System.Web.Services.Description.resources.dll => 457
	i64 u0xe0496b9d65ef5474, ; 1234: Xamarin.Android.Glide.DiskLruCache.dll => 255
	i64 u0xe04d12edb82323b4, ; 1235: cs/System.ServiceModel.Primitives.resources.dll => 443
	i64 u0xe0be470debe77c12, ; 1236: Microsoft.AspNetCore.Cryptography.Internal.dll => 186
	i64 u0xe0e65c44a6b4e814, ; 1237: zh-Hans/System.ServiceModel.Http.resources.dll => 402
	i64 u0xe10b760bb1462e7a, ; 1238: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe1566bbdb759c5af, ; 1239: Microsoft.Maui.Controls.HotReload.Forms.dll => 469
	i64 u0xe17149f87c5f382d, ; 1240: zh-Hant/System.ServiceModel.Primitives.resources => 455
	i64 u0xe192a588d4410686, ; 1241: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 1242: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 1243: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 1244: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 1245: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 1246: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 1247: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 1248: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe24095a7afddaab3, ; 1249: lib_Microsoft.Extensions.Hosting.Abstractions.dll.so => 206
	i64 u0xe2420585aeceb728, ; 1250: System.Net.Requests.dll => 73
	i64 u0xe26692647e6bcb62, ; 1251: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 298
	i64 u0xe29b73bc11392966, ; 1252: lib-id-Microsoft.Maui.Controls.resources.dll.so => 357
	i64 u0xe2ad448dee50fbdf, ; 1253: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 1254: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 1255: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 1256: Mono.Android.Export.dll => 170
	i64 u0xe362cacd858b2c4b, ; 1257: it/System.ServiceModel.Http.resources => 395
	i64 u0xe3811d68d4fe8463, ; 1258: pt-BR/Microsoft.Maui.Controls.resources.dll => 365
	i64 u0xe3b7cbae5ad66c75, ; 1259: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe40da4c2053d9fc1, ; 1260: lib_System.ServiceModel.dll.so => 250
	i64 u0xe494f7ced4ecd10a, ; 1261: hu/Microsoft.Maui.Controls.resources.dll => 356
	i64 u0xe4a9b1e40d1e8917, ; 1262: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 351
	i64 u0xe4f74a0b5bf9703f, ; 1263: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 1264: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 1265: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 1266: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 1267: System.Xml.dll => 164
	i64 u0xe66e263beb16318f, ; 1268: Microsoft.Extensions.WebEncoders => 216
	i64 u0xe6b7bd3a1b5613c4, ; 1269: lib-pt-BR-System.ServiceModel.NetTcp.resources.dll.so => 438
	i64 u0xe707e4127300fde9, ; 1270: lib-pl-System.Web.Services.Description.resources.dll.so => 463
	i64 u0xe7360805418372b7, ; 1271: pl/System.ServiceModel.Primitives.resources => 450
	i64 u0xe7bea09c4900a191, ; 1272: Xamarin.AndroidX.VectorDrawable.dll => 322
	i64 u0xe7e03cc18dcdeb49, ; 1273: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 1274: lib_System.Configuration.dll.so => 19
	i64 u0xe808bb2137d950a4, ; 1275: cs/System.ServiceModel.NetNamedPipe.resources => 417
	i64 u0xe8397cf3948e7cb7, ; 1276: lib_Microsoft.Extensions.Options.ConfigurationExtensions.dll.so => 214
	i64 u0xe86b0df4ba9e5db8, ; 1277: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 297
	i64 u0xe896622fe0902957, ; 1278: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 1279: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 1280: Microsoft.Win32.Registry => 5
	i64 u0xe94afa1d3ad97f77, ; 1281: lib-zh-Hans-System.ServiceModel.NetTcp.resources.dll.so => 441
	i64 u0xe957c3976986ab72, ; 1282: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 328
	i64 u0xe98163eb702ae5c5, ; 1283: Xamarin.AndroidX.Arch.Core.Runtime => 265
	i64 u0xe990c997dacceeeb, ; 1284: System.ServiceModel.Http.dll => 243
	i64 u0xe994f23ba4c143e5, ; 1285: Xamarin.KotlinX.Coroutines.Android => 339
	i64 u0xe9b9c8c0458fd92a, ; 1286: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 1287: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 318
	i64 u0xea15e22d0bff96e1, ; 1288: de/System.ServiceModel.Http.resources => 392
	i64 u0xea5a4efc2ad81d1b, ; 1289: Xamarin.Google.ErrorProne.Annotations => 332
	i64 u0xeaa1fe7a46ae7be4, ; 1290: Microsoft.IdentityModel.Xml => 225
	i64 u0xeab763b818091a13, ; 1291: lib-ru-System.ServiceModel.NetNamedPipe.resources.dll.so => 426
	i64 u0xeb2313fe9d65b785, ; 1292: Xamarin.AndroidX.ConstraintLayout.dll => 272
	i64 u0xeb5f60bc5e2df133, ; 1293: lib-zh-Hans-System.ServiceModel.Primitives.resources.dll.so => 454
	i64 u0xeb6e275e78cb8d42, ; 1294: Xamarin.AndroidX.LocalBroadcastManager.dll => 305
	i64 u0xeba71a33dc0c2e2b, ; 1295: zh-Hant/System.ServiceModel.NetTcp.resources.dll => 442
	i64 u0xec6aab926dcc328f, ; 1296: pt-BR/System.ServiceModel.NetNamedPipe.resources => 425
	i64 u0xec8abb68d340aac6, ; 1297: Microsoft.AspNetCore.Authorization => 185
	i64 u0xecef746f96f1ef0b, ; 1298: cs/System.ServiceModel.NetTcp.resources.dll => 430
	i64 u0xed19c616b3fcb7eb, ; 1299: Xamarin.AndroidX.VersionedParcelable.dll => 324
	i64 u0xed36be019dd1da2c, ; 1300: lib-pt-BR-System.ServiceModel.Http.resources.dll.so => 399
	i64 u0xed60c6fa891c051a, ; 1301: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 471
	i64 u0xeda1f34cdf28fbe1, ; 1302: Microsoft.IdentityModel.Protocols.WsTrust.dll => 222
	i64 u0xedc4817167106c23, ; 1303: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 1304: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 1305: Xamarin.AndroidX.Navigation.Runtime.dll => 308
	i64 u0xedef81c9a0737e22, ; 1306: tr/System.Web.Services.Description.resources.dll => 466
	i64 u0xee81f5b3f1c4f83b, ; 1307: System.Threading.ThreadPool => 147
	i64 u0xeea9f975ef939aa1, ; 1308: it/System.ServiceModel.NetNamedPipe.resources.dll => 421
	i64 u0xeeb7ebb80150501b, ; 1309: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 269
	i64 u0xeefc635595ef57f0, ; 1310: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 1311: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef09f569c5ccbdb6, ; 1312: es/System.ServiceModel.Primitives.resources => 445
	i64 u0xef0fab0994b6b40e, ; 1313: System.Net.WebSockets.WebSocketProtocol => 238
	i64 u0xef3288409bc8dee5, ; 1314: zh-Hant/System.Web.Services.Description.resources => 468
	i64 u0xef432781d5667f61, ; 1315: Xamarin.AndroidX.Print => 310
	i64 u0xef602c523fe2e87a, ; 1316: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 333
	i64 u0xef72742e1bcca27a, ; 1317: Microsoft.Maui.Essentials.dll => 230
	i64 u0xefd1e0c4e5c9b371, ; 1318: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 1319: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 1320: Xamarin.AndroidX.Activity => 257
	i64 u0xf00c29406ea45e19, ; 1321: es/Microsoft.Maui.Controls.resources.dll => 350
	i64 u0xf02e3ec81cbf3b99, ; 1322: pl/System.ServiceModel.Federation.resources.dll => 385
	i64 u0xf09e47b6ae914f6e, ; 1323: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 1324: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 1325: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 1326: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 1327: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 296
	i64 u0xf11b621fc87b983f, ; 1328: Microsoft.Maui.Controls.Xaml.dll => 228
	i64 u0xf14c59fdf211c781, ; 1329: it/System.ServiceModel.Federation.resources => 382
	i64 u0xf161bf2d1e9eaff4, ; 1330: lib_Microsoft.AspNetCore.DataProtection.dll.so => 187
	i64 u0xf161f4f3c3b7e62c, ; 1331: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 1332: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 1333: System.Formats.Asn1.dll => 38
	i64 u0xf238bd79489d3a96, ; 1334: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 363
	i64 u0xf25c54f4b95c91ec, ; 1335: cs/System.ServiceModel.Federation.resources.dll => 378
	i64 u0xf28aeeb8d20f95ee, ; 1336: zh-Hant/System.ServiceModel.Federation.resources => 390
	i64 u0xf2cf3fb42b982dfb, ; 1337: lib_System.ServiceModel.Http.dll.so => 243
	i64 u0xf2feea356ba760af, ; 1338: Xamarin.AndroidX.Arch.Core.Runtime.dll => 265
	i64 u0xf300e085f8acd238, ; 1339: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 1340: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 1341: lib_Xamarin.Google.Android.Material.dll.so => 329
	i64 u0xf3ad9b8fb3eefd12, ; 1342: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1343: System => 165
	i64 u0xf408654b2a135055, ; 1344: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 1345: System.Linq.Queryable.dll => 61
	i64 u0xf42ad2f4323b64d3, ; 1346: Microsoft.Net.Http.Headers.dll => 232
	i64 u0xf42d20c23173d77c, ; 1347: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4c1dd70a5496a17, ; 1348: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1349: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 1350: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 279
	i64 u0xf50aaca21414073d, ; 1351: ru/System.ServiceModel.Http.resources => 400
	i64 u0xf518f63ead11fcd1, ; 1352: System.Threading.Tasks => 145
	i64 u0xf5e59d7ac34b50aa, ; 1353: Microsoft.IdentityModel.Protocols.dll => 220
	i64 u0xf5fc7602fe27b333, ; 1354: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 1355: Xamarin.AndroidX.CoordinatorLayout => 274
	i64 u0xf61ade9836ad4692, ; 1356: Microsoft.IdentityModel.Tokens.dll => 223
	i64 u0xf6742cbf457c450b, ; 1357: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 297
	i64 u0xf67a4c0ec7f57c34, ; 1358: lib_System.ServiceModel.Federation.dll.so => 242
	i64 u0xf6c0e7d55a7a4e4f, ; 1359: Microsoft.IdentityModel.JsonWebTokens => 218
	i64 u0xf6f893f692f8cb43, ; 1360: Microsoft.Extensions.Options.ConfigurationExtensions.dll => 214
	i64 u0xf70c0a7bf8ccf5af, ; 1361: System.Web => 154
	i64 u0xf71859bbc52d946a, ; 1362: de/System.ServiceModel.NetTcp.resources.dll => 431
	i64 u0xf77b20923f07c667, ; 1363: de/Microsoft.Maui.Controls.resources.dll => 348
	i64 u0xf7e2cac4c45067b3, ; 1364: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 1365: zh-HK/Microsoft.Maui.Controls.resources.dll => 375
	i64 u0xf7fa0bf77fe677cc, ; 1366: Newtonsoft.Json.dll => 233
	i64 u0xf84773b5c81e3cef, ; 1367: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 373
	i64 u0xf8aac5ea82de1348, ; 1368: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 1369: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 1370: lib_Xamarin.AndroidX.RecyclerView.dll.so => 312
	i64 u0xf905fb23ddbde5f7, ; 1371: lib_Microsoft.IdentityModel.Xml.dll.so => 225
	i64 u0xf915dc29808193a1, ; 1372: System.Web.HttpUtility.dll => 153
	i64 u0xf929bac7dc2754db, ; 1373: lib_Appwrite.dll.so => 174
	i64 u0xf96c777a2a0686f4, ; 1374: hi/Microsoft.Maui.Controls.resources.dll => 354
	i64 u0xf9a9f29b66232c02, ; 1375: lib-ja-System.Web.Services.Description.resources.dll.so => 461
	i64 u0xf9be54c8bcf8ff3b, ; 1376: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 1377: Microsoft.Extensions.Options => 213
	i64 u0xfa0e82300e67f913, ; 1378: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1379: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1380: lib_System.Net.Security.dll.so => 74
	i64 u0xfa504dfa0f097d72, ; 1381: Microsoft.Extensions.FileProviders.Abstractions.dll => 205
	i64 u0xfa5ed7226d978949, ; 1382: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 344
	i64 u0xfa645d91e9fc4cba, ; 1383: System.Threading.Thread => 146
	i64 u0xfa679f6d4674beb3, ; 1384: System.Web.Services.Description.dll => 251
	i64 u0xfaab63c73b0aa3d9, ; 1385: pl/System.ServiceModel.NetFramingBase.resources.dll => 411
	i64 u0xfad4d2c770e827f9, ; 1386: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfb06dd2338e6f7c4, ; 1387: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 1388: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1389: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 1390: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbd71978549ea473, ; 1391: Microsoft.AspNetCore.Http.Features.dll => 194
	i64 u0xfbf0a31c9fc34bc4, ; 1392: lib_System.Net.Http.dll.so => 65
	i64 u0xfc4ffc48a9f72d49, ; 1393: ja/System.ServiceModel.Federation.resources => 383
	i64 u0xfc61ddcf78dd1f54, ; 1394: Xamarin.AndroidX.LocalBroadcastManager => 305
	i64 u0xfc6b7527cc280b3f, ; 1395: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc719aec26adf9d9, ; 1396: Xamarin.AndroidX.Navigation.Fragment.dll => 307
	i64 u0xfc82690c2fe2735c, ; 1397: Xamarin.AndroidX.Lifecycle.Process.dll => 295
	i64 u0xfc93fc307d279893, ; 1398: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1399: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22011ac9700e6c, ; 1400: System.DirectoryServices.dll => 235
	i64 u0xfd22f00870e40ae0, ; 1401: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 281
	i64 u0xfd49b3c1a76e2748, ; 1402: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 1403: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 1404: Xamarin.AndroidX.Fragment => 286
	i64 u0xfd8dd91a2c26bd5d, ; 1405: Xamarin.AndroidX.Lifecycle.Runtime => 296
	i64 u0xfda36abccf05cf5c, ; 1406: System.Net.WebSockets.Client => 80
	i64 u0xfdbe4710aa9beeff, ; 1407: CommunityToolkit.Maui => 176
	i64 u0xfddbe9695626a7f5, ; 1408: Xamarin.AndroidX.Lifecycle.Common => 290
	i64 u0xfe5e01e31b547fae, ; 1409: fr/System.Web.Services.Description.resources.dll => 459
	i64 u0xfeae9952cf03b8cb, ; 1410: tr/Microsoft.Maui.Controls.resources => 372
	i64 u0xfeb04e24525f377e, ; 1411: System.ServiceModel.NetTcp => 246
	i64 u0xfebe1950717515f9, ; 1412: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 294
	i64 u0xff1a4e86e72b0140, ; 1413: Microsoft.AspNetCore.Authentication.Abstractions.dll => 183
	i64 u0xff210ce784fdeddf, ; 1414: Microsoft.IdentityModel.Xml.dll => 225
	i64 u0xff270a55858bac8d, ; 1415: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 1416: System.Net.Http.Json => 64
	i64 u0xffd5b3e75321a00b, ; 1417: Microsoft.AspNetCore.DataProtection.Abstractions => 188
	i64 u0xffdb7a971be4ec73 ; 1418: System.ValueTuple.dll => 152
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1419 x i32] [
	i32 42, i32 340, i32 319, i32 13, i32 406, i32 308, i32 177, i32 214,
	i32 239, i32 105, i32 199, i32 171, i32 419, i32 48, i32 262, i32 436,
	i32 7, i32 188, i32 86, i32 238, i32 423, i32 368, i32 346, i32 374,
	i32 217, i32 282, i32 458, i32 336, i32 71, i32 224, i32 312, i32 12,
	i32 229, i32 102, i32 190, i32 375, i32 411, i32 156, i32 19, i32 451,
	i32 287, i32 269, i32 161, i32 284, i32 216, i32 322, i32 167, i32 380,
	i32 424, i32 443, i32 368, i32 10, i32 453, i32 391, i32 211, i32 399,
	i32 437, i32 249, i32 323, i32 96, i32 279, i32 281, i32 13, i32 213,
	i32 10, i32 127, i32 188, i32 95, i32 430, i32 198, i32 241, i32 140,
	i32 392, i32 39, i32 369, i32 343, i32 325, i32 210, i32 378, i32 365,
	i32 172, i32 256, i32 236, i32 5, i32 230, i32 67, i32 316, i32 130,
	i32 422, i32 197, i32 179, i32 315, i32 427, i32 283, i32 68, i32 462,
	i32 468, i32 439, i32 420, i32 270, i32 66, i32 189, i32 57, i32 197,
	i32 278, i32 381, i32 52, i32 397, i32 43, i32 212, i32 125, i32 67,
	i32 81, i32 298, i32 471, i32 158, i32 92, i32 99, i32 312, i32 141,
	i32 403, i32 151, i32 266, i32 352, i32 162, i32 169, i32 353, i32 175,
	i32 204, i32 389, i32 81, i32 471, i32 270, i32 4, i32 5, i32 418,
	i32 391, i32 51, i32 101, i32 424, i32 449, i32 56, i32 120, i32 98,
	i32 168, i32 118, i32 340, i32 21, i32 423, i32 356, i32 407, i32 137,
	i32 97, i32 343, i32 77, i32 362, i32 310, i32 419, i32 318, i32 119,
	i32 453, i32 179, i32 190, i32 8, i32 165, i32 371, i32 70, i32 255,
	i32 388, i32 406, i32 299, i32 313, i32 193, i32 221, i32 466, i32 171,
	i32 245, i32 145, i32 385, i32 40, i32 450, i32 226, i32 316, i32 47,
	i32 30, i32 414, i32 429, i32 309, i32 360, i32 144, i32 213, i32 163,
	i32 28, i32 84, i32 320, i32 434, i32 77, i32 43, i32 0, i32 29,
	i32 42, i32 103, i32 117, i32 260, i32 45, i32 425, i32 91, i32 421,
	i32 371, i32 56, i32 148, i32 404, i32 470, i32 401, i32 146, i32 100,
	i32 49, i32 413, i32 20, i32 275, i32 447, i32 114, i32 390, i32 253,
	i32 352, i32 331, i32 335, i32 215, i32 252, i32 94, i32 58, i32 237,
	i32 357, i32 355, i32 81, i32 379, i32 331, i32 169, i32 26, i32 71,
	i32 311, i32 196, i32 441, i32 285, i32 469, i32 373, i32 384, i32 69,
	i32 33, i32 351, i32 14, i32 139, i32 237, i32 38, i32 414, i32 377,
	i32 271, i32 248, i32 234, i32 414, i32 196, i32 209, i32 417, i32 364,
	i32 134, i32 92, i32 88, i32 149, i32 370, i32 24, i32 138, i32 57,
	i32 244, i32 51, i32 349, i32 467, i32 29, i32 157, i32 34, i32 164,
	i32 415, i32 198, i32 286, i32 217, i32 52, i32 242, i32 421, i32 472,
	i32 327, i32 90, i32 267, i32 35, i32 352, i32 157, i32 456, i32 428,
	i32 9, i32 458, i32 350, i32 180, i32 76, i32 55, i32 394, i32 229,
	i32 346, i32 222, i32 227, i32 13, i32 326, i32 200, i32 264, i32 109,
	i32 182, i32 302, i32 32, i32 104, i32 84, i32 92, i32 53, i32 96,
	i32 182, i32 334, i32 58, i32 431, i32 186, i32 9, i32 102, i32 444,
	i32 278, i32 68, i32 248, i32 220, i32 457, i32 325, i32 345, i32 446,
	i32 233, i32 205, i32 125, i32 410, i32 313, i32 116, i32 432, i32 135,
	i32 223, i32 387, i32 126, i32 106, i32 335, i32 131, i32 193, i32 382,
	i32 266, i32 449, i32 333, i32 147, i32 156, i32 287, i32 275, i32 282,
	i32 313, i32 97, i32 191, i32 24, i32 451, i32 467, i32 317, i32 143,
	i32 206, i32 446, i32 386, i32 310, i32 306, i32 3, i32 167, i32 263,
	i32 100, i32 161, i32 99, i32 25, i32 93, i32 443, i32 168, i32 172,
	i32 258, i32 380, i32 3, i32 364, i32 398, i32 284, i32 210, i32 393,
	i32 1, i32 114, i32 335, i32 460, i32 184, i32 287, i32 295, i32 237,
	i32 426, i32 33, i32 6, i32 241, i32 438, i32 368, i32 156, i32 432,
	i32 366, i32 394, i32 53, i32 250, i32 289, i32 408, i32 406, i32 416,
	i32 216, i32 450, i32 85, i32 232, i32 324, i32 400, i32 0, i32 309,
	i32 44, i32 463, i32 294, i32 104, i32 47, i32 138, i32 64, i32 413,
	i32 304, i32 69, i32 80, i32 59, i32 89, i32 154, i32 264, i32 133,
	i32 110, i32 226, i32 358, i32 304, i32 427, i32 234, i32 311, i32 171,
	i32 134, i32 140, i32 40, i32 345, i32 202, i32 223, i32 227, i32 439,
	i32 60, i32 178, i32 202, i32 301, i32 79, i32 25, i32 36, i32 461,
	i32 183, i32 407, i32 99, i32 298, i32 71, i32 192, i32 22, i32 275,
	i32 456, i32 231, i32 186, i32 448, i32 369, i32 121, i32 467, i32 69,
	i32 107, i32 375, i32 305, i32 119, i32 436, i32 117, i32 290, i32 187,
	i32 291, i32 11, i32 2, i32 423, i32 124, i32 115, i32 244, i32 249,
	i32 142, i32 41, i32 87, i32 405, i32 259, i32 173, i32 206, i32 27,
	i32 412, i32 245, i32 148, i32 202, i32 359, i32 203, i32 232, i32 332,
	i32 258, i32 1, i32 180, i32 190, i32 437, i32 455, i32 260, i32 44,
	i32 274, i32 149, i32 387, i32 289, i32 18, i32 86, i32 347, i32 41,
	i32 294, i32 268, i32 436, i32 299, i32 94, i32 207, i32 28, i32 41,
	i32 78, i32 283, i32 417, i32 392, i32 271, i32 144, i32 108, i32 269,
	i32 11, i32 105, i32 137, i32 16, i32 122, i32 66, i32 468, i32 157,
	i32 22, i32 428, i32 349, i32 342, i32 102, i32 212, i32 435, i32 203,
	i32 341, i32 63, i32 58, i32 228, i32 348, i32 110, i32 173, i32 420,
	i32 339, i32 9, i32 329, i32 120, i32 386, i32 98, i32 105, i32 418,
	i32 252, i32 448, i32 302, i32 176, i32 227, i32 111, i32 261, i32 49,
	i32 20, i32 301, i32 277, i32 399, i32 389, i32 72, i32 273, i32 155,
	i32 39, i32 404, i32 347, i32 35, i32 429, i32 337, i32 38, i32 353,
	i32 465, i32 328, i32 247, i32 108, i32 395, i32 362, i32 21, i32 247,
	i32 409, i32 334, i32 249, i32 385, i32 300, i32 240, i32 231, i32 15,
	i32 215, i32 79, i32 79, i32 277, i32 432, i32 244, i32 215, i32 280,
	i32 412, i32 433, i32 307, i32 411, i32 315, i32 152, i32 400, i32 21,
	i32 415, i32 229, i32 346, i32 195, i32 50, i32 51, i32 386, i32 336,
	i32 372, i32 362, i32 383, i32 452, i32 94, i32 437, i32 254, i32 358,
	i32 16, i32 239, i32 380, i32 123, i32 355, i32 160, i32 45, i32 332,
	i32 179, i32 181, i32 116, i32 63, i32 440, i32 396, i32 166, i32 454,
	i32 200, i32 14, i32 314, i32 394, i32 111, i32 398, i32 261, i32 60,
	i32 338, i32 442, i32 121, i32 361, i32 2, i32 371, i32 415, i32 286,
	i32 195, i32 300, i32 246, i32 422, i32 337, i32 300, i32 6, i32 268,
	i32 351, i32 282, i32 218, i32 195, i32 17, i32 369, i32 348, i32 77,
	i32 272, i32 416, i32 177, i32 131, i32 334, i32 381, i32 361, i32 83,
	i32 211, i32 12, i32 34, i32 119, i32 241, i32 342, i32 295, i32 284,
	i32 85, i32 253, i32 18, i32 194, i32 325, i32 201, i32 293, i32 378,
	i32 72, i32 470, i32 403, i32 95, i32 238, i32 165, i32 288, i32 82,
	i32 377, i32 212, i32 262, i32 267, i32 338, i32 154, i32 36, i32 151,
	i32 373, i32 449, i32 393, i32 217, i32 376, i32 144, i32 56, i32 113,
	i32 440, i32 191, i32 268, i32 322, i32 321, i32 409, i32 37, i32 250,
	i32 377, i32 200, i32 115, i32 260, i32 14, i32 254, i32 398, i32 460,
	i32 146, i32 192, i32 43, i32 230, i32 258, i32 98, i32 341, i32 168,
	i32 16, i32 48, i32 107, i32 193, i32 194, i32 97, i32 198, i32 456,
	i32 304, i32 387, i32 27, i32 128, i32 29, i32 353, i32 184, i32 205,
	i32 236, i32 315, i32 128, i32 44, i32 277, i32 283, i32 149, i32 8,
	i32 189, i32 233, i32 306, i32 354, i32 367, i32 366, i32 132, i32 365,
	i32 409, i32 429, i32 42, i32 342, i32 33, i32 472, i32 46, i32 143,
	i32 301, i32 228, i32 292, i32 278, i32 138, i32 62, i32 132, i32 345,
	i32 48, i32 455, i32 242, i32 160, i32 265, i32 466, i32 292, i32 463,
	i32 254, i32 435, i32 221, i32 290, i32 361, i32 321, i32 46, i32 164,
	i32 219, i32 288, i32 219, i32 248, i32 405, i32 457, i32 350, i32 285,
	i32 357, i32 231, i32 18, i32 8, i32 210, i32 181, i32 276, i32 124,
	i32 59, i32 226, i32 141, i32 434, i32 178, i32 308, i32 360, i32 296,
	i32 220, i32 330, i32 327, i32 150, i32 142, i32 340, i32 337, i32 126,
	i32 452, i32 339, i32 160, i32 162, i32 279, i32 257, i32 201, i32 363,
	i32 26, i32 445, i32 306, i32 425, i32 405, i32 293, i32 246, i32 458,
	i32 459, i32 404, i32 82, i32 0, i32 381, i32 327, i32 397, i32 127,
	i32 331, i32 101, i32 426, i32 148, i32 329, i32 309, i32 54, i32 162,
	i32 428, i32 167, i32 419, i32 391, i32 131, i32 239, i32 37, i32 323,
	i32 360, i32 464, i32 178, i32 22, i32 407, i32 112, i32 90, i32 280,
	i32 50, i32 60, i32 122, i32 83, i32 127, i32 163, i32 330, i32 166,
	i32 418, i32 314, i32 316, i32 281, i32 253, i32 297, i32 192, i32 4,
	i32 291, i32 356, i32 170, i32 2, i32 302, i32 116, i32 448, i32 218,
	i32 431, i32 259, i32 395, i32 434, i32 19, i32 177, i32 208, i32 89,
	i32 65, i32 251, i32 30, i32 464, i32 204, i32 349, i32 245, i32 433,
	i32 442, i32 273, i32 59, i32 430, i32 403, i32 461, i32 111, i32 393,
	i32 293, i32 32, i32 128, i32 159, i32 367, i32 271, i32 140, i32 462,
	i32 247, i32 465, i32 433, i32 280, i32 363, i32 413, i32 153, i32 17,
	i32 270, i32 256, i32 75, i32 74, i32 15, i32 169, i32 401, i32 85,
	i32 338, i32 124, i32 292, i32 303, i32 412, i32 272, i32 370, i32 299,
	i32 34, i32 397, i32 118, i32 139, i32 122, i32 106, i32 347, i32 427,
	i32 470, i32 384, i32 323, i32 240, i32 174, i32 267, i32 402, i32 354,
	i32 344, i32 54, i32 47, i32 424, i32 28, i32 184, i32 196, i32 145,
	i32 208, i32 147, i32 464, i32 336, i32 435, i32 35, i32 379, i32 408,
	i32 370, i32 439, i32 173, i32 452, i32 328, i32 75, i32 161, i32 1,
	i32 187, i32 460, i32 317, i32 174, i32 366, i32 359, i32 159, i32 12,
	i32 155, i32 447, i32 151, i32 390, i32 191, i32 76, i32 103, i32 112,
	i32 264, i32 185, i32 65, i32 438, i32 66, i32 326, i32 45, i32 266,
	i32 109, i32 183, i32 209, i32 379, i32 7, i32 263, i32 222, i32 55,
	i32 259, i32 182, i32 64, i32 410, i32 344, i32 276, i32 20, i32 109,
	i32 101, i32 401, i32 62, i32 388, i32 142, i32 444, i32 185, i32 257,
	i32 7, i32 219, i32 359, i32 416, i32 170, i32 50, i32 410, i32 326,
	i32 115, i32 141, i32 445, i32 175, i32 181, i32 166, i32 440, i32 80,
	i32 113, i32 235, i32 224, i32 303, i32 199, i32 17, i32 73, i32 307,
	i32 89, i32 255, i32 87, i32 382, i32 120, i32 320, i32 261, i32 384,
	i32 465, i32 135, i32 153, i32 106, i32 11, i32 90, i32 31, i32 176,
	i32 199, i32 372, i32 136, i32 175, i32 364, i32 367, i32 318, i32 243,
	i32 251, i32 459, i32 256, i32 40, i32 472, i32 317, i32 197, i32 139,
	i32 341, i32 343, i32 25, i32 376, i32 73, i32 454, i32 288, i32 319,
	i32 235, i32 236, i32 447, i32 27, i32 209, i32 67, i32 252, i32 88,
	i32 420, i32 95, i32 113, i32 396, i32 383, i32 31, i32 104, i32 291,
	i32 37, i32 72, i32 240, i32 446, i32 333, i32 108, i32 123, i32 263,
	i32 87, i32 207, i32 86, i32 389, i32 358, i32 93, i32 388, i32 402,
	i32 204, i32 462, i32 396, i32 129, i32 303, i32 320, i32 211, i32 469,
	i32 314, i32 444, i32 276, i32 319, i32 273, i32 224, i32 330, i32 201,
	i32 163, i32 130, i32 422, i32 208, i32 324, i32 441, i32 180, i32 311,
	i32 408, i32 203, i32 234, i32 10, i32 49, i32 374, i32 91, i32 451,
	i32 374, i32 150, i32 62, i32 136, i32 453, i32 150, i32 221, i32 61,
	i32 207, i32 117, i32 137, i32 84, i32 289, i32 376, i32 159, i32 321,
	i32 143, i32 355, i32 285, i32 82, i32 70, i32 189, i32 262, i32 136,
	i32 274, i32 457, i32 255, i32 443, i32 186, i32 402, i32 125, i32 469,
	i32 455, i32 54, i32 110, i32 130, i32 88, i32 23, i32 74, i32 129,
	i32 31, i32 206, i32 73, i32 298, i32 357, i32 158, i32 23, i32 4,
	i32 170, i32 395, i32 365, i32 123, i32 250, i32 356, i32 351, i32 114,
	i32 172, i32 32, i32 3, i32 164, i32 216, i32 438, i32 463, i32 450,
	i32 322, i32 30, i32 19, i32 417, i32 214, i32 297, i32 93, i32 36,
	i32 5, i32 441, i32 328, i32 265, i32 243, i32 339, i32 155, i32 318,
	i32 392, i32 332, i32 225, i32 426, i32 272, i32 454, i32 305, i32 442,
	i32 425, i32 185, i32 430, i32 324, i32 399, i32 471, i32 222, i32 76,
	i32 63, i32 308, i32 466, i32 147, i32 421, i32 269, i32 121, i32 134,
	i32 445, i32 238, i32 468, i32 310, i32 333, i32 230, i32 100, i32 39,
	i32 257, i32 350, i32 385, i32 68, i32 26, i32 75, i32 78, i32 296,
	i32 228, i32 382, i32 187, i32 24, i32 152, i32 38, i32 363, i32 378,
	i32 390, i32 243, i32 265, i32 133, i32 103, i32 329, i32 57, i32 165,
	i32 91, i32 61, i32 232, i32 132, i32 46, i32 133, i32 279, i32 400,
	i32 145, i32 220, i32 78, i32 274, i32 223, i32 297, i32 242, i32 218,
	i32 214, i32 154, i32 431, i32 348, i32 83, i32 375, i32 233, i32 373,
	i32 61, i32 96, i32 312, i32 225, i32 153, i32 174, i32 354, i32 461,
	i32 118, i32 213, i32 6, i32 15, i32 74, i32 205, i32 344, i32 146,
	i32 251, i32 411, i32 52, i32 70, i32 23, i32 158, i32 126, i32 194,
	i32 65, i32 383, i32 305, i32 112, i32 307, i32 295, i32 55, i32 53,
	i32 235, i32 281, i32 107, i32 135, i32 286, i32 296, i32 80, i32 176,
	i32 290, i32 459, i32 372, i32 246, i32 294, i32 183, i32 225, i32 129,
	i32 64, i32 188, i32 152
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
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
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 0ccdc57cf7fc59bd3f6cbf900c9cdbebadfe4609"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
