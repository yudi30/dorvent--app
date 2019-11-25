import 'package:dorvent/Helpers/auth.dart';
import 'package:dorvent/Helpers/styles.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _email;
  String _password1;
  String _password2;

  Widget Header() {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "DORVENT",
            style: Theme.of(context).textTheme.title,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
            child: Text(
              "Sign up to build your event community.",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget SignUpForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image(
                  image: AssetImage('assets/icons/phone.png'),
                  width: 25,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Mobile Number or Email",
                    hintStyle: Theme.of(context).textTheme.body1,
                  ),
                  // autovalidate: true,
                  validator: (String arg) {
                    if (!EmailValidator.validate(arg) == true) {
                      return "Not a valid email";
                    }
                    // assert(!EmailValidator.validate(arg) == true);
                  },
                  onSaved: (String email) => _email = email,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image(
                  image: AssetImage('assets/icons/user.png'),
                  width: 25,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: Theme.of(context).textTheme.body1,
                  ),
                  // autovalidate: true,
                  validator: (String arg) =>
                      arg.trim().length < 5 ? "Full Name too short" : null,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image(
                  image: AssetImage('assets/icons/username.png'),
                  width: 25,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: Theme.of(context).textTheme.body1,
                  ),
                  // autovalidate: true,
                  validator: (String arg) =>
                      arg.length < 5 ? "Username too short" : null,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image(
                  image: AssetImage('assets/icons/password.png'),
                  width: 25,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: Theme.of(context).textTheme.body1,
                  ),
                  // autovalidate: true,
                  validator: (String pass1) =>
                      pass1.length < 6 ? 'Password too short.' : null,
                  onChanged: (String pass1) => _password1 = pass1,
                  onSaved: (String pass1) => _password1 = pass1,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Image(
                  image: AssetImage('assets/icons/password.png'),
                  width: 25,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Re enter Password",
                      hintStyle: Theme.of(context).textTheme.body1,
                    ),
                    // autovalidate: true,
                    validator: (String pass2) =>
                        pass2 != _password1 ? 'Passwords do not match.' : null,
                    onSaved: (String pass2) => _password2 = pass2),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // void validate() {
  //   _formKey.currentState.validate();
  // }

  Widget SignUpButton(context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: ButtonTheme(
        minWidth: 200,
        buttonColor: Theme.of(context).primaryColor,
        child: RaisedButton(
          child: Text(
            "Sign Up",
            style: Theme.of(context).textTheme.body1.merge(
                  TextStyle(
                    color: Colors.white,
                  ),
                ),
          ),
          onPressed: () {
            FocusScope.of(context).requestFocus(FocusNode());
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              SignUpWithEmail(_email, _password2).then((_) {
                print("Success");
                _scaffoldKey.currentState.showSnackBar(SnackBar(
                  content: Text("You have signed up successfully."),
                ));
              }).catchError((err) {
                _scaffoldKey.currentState.showSnackBar(SnackBar(
                  content: Text(err.message),
                ));
                print("Error signing up: $err");
              });
            }
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }

  Widget SocialSignUp() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(
              "Sign up via Social Account",
              style: Theme.of(context).textTheme.body1,
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage('assets/icons/google.png'),
                width: 50,
              ),
              Image(
                image: AssetImage('assets/icons/facebook.png'),
                width: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Terms() {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "By signing up, you agree to our",
              style: Theme.of(context).textTheme.body1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  child: Text(
                    "Terms and Data Policy",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    print("Show data policy");
                  },
                ),
                Text(" and ")
              ],
            ),
            GestureDetector(
              child: Text(
                "Cookies Policy",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                print("Show Cookies Policy");
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomPadding: false,
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Container(
            // padding: EdgeInsets.fromLTRB(30, 0, 30, 10),
            margin: EdgeInsets.fromLTRB(25, 30, 25, 20),
            height: MediaQuery.of(context).size.height * 0.85,
            width: MediaQuery.of(context).size.width * 0.85,
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
              padding: EdgeInsets.all(8),
              child: Center(
                child: ListView(
                  children: <Widget>[
                    Header(),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 8, 0, 0),
                      child: SignUpForm(),
                    ),
                    SignUpButton(context),
                    Terms(),
                    SocialSignUp(),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Have an account?",
                            style: Theme.of(context).textTheme.body1,
                            textAlign: TextAlign.center,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              " Sign in!",
                              style: Theme.of(context).textTheme.body1.merge(
                                    TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
