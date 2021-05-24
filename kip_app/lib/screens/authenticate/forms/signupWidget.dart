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
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.teal[50],
          ),
          SafeArea(
            child: Container(
              // height: ,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
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
                                      decoration: textInputDecoration.copyWith(
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
                                      decoration: textInputDecoration.copyWith(
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
                                      decoration: textInputDecoration.copyWith(
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
                                      decoration: textInputDecoration.copyWith(
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
                                      constraints: BoxConstraints.tightFor(
                                        height: 50,
                                        width: double.maxFinite,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () =>
                                            print("Register button pressed"),
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                            // mainAxisAlignment:
                                            //     MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                flex: 2,
                                                child: Text(
                                                  "Register",
                                                  style: TextStyle(
                                                      color: Colors.teal),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  width: 60,
                                                  padding: EdgeInsets.all(8.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    color: Colors.red,
                                                  ),
                                                  child: Icon(
                                                    Icons.arrow_forward_ios,
                                                    size: 30,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.white,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
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
                    Text(
                      "By creating accound you agree to our\nTerms of Service and Privacy Policy",
                      style: TextStyle(
                        color: Colors.teal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // Text(
                    //   "Terms of Service and Privacy Policy",
                    //   style: TextStyle(
                    //     color: Colors.teal,
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    // )
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
