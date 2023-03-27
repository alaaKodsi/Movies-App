import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_store/View/Screen/NavButtonBar.dart';
import 'package:movies_store/View/widget/LoginPage/ForgotPassword.dart';
import 'package:movies_store/View/widget/LoginPage/TextFormField.dart';
import 'package:movies_store/View/widget/LoginPage/textBodyOne.dart';
import 'package:movies_store/View/widget/LoginPage/textBodyTwo.dart';
import 'package:movies_store/core/constant/color.dart';
import 'package:movies_store/core/constant/constantText.dart';
import 'package:movies_store/core/constant/imageAssets.dart';

import '../widget/LoginPage/ElevatedButtonLogin.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  String? myEmail, myPassword;

  final TextEditingController _emailCotroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _fomeState = GlobalKey<FormState>();

  login() async {
    var formdata = _fomeState.currentState;
    if (formdata!.validate()) {
      formdata.save();
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return HomePage();
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Password or Email Invaild please try again "),
        backgroundColor: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(41),
            child: Column(
              children: [
                const TextBodyLoginOne(),
                const TextBodyLoginTwo(),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(bottom: 70, top: 68),
                  child: SvgPicture.asset(IamgeAssets.loginImage),
                ),
                Form(
                    key: _fomeState,
                    child: Column(
                      children: [
                        TextFormFieldLogin(
                          iconField: const SizedBox(
                            height: 0,
                          ),
                          hintText: "Enter your email",
                          validator: (val) {
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(val!)) {
                              return "Please enter a valid email address";
                            }
                          },
                          textInputAction: TextInputAction.next,
                          textEditingController: _emailCotroller,
                          onPressedIcon: () {},
                          obscureTextStatus: false,
                          onSave: myEmail,
                          textInputType: TextInputType.emailAddress,
                        ),
                        TextFormFieldLogin(
                          validator: (val) {
                            if (val!.length < 8) {
                              return "Password can't to be Least than 8 letter and Add At Least One Special Character ";
                            }
                            // if (!RegExp(ConstantText.pattern).hasMatch(val)) {
                            //   return "Add At Least One Special Character";
                            // }
                            return null;
                          },
                          iconField: IamgeAssets.eye,
                          hintText: "Enter your password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.text,
                          obscureTextStatus: !_passwordVisible,
                          textEditingController: _passwordController,
                          onPressedIcon: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          onSave: myPassword,
                        ),
                      ],
                    )),
                ForgotPassword(
                  onTap: () {},
                ),
                ElevatedButtonLogin(
                  onPressed: login,
                  textButton: "Login",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
