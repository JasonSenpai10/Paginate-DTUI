import 'package:flutter/material.dart';

class ButtonWithTitle extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? onTap;
  const ButtonWithTitle({Key? key, required this.title, this.icon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(icon),
        label: Text(title),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffE4E4E4),
          onPrimary: Colors.black,
        ),
      ),
    );
  }
}
