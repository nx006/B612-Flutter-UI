// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:b612_flutter_ui/event/model/event_model.dart';
import 'package:flutter/material.dart';

import 'package:b612_flutter_ui/common/const/colors.dart';

class EventCard extends StatelessWidget {
  final Image thumbnail;
  final String name;
  final int price;

  const EventCard({
    Key? key,
    required this.thumbnail,
    required this.name,
    required this.price,
  }) : super(key: key);

  factory EventCard.fromModel({
    required EventModel model,
  }) =>
      EventCard(
          thumbnail: Image.asset(
            model.thumbnail,
            fit: BoxFit.cover,
            width: 76,
            height: 76,
          ),
          name: model.title,
          price: model.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: thumbnail,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      '$price만 원',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: kTextFieldColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: kTextFieldColor,
            )
          ],
        ),
      ),
    );
  }
}
