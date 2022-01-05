import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:flutter_application_1/user.dart';
import 'package:flutter_application_1/user_preferences.dart';
import 'package:flutter_application_1/appbar_widget.dart';
import 'package:flutter_application_1/profile_widget.dart';
import 'package:flutter_application_1/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagepath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Age',
              text: user.age,
              onChanged: (age) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Weight',
              text: user.weight,
              onChanged: (weight) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Height',
              text: user.height,
              onChanged: (height) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Blood Pressure',
              text: user.blood_pressure,
              onChanged: (bloodpressure) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Blood Sugar Level',
              text: user.blood_sugar_level,
              onChanged: (bloodsugarlevel) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Allergy',
              text: user.allergy,
              maxLines: 10,
              onChanged: (allergy) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Medical History',
              text: user.medical_history,
              maxLines: 50,
              onChanged: (medicalhistory) {},
            ),
          ],
        ),
      );
}
