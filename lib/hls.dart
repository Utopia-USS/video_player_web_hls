@JS()
library hls.js;

import 'dart:html';

import 'package:js/js.dart';

@JS('Hls.isSupported')
external bool isSupported();

@JS()
class Hls {
  external factory Hls(HlsConfig config);

  @JS()
  external void stopLoad();

  @JS()
  external void loadSource(String videoSrc);

  @JS()
  external void attachMedia(VideoElement video);

  @JS()
  external void on(String event, Function callback);

  @JS()
  external void recoverMediaError();

  @JS()
  external void startLoad();

  external HlsConfig config;
}

@JS()
@anonymous
class HlsConfig {
  @JS()
  external Function get xhrSetup;

  @JS()
  external bool? get debug;

  @JS()
  external bool? get enableWorker;

  @JS()
  external bool? get lowLatencyMode;

  @JS()
  external int? get backBufferLength;

  external factory HlsConfig({
    Function xhrSetup,
    bool debug,
    bool enableWorker,
    bool lowLatencyMode,
    int backBufferLength,
  });
}

@JS()
@anonymous
class ErrorData {
  @JS()
  external String get type;

  @JS()
  external String get details;

  @JS()
  external bool get fatal;

  external factory ErrorData({String type, String details, bool fatal});
}
