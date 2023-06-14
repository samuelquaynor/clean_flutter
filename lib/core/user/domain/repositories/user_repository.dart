import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

/// Interacts with the User entity
abstract class UserRepository {
  /// Authenticates a user with email
  // Future<Either<Failure, User>> login(
  //     {required String email,
  //     required String password,
  //     required String fcmToken});

  // /// Logs a user out of the application
  // Future<Either<Failure, User>> logout();

  // /// Returns the current logged in user
  // Future<Either<Failure, User>> retrieve(bool localUser);

  // /// Authenticates from other platforms
  Future<Either<Failure, UserEntity>> googleSignIn();

  /// Sign up a user account
  Future<Either<Failure, UserEntity>> signUp(
      {required String email,
      required String password,
      required String name,
      required String phoneNumber,
      required String dob});

  /// Validate the otp sent to the phoneNumber
  // Future<Either<Failure, User>> validateOTP(
  //     {required String pin, required String pinID, required String fcmToken});

  // /// Add funds to user wallet
  // Future<Either<Failure, User>> fundWallet(Payment payment);

  // /// Updates a user info
  // Future<Either<Failure, User>> update(User user);
}
