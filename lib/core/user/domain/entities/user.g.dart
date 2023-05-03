// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      createdAt: fields[12] as String,
      isVerified: fields[13] as bool,
      email: fields[1] as String,
      userId: fields[2] as String,
      userName: fields[4] as String,
      key: fields[0] as String?,
      displayName: fields[3] as String?,
      webSite: fields[5] as String?,
      profilePic: fields[6] as String?,
      bannerImage: fields[7] as String?,
      contact: fields[8] as String?,
      bio: fields[9] as String?,
      location: fields[10] as String?,
      dob: fields[11] as String?,
      followers: fields[14] as int?,
      following: fields[15] as int?,
      fcmToken: fields[16] as String?,
      followersList: (fields[17] as List?)?.cast<String>(),
      followingList: (fields[18] as List?)?.cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(19)
      ..writeByte(12)
      ..write(obj.createdAt)
      ..writeByte(13)
      ..write(obj.isVerified)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.userId)
      ..writeByte(4)
      ..write(obj.userName)
      ..writeByte(0)
      ..write(obj.key)
      ..writeByte(3)
      ..write(obj.displayName)
      ..writeByte(5)
      ..write(obj.webSite)
      ..writeByte(6)
      ..write(obj.profilePic)
      ..writeByte(7)
      ..write(obj.bannerImage)
      ..writeByte(8)
      ..write(obj.contact)
      ..writeByte(9)
      ..write(obj.bio)
      ..writeByte(10)
      ..write(obj.location)
      ..writeByte(11)
      ..write(obj.dob)
      ..writeByte(14)
      ..write(obj.followers)
      ..writeByte(15)
      ..write(obj.following)
      ..writeByte(16)
      ..write(obj.fcmToken)
      ..writeByte(17)
      ..write(obj.followersList)
      ..writeByte(18)
      ..write(obj.followingList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      createdAt: json['createdAt'] as String,
      isVerified: json['isVerified'] as bool,
      email: json['email'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      key: json['key'] as String?,
      displayName: json['displayName'] as String?,
      webSite: json['webSite'] as String?,
      profilePic: json['profilePic'] as String?,
      bannerImage: json['bannerImage'] as String?,
      contact: json['contact'] as String?,
      bio: json['bio'] as String?,
      location: json['location'] as String?,
      dob: json['dob'] as String?,
      followers: json['followers'] as int?,
      following: json['following'] as int?,
      fcmToken: json['fcmToken'] as String?,
      followersList: (json['followersList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      followingList: (json['followingList'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'createdAt': instance.createdAt,
      'isVerified': instance.isVerified,
      'email': instance.email,
      'userId': instance.userId,
      'userName': instance.userName,
      'key': instance.key,
      'displayName': instance.displayName,
      'webSite': instance.webSite,
      'profilePic': instance.profilePic,
      'bannerImage': instance.bannerImage,
      'contact': instance.contact,
      'bio': instance.bio,
      'location': instance.location,
      'dob': instance.dob,
      'followers': instance.followers,
      'following': instance.following,
      'fcmToken': instance.fcmToken,
      'followersList': instance.followersList,
      'followingList': instance.followingList,
    };
