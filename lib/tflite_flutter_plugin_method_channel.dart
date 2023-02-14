// import 'package:flutter/foundation.dart';
// import 'package:flutter/services.dart';

// import 'tflite_flutter_plugin_platform_interface.dart';

// /// An implementation of [TfliteFlutterPluginPlatform] that uses method channels.
// class MethodChannelTfliteFlutterPlugin extends TfliteFlutterPluginPlatform {
//   /// The method channel used to interact with the native platform.
//   @visibleForTesting
//   final methodChannel = const MethodChannel('tflite_flutter_plugin');

//   @override
//   Future<String?> getPlatformVersion() async {
//     final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
//     return version;
//   }
// }
