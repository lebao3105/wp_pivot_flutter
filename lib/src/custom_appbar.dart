import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final List<Widget> trailing;

  const CustomAppBar(
      {Key? key,
      required this.title,
      required this.textColor,
      required this.fontSize,
      required this.fontWeight,
      this.trailing = const []})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize; // default is 56.0

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.black,
        padding: EdgeInsets.all(16),
        child: Row(
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                  color: widget.textColor,
                  fontWeight: widget.fontWeight,
                  fontSize: widget.fontSize),
            ),
            Spacer(),
            Row(
              children: widget.trailing,
            )
          ]
        ),
      ),
    );
  }
}
