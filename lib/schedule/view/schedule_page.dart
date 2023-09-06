import 'package:b612_flutter_ui/common/layout/default_layout.dart';
import 'package:b612_flutter_ui/event/component/event_list_view.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        appBar: AppBar(
          title: const Text(
            '에약된 세트',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: EventListView(),
        ));
  }
}
