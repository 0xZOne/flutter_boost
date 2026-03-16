// Copyright (c) 2019 Alibaba Group. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'package:flutter_boost_platform_interface/flutter_boost_platform_interface.dart';

/// The iOS implementation of [FlutterBoostPlatform].
///
/// This class registers itself as the platform implementation via
/// the native iOS plugin (FlutterBoostPlugin.m), which uses
/// Pigeon-generated method channels under the hood.
class FlutterBoostIOS extends MethodChannelFlutterBoost {
  /// Registers this class as the default instance of [FlutterBoostPlatform].
  static void registerWith() {
    FlutterBoostPlatform.instance = FlutterBoostIOS();
  }
}
