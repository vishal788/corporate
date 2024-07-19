// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expert_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Experts _$ExpertsFromJson(Map<String, dynamic> json) => Experts(
      name: json['name'] as String,
      legalName: json['legalName'] as String,
      expertImagePath: json['expertImagePath'] as String,
      expertTypeId: (json['expertTypeId'] as num).toInt(),
      sebiRegNo: json['sebiRegNo'] as String,
      email: json['email'] as String,
      experience: (json['experience'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      mobileNumber: json['mobileNumber'] as String,
      channelName: json['channelName'] as String,
      chatId1: json['chatId1'] as String,
      chatId2: json['chatId2'] as String,
      chatId3: json['chatId3'] as String,
      pan: json['pan'] as String,
      address: json['address'] as String,
      state: json['state'] as String,
      signatureImage: json['signatureImage'] as String,
      gst: json['gst'] as String,
      telegramChannel: json['telegramChannel'] as String,
      premiumTelegramChannel1: json['premiumTelegramChannel1'] as String,
      premiumTelegramChannel2: json['premiumTelegramChannel2'] as String,
      premiumTelegramChannel3: json['premiumTelegramChannel3'] as String,
      telegramFollower: (json['telegramFollower'] as num).toInt(),
      isCoPartner: json['isCoPartner'] as bool,
      fixCommission: (json['fixCommission'] as num).toInt(),
      sebiRegCertificatePath: json['sebiRegCertificatePath'] as String,
      relationshipManagerId: json['relationshipManagerId'],
      isActive: json['isActive'] as bool,
      id: json['id'] as String,
      createdBy: json['createdBy'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      updatedBy: json['updatedBy'],
      updatedOn: DateTime.parse(json['updatedOn'] as String),
      isDeleted: json['isDeleted'] as bool,
      deletedBy: json['deletedBy'],
      deletedOn: json['deletedOn'],
    );

Map<String, dynamic> _$ExpertsToJson(Experts instance) => <String, dynamic>{
      'name': instance.name,
      'legalName': instance.legalName,
      'expertImagePath': instance.expertImagePath,
      'expertTypeId': instance.expertTypeId,
      'sebiRegNo': instance.sebiRegNo,
      'email': instance.email,
      'experience': instance.experience,
      'rating': instance.rating,
      'mobileNumber': instance.mobileNumber,
      'channelName': instance.channelName,
      'chatId1': instance.chatId1,
      'chatId2': instance.chatId2,
      'chatId3': instance.chatId3,
      'pan': instance.pan,
      'address': instance.address,
      'state': instance.state,
      'signatureImage': instance.signatureImage,
      'gst': instance.gst,
      'telegramChannel': instance.telegramChannel,
      'premiumTelegramChannel1': instance.premiumTelegramChannel1,
      'premiumTelegramChannel2': instance.premiumTelegramChannel2,
      'premiumTelegramChannel3': instance.premiumTelegramChannel3,
      'telegramFollower': instance.telegramFollower,
      'isCoPartner': instance.isCoPartner,
      'fixCommission': instance.fixCommission,
      'sebiRegCertificatePath': instance.sebiRegCertificatePath,
      'relationshipManagerId': instance.relationshipManagerId,
      'isActive': instance.isActive,
      'id': instance.id,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'updatedOn': instance.updatedOn.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'deletedBy': instance.deletedBy,
      'deletedOn': instance.deletedOn,
    };