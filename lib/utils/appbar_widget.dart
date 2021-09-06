import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: EdgeInsets.only(left: 40),
        child: Text(
          "Receipits",
          style: TextStyle(fontSize: 15, color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 10,
      actions: [
        IconButton(
          icon: Icon(Icons.search_outlined, color: Colors.black),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            width: 150,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.green,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )),
              onPressed: () {},
              child: Text(
                "Open Tickets",
                style: TextStyle(),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundImage: AssetImage("assets/img/1.jpg"),
        ),
        IconButton(
          icon:
              Icon(Icons.arrow_drop_down_circle_outlined, color: Colors.black),
          onPressed: () {},
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
