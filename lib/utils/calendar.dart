import 'package:flutter/material.dart';
import 'package:paginatedemo_app/utils/buttonwithicon.dart';

import 'datatable/custom_button.dart';

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  _CalState createState() => _CalState();
}

class _CalState extends State<Cal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                bottomLeft: Radius.circular(5),
              ),
              color: Color(0xffE4E4E4),
            ),
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                onPressed: () {},
                splashRadius: null,
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(width: 3),
          CustomButton(
            title: '6 march 2021 -4 April 2021',
            icon: Icons.calendar_today_sharp,
            onPressed: () {},
          ),
          SizedBox(width: 3),
          Container(
            width: 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ),
              color: Color(0xffE4E4E4),
            ),
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                padding: EdgeInsets.only(right: 1, left: 1),
                onPressed: () {},
                splashRadius: null,
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          ButtonWithIcon(
            leadingIcon: Icons.timer_sharp,
            title: 'All Day',
            trailingIcon: Icons.arrow_drop_down,
            onTap: () {},
          ),
          SizedBox(
            width: 20,
          ),
          ButtonWithIcon(
            margin: EdgeInsets.only(right: 10),
            leadingIcon: Icons.perm_contact_cal_outlined,
            title: 'All Employees',
            trailingIcon: Icons.arrow_drop_down,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
