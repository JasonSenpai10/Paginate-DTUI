import 'package:flutter/material.dart';

class ExportButton extends StatelessWidget {
  const ExportButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton.icon(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color(0xffEEEEEE),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              )),
          onPressed: () {},
          icon: Icon(
            Icons.download_rounded,
            color: Colors.black,
          ),
          label: Text(
            'Export',
            style: TextStyle(color: Colors.black),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: Icon(Icons.search_outlined),
            ),
            SizedBox(width: 20),
            ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xffEEEEEE),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )),
              onPressed: () {},
              icon: Icon(
                Icons.filter_list_outlined,
                color: Colors.black,
              ),
              label: Text(
                'Showing 10 Entries',
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(width: 20),
          ],
        ),
      ],
    );
  }
}
