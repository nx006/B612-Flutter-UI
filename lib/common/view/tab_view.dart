import 'package:b612_flutter_ui/common/component/custom_appbar.dart';
import 'package:b612_flutter_ui/common/const/colors.dart';
import 'package:b612_flutter_ui/common/layout/default_layout.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with TickerProviderStateMixin {
  late TabController tabController;
  int index = 0;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(tabListener);
  }

  @override
  void dispose() {
    tabController.removeListener(tabListener);

    super.dispose();
  }

  void tabListener() {
    setState(() {
      index = tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appBar: const CustomAppbar(title: '더행사'),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryDarkColor,
        unselectedItemColor: kPrimaryDarkColor,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          tabController.animateTo(index);
        },
        currentIndex: index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '스케줄',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: '채팅',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'My',
          ),
        ],
      ),
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: const [
          Center(child: Text('홈')),
          Center(child: Text('스케줄')),
          Center(child: Text('채팅')),
          Center(child: Text('My')),
        ],
      ),
    );
  }
}
