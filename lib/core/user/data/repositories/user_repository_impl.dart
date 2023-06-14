import 'package:dartz/dartz.dart';

import '../../../error/exception.dart';
import '../../../error/failures.dart';
import '../../../platform/network_info.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/user_repository.dart';
import '../database/user_local_database.dart';
import '../database/user_remote_database.dart';

/// Implements [UserRepository]
class UserRepositoryImpl implements UserRepository {
  /// Constructor
  UserRepositoryImpl(
      {required this.localDatabase,
      required this.networkInfo,
      required this.remoteDatabase});

  /// Local database
  final UserLocalDatabase localDatabase;

  /// Network information
  final NetworkInfo networkInfo;

  /// Remote database
  final UserRemoteDatabase remoteDatabase;

  // @override
  // Future<Either<Failure, User>> login(
  //     {required String email,
  //     required String password,
  //     required String fcmToken}) async {
  //   try {
  //     await networkInfo.hasInternet();
  //     final result = await remoteDatabase.login(
  //         email: email, password: password, fcm: fcmToken);
  //     await localDatabase.save(result);
  //     return Right(result);
  //   } on DeviceException catch (error) {
  //     return Left(Failure(error.message));
  //   }
  // }

  // @override
  // Future<Either<Failure, User>> validateOTP(
  //     {required String pin,
  //     required String pinID,
  //     required String fcmToken}) async {
  //   try {
  //     await networkInfo.hasInternet();
  //     final result = await remoteDatabase.validateOTP(
  //         pin: pin, pinID: pinID, fcmToken: fcmToken);
  //     await localDatabase.save(result);
  //     return Right(result);
  //   } on DeviceException catch (error) {
  //     return Left(Failure(error.message));
  //   }
  // }

  @override
  Future<Either<Failure, UserEntity>> signUp(
      {required String email,
      required String password,
      required String name,
      required String phoneNumber,
      required String dob}) async {
    try {
      await networkInfo.hasInternet();
      final signUser =
          await remoteDatabase.signUp(email: email, password: password);
      final result = await remoteDatabase.createUser(
          name: name, profilePic: 'profilePic', fireUser: signUser!);
      await localDatabase.save(result);
      return Right(result);
    } on DeviceException catch (error) {
      return Left(Failure(error.message));
    }
  }

  // @override
  // Future<Either<Failure, User>> retrieve(bool localUser) async {
  //   try {
  //     final user = await localDatabase.retrieve();
  //     if (localUser) return Right(user);
  //     await networkInfo.hasInternet();
  //     final result = await remoteDatabase.retrieve(user.token);
  //     await localDatabase.save(result.copyWith(token: user.token));
  //     return Right(result);
  //   } on DeviceException catch (error) {
  //     return Left(Failure(error.message));
  //   }
  // }

  // @override
  // Future<Either<Failure, User>> logout() async {
  //   try {
  //     final result = User.initial();
  //     await localDatabase.save(result);
  //     return Right(result);
  //   } on DeviceException catch (error) {
  //     return Left(Failure(error.message));
  //   }
  // }

  // @override
  // Future<Either<Failure, User>> fundWallet(Payment payment) async {
  //   try {
  //     final user = await localDatabase.retrieve();
  //     await networkInfo.hasInternet();
  //     final result =
  //         await remoteDatabase.fundWallet(token: user.token, payment: payment);
  //     await localDatabase.save(result.copyWith(token: user.token));
  //     return Right(result);
  //   } on DeviceException catch (error) {
  //     return Left(Failure(error.message));
  //   }
  // }

  // @override
  // Future<Either<Failure, User>> update(User user) async {
  //   try {
  //     await networkInfo.hasInternet();
  //     final result = await remoteDatabase.update(token: user.token, user: user);
  //     await localDatabase.save(result.copyWith(token: user.token));
  //     return Right(result);
  //   } on DeviceException catch (error) {
  //     return Left(Failure(error.message));
  //   }
  // }

  @override
  Future<Either<Failure, UserEntity>> googleSignIn() async {
    try {
      UserEntity? user;
      await networkInfo.hasInternet();
      final result = await remoteDatabase.googleLogin();
      if (result != null) {
        user = await remoteDatabase.createUserFromGoogleSignIn(result);
      }
      // TODO @samuelquaynor: fix this error
      user != null ? await localDatabase.save(user) : null;
      return Right(user!);
    } on DeviceException catch (error) {
      return Left(Failure(error.message));
    }
  }
}
