import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final IconData? leadingIcon;
  final EdgeInsetsGeometry? margin;
  final String title;
  final IconData? trailingIcon;
  final void Function()? onTap;
  const ButtonWithIcon(
      {Key? key,
      this.leadingIcon,
      required this.title,
      this.trailingIcon,
      this.onTap,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Color(0xffE4E4E4),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(leadingIcon),
            SizedBox(width: 5),
            Text(title),
            SizedBox(width: 5),
            Icon(
              trailingIcon,
              size: 30,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
