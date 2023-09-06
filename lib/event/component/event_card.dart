import 'package:b612_flutter_ui/event/model/event_model.dart';
import 'package:flutter/material.dart';

import 'package:b612_flutter_ui/common/const/colors.dart';

class EventCard extends StatelessWidget {
  final Image thumbnail;
  final String title;
  final int price;

  const EventCard({
    Key? key,
    required this.thumbnail,
    required this.title,
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
        title: model.title,
        price: model.price,
      );

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
                      title,
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

    // return Container(
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(16),
    //     color: Colors.white,
    //   ),
    //   child: ListTile(
    //     leading: ClipRRect(
    //       borderRadius: BorderRadius.circular(16),
    //       child: SizedBox(
    //         width: 76,
    //         height: 76,
    //         child: thumbnail,
    //       ),
    //     ),
    //     title: Text(
    //       title,
    //       style: const TextStyle(
    //         fontWeight: FontWeight.w700,
    //         fontSize: 15,
    //       ),
    //     ),
    //     subtitle: Text(
    //       '$price만 원',
    //       style: const TextStyle(
    //         fontWeight: FontWeight.w600,
    //         fontSize: 13,
    //         color: kTextFieldColor,
    //       ),
    //     ),
    //     trailing: const Icon(
    //       Icons.arrow_forward_ios_rounded,
    //       color: kTextFieldColor,
    //     ),
    //   ),
    // );
  }
}
