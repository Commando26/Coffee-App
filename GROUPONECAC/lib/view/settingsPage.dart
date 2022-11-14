import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_and_code/view/homescreen.dart';
import '../other/config.dart';
import '../other/theme.dart';

class settingsPage extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Text(
            'Settings',
            style: GoogleFonts.bowlbyOneSc(
                fontSize: 25, color: currentTheme.textColor),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
          child: Container (
              decoration: darkGradient(),
              child: const Center (
                  child: Text(
                      'settings stuff here',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      )
                  )
              )
          ),
        )
    );
  }
}
