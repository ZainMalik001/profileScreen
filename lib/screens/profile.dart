import 'package:flutter/material.dart';
import 'package:flutter_app/Model/User.dart';
import 'package:flutter_app/components/button.dart';
import 'package:flutter_app/components/profile_tile.dart';
import 'package:flutter_app/constants.dart';

class ProfileScreen extends StatelessWidget {

  final List<User> userList = GetUser().userList;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: size.height * 0.1, left: size.width * 0.04, right: size.width * 0.04),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topRight,
                child: Icon(Icons.nightlight_outlined, size: 25,),
              ),
              Image.asset(
                profileAsset,
                height: size.height * 0.15,
              ),
              const SizedBox(height: 8),
              Text(
                userList[0].name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                userList[0].email,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 10),
              Button(text: 'Upgrade Pro', width: size.width * 0.55, height: size.height * 0.05,color: upgradeColor, textColor: blackColor,),
              const SizedBox(height: 20),
              ProfileTile(icon: Icons.privacy_tip_outlined, text: 'Privacy'),
              const SizedBox(height: 15),
              ProfileTile(icon: Icons.history, text: 'Purchase History'),
              const SizedBox(height: 15),
              ProfileTile(icon: Icons.help_outline, text: 'Help & Support'),
              const SizedBox(height: 15),
              ProfileTile(icon: Icons.settings, text: 'Settings'),
              const SizedBox(height: 15),
              ProfileTile(icon: Icons.person_add_alt, text: 'Invite a Friend'),
              const SizedBox(height: 15),
              Button(text: 'Logout', width: size.width * 0.8, height: size.height * 0.05, color: logoutColor, textColor: whiteColor,),
            ],
          ),
        ),
      ),
    );
  }
}
