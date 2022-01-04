import 'dart:convert';

import 'package:flutter/foundation.dart';

class TypeTechnicArrayModel {
  final List<String> typeTechnics;
  TypeTechnicArrayModel({
    required this.typeTechnics,
  });

  TypeTechnicArrayModel copyWith({
    List<String>? typeTechnics,
  }) {
    return TypeTechnicArrayModel(
      typeTechnics: typeTechnics ?? this.typeTechnics,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'typeTechnics': typeTechnics,
    };
  }

  factory TypeTechnicArrayModel.fromMap(Map<String, dynamic> map) {
    return TypeTechnicArrayModel(
      typeTechnics: List<String>.from(map['typeTechnics']),
    );
  }

  String toJson() => json.encode(toMap());

  factory TypeTechnicArrayModel.fromJson(String source) => TypeTechnicArrayModel.fromMap(json.decode(source));

  @override
  String toString() => 'TypeTechnicArrayModel(typeTechnics: $typeTechnics)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TypeTechnicArrayModel &&
      listEquals(other.typeTechnics, typeTechnics);
  }

  @override
  int get hashCode => typeTechnics.hashCode;
}
