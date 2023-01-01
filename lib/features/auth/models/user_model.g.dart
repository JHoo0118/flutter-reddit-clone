// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      profilePic: json['profilePic'] as String,
      banner: json['banner'] as String,
      uid: json['uid'] as String,
      isAuthenticated: json['isAuthenticated'] as bool,
      karma: json['karma'] as int,
      awards:
          (json['awards'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'profilePic': instance.profilePic,
      'banner': instance.banner,
      'uid': instance.uid,
      'isAuthenticated': instance.isAuthenticated,
      'karma': instance.karma,
      'awards': instance.awards,
    };
