// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:b612_flutter_ui/common/component/announcementbar.dart';
import 'package:b612_flutter_ui/common/const/colors.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(130.0);

  final String title;

  const CustomAppbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryDarkColor,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Changwon',
                fontSize: 24.0,
              ),
            ),
            const SizedBox(
              height: 18.0,
            ),
            const AnnouncementBar(),
          ],
        ),
      )),
    );
  }
}
