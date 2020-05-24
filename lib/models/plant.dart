import 'package:json_annotation/json_annotation.dart';
import 'package:usage/uuid/uuid.dart';

part 'plant.g.dart';

var uuid = Uuid();

@JsonSerializable()
class Plant {
  final String uid=uuid.generateV4();
  final String crop;
  final String disease;
  final String facts;
  final String fertilize;
  final String pests;
  final String plantName;
  final String planting;
  final String watering;
  final int priority;

  Plant(
      {this.crop,
      this.disease,
      this.facts,
      this.fertilize,
      this.pests,
      this.plantName,
      this.planting,
      this.priority,
      this.watering});


  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Plant &&
          runtimeType == other.runtimeType &&
          uid == other.uid &&
          crop == other.crop &&
          disease == other.disease &&
          facts == other.facts &&
          fertilize == other.fertilize &&
          pests == other.pests &&
          plantName == other.plantName &&
          planting == other.planting &&
          watering == other.watering &&
          priority == other.priority;

  @override
  int get hashCode =>
      uid.hashCode ^
      crop.hashCode ^
      disease.hashCode ^
      facts.hashCode ^
      fertilize.hashCode ^
      pests.hashCode ^
      plantName.hashCode ^
      planting.hashCode ^
      watering.hashCode ^
      priority.hashCode;


  @override
  String toString() {
    return 'Plant{uid: $uid, crop: $crop, disease: $disease, facts: $facts, fertilize: $fertilize, pests: $pests, plantName: $plantName, planting: $planting, watering: $watering, priority: $priority}';
  }

  factory Plant.fromJson(Map<String,dynamic> json)=>_$PlantFromJson(json);

  Map<String,dynamic> toJson()=>_$PlantToJson(this);
}
