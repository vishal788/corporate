// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:demo_cor/model/data_model.dart';
import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'demo_model.g.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

@JsonSerializable()
class Welcome {
    final bool isSuccess;
    final List<Datum> data;
    final String displayMessage;
    final dynamic errorMessages;
    final int responseStatusCode;

    Welcome({
        required this.isSuccess,
        required this.data,
        required this.displayMessage,
        required this.errorMessages,
        required this.responseStatusCode,
    });

  factory Welcome.fromJson(Map<String, dynamic> json) => _$WelcomeFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$WelcomeToJson(this);
}


