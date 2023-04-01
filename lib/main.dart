import 'package:flutter/material.dart';
import 'package:online_class/services/auth.dart';
import 'package:online_class/data/custom_user.dart';
import 'package:online_class/screens/wrapper.dart';
import 'package:online_class/services/auth.dart';
import 'package:online_class/services/updatealldata.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main()async {


  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

  await updateAllData();

  return  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser?>.value(

      // value is the stream method declared in "services.auth.dart"
        value: AuthService().streamUser,
        initialData: null,

        // MaterialApp
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Wrapper()));
  }
}





