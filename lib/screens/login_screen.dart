import '../constants.dart';
import '../widgets/custom_inkwell_button.dart';
import '../widgets/custom_textformfield.dart';
import '../widgets/custom_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _isPasswordHidden = true;

  //placeholder values
  final String sampleUsername = 'Sean Adrian';
  final String samplePassword = 'Test@1234';

  void login() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (usernameController.text == sampleUsername &&
          passwordController.text == samplePassword) {
        String username = usernameController.text.trim();
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(username: username),
          ),
        );
      } else {
        customDialog(
          context,
          title: 'Login Failed',
          content: 'Invalid username or password.',
        );
      }
    } else {
      customDialog(
        context,
        title: 'Invalid Input',
        content: 'Please enter both username and password.',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(40),
                  color: FB_LIGHT_PRIMARY,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(25),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/NUCCITLogo_Black.png',
                        height: ScreenUtil().setHeight(200),
                      ),
                      SizedBox(height: ScreenUtil().setHeight(30)),

                      CustomTextFormField(
                        controller: usernameController,
                        validator: (value) =>
                            value!.isEmpty ? 'Enter your username' : null,
                        onSaved: (value) => usernameController.text = value!,
                        fontSize: ScreenUtil().setSp(15),
                        fontColor: FB_DARK_PRIMARY,
                        hintTextSize: ScreenUtil().setSp(15),
                        hintText: 'Username',
                        height: ScreenUtil().setHeight(10),
                        width: ScreenUtil().setWidth(10),
                      ),

                      SizedBox(height: ScreenUtil().setHeight(10)),

                      CustomTextFormField(
                        controller: passwordController,
                        isObscure: _isPasswordHidden,
                        validator: (value) =>
                            value!.isEmpty ? 'Enter your password' : null,
                        onSaved: (value) => passwordController.text = value!,
                        fontSize: ScreenUtil().setSp(15),
                        fontColor: FB_DARK_PRIMARY,
                        hintTextSize: ScreenUtil().setSp(15),
                        hintText: 'Password',
                        height: ScreenUtil().setHeight(10),
                        width: ScreenUtil().setWidth(10),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordHidden = !_isPasswordHidden;
                            });
                          },
                        ),
                      ),

                      SizedBox(height: ScreenUtil().setHeight(50)),

                      CustomInkwellButton(
                        onTap: login,
                        height: ScreenUtil().setHeight(40),
                        width: ScreenUtil().screenWidth,
                        buttonName: 'Login',
                        fontSize: ScreenUtil().setSp(15),
                        bgColor: FB_LIGHT_PRIMARY,
                        fontColor: FB_DARK_PRIMARY,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: ScreenUtil().screenWidth,
                  height: ScreenUtil().setHeight(40),
                  color: FB_LIGHT_PRIMARY,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'You do not have an account? ',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: ScreenUtil().setSp(15),
                        ),
                      ),
                      GestureDetector(
                        onTap: () =>
                            Navigator.popAndPushNamed(context, '/register'),
                        child: Text(
                          'Register here',
                          style: TextStyle(
                            color: FB_DARK_PRIMARY,
                            fontSize: ScreenUtil().setSp(15),
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}
