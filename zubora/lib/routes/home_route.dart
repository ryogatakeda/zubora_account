import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State {
  var _date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    var format = new DateFormat.yMMMd('ja');

    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '日付',
                    style: TextStyle(fontSize: 20),
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_left),
                    onPressed: previousday,
                    color: Colors.black,
                    highlightColor: Theme.of(context).primaryColor,
                  ),
                  Text(
                    format.format(_date),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: nextday,
                    color: Colors.black,
                    highlightColor: Theme.of(context).primaryColor,
                  ),
                  IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: onPressed,
                      color: Colors.black,
                      highlightColor: Theme.of(context).primaryColor),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'メモ',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '支出',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    '円',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressed() async {
    // showDatePicker() の引数で locale を指定
    var selectedDate = await showDatePicker(
      context: context,
      locale: const Locale("ja"),
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2030),
      builder: (BuildContext context, Widget widget) {
        return widget;
      },
    );

    if (selectedDate != null) {
      setState(() {
        _date = selectedDate;
      });
    }
  }

  void nextday() async {}

  void previousday() async {}
}
