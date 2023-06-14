import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../error/failures.dart';
import '../../../usecases/usecase.dart';
import '../entities/user_entity.dart';
import '../repositories/user_repository.dart';

/// Create a user account
class SignUp implements UseCase<UserEntity, SignUpParams> {
  /// Constructor
  SignUp(this.repository);

  /// Repository
  final UserRepository repository;

  @override
  Future<Either<Failure, UserEntity>> call(SignUpParams params) =>
      repository.signUp(
          password: params.password,
          email: params.email,
          phoneNumber: params.phoneNumber,
          name: params.name,
          dob: params.dob);
}

/// Creating a user account params
class SignUpParams extends Equatable {
  /// Constructor
  const SignUpParams(
      {required this.email,
      required this.password,
      required this.name,
      required this.phoneNumber,
      required this.dob});

  /// Full user name
  final String name;

  /// Email Address
  final String email;

  /// Password
  final String password;

  /// Phone Number
  final String phoneNumber;

  /// date of birth
  final String dob;

  @override
  List<Object> get props => [email, password, name, phoneNumber, dob];
}
