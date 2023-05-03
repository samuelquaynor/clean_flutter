import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../../data/hive_adapters.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: HiveAdapters.user)
@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User({
    // Hive fields go here
    @HiveField(12) required String createdAt,
    @HiveField(13) required bool isVerified,
    @HiveField(1) required String email,
    @HiveField(2) required String userId,
    @HiveField(4) required String userName,
    @HiveField(0) String? key,
    @HiveField(3) String? displayName,
    @HiveField(5) String? webSite,
    @HiveField(6) String? profilePic,
    @HiveField(7) String? bannerImage,
    @HiveField(8) String? contact,
    @HiveField(9) String? bio,
    @HiveField(10) String? location,
    @HiveField(11) String? dob,
    @HiveField(14) int? followers,
    @HiveField(15) int? following,
    @HiveField(16) String? fcmToken,
    @HiveField(17) List<String>? followersList,
    @HiveField(18) List<String>? followingList,
  }) = _User;

  factory User.initial() => const User(
      createdAt: '', email: '', isVerified: false, userId: '', userName: '');

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);
}
