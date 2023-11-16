import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PrimecutsAuthUser {
  PrimecutsAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PrimecutsAuthUser> primecutsAuthUserSubject =
    BehaviorSubject.seeded(PrimecutsAuthUser(loggedIn: false));
Stream<PrimecutsAuthUser> primecutsAuthUserStream() => primecutsAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
