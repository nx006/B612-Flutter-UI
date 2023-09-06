import 'package:b612_flutter_ui/event/model/event_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventProvider =
    StateNotifierProvider<EventStateNotifier, List<EventModel>>(
  (ref) => EventStateNotifier(),
);

class EventStateNotifier extends StateNotifier<List<EventModel>> {
  EventStateNotifier() : super([..._initialState]);
}

const _initialState = <EventModel>[
  EventModel(
    title: '메이저리그 체육대회',
    price: 150,
    thumbnail: 'asset/images/event1.jpeg',
  ),
  EventModel(
    title: '마이너리그 체육대회',
    price: 150,
    thumbnail: 'asset/images/event2.jpeg',
  ),
  EventModel(
    title: '대형 재롱잔치',
    price: 150,
    thumbnail: 'asset/images/event3.jpeg',
  ),
];
