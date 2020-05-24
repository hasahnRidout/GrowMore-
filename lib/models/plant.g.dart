// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Plant _$PlantFromJson(Map<String, dynamic> json) {
  return Plant(
    crop: json['crop'] as String,
    disease: json['disease'] as String,
    facts: json['facts'] as String,
    fertilize: json['fertilize'] as String,
    pests: json['pests'] as String,
    plantName: json['plantName'] as String,
    planting: json['planting'] as String,
    priority: json['priority'] as int,
    watering: json['watering'] as String,
  );
}

Map<String, dynamic> _$PlantToJson(Plant instance) => <String, dynamic>{
      'crop': instance.crop,
      'disease': instance.disease,
      'facts': instance.facts,
      'fertilize': instance.fertilize,
      'pests': instance.pests,
      'plantName': instance.plantName,
      'planting': instance.planting,
      'watering': instance.watering,
      'priority': instance.priority,
    };
