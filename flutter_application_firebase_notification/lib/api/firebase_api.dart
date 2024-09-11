import "package:firebase_messaging/firebase_messaging.dart";

class FirebaseApi{
  // create an instance of Firebase Messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  // function to initialize notification
  Future<void> initNotification() async{
    // request permission from user (will prompt user)
    await _firebaseMessaging.requestPermission();
    
    // fetch the FCM token for this device 
    final fCMtoken = await _firebaseMessaging.getToken();

    //print the token  (normally you would sent this to your server)
    print("Token : $fCMtoken");
  }
  // function to hanle received message

  // function to initialize foreground and background setting

} 