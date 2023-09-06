import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';

@freezed
class EventModel with _$EventModel {
  const factory EventModel({
    required String title,
    required int price,
    required String thumbnail,
  }) = _EventModel;
}
