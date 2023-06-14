// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
// Hive fields go here
  @HiveField(12)
  String get createdAt => throw _privateConstructorUsedError;
  @HiveField(13)
  bool get isVerified => throw _privateConstructorUsedError;
  @HiveField(1)
  String get email => throw _privateConstructorUsedError;
  @HiveField(2)
  String get userId => throw _privateConstructorUsedError;
  @HiveField(4)
  String get userName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get name => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get webSite => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get profilePic => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get bannerImage => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get contact => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get bio => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get location => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get dob => throw _privateConstructorUsedError;
  @HiveField(14)
  int? get followers => throw _privateConstructorUsedError;
  @HiveField(15)
  int? get following => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get fcmToken => throw _privateConstructorUsedError;
  @HiveField(17)
  List<String>? get followersList => throw _privateConstructorUsedError;
  @HiveField(18)
  List<String>? get followingList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@HiveField(12) String createdAt,
      @HiveField(13) bool isVerified,
      @HiveField(1) String email,
      @HiveField(2) String userId,
      @HiveField(4) String userName,
      @HiveField(3) String name,
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
      @HiveField(18) List<String>? followingList});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? isVerified = null,
    Object? email = null,
    Object? userId = null,
    Object? userName = null,
    Object? name = null,
    Object? webSite = freezed,
    Object? profilePic = freezed,
    Object? bannerImage = freezed,
    Object? contact = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? dob = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? fcmToken = freezed,
    Object? followersList = freezed,
    Object? followingList = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      webSite: freezed == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImage: freezed == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      followersList: freezed == followersList
          ? _value.followersList
          : followersList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      followingList: freezed == followingList
          ? _value.followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(12) String createdAt,
      @HiveField(13) bool isVerified,
      @HiveField(1) String email,
      @HiveField(2) String userId,
      @HiveField(4) String userName,
      @HiveField(3) String name,
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
      @HiveField(18) List<String>? followingList});
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? isVerified = null,
    Object? email = null,
    Object? userId = null,
    Object? userName = null,
    Object? name = null,
    Object? webSite = freezed,
    Object? profilePic = freezed,
    Object? bannerImage = freezed,
    Object? contact = freezed,
    Object? bio = freezed,
    Object? location = freezed,
    Object? dob = freezed,
    Object? followers = freezed,
    Object? following = freezed,
    Object? fcmToken = freezed,
    Object? followersList = freezed,
    Object? followingList = freezed,
  }) {
    return _then(_$_UserEntity(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      webSite: freezed == webSite
          ? _value.webSite
          : webSite // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      bannerImage: freezed == bannerImage
          ? _value.bannerImage
          : bannerImage // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      followers: freezed == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int?,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      followersList: freezed == followersList
          ? _value._followersList
          : followersList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      followingList: freezed == followingList
          ? _value._followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {@HiveField(12) required this.createdAt,
      @HiveField(13) required this.isVerified,
      @HiveField(1) required this.email,
      @HiveField(2) required this.userId,
      @HiveField(4) required this.userName,
      @HiveField(3) required this.name,
      @HiveField(5) this.webSite,
      @HiveField(6) this.profilePic,
      @HiveField(7) this.bannerImage,
      @HiveField(8) this.contact,
      @HiveField(9) this.bio,
      @HiveField(10) this.location,
      @HiveField(11) this.dob,
      @HiveField(14) this.followers,
      @HiveField(15) this.following,
      @HiveField(16) this.fcmToken,
      @HiveField(17) final List<String>? followersList,
      @HiveField(18) final List<String>? followingList})
      : _followersList = followersList,
        _followingList = followingList;

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

// Hive fields go here
  @override
  @HiveField(12)
  final String createdAt;
  @override
  @HiveField(13)
  final bool isVerified;
  @override
  @HiveField(1)
  final String email;
  @override
  @HiveField(2)
  final String userId;
  @override
  @HiveField(4)
  final String userName;
  @override
  @HiveField(3)
  final String name;
  @override
  @HiveField(5)
  final String? webSite;
  @override
  @HiveField(6)
  final String? profilePic;
  @override
  @HiveField(7)
  final String? bannerImage;
  @override
  @HiveField(8)
  final String? contact;
  @override
  @HiveField(9)
  final String? bio;
  @override
  @HiveField(10)
  final String? location;
  @override
  @HiveField(11)
  final String? dob;
  @override
  @HiveField(14)
  final int? followers;
  @override
  @HiveField(15)
  final int? following;
  @override
  @HiveField(16)
  final String? fcmToken;
  final List<String>? _followersList;
  @override
  @HiveField(17)
  List<String>? get followersList {
    final value = _followersList;
    if (value == null) return null;
    if (_followersList is EqualUnmodifiableListView) return _followersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _followingList;
  @override
  @HiveField(18)
  List<String>? get followingList {
    final value = _followingList;
    if (value == null) return null;
    if (_followingList is EqualUnmodifiableListView) return _followingList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserEntity(createdAt: $createdAt, isVerified: $isVerified, email: $email, userId: $userId, userName: $userName, name: $name, webSite: $webSite, profilePic: $profilePic, bannerImage: $bannerImage, contact: $contact, bio: $bio, location: $location, dob: $dob, followers: $followers, following: $following, fcmToken: $fcmToken, followersList: $followersList, followingList: $followingList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.webSite, webSite) || other.webSite == webSite) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.bannerImage, bannerImage) ||
                other.bannerImage == bannerImage) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.followers, followers) ||
                other.followers == followers) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            const DeepCollectionEquality()
                .equals(other._followersList, _followersList) &&
            const DeepCollectionEquality()
                .equals(other._followingList, _followingList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      isVerified,
      email,
      userId,
      userName,
      name,
      webSite,
      profilePic,
      bannerImage,
      contact,
      bio,
      location,
      dob,
      followers,
      following,
      fcmToken,
      const DeepCollectionEquality().hash(_followersList),
      const DeepCollectionEquality().hash(_followingList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {@HiveField(12) required final String createdAt,
      @HiveField(13) required final bool isVerified,
      @HiveField(1) required final String email,
      @HiveField(2) required final String userId,
      @HiveField(4) required final String userName,
      @HiveField(3) required final String name,
      @HiveField(5) final String? webSite,
      @HiveField(6) final String? profilePic,
      @HiveField(7) final String? bannerImage,
      @HiveField(8) final String? contact,
      @HiveField(9) final String? bio,
      @HiveField(10) final String? location,
      @HiveField(11) final String? dob,
      @HiveField(14) final int? followers,
      @HiveField(15) final int? following,
      @HiveField(16) final String? fcmToken,
      @HiveField(17) final List<String>? followersList,
      @HiveField(18) final List<String>? followingList}) = _$_UserEntity;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override // Hive fields go here
  @HiveField(12)
  String get createdAt;
  @override
  @HiveField(13)
  bool get isVerified;
  @override
  @HiveField(1)
  String get email;
  @override
  @HiveField(2)
  String get userId;
  @override
  @HiveField(4)
  String get userName;
  @override
  @HiveField(3)
  String get name;
  @override
  @HiveField(5)
  String? get webSite;
  @override
  @HiveField(6)
  String? get profilePic;
  @override
  @HiveField(7)
  String? get bannerImage;
  @override
  @HiveField(8)
  String? get contact;
  @override
  @HiveField(9)
  String? get bio;
  @override
  @HiveField(10)
  String? get location;
  @override
  @HiveField(11)
  String? get dob;
  @override
  @HiveField(14)
  int? get followers;
  @override
  @HiveField(15)
  int? get following;
  @override
  @HiveField(16)
  String? get fcmToken;
  @override
  @HiveField(17)
  List<String>? get followersList;
  @override
  @HiveField(18)
  List<String>? get followingList;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
