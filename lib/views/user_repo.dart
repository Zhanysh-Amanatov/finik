import 'package:finik/views/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class UserRepository {
  Stream<User?> get user;

  Future<MyUser> signUp(MyUser myUser, String password);

  Future<void> setUserData(MyUser user);

  Future<void> signIn(String email, String password);
}
