import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:coffee_and_code/view/homescreen.dart';
import '../other/config.dart';
import '../other/theme.dart';
import 'package:coffee_and_code/other/databaseStrings.dart';

class searchPage extends State<SearchPage> {
  databaseStrings menuStrings = new databaseStrings();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Text(
            'Search',
            style: GoogleFonts.bowlbyOneSc(
                fontSize: 25, color: currentTheme.textColor),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Container(
                decoration: darkGradient(),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        DropdownButton<String>(
                          items: menuStrings.CoffeeTypeList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text(
                            'Coffee Type',
                          ),
                          onChanged: (_) {},
                        ),
                        DropdownButton<String>(
                          items: menuStrings.CoffeeTimeList.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text(
                            'Coffee Time',
                          ),
                          onChanged: (_) {},
                        ),
                        DropdownButton<int>(
                          items: menuStrings.CoffeeCupsPerDayList.map((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          hint: Text(
                            'Amount of Cups',
                          ),
                          onChanged: (_) {},
                        ),
                        DropdownButton<int>(
                          items: menuStrings.CodingHoursList.map((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          hint: Text(
                            'Hours Coding',
                          ),
                          onChanged: (_) {},
                        )
                      ]),
                )
            )
        )
    );
  }
}
