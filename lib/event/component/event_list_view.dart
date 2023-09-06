import 'package:b612_flutter_ui/event/component/event_card.dart';
import 'package:b612_flutter_ui/event/provider/event_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventListView extends ConsumerWidget {
  const EventListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final eventList = ref.watch(eventProvider);

    return ListView.separated(
      itemCount: eventList.length,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return EventCard.fromModel(
          model: eventList[index],
        );
      },
    );
  }
}
