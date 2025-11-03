import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yemeni_jops/core/constants/color_constants.dart';
import 'package:yemeni_jops/view/forget_page.dart';
import 'package:yemeni_jops/components/custom_button.dart';
import 'package:yemeni_jops/components/custom_textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yemeni_jops/core/navigations/navigations.dart';
import 'package:yemeni_jops/view/setting_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  bool rememberMe = false;

  ThemeData get theme => Theme.of(context);

  late final textTheme = theme.textTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,

      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height * 0.9,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadow,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: const Offset(0, 7),
                      ),
                    ],
                  ),

                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "مرحبا بعودتك",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: TextTheme.of(context).bodyLarge!.color,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "سجل دخولك  للوصول الى حسابك",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: TextTheme.of(context).bodyMedium!.color,
                  ),
                ),
                SizedBox(height: 30),
                MyTextFiled(
                  controller: email_controller,
                  hintText: 'ادخل بريدك الالكتروني',
                  obscuretext: false,
                  text: 'البريد الالكتروني',
                  suffixIcon: Icon(Icons.email_outlined),
                  prefixIcon: null,
                ),

                SizedBox(height: 10),
                MyTextFiled(
                  controller: password_controller,
                  hintText: 'ادخل كلمة المرور',
                  obscuretext: true,
                  text: 'كلمة المرور',
                  suffixIcon: Icon(Icons.lock_outline),
                  prefixIcon: Icon(Icons.visibility_off_outlined),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "تذكرني",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    Checkbox(
                      activeColor: Theme.of(context).colorScheme.primary,
                      checkColor: Theme.of(context).colorScheme.secondary,
                      splashRadius: 4,

                      side: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),

                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                    SizedBox(width: 50),

                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'هل نسيت كلمة المرور؟ ',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,

                              fontWeight: FontWeight.bold,
                            ),
                            recognizer:
                                TapGestureRecognizer()
                                  ..onTap = () {
                                    AppNavigation.push(context, ForgetPage());
                                  },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                CustomButton(
                  text: 'تسجيل الدخول',
                  icon: Icon(Icons.login_rounded),
                  color: Theme.of(context).colorScheme.primary,
                  textColor: ColorConstants.lightTextSecondary,
                  onPressed: () {},
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: const Divider(
                          color: Color.fromARGB(255, 247, 239, 239),
                          thickness: 1,

                          endIndent: 20,
                          indent: 10,
                        ),
                      ),
                      Text(
                        'او',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: const Divider(
                          color: Color.fromARGB(255, 247, 239, 239),
                          thickness: 1,

                          endIndent: 10,
                          indent: 20,
                        ),
                      ),
                    ],
                  ),
                ),

                CustomButton(
                  text: 'تسجيل الدخول بجوجل ',
                  icon: Icon(FontAwesomeIcons.google, color: Colors.red),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
                CustomButton(
                  text: 'تسجيل الدخول بفيسبوك ',
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  color: Colors.white,
                  textColor: Colors.black,
                  onPressed: () {},
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'ليس لديك حساب؟ ',
                        style: TextStyle(color: theme.textTheme.bodySmall?.color),
                      ),
                      TextSpan(text: "  "),
                      TextSpan(
                        text: "إنشاء حساب جديد",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                AppNavigation.push(context, SettingPage());
                              },
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
