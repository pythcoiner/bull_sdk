import 'package:bull_sdk/src/rust/frb_generated.dart' show SpAccountImpl;
import 'package:bull_sdk/src/rust/third_party/dart_bwk/api/sp_account.dart';

/// Whether [account] is bwk's native handle rather than a Dart class that
/// implements the generated `SpAccount` interface.
///
/// `SpAccount` is an implementable abstract class, so its static type proves
/// nothing about the receiver. Code that lends spend keys to
/// `SpAccount.finalizeAndSign` must check this first: only the native handle
/// binds the keys to the account it was built from, and a Dart implementation
/// would simply receive them.
bool isNativeSpAccount(SpAccount account) => account is SpAccountImpl;
