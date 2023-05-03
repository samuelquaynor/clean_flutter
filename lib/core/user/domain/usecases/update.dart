// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../core/error/failures.dart';
// import '../../../core/usecases/usecase.dart';
// import 'entities/user.dart';
// import 'repositories/user_repository.dart';

// /// Change user account info
// class UpdateUser implements UseCase<User, UpdateUserParams> {
//   /// Constructor
//   UpdateUser(this.repository);

//   /// Repository
//   final UserRepository repository;

//   @override
//   Future<Either<Failure, User>> call(UpdateUserParams params) =>
//       repository.update(params.user);
// }

// /// Update user params
// class UpdateUserParams extends Equatable {
//   /// Constructor
//   const UpdateUserParams(this.user);

//   /// User parameter
//   final User user;

//   @override
//   List<Object> get props => [user];
// }
