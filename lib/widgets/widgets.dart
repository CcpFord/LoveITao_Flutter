import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 22),
      children: <TextSpan>[
        TextSpan(
            text: 'Love',
            style: TextStyle(
                fontWeight: FontWeight.w500, color: Color(0xFFFFFFFF))),
        TextSpan(
            text: 'ITao',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: Color(0xFFF85D74))),
      ],
    ),
  );
}

Widget pinkButton(BuildContext context, String label) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
        color: Color(0xFFF85D74), borderRadius: BorderRadius.circular(30)),
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width - 48,
    child: Text(label, style: TextStyle(color: Colors.white, fontSize: 16)),
  );
}
