// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Welcome _$WelcomeFromJson(Map<String, dynamic> json) => Welcome(
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      displayMessage: json['displayMessage'] as String,
      errorMessages: json['errorMessages'],
      responseStatusCode: (json['responseStatusCode'] as num).toInt(),
    );

Map<String, dynamic> _$WelcomeToJson(Welcome instance) => <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'displayMessage': instance.displayMessage,
      'errorMessages': instance.errorMessages,
      'responseStatusCode': instance.responseStatusCode,
    };
