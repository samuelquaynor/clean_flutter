// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../core/error/failures.dart';
// import '../../usecases/usecase.dart';
// import 'entities/user.dart';
// import 'repositories/user_repository.dart';
// /// Login a User
// class Login implements UseCase<User, LoginParams> {
//   /// Constructor
//   Login(this.repository);

//   /// Repository
//   final UserRepository repository;

//   @override
//   Future<Either<Failure, User>> call(LoginParams params) => repository.login(
//       password: params.password,
//       email: params.email,
//       fcmToken: params.fcmToken);
// }

// /// Login Params for User
// class LoginParams extends Equatable {
//   /// Constructor
//   const LoginParams(
//       {required this.email, required this.password, required this.fcmToken});

//   /// Email Address
//   final String email;

//   /// User password
//   final String password;

//   /// Device token
//   final String fcmToken;

//   @override
//   List<Object> get props => [email, password, fcmToken];
// }
