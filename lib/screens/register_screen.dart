import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/custom_textformfield.dart';
import '../widgets/custom_inkwell_button.dart';
import '../widgets/custom_dialogs.dart';
import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController mobilenumController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  bool _isPasswordHidden = true;
  bool _isConfirmPasswordHidden = true;

  void register() {
    String firstName = firstnameController.text.trim();
    String lastName = lastnameController.text.trim();
    String username = usernameController.text.trim();
    String mobile = mobilenumController.text.trim();
    String password = passwordController.text.trim();
    String confirmPassword = confirmpasswordController.text.trim();

    // check all fields
    if (username.isEmpty ||
        firstName.isEmpty ||
        lastName.isEmpty ||
        mobile.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      customDialog(
        context,
        title: 'Error',
        content: 'All fields are required!',
      );
      return;
    }

    // mobile num validation
    if (mobile.length != 11 || !RegExp(r'^\d+$').hasMatch(mobile)) {
      customDialog(
        context,
        title: 'Error',
        content: 'Mobile number must be 11 digits!',
      );
      return;
    }

    // password validation
    final passwordRegex = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$',
    );
    if (!passwordRegex.hasMatch(password)) {
      customDialog(
        context,
        title: 'Error',
        content:
            'Password must be at least 8 characters, include uppercase, lowercase, number, and special character.',
      );
      return;
    }

    // confirm password
    if (password != confirmPassword) {
      customDialog(context, title: 'Error', content: 'Passwords do not match!');
      return;
    }

    // all validations passed, pass username to HomeScreen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen(username: username)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          padding: EdgeInsets.fromLTRB(
            ScreenUtil().setWidth(25),
            ScreenUtil().setHeight(40),
            ScreenUtil().setWidth(25),
            ScreenUtil().setHeight(10),
          ),
          child: Column(
            children: [
              SizedBox(height: ScreenUtil().setHeight(25)),
              Text(
                'Register Here',
                style: TextStyle(
                  fontSize: ScreenUtil().setSp(30),
                  fontWeight: FontWeight.bold,
                  color: FB_DARK_PRIMARY,
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(25)),

              CustomTextFormField(
                controller: firstnameController,
                hintText: 'First Name',
                fontSize: ScreenUtil().setSp(15),
                fontColor: FB_DARK_PRIMARY,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                validator: (value) => null,
                onSaved: (value) {},
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),

              CustomTextFormField(
                controller: lastnameController,
                hintText: 'Last Name',
                fontSize: ScreenUtil().setSp(15),
                fontColor: FB_DARK_PRIMARY,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                validator: (value) => null,
                onSaved: (value) {},
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),

              CustomTextFormField(
                controller: usernameController,
                hintText: 'Username',
                fontSize: ScreenUtil().setSp(15),
                fontColor: FB_DARK_PRIMARY,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                validator: (value) => null,
                onSaved: (value) {},
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),

              CustomTextFormField(
                controller: mobilenumController,
                hintText: 'Mobile Number',
                fontSize: ScreenUtil().setSp(15),
                fontColor: FB_DARK_PRIMARY,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                keyboardType: TextInputType.number,
                maxLength: 11,
                validator: (value) => null,
                onSaved: (value) {},
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),

              CustomTextFormField(
                controller: passwordController,
                hintText: 'Password',
                isObscure: _isPasswordHidden,
                fontSize: ScreenUtil().setSp(15),
                fontColor: FB_DARK_PRIMARY,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                validator: (value) => null,
                onSaved: (value) {},
                suffixIcon: IconButton(
                  icon: Icon(
                    _isPasswordHidden ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isPasswordHidden = !_isPasswordHidden;
                    });
                  },
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              Text(
                '(Password should be 8 characters, a mixture of letter and numbers consisting of at least one special character with Uppercase and Lowercase letters.)',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: ScreenUtil().setSp(10),
                ),
              ),

              CustomTextFormField(
                controller: confirmpasswordController,
                hintText: 'Confirm Password',
                isObscure: _isConfirmPasswordHidden,
                fontSize: ScreenUtil().setSp(15),
                fontColor: FB_DARK_PRIMARY,
                height: ScreenUtil().setHeight(10),
                width: ScreenUtil().setWidth(10),
                validator: (value) => null,
                onSaved: (value) {},
                suffixIcon: IconButton(
                  icon: Icon(
                    _isConfirmPasswordHidden
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordHidden = !_isConfirmPasswordHidden;
                    });
                  },
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have an account? ',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(context, '/login'),
                    child: Text(
                      'Login here',
                      style: TextStyle(
                        color: FB_DARK_PRIMARY,
                        fontSize: ScreenUtil().setSp(15),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: ScreenUtil().setHeight(20)),

              CustomInkwellButton(
                onTap: register,
                height: ScreenUtil().setHeight(45),
                width: ScreenUtil().screenWidth,
                buttonName: 'Submit',
                fontSize: ScreenUtil().setSp(15),
                bgColor: FB_LIGHT_PRIMARY,
                fontColor: FB_DARK_PRIMARY,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
