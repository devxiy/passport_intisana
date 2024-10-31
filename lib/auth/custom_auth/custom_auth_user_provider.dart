import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PassportIntisanaAuthUser {
  PassportIntisanaAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PassportIntisanaAuthUser> passportIntisanaAuthUserSubject =
    BehaviorSubject.seeded(PassportIntisanaAuthUser(loggedIn: false));
Stream<PassportIntisanaAuthUser> passportIntisanaAuthUserStream() =>
    passportIntisanaAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
