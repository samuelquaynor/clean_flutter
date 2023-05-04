import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../error/exception.dart';
import '../../../util/utilities.dart';
import '../../domain/entities/user_entity.dart';

/// Handles User third party connections
abstract class UserRemoteDatabase {
  /// Logs in a user
  Future<User?> login({required String email, required String password});

  // /// Authenticate using other social platforms
  // Future<User> socialLogin(
  //     {required String provider, required User user, required String fcmToken});

  // /// Get user info
  // Future<User> retrieve(String token);

  ///Create user account
  Future<User?> signUp({required String email, required String password});

  Future<UserEntity> createUser(
      {required String name,
      required String profilePic,
      required User fireUser});

  /// Verify otp code
  // Future<User> validateOTP(
  //     {required String pin, required String pinID, required String fcmToken});

  // /// Update user info
  // Future<User> update({required String token, required User user});
}

/// Implements [UserRemoteDatabase]
class UserRemoteDatabaseImpl implements UserRemoteDatabase {
  /// Constructor
  UserRemoteDatabaseImpl({required this.auth, required this.database});

  final FirebaseAuth auth;
  final DatabaseReference database;

  @override
  Future<User?> login({required String email, required String password}) async {
    try {
      final result = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (error) {
      throw DeviceException(error.toString());
    }
  }

  @override
  Future<User?> signUp(
      {required String email, required String password}) async {
    try {
      final result = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return result.user;
    } catch (error) {
      throw DeviceException(error.toString());
    }
  }

  @override
  Future<UserEntity> createUser(
      {required String name,
      required String profilePic,
      required User fireUser}) async {
    try {
      await fireUser.updateDisplayName(name);
      await fireUser.updatePhotoURL(profilePic);
      final result = UserEntity(
          createdAt: DateTime.now().toUtc().toString(),
          userName: Utility.generateUsername(id: fireUser.uid, name: name),
          email: fireUser.email ?? '',
          isVerified: false,
          name: name,
          userId: fireUser.uid);
      await database.ref
          .child('profile')
          .child(result.userId)
          .set(result.toJson());
      return result;
    } catch (error) {
      throw DeviceException(error.toString());
    }
  }

  // @override
  // Future<User> validateOTP(
  //     {required String pin,
  //     required String pinID,
  //     required String fcmToken}) async {
  //   final result = await client.http.mutate(MutationOptions<
  //           Map<String, dynamic>>(
  //       document: gql(
  //           r'mutation verifyOTP($pin: String!,$pin_id: String!,$fcm: String) '
  //           r'{ verifyOTP(pin:$pin, pin_id:$pin_id, fcm: $fcm)  '
  //           '{ verified login   { ${User.graphQlResponse}  token } } }'),
  //       variables: <String, String>{
  //         'pin': pin,
  //         'pin_id': pinID,
  //         'fcm': fcmToken
  //       }));
  //   if (result.hasException) {
  //     final error = result.exception!.graphqlErrors;
  //     if (error.isNotEmpty) throw DeviceException(error.first.message);
  //     throw DeviceException(result.exception!.linkException.toString());
  //   }

  //   final verified =
  //       (result.data!['verifyOTP'] as Map<String, dynamic>)['verified'] ==
  //           'true';
  //   if (!verified) throw DeviceException('Wrong OTP');
  //   return User.fromJson((result.data!['verifyOTP']
  //       as Map<String, dynamic>)['login'] as Map<String, dynamic>);
  // }

  // @override
  // Future<User> retrieveUser(String token) async {

  // @override
  // Future<User> update({required String token, required User user}) async {
  //   final result = await client
  //       .auth(token)
  //       .mutate(MutationOptions<Map<String, dynamic>>(
  //           document: gql(
  //               'mutation updateUser (\$user: UserUpdateInput!) {  updateUser ( user: \$user) {  ${User.graphQlResponse}   } }'),
  //           variables: <String, dynamic>{
  //             'user': {
  //               'avatar': user.avatar,
  //               'firstName': user.name,
  //               'phone': user.phoneNumber,
  //               'email': user.email
  //             }
  //           }));
  //   if (result.hasException) {
  //     final error = result.exception!.graphqlErrors;
  //     if (error.isNotEmpty) throw DeviceException(error.first.message);
  //     throw DeviceException(result.exception!.linkException.toString());
  //   }
  //   return User.fromJson(result.data!['updateUser'] as Map<String, dynamic>);
  // }

  // @override
  // Future<User> socialLogin(
  //     {required String provider,
  //     required User user,
  //     required String fcmToken}) async {
  //   final result = await client.http.mutate(MutationOptions<
  //           Map<String, dynamic>>(
  //       document: gql(
  //           r'mutation socialLogin($token: String!,$provider:String!,$email:String, '
  //           r'$firstName: String,$lastName: String,$phone: String,$photo: String, '
  //           r'$username: String,$fcm: String,$refreshToken: String)'
  //           r' { socialLogin(token:$token,provider: $provider, '
  //           r'email: $email,firstName: $firstName, '
  //           r'lastName: $lastName,phone: $phone, '
  //           r'photo: $photo,username: $username, '
  //           'fcm: \$fcm, refreshToken: \$refreshToken ) { ${User.graphQlResponse} token } }'),
  //       variables: <String, dynamic>{
  //         'email': user.email,
  //         'provider': provider,
  //         'token': user.token,
  //         'fcm': fcmToken,
  //         'photo': user.avatar,
  //         'firstName': user.name
  //       }));
  //   if (result.hasException) {
  //     final error = result.exception!.graphqlErrors;
  //     if (error.isNotEmpty) throw DeviceException(error.first.message);
  //     throw DeviceException(result.exception!.linkException.toString());
  //   }
  //   return User.fromJson(result.data!['socialLogin'] as Map<String, dynamic>);
  // }
}
