import 'package:flutter/material.dart';

class RoundedButtonIcon extends StatelessWidget {
  const RoundedButtonIcon({
    Key? key,
    this.width,
    this.height,
    this.backgroundColor: Colors.purple,
    this.foregroundColor: Colors.white,
    required this.icon,
    required this.label,
    this.labelStyle,
    required this.onTap,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget icon;
  final String label;
  final TextStyle? labelStyle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor,
      ),
      child: InkWell(
        onTap: () => onTap(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              width: 8.0,
            ),
            Text(
              label,
              style: labelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
