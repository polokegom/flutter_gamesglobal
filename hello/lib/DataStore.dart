import 'package:firebase_core/firebase_core.dart';
import 'package:hello/firebase_options.dart';
class DataStore{
  static final DataStore _instance = DataStore._internal();

  factory DataStore() {
    return _instance;
  }

  DataStore._internal() {
    // Constructor body can be left empty
  }

  // Firebase initialization
  Future<void> initializeFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    print('Firebase initialized');
  }
}