import 'package:dorvent/Helpers/auth.dart';
import 'package:dorvent/Helpers/styles.dart';
import 'package:dorvent/model/app_state.dart';
import 'package:dorvent/redux/actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _password;
  @override
  void initState() {
    super.initState();

    //check if the user is signed in (Google):
    googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      StoreProvider.of<AppState>(context).dispatch(SetUser);
    });
    // googleSignIn
    //     .signInSilently(suppressErrors: false)
    //     .then((_) => StoreProvider.of<AppState>(context).dispatch(Authenticate))
    //     .catchError((err) => print("Error signing in: $err"));
    // googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          body: StoreConnector<AppState, AppState>(
            converter: (store) => store.state,
            builder: (context, state) {
              return Container(
                // height: MediaQuery.of(context).size.height,
                // width: MediaQuery.of(context).size.width,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    // margin: EdgeInsets.fromLTRB(50, 125, 50, 125),
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: SecondaryColor,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(100, 0, 0, 0),
                            blurRadius: 10,
                            offset: Offset(2, 3)),
                      ],
                    ),
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: ListView(
                              children: <Widget>[
                                Image(
                                  image: AssetImage("assets/icons/logo.png"),
                                  height: 100,
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Text(
                                      "Sign in",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .merge(
                                            TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 20,
                                            ),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Form(
                                  key: _formKey,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 10, 0),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/user.png'),
                                                width: 25,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.55,
                                              child: TextFormField(
                                                onSaved: (String email) =>
                                                    _email = email,
                                                decoration: InputDecoration(
                                                  hintText: "Username",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .body1,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 0, 10, 0),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/icons/password.png'),
                                                width: 25,
                                              ),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.55,
                                              child: TextFormField(
                                                onSaved: (String pass) =>
                                                    _password = pass,
                                                decoration: InputDecoration(
                                                  hintText: "Password",
                                                  hintStyle: Theme.of(context)
                                                      .textTheme
                                                      .body1,
                                                ),
                                                obscureText: true,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 12, 15, 0),
                                  child: Text(
                                    "Forgot your password?",
                                    style: Theme.of(context).textTheme.body1,
                                    textAlign: TextAlign.end,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  child: ButtonTheme(
                                    minWidth: 200,
                                    buttonColor: Theme.of(context).primaryColor,
                                    child: RaisedButton(
                                      child: Text(
                                        "Sign in",
                                        style: Theme.of(context)
                                            .textTheme
                                            .body1
                                            .merge(
                                              TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                      ),
                                      onPressed: () {
                                        _formKey.currentState.save();
                                        SignInWithEmail(_email, _password)
                                            .then((_) {
                                          print(
                                              "Dispatching Authenticate Action");
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(Authenticate);
                                        }).catchError(
                                                (err) => print(err.message));
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(18),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: Text(
                                    "Sign in via Social Account",
                                    style: Theme.of(context).textTheme.body1,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/google.png'),
                                        width: 50,
                                      ),
                                      onTap: () {
                                        signInWithGoogle().then((_) {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(Authenticate);
                                        }).catchError((err) {
                                          print(
                                              "Error signing in with Google: $err");
                                        });
                                      },
                                    ),
                                    GestureDetector(
                                      child: Image(
                                        image: AssetImage(
                                            'assets/icons/facebook.png'),
                                        width: 50,
                                      ),
                                      onTap: () {
                                        signInWithFacebook().then((_) {
                                          StoreProvider.of<AppState>(context)
                                              .dispatch(Authenticate);
                                        }).catchError((err) => {
                                              print(
                                                  "Error Signing in with Facebook : $err")
                                            });
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 5),
                                  child: Text(
                                    "Sign in Anonymous",
                                    style: Theme.of(context).textTheme.body1,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Image(
                                      image: AssetImage(
                                          'assets/icons/anonymous.png'),
                                      width: 50,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: MediaQuery.of(context).size.width * 0.1,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Don't have an account?",
                                    style: Theme.of(context).textTheme.body1,
                                    textAlign: TextAlign.center,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/signup');
                                    },
                                    child: Text(
                                      " Signup!",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .merge(
                                            TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}
