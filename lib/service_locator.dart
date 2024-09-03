

import 'package:bazaar/data/auth/repository/auth_repository_impl.dart';
import 'package:bazaar/data/auth/source/auth_firebase_service.dart';
import 'package:bazaar/domain/auth/repository/auth.dart';
import 'package:bazaar/domain/auth/usecases/get_ages.dart';
import 'package:bazaar/domain/auth/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async{
  //Services
  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

  //Repositories
  sl.registerSingleton<AuthRepository>(
      AuthRepositoryImpl()
  );


  //UseCases

  sl.registerSingleton<SignUpUseCase>(
      SignUpUseCase()
  );

  sl.registerSingleton<GetAgesUseCase>(
     GetAgesUseCase()
  );

}
