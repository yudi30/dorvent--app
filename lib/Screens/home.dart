import 'package:dorvent/Screens/AuthenticatedScreens/dashboard.dart';
import 'package:dorvent/Screens/AuthenticatedScreens/events.dart';
import 'package:dorvent/Screens/AuthenticatedScreens/vendors.dart';
import 'package:dorvent/Screens/NotAuthenticatedScreens/signin.dart';
import 'package:dorvent/model/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return state.isAuthenticated ? DashBoard() : SignIn();
      },
    );
  }
}
