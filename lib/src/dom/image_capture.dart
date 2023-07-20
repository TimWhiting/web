// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:js_interop';

import 'mediacapture_streams.dart';

typedef ConstrainPoint2D = JSAny?;
typedef RedEyeReduction = String;
typedef FillLightMode = String;
typedef MeteringMode = String;

@JS('ImageCapture')
@staticInterop
class ImageCapture implements JSObject {
  external factory ImageCapture(MediaStreamTrack videoTrack);
}

extension ImageCaptureExtension on ImageCapture {
  external JSPromise takePhoto([PhotoSettings photoSettings]);
  external JSPromise getPhotoCapabilities();
  external JSPromise getPhotoSettings();
  external JSPromise grabFrame();
  external MediaStreamTrack get track;
}

@JS()
@staticInterop
@anonymous
class PhotoCapabilities implements JSObject {
  external factory PhotoCapabilities({
    RedEyeReduction redEyeReduction,
    MediaSettingsRange imageHeight,
    MediaSettingsRange imageWidth,
    JSArray fillLightMode,
  });
}

extension PhotoCapabilitiesExtension on PhotoCapabilities {
  external set redEyeReduction(RedEyeReduction value);
  external RedEyeReduction get redEyeReduction;
  external set imageHeight(MediaSettingsRange value);
  external MediaSettingsRange get imageHeight;
  external set imageWidth(MediaSettingsRange value);
  external MediaSettingsRange get imageWidth;
  external set fillLightMode(JSArray value);
  external JSArray get fillLightMode;
}

@JS()
@staticInterop
@anonymous
class PhotoSettings implements JSObject {
  external factory PhotoSettings({
    FillLightMode fillLightMode,
    double imageHeight,
    double imageWidth,
    bool redEyeReduction,
  });
}

extension PhotoSettingsExtension on PhotoSettings {
  external set fillLightMode(FillLightMode value);
  external FillLightMode get fillLightMode;
  external set imageHeight(double value);
  external double get imageHeight;
  external set imageWidth(double value);
  external double get imageWidth;
  external set redEyeReduction(bool value);
  external bool get redEyeReduction;
}

@JS()
@staticInterop
@anonymous
class MediaSettingsRange implements JSObject {
  external factory MediaSettingsRange({
    double max,
    double min,
    double step,
  });
}

extension MediaSettingsRangeExtension on MediaSettingsRange {
  external set max(double value);
  external double get max;
  external set min(double value);
  external double get min;
  external set step(double value);
  external double get step;
}

@JS()
@staticInterop
@anonymous
class ConstrainPoint2DParameters implements JSObject {
  external factory ConstrainPoint2DParameters({
    JSArray exact,
    JSArray ideal,
  });
}

extension ConstrainPoint2DParametersExtension on ConstrainPoint2DParameters {
  external set exact(JSArray value);
  external JSArray get exact;
  external set ideal(JSArray value);
  external JSArray get ideal;
}

@JS()
@staticInterop
@anonymous
class Point2D implements JSObject {
  external factory Point2D({
    double x,
    double y,
  });
}

extension Point2DExtension on Point2D {
  external set x(double value);
  external double get x;
  external set y(double value);
  external double get y;
}