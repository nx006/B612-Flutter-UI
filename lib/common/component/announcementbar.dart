import 'package:b612_flutter_ui/common/const/colors.dart';
import 'package:flutter/material.dart';

class AnnouncementBar extends StatelessWidget {
  const AnnouncementBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: kTextFieldColor,
      ),
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Text(
              '공지',
              style: TextStyle(
                color: kHighlightTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Text(
                '더 행사가 출시되었어요.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
