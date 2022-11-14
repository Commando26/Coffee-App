import 'package:coffee_and_code/other/theme.dart';
import 'package:coffee_and_code/view/recipesPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:coffee_and_code/other/config.dart';
import 'package:coffee_and_code/view/searchPage.dart';
import 'package:coffee_and_code/view/videosPage.dart';
import 'package:coffee_and_code/view/trackingPage.dart';
import 'package:coffee_and_code/view/settingsPage.dart';
import 'package:coffee_and_code/recipe/subcategory.dart';
import 'package:coffee_and_code/recipe/category.dart';
import 'package:coffee_and_code/recipe/utils.dart';
import 'package:coffee_and_code/recipe/categorypart.dart';

/*
  homescreen.dart will act as a home page with all of a users info as well as
  buttons for other sections of the app
 */

String formateDate(DateTime d) {
  return d.toString().substring(0, 19);
}

late User loggedinUser;
FirebaseDatabase database = FirebaseDatabase.instance;

class homeScreen extends StatefulWidget {
  @override
  _homeScreenState createState() => _homeScreenState();
}

List<String> favoriteList = []; // list for storing user's favorite dranks

class _homeScreenState extends State<homeScreen> {
  late Future<FirebaseApp> _initialization;
  final _fbApp = FirebaseAuth.instance;
  int _selectedIndex = 0;

  @override
  void initState() {
    _initialization = Firebase.initializeApp();
    getCurrentUser();
    super.initState();
  }

  void getCurrentUser() async {
    try {
      final user = await _fbApp.currentUser;
      if (user != null) {
        loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  static List<Widget> _pages = <Widget>[
    HomePage(),
    SearchPage(),
    VideosPage(),
    RecipesPage(),
    TrackingPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Something went wrong in Firebase');
          }
          Widget child = Scaffold(
            backgroundColor: Colors.blueGrey.shade900,
            body: IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.blueGrey.shade900,
              selectedItemColor: currentTheme.textColor,
              unselectedItemColor: Colors.grey,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Color(0xFF263238),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.widgets),
                  label: 'Videos',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.coffee),
                  label: 'Recipes',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_events),
                  label: 'Tracking',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.construction),
                  label: 'Settings',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: _onItemTapped,
            ),
          );

          if (snapshot.connectionState == ConnectionState.done) {
            return child;
          }

          return CircularProgressIndicator();
        });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

// Builds the home page of our app
class MyHomePage extends State<HomePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String date = DateFormat('yyyy-MM-dd').format(now);
    // readUserDataSteps('$date/steps', loggedinUser, this);
    // readUserDataWeight('data/\"$date"\/\"weight\"', loggedinUser, this);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Text(
            'Welcome!',
            style: GoogleFonts.bowlbyOneSc(
                fontSize: 25, color: currentTheme.textColor),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Container (
                decoration: darkGradient(),
            )
        )
    );
  }
}

// This section is for constructing the states for our bottom app navigation
class HomePage extends StatefulWidget {
  MyHomePage createState() => MyHomePage();
}

class SearchPage extends StatefulWidget {
  const SearchPage();
  @override
  searchPage createState() => searchPage();
}

class VideosPage extends StatefulWidget {
  const VideosPage();
  @override
  videosPage createState() => videosPage();
}

class RecipesPage extends StatefulWidget {
  const RecipesPage();
  @override
subcategory createState() => subcategory();
//recipesPage createState() => recipesPage();
}

class TrackingPage extends StatefulWidget {
  const TrackingPage();
  @override
  trackingPage createState() => trackingPage();
}

class SettingsPage extends StatefulWidget {
  const SettingsPage();
  @override
  settingsPage createState() => settingsPage();
}


// void readUserDataSteps(final path, User user, MyHomePage page) async {
//   DatabaseReference ref = database.reference();
//   final test = await ref.child('users/' + user.uid + '/' + path).get();
//   final temp = double.parse(test.value.toString()) / 10000;
//   if (temp != page.pecentageSteps) {
//     page.pecentageSteps = temp;
//     page.setState(() {});
//   }
// }

//Write function to change weight as well.
// void readUserDataWeight(final path, User user, MyHomePage page) async {
//   DatabaseReference ref = database.reference();
//   final test = await ref.child('users/' + user.uid + '/' + path).get();
//   // print('users/' + user.uid + '/' + pat);
//   if (test.value.toString() == 'null') {
//     page.loggedWeight = 'No weight';
//     page.setState(() {});
//   }
//   else if (test.value.toString() != page.loggedWeight) {
//     page.loggedWeight = test.value.toString();
//     page.setState(() {});
//   }
// }

// DatabaseReference starCountRef =
// FirebaseDatabase.instance.ref('posts/$postId/starCount');
// starCountRef.onValue.listen((DatabaseEvent event) {
// final data = event.snapshot.value;
// updateStarCount(data);
// });

// void readUserData2(final path, User user, MyHomePage page) {
//
//   DatabaseReference ref = FirebaseDatabase.instance.ref('users/' + user.uid + '/');
//   DatabaseReference child = ref.child(path);
//   child.onValue.listen((DatabaseEvent event) {
//     page.loggedWeight = event.snapshot.value.toString();
//   });
// }
