import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    leading: BackButton(),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: Colors.blue,
    elevation: 0,
    centerTitle: true,
    title: Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'User Profile',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    ),
  );
}
