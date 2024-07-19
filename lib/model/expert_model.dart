// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'expert_model.g.dart';

@JsonSerializable()
class Experts {
    final String name;
    final String legalName;
    final String expertImagePath;
    final int expertTypeId;
    final String sebiRegNo;
    final String email;
    final int experience;
    final int rating;
    final String mobileNumber;
    final String channelName;
    final String chatId1;
    final String chatId2;
    final String chatId3;
    final String pan;
    final String address;
    final String state;
    final String signatureImage;
    final String gst;
    final String telegramChannel;
    final String premiumTelegramChannel1;
    final String premiumTelegramChannel2;
    final String premiumTelegramChannel3;
    final int telegramFollower;
    final bool isCoPartner;
    final int fixCommission;
    final String sebiRegCertificatePath;
    final dynamic relationshipManagerId;
    final bool isActive;
    final String id;
    final String createdBy;
    final DateTime createdOn;
    final dynamic updatedBy;
    final DateTime updatedOn;
    final bool isDeleted;
    final dynamic deletedBy;
    final dynamic deletedOn;

    Experts({
        required this.name,
        required this.legalName,
        required this.expertImagePath,
        required this.expertTypeId,
        required this.sebiRegNo,
        required this.email,
        required this.experience,
        required this.rating,
        required this.mobileNumber,
        required this.channelName,
        required this.chatId1,
        required this.chatId2,
        required this.chatId3,
        required this.pan,
        required this.address,
        required this.state,
        required this.signatureImage,
        required this.gst,
        required this.telegramChannel,
        required this.premiumTelegramChannel1,
        required this.premiumTelegramChannel2,
        required this.premiumTelegramChannel3,
        required this.telegramFollower,
        required this.isCoPartner,
        required this.fixCommission,
        required this.sebiRegCertificatePath,
        required this.relationshipManagerId,
        required this.isActive,
        required this.id,
        required this.createdBy,
        required this.createdOn,
        required this.updatedBy,
        required this.updatedOn,
        required this.isDeleted,
        required this.deletedBy,
        required this.deletedOn,
    });

    factory Experts.fromJson(Map<String, dynamic> json) => _$ExpertsFromJson(json);

    Map<String, dynamic> toJson() => _$ExpertsToJson(this);
}
