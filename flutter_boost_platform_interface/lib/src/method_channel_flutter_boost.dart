// Copyright (c) 2019 Alibaba Group. All rights reserved.
// Use of this source code is governed by a MIT license that can be
// found in the LICENSE file.

import 'flutter_boost_platform.dart';
import 'messages.dart';

/// An implementation of [FlutterBoostPlatform] that uses Pigeon-generated
/// method channels.
class MethodChannelFlutterBoost extends FlutterBoostPlatform {
  final NativeRouterApi _nativeRouterApi = NativeRouterApi();

  @override
  Future<void> pushNativeRoute(CommonParams param) {
    return _nativeRouterApi.pushNativeRoute(param);
  }

  @override
  Future<void> pushFlutterRoute(CommonParams param) {
    return _nativeRouterApi.pushFlutterRoute(param);
  }

  @override
  Future<void> popRoute(CommonParams param) {
    return _nativeRouterApi.popRoute(param);
  }

  @override
  Future<StackInfo> getStackFromHost() {
    return _nativeRouterApi.getStackFromHost();
  }

  @override
  Future<void> saveStackToHost(StackInfo stack) {
    return _nativeRouterApi.saveStackToHost(stack);
  }

  @override
  Future<void> sendEventToNative(CommonParams params) {
    return _nativeRouterApi.sendEventToNative(params);
  }

  @override
  void setupFlutterRouterApi(FlutterRouterApi api) {
    FlutterRouterApi.setup(api);
  }
}
