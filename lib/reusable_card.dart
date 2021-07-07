import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  static const int activeCardColor = 0xFF1D1E33;
  final Widget child;
  Color _cardColor = Color(activeCardColor);

  ReusableCard({this.child, Color color}) {
    if (color != null) _cardColor = color;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200.0,
        width: 170.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: _cardColor,
        ),
        child: child,
      ),
    );
  }
}
