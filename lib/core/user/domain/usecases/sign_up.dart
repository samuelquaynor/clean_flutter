// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../core/error/failures.dart';
// import '../../usecases/usecase.dart';
// import 'entities/user.dart';
// import 'repositories/user_repository.dart';

// /// Create a user account
// class SignUp implements UseCase<User, SignUpParams> {
//   /// Constructor
//   SignUp(this.repository);

//   /// Repository
//   final UserRepository repository;

//   @override
//   Future<Either<Failure, User>> call(SignUpParams params) => repository.signUp(
//       password: params.password,
//       email: params.email,
//       phoneNumber: params.phoneNumber,
//       name: params.name,
//       fcmToken: params.fcmToken,
//       referral: params.referral);
// }

// /// Creating a user account params
// class SignUpParams extends Equatable {
//   /// Constructor
//   const SignUpParams(
//       {required this.email,
//       required this.password,
//       required this.name,
//       required this.phoneNumber,
//       required this.fcmToken,
//       required this.referral});

//   /// Full user name
//   final String name;

//   /// Referral text
//   final String referral;

//   /// Email Address
//   final String email;

//   /// Password
//   final String password;

//   /// Phone Number
//   final String phoneNumber;

//   /// Fcm Token
//   final String fcmToken;

//   @override
//   List<Object> get props =>
//       [email, password, referral, name, phoneNumber, fcmToken];
// }
