// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../core/error/failures.dart';
// import '../../usecases/usecase.dart';
// import 'entities/user.dart';
// import 'repositories/user_repository.dart';

// /// SocialLogin a User
// class SocialLogin implements UseCase<User, SocialLoginParams> {
//   /// Constructor
//   SocialLogin(this.repository);

//   /// Repository
//   final UserRepository repository;

//   @override
//   Future<Either<Failure, User>> call(SocialLoginParams params) =>
//       repository.socialLogin(
//           user: params.user,
//           provider: params.provider,
//           fcmToken: params.fcmToken);
// }

// /// SocialLogin Params for User
// class SocialLoginParams extends Equatable {
//   /// Constructor
//   const SocialLoginParams(
//       {required this.provider, required this.user, required this.fcmToken});

//   /// Authentication Provider
//   final String provider;

//   /// User details
//   final User user;

//   /// Device token
//   final String fcmToken;

//   @override
//   List<Object> get props => [provider, user, fcmToken];
// }
