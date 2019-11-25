import 'package:dorvent/model/app_state.dart';
import 'package:dorvent/redux/actions.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newAppState = AppState.fromAppState(prevState);

  if (action == Authenticate) {
    newAppState.isAuthenticated = true;
    print("User Authenticated");
  }
  if (action == SetUser) {
    newAppState.currentUser = "New user";
    print("User set");
  }
  if (action == Unauthenticate) {
    newAppState.isAuthenticated = false;
    print("User UnAuthenticated");
  }

  return newAppState;
}
