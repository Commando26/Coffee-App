import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

late User _loggedinUser;

class helper {
  FirebaseDatabase database = FirebaseDatabase.instance;
  final _fbApp = FirebaseAuth.instance;

  void WriteUserData_OnCreateNewAccount(String userEmail) {
    getCurrentUser();
    //database.reference().child('users/' +_loggedinUser.uid + '/email').set(userEmail);
    //database.reference().child('users/' +_loggedinUser.uid + '/steps').set(0);
    //database.reference().child('users/' +_loggedinUser.uid + '/weight').set(0);
    database.reference().child('users/' + _loggedinUser.uid).set({
      "email": userEmail,
    });
  }

  void getCurrentUser() async {
    try {
      final user = await _fbApp.currentUser;
      if (user != null) {
        _loggedinUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

}