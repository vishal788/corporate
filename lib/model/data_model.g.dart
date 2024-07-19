// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as String,
      experts: Experts.fromJson(json['experts'] as Map<String, dynamic>),
      expertsId: json['expertsId'] as String,
      imagePath: json['imagePath'] as String,
      serviceType: json['serviceType'] as String,
      planType: json['planType'] as String,
      chatId: json['chatId'] as String,
      durationMonth: (json['durationMonth'] as num).toInt(),
      amount: (json['amount'] as num).toInt(),
      premiumTelegramLink: json['premiumTelegramLink'] as String,
      description: json['description'] as String,
      discountedAmount: (json['discountedAmount'] as num).toInt(),
      discountPercentage: json['discountPercentage'],
      discountValidFrom: json['discountValidFrom'],
      discountValidTo: json['discountValidTo'],
      isCustom: json['isCustom'] as bool,
      isActive: json['isActive'] as bool,
      createdBy: json['createdBy'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
      updatedBy: json['updatedBy'],
      updatedOn: DateTime.parse(json['updatedOn'] as String),
      isDeleted: json['isDeleted'] as bool,
      deletedBy: json['deletedBy'],
      deletedOn: json['deletedOn'],
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'experts': instance.experts,
      'expertsId': instance.expertsId,
      'imagePath': instance.imagePath,
      'serviceType': instance.serviceType,
      'planType': instance.planType,
      'chatId': instance.chatId,
      'durationMonth': instance.durationMonth,
      'amount': instance.amount,
      'premiumTelegramLink': instance.premiumTelegramLink,
      'description': instance.description,
      'discountedAmount': instance.discountedAmount,
      'discountPercentage': instance.discountPercentage,
      'discountValidFrom': instance.discountValidFrom,
      'discountValidTo': instance.discountValidTo,
      'isCustom': instance.isCustom,
      'isActive': instance.isActive,
      'createdBy': instance.createdBy,
      'createdOn': instance.createdOn.toIso8601String(),
      'updatedBy': instance.updatedBy,
      'updatedOn': instance.updatedOn.toIso8601String(),
      'isDeleted': instance.isDeleted,
      'deletedBy': instance.deletedBy,
      'deletedOn': instance.deletedOn,
    };
