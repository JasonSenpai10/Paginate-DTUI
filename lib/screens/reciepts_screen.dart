import 'package:flutter/material.dart';
import 'package:paginatedemo_app/model/data_notifier.dart';
import 'package:paginatedemo_app/utils/datatable/datatable.dart';
import 'package:paginatedemo_app/utils/export_button.dart';
import 'package:provider/provider.dart';

class RecieptsScreen extends StatefulWidget {
  const RecieptsScreen({Key? key}) : super(key: key);

  @override
  _RecieptsScreenState createState() => _RecieptsScreenState();
}

class _RecieptsScreenState extends State<RecieptsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Color(0xffE0E0E0)),
                ),
              ),
              child: ExportButton(),
            ),
            Column(
                //color: Colors.transparent,
                children: [
                  DataWidget(),
                ]),
          ],
        ),
      ),
    );
  }
}
