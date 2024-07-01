// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      id: (json['id'] as num?)?.toInt(),
      contactId: (json['contact_id'] as num).toInt(),
      type: json['type'] as String,
      actualId: (json['actual_id'] as num).toInt(),
      time: DateTime.parse(json['start_time'] as String),
      taken: json['taken'] as bool,
      latter: json['latter'] as bool,
      seen: json['seen'] as bool,
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['contact_id'] = instance.contactId;
  val['type'] = instance.type;
  val['actual_id'] = instance.actualId;
  val['start_time'] = instance.time.toIso8601String();
  val['taken'] = instance.taken;
  val['latter'] = instance.latter;
  val['seen'] = instance.seen;
  return val;
}
