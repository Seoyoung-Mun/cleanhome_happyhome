import 'package:flutter/material.dart';

class HouseholdListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('집안일목록'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Top Circular Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _circularButton('장보기 리스트', Icons.shopping_cart, () {
                  // 장보기 리스트 버튼 클릭 시 동작
                }),
                _circularButton('집안일 항목변경', Icons.edit, () {
                  // 집안일 항목 변경 버튼 클릭 시 동작
                }),
                _circularButton('목표설정', Icons.flag, () {
                  // 목표설정 버튼 클릭 시 동작
                }),
                _circularButton('할 일 등록', Icons.add, () {
                  // 할 일 등록 버튼 클릭 시 동작
                }),
              ],
            ),
            SizedBox(height: 20),
            // Household Task List
            Expanded(
              child: ListView(
                children: [
                  _taskCategory('주방'),
                  _taskCategory('거실'),
                  _taskCategory('욕실'),
                  _taskCategory('침실'),
                  _taskCategory('세탁/다용도실'),
                  _taskCategory('정원/외부'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _circularButton(String label, IconData icon, VoidCallback onPressed) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(20),
            // primary: Colors.grey[300],
          ),
          child: Icon(
            icon,
            color: Colors.black54,
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _taskCategory(String title) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Switch(
          value: false,
          onChanged: (value) {
            // Toggle switch action
          },
        ),
        title: Text(title, style: TextStyle(fontSize: 18)),
        trailing: Icon(Icons.arrow_drop_down),
        onTap: () {
          // Expand/collapse category items
        },
      ),
    );
  }
}



