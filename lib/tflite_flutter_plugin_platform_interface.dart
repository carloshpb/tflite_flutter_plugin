// import 'package:ffi/ffi.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// import 'src/bindings/bindings.dart' as bindings;

// import 'tflite_flutter_plugin_method_channel.dart';

// abstract class TfliteFlutterPluginPlatform extends PlatformInterface {
//   /// Constructs a TfliteFlutterPluginPlatform.
//   TfliteFlutterPluginPlatform() : super(token: _token);

//   static final Object _token = Object();

//   static TfliteFlutterPluginPlatform _instance =
//       MethodChannelTfliteFlutterPlugin();

//   /// The default instance of [TfliteFlutterPluginPlatform] to use.
//   ///
//   /// Defaults to [MethodChannelTfliteFlutterPlugin].
//   static TfliteFlutterPluginPlatform get instance => _instance;

//   /// Platform-specific implementations should set this with their own
//   /// platform-specific class that extends [TfliteFlutterPluginPlatform] when
//   /// they register themselves.
//   static set instance(TfliteFlutterPluginPlatform instance) {
//     PlatformInterface.verifyToken(instance, _token);
//     _instance = instance;
//   }

//   Future<String?> getPlatformVersion() {
//     throw UnimplementedError('platformVersion() has not been implemented.');
//   }

//   String get tfLiteVersion => bindings.tfLiteVersion().toDartString();
// }
