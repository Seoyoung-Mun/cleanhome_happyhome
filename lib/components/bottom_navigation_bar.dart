import 'package:flutter/material.dart';

class NavigationBarExample extends StatefulWidget {
  @override
  _NavigationBarExampleState createState() => _NavigationBarExampleState();
}

class _NavigationBarExampleState extends State<NavigationBarExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('가사분담 페이지')),
    Center(child: Text('일정관리 페이지')),
    Center(child: Text('홈 페이지')),
    Center(child: Text('커뮤니티 페이지')),
    Center(child: Text('설정 페이지')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // 모든 탭을 표시
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.cleaning_services), // 가사분담 아이콘
            label: '가사분담',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today), // 일정관리 아이콘
            label: '일정관리',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // 홈 아이콘
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat), // 커뮤니티 아이콘
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), // 설정 아이콘
            label: '설정',
          ),
        ],
        selectedItemColor: Colors.black, // 선택된 아이템 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이템 색상
        showSelectedLabels: true, // 선택된 아이템 라벨 표시
        showUnselectedLabels: true, // 선택되지 않은 아이템 라벨 표시
      ),
    );
  }
}
