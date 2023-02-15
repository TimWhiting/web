// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/webgl1.dart';

@JS('WEBGL_depth_texture')
@staticInterop
class WEBGL_depth_texture {
  external factory WEBGL_depth_texture();

  external static GLenum get UNSIGNED_INT_24_8_WEBGL;
}
