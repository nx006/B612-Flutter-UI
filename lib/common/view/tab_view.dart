import 'package:b612_flutter_ui/common/component/custom_appbar.dart';
import 'package:b612_flutter_ui/common/const/colors.dart';
import 'package:b612_flutter_ui/common/layout/default_layout.dart';
import 'package:b612_flutter_ui/common/view/home_page.dart';
import 'package:flutter/material.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with TickerProviderStateMixin {
  late TabController _tabController;
  int _index = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: _navItems.length, vsync: this);
    _tabController.addListener(tabListener);
  }

  @override
  void dispose() {
    _tabController.removeListener(tabListener);
    super.dispose();
  }

  void tabListener() {
    setState(() {
      _index = _tabController.index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      appBar: const CustomAppbar(title: '더행사'),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryDarkColor,
        unselectedItemColor: kPrimaryDarkColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _tabController.animateTo(index);
        },
        currentIndex: _index,
        items: _navItems.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(
              _index == item.index ? item.activeIcon : item.inactiveIcon,
            ),
            label: item.label,
          );
        }).toList(),
      ),
      child: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          HomePage(),
          Center(child: Text('스케줄')),
          Center(child: Text('채팅')),
          Center(child: Text('My')),
        ],
      ),
    );
  }
}

class NavItem {
  final int index;
  final IconData activeIcon;
  final IconData inactiveIcon;
  final String label;

  const NavItem({
    required this.index,
    required this.activeIcon,
    required this.inactiveIcon,
    required this.label,
  });
}

const _navItems = [
  NavItem(
    index: 0,
    activeIcon: Icons.home,
    inactiveIcon: Icons.home_outlined,
    label: '홈',
  ),
  NavItem(
    index: 1,
    activeIcon: Icons.calendar_today,
    inactiveIcon: Icons.calendar_today_outlined,
    label: '스케줄',
  ),
  NavItem(
    index: 2,
    activeIcon: Icons.chat,
    inactiveIcon: Icons.chat_outlined,
    label: '채팅',
  ),
  NavItem(
    index: 3,
    activeIcon: Icons.person,
    inactiveIcon: Icons.person_outline,
    label: 'My',
  ),
];
