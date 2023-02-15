// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import

import 'dart:js_interop';

import 'package:js/js.dart' hide JS;
import 'package:web/src/dom/dom.dart';
import 'package:web/src/dom/geometry.dart';

typedef ResizeObserverCallback = JSFunction;
typedef ResizeObserverBoxOptions = JSString;

@JS('ResizeObserverOptions')
@staticInterop
class ResizeObserverOptions {
  external factory ResizeObserverOptions();
}

extension ResizeObserverOptionsExtension on ResizeObserverOptions {}

@JS('ResizeObserver')
@staticInterop
class ResizeObserver {
  external factory ResizeObserver();

  external factory ResizeObserver.a1(ResizeObserverCallback callback);
}

extension ResizeObserverExtension on ResizeObserver {
  external JSVoid observe(Element target);
  external JSVoid observe1(
    Element target,
    ResizeObserverOptions options,
  );
  external JSVoid unobserve(Element target);
  external JSVoid disconnect();
}

@JS('ResizeObserverEntry')
@staticInterop
class ResizeObserverEntry {
  external factory ResizeObserverEntry();
}

extension ResizeObserverEntryExtension on ResizeObserverEntry {
  external Element get target;
  external DOMRectReadOnly get contentRect;
  external JSArray get borderBoxSize;
  external JSArray get contentBoxSize;
  external JSArray get devicePixelContentBoxSize;
}

@JS('ResizeObserverSize')
@staticInterop
class ResizeObserverSize {
  external factory ResizeObserverSize();
}

extension ResizeObserverSizeExtension on ResizeObserverSize {
  external JSNumber get inlineSize;
  external JSNumber get blockSize;
}
