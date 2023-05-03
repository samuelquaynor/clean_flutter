// import '../../../../core/error/exception.dart';
// import '../../domain/entities/user.dart';

// /// Handles User third party connections
// abstract class UserRemoteDatabase {
//   /// Logs in a user
//   Future<User> login(
//       {required String email, required String password, required String fcm});

//   /// Authenticate using other social platforms
//   Future<User> socialLogin(
//       {required String provider, required User user, required String fcmToken});

//   /// Get user info
//   Future<User> retrieve(String token);

//   ///Create user account
//   Future<User> signUp(
//       {required String email,
//       required String password,
//       required String name,
//       required String phoneNumber,
//       required String referral,
//       required String fcm});

//   /// Verify otp code
//   Future<User> validateOTP(
//       {required String pin, required String pinID, required String fcmToken});

//   /// Update user info
//   Future<User> update({required String token, required User user});
// }

// /// Implements [UserRemoteDatabase]
// class UserRemoteDatabaseImpl implements UserRemoteDatabase {
//   /// Constructor
//   UserRemoteDatabaseImpl();

//   @override
//   Future<User> login(
//       {required String email,
//       required String password,
//       required String fcm}) async {
//     final result = await client.http.mutate(MutationOptions<
//             Map<String, dynamic>>(
//         document: gql(
//             'mutation login(\$user: LoginInput!) { login(user:\$user) { ${User.graphQlResponse} token } }'),
//         variables: <String, dynamic>{
//           'user': {'email': email, 'password': password, 'fcm': fcm}
//         }));
//     if (result.hasException) {
//       final error = result.exception!.graphqlErrors;
//       if (error.isNotEmpty) throw DeviceException(error.first.message);
//       throw DeviceException(result.exception!.linkException.toString());
//     }
//     return User.fromJson(result.data!['login'] as Map<String, dynamic>);
//   }

//   @override
//   Future<User> signUp(
//       {required String email,
//       required String password,
//       required String name,
//       required String phoneNumber,
//       required String referral,
//       required String fcm}) async {
//     final result = await client.http.mutate(MutationOptions<
//             Map<String, dynamic>>(
//         document: gql(
//             'mutation signup(\$user: SignUpInput!) { signup(user:\$user) { ${User.graphQlResponse} token } }'),
//         variables: <String, dynamic>{
//           'user': {
//             'email': email,
//             'password': password,
//             'fcm': fcm,
//             'referral': referral,
//             'firstName': name,
//             'phone': phoneNumber
//           }
//         }));
//     if (result.hasException) {
//       final error = result.exception!.graphqlErrors;
//       if (error.isNotEmpty) throw DeviceException(error.first.message);
//       throw DeviceException(result.exception!.linkException.toString());
//     }
//     return User.fromJson(result.data!['signup'] as Map<String, dynamic>);
//   }

//   @override
//   Future<User> validateOTP(
//       {required String pin,
//       required String pinID,
//       required String fcmToken}) async {
//     final result = await client.http.mutate(MutationOptions<
//             Map<String, dynamic>>(
//         document: gql(
//             r'mutation verifyOTP($pin: String!,$pin_id: String!,$fcm: String) '
//             r'{ verifyOTP(pin:$pin, pin_id:$pin_id, fcm: $fcm)  '
//             '{ verified login   { ${User.graphQlResponse}  token } } }'),
//         variables: <String, String>{
//           'pin': pin,
//           'pin_id': pinID,
//           'fcm': fcmToken
//         }));
//     if (result.hasException) {
//       final error = result.exception!.graphqlErrors;
//       if (error.isNotEmpty) throw DeviceException(error.first.message);
//       throw DeviceException(result.exception!.linkException.toString());
//     }

//     final verified =
//         (result.data!['verifyOTP'] as Map<String, dynamic>)['verified'] ==
//             'true';
//     if (!verified) throw DeviceException('Wrong OTP');
//     return User.fromJson((result.data!['verifyOTP']
//         as Map<String, dynamic>)['login'] as Map<String, dynamic>);
//   }

//   @override
//   Future<User> retrieve(String token) async {
//     final result = await client.auth(token).query(
//         QueryOptions<Map<String, dynamic>>(
//             document: gql('query me { me { ${User.graphQlResponse}  } }')));
//     if (result.hasException) {
//       final error = result.exception!.graphqlErrors;
//       if (error.isNotEmpty) throw DeviceException(error.first.message);
//       throw DeviceException(result.exception!.linkException.toString());
//     }
//     return User.fromJson(result.data!['me'] as Map<String, dynamic>);
//   }

//   @override
//   Future<User> update({required String token, required User user}) async {
//     final result = await client
//         .auth(token)
//         .mutate(MutationOptions<Map<String, dynamic>>(
//             document: gql(
//                 'mutation updateUser (\$user: UserUpdateInput!) {  updateUser ( user: \$user) {  ${User.graphQlResponse}   } }'),
//             variables: <String, dynamic>{
//               'user': {
//                 'avatar': user.avatar,
//                 'firstName': user.name,
//                 'phone': user.phoneNumber,
//                 'email': user.email
//               }
//             }));
//     if (result.hasException) {
//       final error = result.exception!.graphqlErrors;
//       if (error.isNotEmpty) throw DeviceException(error.first.message);
//       throw DeviceException(result.exception!.linkException.toString());
//     }
//     return User.fromJson(result.data!['updateUser'] as Map<String, dynamic>);
//   }

//   @override
//   Future<User> socialLogin(
//       {required String provider,
//       required User user,
//       required String fcmToken}) async {
//     final result = await client.http.mutate(MutationOptions<
//             Map<String, dynamic>>(
//         document: gql(
//             r'mutation socialLogin($token: String!,$provider:String!,$email:String, '
//             r'$firstName: String,$lastName: String,$phone: String,$photo: String, '
//             r'$username: String,$fcm: String,$refreshToken: String)'
//             r' { socialLogin(token:$token,provider: $provider, '
//             r'email: $email,firstName: $firstName, '
//             r'lastName: $lastName,phone: $phone, '
//             r'photo: $photo,username: $username, '
//             'fcm: \$fcm, refreshToken: \$refreshToken ) { ${User.graphQlResponse} token } }'),
//         variables: <String, dynamic>{
//           'email': user.email,
//           'provider': provider,
//           'token': user.token,
//           'fcm': fcmToken,
//           'photo': user.avatar,
//           'firstName': user.name
//         }));
//     if (result.hasException) {
//       final error = result.exception!.graphqlErrors;
//       if (error.isNotEmpty) throw DeviceException(error.first.message);
//       throw DeviceException(result.exception!.linkException.toString());
//     }
//     return User.fromJson(result.data!['socialLogin'] as Map<String, dynamic>);
//   }
// }
