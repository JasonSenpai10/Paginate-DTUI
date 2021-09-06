import 'package:flutter/material.dart';
import 'package:paginatedemo_app/model/data_notifier.dart';
import 'package:paginatedemo_app/model/user_model.dart';
import 'package:paginatedemo_app/screens/allReceipt.dart';
import 'package:paginatedemo_app/screens/reciepts_screen.dart';
import 'package:paginatedemo_app/screens/refund.dart';
import 'package:provider/provider.dart';

class CustomTab extends StatefulWidget {
  const CustomTab({
    Key? key,
  }) : super(key: key);

  @override
  _CustomTabState createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    final _provider = context.watch<UserDataNotifier>();
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  // spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset(0, 5), // changes position of shadow
                ),
              ],
            ),
            child: TabBar(
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              indicatorWeight: 3.5,
              indicatorPadding: EdgeInsets.symmetric(horizontal: 60),
              tabs: [
                Column(
                  children: [
                    Tab(text: 'All Receipts'),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('42'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Tab(text: 'Sales'),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('${_provider.getLegnth()}'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Tab(text: 'Refunds'),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text('50'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            height: 669, //height of TabBarView
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBarView(
              children: [
                AllReceipt(),
                RecieptsScreen(),
                RefundScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
