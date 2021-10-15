import 'dart:convert';

import 'package:collection/collection.dart';

class UserModel {
   final String email;
  final String uid;
  final String name;
  final String phoneNumber;
  final String jobType;
  final String jobScope;
  final String address;
  final bool accept;
  final String about;
  final String img;
  final String province;
  final String amphure;
  final String district;
  final List<String> typeTechnics;
  UserModel({
    required this.email,
    required this.uid,
    required this.name,
    required this.phoneNumber,
    required this.jobType,
    required this.jobScope,
    required this.address,
    required this.accept,
    required this.about,
    required this.img,
    required this.province,
    required this.amphure,
    required this.district,
    required this.typeTechnics,
  });
  

  UserModel copyWith({
    String? email,
    String? uid,
    String? name,
    String? phoneNumber,
    String? jobType,
    String? jobScope,
    String? address,
    bool? accept,
    String? about,
    String? img,
    String? province,
    String? amphure,
    String? district,
    List<String>? typeTechnics,
  }) {
    return UserModel(
      email: email ?? this.email,
      uid: uid ?? this.uid,
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      jobType: jobType ?? this.jobType,
      jobScope: jobScope ?? this.jobScope,
      address: address ?? this.address,
      accept: accept ?? this.accept,
      about: about ?? this.about,
      img: img ?? this.img,
      province: province ?? this.province,
      amphure: amphure ?? this.amphure,
      district: district ?? this.district,
      typeTechnics: typeTechnics ?? this.typeTechnics,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'uid': uid,
      'name': name,
      'phoneNumber': phoneNumber,
      'jobType': jobType,
      'jobScope': jobScope,
      'address': address,
      'accept': accept,
      'about': about,
      'img': img,
      'province': province,
      'amphure': amphure,
      'district': district,
      'typeTechnics': typeTechnics,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'],
      uid: map['uid'],
      name: map['name'],
      phoneNumber: map['phoneNumber'],
      jobType: map['jobType'],
      jobScope: map['jobScope'],
      address: map['address'],
      accept: map['accept'],
      about: map['about'],
      img: map['img'],
      province: map['province'],
      amphure: map['amphure'],
      district: map['district'],
      typeTechnics: List<String>.from(map['typeTechnics']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UserModel(email: $email, uid: $uid, name: $name, phoneNumber: $phoneNumber, jobType: $jobType, jobScope: $jobScope, address: $address, accept: $accept, about: $about, img: $img, province: $province, amphure: $amphure, district: $district, typeTechnics: $typeTechnics)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is UserModel &&
      other.email == email &&
      other.uid == uid &&
      other.name == name &&
      other.phoneNumber == phoneNumber &&
      other.jobType == jobType &&
      other.jobScope == jobScope &&
      other.address == address &&
      other.accept == accept &&
      other.about == about &&
      other.img == img &&
      other.province == province &&
      other.amphure == amphure &&
      other.district == district &&
      listEquals(other.typeTechnics, typeTechnics);
  }

  @override
  int get hashCode {
    return email.hashCode ^
      uid.hashCode ^
      name.hashCode ^
      phoneNumber.hashCode ^
      jobType.hashCode ^
      jobScope.hashCode ^
      address.hashCode ^
      accept.hashCode ^
      about.hashCode ^
      img.hashCode ^
      province.hashCode ^
      amphure.hashCode ^
      district.hashCode ^
      typeTechnics.hashCode;
  }
}
