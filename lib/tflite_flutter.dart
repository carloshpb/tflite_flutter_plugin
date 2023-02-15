/// TensorFlow Lite for Flutter
library tflite_flutter;

//import 'tflite_flutter_plugin_platform_interface.dart';

import 'package:ffi/ffi.dart';

import 'src/bindings/bindings.dart';

export 'src/bindings/types.dart';
export 'src/delegate.dart';
export 'src/delegates/gpu_delegate.dart';
export 'src/delegates/metal_delegate.dart';
export 'src/delegates/xnnpack_delegate.dart';
export 'src/interpreter.dart';
export 'src/interpreter_options.dart';
export 'src/quanitzation_params.dart';
export 'src/tensor.dart';
export 'src/util/list_shape_extension.dart';
export 'src/util/byte_conversion_utils.dart';

// class TfliteFlutter {
//   Future<String?> getPlatformVersion() {
//     return TfliteFlutterPluginPlatform.instance.getPlatformVersion();
//   }

//   String get tfLiteVersion =>
//       TfliteFlutterPluginPlatform.instance.tfLiteVersion;
// }

String get version => tfLiteVersion().toDartString();
