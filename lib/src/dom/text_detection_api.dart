// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/html.dart';

@JS('TextDetector')
@staticInterop
class TextDetector {
  external factory TextDetector.a0();
}

extension TextDetectorExtension on TextDetector {
  external JSPromise detect(ImageBitmapSource image);
}

@JS('DetectedText')
@staticInterop
class DetectedText {
  external factory DetectedText();
}

extension DetectedTextExtension on DetectedText {}
