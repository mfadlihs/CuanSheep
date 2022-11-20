import 'package:cuan_sheep/providers/provider_login.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/util/validate_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    LoginProvider loginProvider =
        Provider.of<LoginProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 160),
              SvgPicture.asset('icons/login_icon.svg'),
              SizedBox(height: 20),
              Text(
                'LOGIN',
                style: h3TextStyle(),
              ),
              SizedBox(height: 50),
              Text(
                "Selamat datang\nSilahkan Login untuk memulai",
                textAlign: TextAlign.center,
                style: bodyRegularTextStyle(),
              ),
              SizedBox(height: 10),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Email
                    TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        return !validateEmail(value)
                            ? 'Mohon input email yang valid'
                            : null;
                      },
                      onChanged: (value) {
                        loginProvider.email = value;
                        loginProvider.setIsValidPassword(value);
                      },
                    ),
                    Text(loginProvider.email),
                    SizedBox(height: 12),
                    // Password
                    TextFormField(
                      obscureText: true,
                      controller: _password,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Password',
                      ),
                      validator: (value) {
                        return !validatePassword(value)
                            ? 'Password kurang dari 8 karakter'
                            : null;
                      },
                      onChanged: (value) {
                        loginProvider.password = value;
                      },
                    ),
                    SizedBox(height: 8),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Lupa Password",
                        textAlign: TextAlign.end,
                        style: bodyBoldTextStyle(color: ColorConstants.blue),
                      ),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text(
                        "MASUK",
                        style: h4TextStyle(),
                      ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Belum memiliki akun? ",
                          style: bodyRegularTextStyle(),
                        ),
                        InkWell(
                          onTap: () {
                            print('ini pindah daftar');
                          },
                          child: Text(
                            'Daftar disini',
                            style: bodyBoldTextStyle(
                              color: ColorConstants.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
