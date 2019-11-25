import 'package:dorvent/Screens/AuthenticatedScreens/vendors.dart';
import 'package:dorvent/Screens/NotAuthenticatedScreens/signin.dart';
import 'package:dorvent/Screens/NotAuthenticatedScreens/signup.dart';
import 'package:dorvent/Screens/home.dart';
import 'package:dorvent/model/app_state.dart';
import 'package:dorvent/redux/reducers.dart';
import 'package:flutter/material.dart';
import 'package:dorvent/Helpers/styles.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  final _initialState = AppState();
  final Store<AppState> _store =
      Store<AppState>(reducer, initialState: _initialState);
  runApp(Dorvent(store: _store));
}

class Dorvent extends StatelessWidget {
  final Store<AppState> store;
  Dorvent({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dorvent',
        theme: ThemeData(
          primaryColor: primaryColor,
          textTheme: TextTheme(
            body1: TextStyle(fontFamily: AppFont),
            body2: TextStyle(fontFamily: AppFont),
            button: TextStyle(fontFamily: AppFont),
            caption: TextStyle(fontFamily: AppFont),
            display1: TextStyle(fontFamily: AppFont),
            display2: TextStyle(fontFamily: AppFont),
            display3: TextStyle(fontFamily: AppFont),
            display4: TextStyle(fontFamily: AppFont),
            headline: TextStyle(fontFamily: AppFont),
            overline: TextStyle(fontFamily: AppFont, fontSize: 12),
            subhead: TextStyle(fontFamily: AppFont),
            subtitle: TextStyle(fontFamily: AppFont),
            title: TextStyle(
              fontFamily: LogoFont,
              color: primaryColor,
              fontSize: 25,
            ),
          ),
        ),
        routes: {
          '/signin': (context) => SignIn(),
          '/signup': (context) => SignUp(),
          '/vendors': (context) => Vendors(),
        },
        home: Home(),
      ),
    );
  }
}
