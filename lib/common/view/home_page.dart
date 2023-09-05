import 'package:b612_flutter_ui/common/layout/default_layout.dart';
import 'package:b612_flutter_ui/promotion/component/promotion_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
        child: Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EventCard(),
          ],
        ),
      ),
    ));
  }
}
