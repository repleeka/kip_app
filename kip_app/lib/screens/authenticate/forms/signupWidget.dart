import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kip_app/shared/formConstants.dart';

class RegisterWidget extends StatefulWidget {
  final Function? toggleView;
  RegisterWidget({this.toggleView});
  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///[resizeToAvoidBottomInset]->If true the [body] and the scaffold's floating widgets should size
      ///themselves to avoid the onscreen keyboard whose height is defined by
      ///the ambient [MediaQuery]'s [MediaQueryData.viewInsets] bottom property.
      resizeToAvoidBottomInset: true,
      body: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.teal[50],
        //   elevation: 0.0,
        // ),
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.teal[50],
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Column(
                    children: [
                      Center(
                        ///[Co.Logo and Name]
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              ///This will containe the Company [Logo]
                              backgroundColor: Colors.teal,
                              radius: 60.0,
                            ),
                            Text(
                              ///This will contain the Company [Name]
                              "kip",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.teal,
                        ),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Create an account\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t&\n\t\t\t\t\t\tGet Started",
                                  style: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                  ),
                                ),
                                Form(
                                  ///[Form Fields] with show/hide password [checkbox]
                                  child: Column(
                                    children: [
                                      SizedBox(height: 15),
                                      TextFormField(
                                        decoration:
                                            textInputDecoration.copyWith(
                                          hintText: "Name",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onChanged: (value) => print(value),
                                      ),
                                      SizedBox(height: 15),
                                      TextFormField(
                                        decoration:
                                            textInputDecoration.copyWith(
                                          hintText: "Email",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.mail,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onChanged: (value) => print(value),
                                      ),
                                      SizedBox(height: 15),
                                      TextFormField(
                                        obscureText: _obscurePassword,
                                        decoration:
                                            textInputDecoration.copyWith(
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onChanged: (value) => print(value),
                                      ),
                                      SizedBox(height: 15),
                                      TextFormField(
                                        obscureText: _obscurePassword,
                                        decoration:
                                            textInputDecoration.copyWith(
                                          hintStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          hintText: "Confirm Password",
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: Colors.white,
                                          ),
                                        ),
                                        onChanged: (value) => print(value),
                                      ),
                                      SizedBox(height: 20),
                                      ConstrainedBox(
                                        ///[Register Button]
                                        constraints: BoxConstraints.tightFor(
                                          height: 45,
                                          width: double.maxFinite,
                                        ),
                                        child: ElevatedButton(
                                          onPressed: () =>
                                              print("Register button pressed"),
                                          child: Text(
                                            "Register",
                                            style: TextStyle(
                                              color: Colors.teal,
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: Colors.teal[200],
                                            elevation: 0.0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      RichText(
                                        text: TextSpan(
                                          text: "Already a Kipper? ",
                                          style: TextStyle(
                                            color: Colors.grey[300],
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "Log in",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  ///[null check]
                                                  ///in order to call method declared
                                                  ///which may return a null value,
                                                  ///we need to first of ensure that
                                                  ///the Dart's sound null safety
                                                  ///feature is preserved.
                                                  ///
                                                  ///To do that we have two options(or may be more..)
                                                  /// [01][widget.toggleView?.call();]
                                                  // setState(() {
                                                  //   widget.toggleView?.call();
                                                  // });
                                                  widget.toggleView?.call();

                                                  /// [02]Using [if block] for null check
                                                  // if (widget.toggleView !=
                                                  //     null) {
                                                  //   widget.toggleView!();
                                                  // }
                                                  print(
                                                      "onTap recognizer tapped from Register screen");
                                                },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      // Text(
                      //   "By creating accound you agree to our\nTerms of Service and Privacy Policy",
                      //   style: TextStyle(
                      //     color: Colors.teal,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                      RichText(
                        text: TextSpan(
                          text: "By creating accound you agree to our\n",
                          style: TextStyle(
                            color: Colors.teal[400],
                          ),
                          children: [
                            TextSpan(
                              text: "Terms of Service",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => print("Terms of Service tapped"),
                            ),
                            TextSpan(text: " and "),
                            TextSpan(
                              text: "Privacy Policy",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => print("Privacy Policy tapped"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
