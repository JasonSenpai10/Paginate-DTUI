import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? onPressed;

  const CustomButton({Key? key, required this.title, this.onPressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(title),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        primary: Color(0xffE4E4E4),
        onPrimary: Colors.black,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(2.0),
        ),
      ),
      icon: Icon(icon),
    );
  }
}
