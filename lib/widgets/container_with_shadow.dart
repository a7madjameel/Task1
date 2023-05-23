import 'package:flutter/material.dart';

class ContainerWithShadow extends StatelessWidget {
  const ContainerWithShadow({
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
        boxShadow: const [
          BoxShadow(
            color: Color(0xFF8C909B),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Color(0xFFFCFEFD),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
