import 'package:flutter/material.dart';

class ContainerWithoutShadow extends StatelessWidget {
  const ContainerWithoutShadow({
    Key? key,
    required this.icon,
    this.iconColor = const Color(0xffA8B4C4),
    this.containerColor = const Color(0xffE8EEFC),
  }) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        color: containerColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
