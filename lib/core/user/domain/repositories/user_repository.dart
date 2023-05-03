// import 'package:dartz/dartz.dart';

// import '../../../../core/error/failures.dart';
// import '../../../payment/domain/entities/payment.dart';
// import '../entities/user.dart';

// /// Interacts with the User entity
// abstract class UserRepository {
//   /// Authenticates a user with email
//   Future<Either<Failure, User>> login(
//       {required String email,
//       required String password,
//       required String fcmToken});

//   /// Logs a user out of the application
//   Future<Either<Failure, User>> logout();

//   /// Returns the current logged in user
//   Future<Either<Failure, User>> retrieve(bool localUser);

//   /// Authenticates from other platforms
//   Future<Either<Failure, User>> socialLogin(
//       {required String provider, required User user, required String fcmToken});

//   /// Sign up a user account
//   Future<Either<Failure, User>> signUp(
//       {required String email,
//       required String password,
//       required String name,
//       required String phoneNumber,
//       required String fcmToken,
//       required String referral});

//   /// Validate the otp sent to the phoneNumber
//   Future<Either<Failure, User>> validateOTP(
//       {required String pin, required String pinID, required String fcmToken});

//   /// Add funds to user wallet
//   Future<Either<Failure, User>> fundWallet(Payment payment);

//   /// Updates a user info
//   Future<Either<Failure, User>> update(User user);
// }
