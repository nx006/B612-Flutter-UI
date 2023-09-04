import 'package:b612_flutter_ui/common/component/custom_appbar.dart';
import 'package:b612_flutter_ui/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      appBar: CustomAppbar(title: '더행사'),
      child: Center(
        child: Text(
          '홈페이지',
        ),
      ),
    );
  }
}
