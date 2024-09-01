import 'package:bazaar/core/usecase/usecase.dart';
import 'package:bazaar/data/auth/models/user_creation_req.dart';
import 'package:bazaar/domain/auth/repository/auth.dart';
import 'package:dartz/dartz.dart';

import '../../../service_locator.dart';

class SignUpUseCase implements UseCase<Either,UserCreationReq>{
  @override
  Future<Either> call({UserCreationReq ? params}) async{
   return await sl<AuthRepository>().signUp(params!);
  }

}