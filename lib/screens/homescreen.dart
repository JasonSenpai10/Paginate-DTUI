import 'package:flutter/material.dart';
import 'package:paginatedemo_app/utils/appbar_widget.dart';
import 'package:paginatedemo_app/utils/calendar.dart';
import 'package:paginatedemo_app/utils/custom_tabbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: PreferredSize(
        child: AppBarWidget(),
        preferredSize: Size.fromHeight(55),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Cal(),
            CustomTab(),
          ],
        ),
      ),
    );
  }
}
