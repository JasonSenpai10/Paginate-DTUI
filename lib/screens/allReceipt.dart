import 'package:flutter/material.dart';
import 'package:paginatedemo_app/utils/export_button.dart';

class AllReceipt extends StatelessWidget {
  const AllReceipt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          ExportButton(),
        ],
      ),
    );
  }
}
