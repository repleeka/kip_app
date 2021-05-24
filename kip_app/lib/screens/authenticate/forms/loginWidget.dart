import 'package:flutter/material.dart';
import 'package:kip_app/screens/authenticate/forms/signupWidget.dart';
import 'package:kip_app/shared/formConstants.dart';

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
            color: Colors.teal[50],
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
                      // color: Colors.redAccent.withOpacity(0.5),
                      child: Form(
                        ///[Form Fields] with show/hide password [checkbox]
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            TextFormField(
                              decoration: textInputDecoration.copyWith(
                                hintText: "Email",
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                              onChanged: (value) => print(value),
                            ),
                            SizedBox(height: 15),
                            TextFormField(
                              obscureText: _obscurePassword,
                              decoration: textInputDecoration.copyWith(
                                hintText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                              ),
                              onChanged: (value) => print(value),
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: !_obscurePassword,
                                  onChanged: (value) {
                                    setState(
                                      () =>
                                          _obscurePassword = !_obscurePassword,
                                    );
                                  },
                                  activeColor: Colors.black,
                                ),
                                Text(_obscurePassword
                                    ? "show password"
                                    : "hide password"),
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
                        ConstrainedBox(
                          constraints: BoxConstraints.tightFor(
                            height: 50,
                            width: double.maxFinite,
                          ),
                          child: ElevatedButton(
                            onPressed: () => print("Login button pressed"),
                            child: Text("LOGIN"),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.teal,
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
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
                              "Forgot password?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
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
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          "Login Using",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Expanded(
                          //wrapppng the Divider() widget with the Expanded() widget
                          //lets it to appear, otherwise not visible.
                          child: Divider(
                            thickness: 1.0,
                            color: Colors.black,
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
                        IconButton(
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
                        IconButton(
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
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have account?",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          elevation: 0.0,
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.0),
                              ),
                            ),
                            backgroundColor: Colors.teal[50],
                            context: context,
                            isScrollControlled: true,
                            builder: (context) =>
                                SafeArea(child: RegisterWidget()),
                          );
                        },
                        child: Text("Register"),
                      ),
                    )
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
