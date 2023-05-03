// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';

// import '../../../core/error/failures.dart';
// import '../../../core/usecases/usecase.dart';
// import 'entities/user.dart';
// import 'repositories/user_repository.dart';
// /// Get user details
// class RetrieveUser implements UseCase<User, RetrieveUserParams> {
//   /// Constructor
//   RetrieveUser(this.repository);

//   /// Repository
//   final UserRepository repository;

//   @override
//   Future<Either<Failure, User>> call(RetrieveUserParams params) =>
//       repository.retrieve(params.localUser);
// }

// /// Get user details Params
// class RetrieveUserParams extends Equatable {
//   /// Constructor
//   const RetrieveUserParams({this.localUser = true});

//   /// Whether take info from local or remote database
//   final bool localUser;

//   @override
//   List<Object> get props => [localUser];
// }
