import 'package:bazaar/data/auth/models/user_creation_req.dart';
import 'package:bazaar/data/auth/source/auth_firebase_service.dart';
import 'package:bazaar/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';
import '../../../service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  @override
  Future<Either> signUp(UserCreationReq user) async{
  return sl<AuthFirebaseService>().signup(user);
  }
  
}