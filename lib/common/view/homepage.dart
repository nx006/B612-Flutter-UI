import 'package:b612_flutter_ui/common/layout/default_layout.dart';
import 'package:b612_flutter_ui/event/component/event_card.dart';
import 'package:b612_flutter_ui/promotion/component/promotion_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        child: Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PromotionCard(),
            const SizedBox(
              height: 16,
            ),
            EventCard(
              image: Image.asset(
                'asset/images/event1.jpeg',
                fit: BoxFit.cover,
                width: 76,
                height: 76,
              ),
              name: '메이저리그 체육대회',
              price: 150,
            ),
          ],
        ),
      ),
    ));
  }
}
