import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:usage/uuid/uuid.dart';

part 'user.g.dart';

var uuid = Uuid();

@JsonSerializable()
class User {
  final String id=uuid.generateV4();
  final String userName;
  final String email;
  final String phoneNumber;
  final int score;

  User( {this.userName, this.email, this.phoneNumber,this.score});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
