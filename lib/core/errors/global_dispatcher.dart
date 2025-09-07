

import 'package:flutter/cupertino.dart';

abstract class GlobalDispatcher {
  BuildContext get ctx;
  Future<void> dispatchError(Exception error);
  Future<void> dispatchWarning(Exception error);
  Future<void> dispatchInfo(Exception error);
  Future<void> dispatchSuccess(Exception error);
}