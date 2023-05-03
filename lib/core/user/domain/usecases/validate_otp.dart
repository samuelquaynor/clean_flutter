// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../core/error/failures.dart';
// import '../../usecases/usecase.dart';
// import 'entities/user.dart';
// import 'repositories/user_repository.dart';
// /// Validate an OTP
// class ValidateOTP implements UseCase<User, ValidateOTPParams> {
//   /// Constructor
//   ValidateOTP(this.repository);

//   /// Repository
//   final UserRepository repository;

//   @override
//   Future<Either<Failure, User>> call(ValidateOTPParams params) =>
//       repository.validateOTP(
//           pinID: params.pinID, pin: params.pin, fcmToken: params.fcmToken);
// }

// /// Validate otp params
// class ValidateOTPParams extends Equatable {
//   /// Constructor
//   const ValidateOTPParams(
//       {required this.pin, required this.pinID, required this.fcmToken});

//   /// Four otp code
//   final String pin;

//   /// OTP token
//   final String pinID;

//   /// Device Token
//   final String fcmToken;

//   @override
//   List<Object> get props => [pin, pinID, fcmToken];
// }
