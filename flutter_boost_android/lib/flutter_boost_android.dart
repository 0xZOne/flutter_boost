// Copyright (c) 2019 Alibaba Group. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'package:flutter_boost_platform_interface/flutter_boost_platform_interface.dart';

/// The Android implementation of [FlutterBoostPlatform].
///
/// This class registers itself as the platform implementation via
/// the native Android plugin (FlutterBoostPlugin.java), which uses
/// Pigeon-generated method channels under the hood.
class FlutterBoostAndroid extends MethodChannelFlutterBoost {
  /// Registers this class as the default instance of [FlutterBoostPlatform].
  static void registerWith() {
    FlutterBoostPlatform.instance = FlutterBoostAndroid();
  }
}
