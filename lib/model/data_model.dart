// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:demo_cor/model/expert_model.dart';
import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'data_model.g.dart';

@JsonSerializable()
class Datum {
    final String id;
    final Experts experts;
    final String expertsId;
    final String imagePath;
    final String serviceType;
    final String planType;
    final String chatId;
    final int durationMonth;
    final int amount;
    final String premiumTelegramLink;
    final String description;
    final int discountedAmount;
    final dynamic discountPercentage;
    final dynamic discountValidFrom;
    final dynamic discountValidTo;
    final bool isCustom;
    final bool isActive;
    final String createdBy;
    final DateTime createdOn;
    final dynamic updatedBy;
    final DateTime updatedOn;
    final bool isDeleted;
    final dynamic deletedBy;
    final dynamic deletedOn;

    Datum({
        required this.id,
        required this.experts,
        required this.expertsId,
        required this.imagePath,
        required this.serviceType,
        required this.planType,
        required this.chatId,
        required this.durationMonth,
        required this.amount,
        required this.premiumTelegramLink,
        required this.description,
        required this.discountedAmount,
        required this.discountPercentage,
        required this.discountValidFrom,
        required this.discountValidTo,
        required this.isCustom,
        required this.isActive,
        required this.createdBy,
        required this.createdOn,
        required this.updatedBy,
        required this.updatedOn,
        required this.isDeleted,
        required this.deletedBy,
        required this.deletedOn,
    });

  

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

    Map<String, dynamic> toJson() => _$DatumToJson(this);
}