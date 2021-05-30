import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
// import 'package:kip_app/screens/authenticate/forms/signupWidget.dart';
import 'package:kip_app/shared/formConstants.dart';
import 'package:kip_app/shared/gradientConstants.dart';

class LoginWidget extends StatefulWidget {
  ///The toggling functionlities will be used to toggle between the
  ///[Registration] and the [SignIn] screens.
  final Function? toggleView;
  LoginWidget({this.toggleView});
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///[resizeToAvoidBottomInset]->If true the [body] and the scaffold's floating widgets should size
      ///themselves to avoid the onscreen keyboard whose height is defined by
      ///the ambient [MediaQuery]'s [MediaQueryData.viewInsets] bottom property.
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
            // color: Colors.teal[50],
          ),
          SafeArea(
            child: Container(
              // height: ,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      ///[Co.Logo and Name]
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            ///This will containe the Company [Logo]
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60.0),
                                gradient: horizontalGradient,
                              ),
                            ),

                            backgroundColor: Colors.white,
                            radius: 60.0,
                            foregroundImage:
                                AssetImage("lib/assets/image/kiplogo02.png"),
                          ),
                          Text(
                            ///This will contain the Company [Name]
                            "kip",
                            style: TextStyle(
                              // color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              foreground: Paint()
                                ..shader = kipTextLogoGradientColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      // color: Colors.redAccent.withOpacity(0.5),
                      child: Form(
                        ///[Form Fields] with show/hide password [checkbox]
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            TextFormField(
                              decoration:
                                  textInputDecorationForSignInForm.copyWith(
                                hintText: "Username",
                                hintStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.teal,
                                ),
                              ),
                              onChanged: (value) => print(value),
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              obscureText: _obscurePassword,
                              decoration:
                                  textInputDecorationForSignInForm.copyWith(
                                hintStyle: TextStyle(color: Colors.grey),
                                hintText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.teal,
                                ),
                              ),
                              onChanged: (value) => print(value),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  checkColor: Colors.white,
                                  side: BorderSide(
                                      color: Colors.teal, width: 2.0),
                                  value: !_obscurePassword,
                                  onChanged: (value) {
                                    setState(
                                      () =>
                                          _obscurePassword = !_obscurePassword,
                                    );
                                  },
                                  activeColor: Colors.teal,
                                ),
                                Text(
                                  _obscurePassword
                                      ? "show password"
                                      : "hide password",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      ///[Login Button]
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            gradient: horizontalGradient,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                              height: 50,
                              width: double.maxFinite,
                            ),
                            child: ElevatedButton(
                              onPressed: () => print("Login button pressed"),
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                shadowColor: Colors.transparent,
                                primary: Colors.transparent,
                                elevation: 0.0,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          ///[Forgot Password]
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () => print("Forgot password Clicked"),
                            child: Text(
                              "Forgot password",
                              style: TextStyle(
                                color: Colors.teal,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      ///[Login Using Fields]
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          //wrapppng the Divider() widget with the Expanded() widget
                          //lets it to appear, otherwise not visible.
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          "Continue with",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          //wrapppng the Divider() widget with the Expanded() widget
                          //lets it to appear, otherwise it is not visible.
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      ///[Login With Fields]->this rounded icons will contain
                      ///the icon for the login
                      ///with [Facebook], [Google], [Twitter] etc.
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        Container(
                          child: IconButton(
                            ///[IconButtons] have default padding,
                            ///so we need to set it to 0.
                            padding: EdgeInsets.all(0.0),
                            onPressed: () => print("Blue icon pressed"),
                            icon: Icon(
                              Icons.circle,
                              size: 70.0,
                              color: Colors.blue[600],
                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            ///[IconButtons] have default padding,
                            ///so we need to set it to 0.
                            padding: EdgeInsets.all(0.0),
                            onPressed: () => print("Yellow icon pressed"),
                            icon: Icon(
                              Icons.circle,
                              size: 70.0,
                              color: Colors.yellow[800],
                            ),
                          ),
                        ),
                        IconButton(
                          ///[IconButtons] have default padding,
                          ///so we need to set it to 0.
                          padding: EdgeInsets.all(0.0),
                          onPressed: () => print("Red icon pressed"),
                          icon: Icon(
                            Icons.circle,
                            size: 70.0,
                            color: Colors.red[500],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    // Align(
                    //   alignment: Alignment.bottomCenter,
                    //   child: RichText(
                    //     text: TextSpan(
                    //       text: "Don't have account?",
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Colors.teal,
                    //     borderRadius: BorderRadius.circular(10),
                    //   ),
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       primary: Colors.teal,
                    //       elevation: 0.0,
                    //     ),
                    //     onPressed: () {
                    //       showModalBottomSheet(
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.vertical(
                    //             top: Radius.circular(20.0),
                    //           ),
                    //         ),
                    //         backgroundColor: Colors.teal[50],
                    //         context: context,
                    //         isScrollControlled: true,
                    //         builder: (context) =>
                    //             SafeArea(child: RegisterWidget()),
                    //       );
                    //     },
                    //     child: Text("Register"),
                    //   ),
                    // )
                    RichText(
                      text: TextSpan(
                        text: "New to Kip? ",
                        style: TextStyle(color: Colors.grey[700]),
                        children: [
                          TextSpan(
                            text: "Sign up",
                            style: TextStyle(
                              color: Colors.teal,
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

                                widget.toggleView?.call();

                                /// [02]Using [if block] for null check
                                // if (widget.toggleView != null) {
                                //   widget.toggleView!();
                                // }
                                print(
                                    "onTap recognizer tapped from Login screen");

                                ///TODO: toggle to the Login screen
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "By continuing accound you agree to our\n",
                        style: TextStyle(
                          color: Colors.grey,
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
                              ..onTap = () => print("Terms of Service tapped"),
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
    );
  }
}
