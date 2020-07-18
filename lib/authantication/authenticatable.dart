import 'package:ecommerceapp/user/user.dart';

class Authenticatable{

  // ignore: missing_return
  Future<User> register( String email , String password ){}

  // ignore: missing_return
  Future<bool> login( String email , String password ){}

  // ignore: missing_return
  Future<bool> resetPassword( String email ){}

  // ignore: missing_return
  Future<User> updateProfile( User user ){}

}