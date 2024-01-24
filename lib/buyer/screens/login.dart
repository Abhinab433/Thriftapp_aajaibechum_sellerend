import 'package:aajaibechum/buyer/screens/home_screen.dart';
import 'package:aajaibechum/buyer/screens/register.dart';
import 'package:aajaibechum/buyer/screens/screens.dart';
import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/home_screen/home.dart';
import 'package:aajaibechum/views/widgets/our_button.dart';
import 'package:sqflite/sqflite.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';

class LoginScreenBuyer extends StatelessWidget {
  LoginScreenBuyer({super.key});
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: purpleColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                30.heightBox,
                normalText(text: welcome),
                20.heightBox,
                Row(
                  children: [
                    Image.asset(
                      icLogo,
                      width: 80,
                      height: 80,
                    )
                        .box
                        .border(color: white)
                        .rounded
                        .padding(const EdgeInsets.all(8))
                        .make(),
                    10.widthBox,
                    boldText(text: appname, size: 25.0),
                  ],
                ),
                10.heightBox,
                boldText(text: logintotext, size: 15.0, color: lightGrey),
                10.heightBox,
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email is required";
                          }
                          // You can add more validation logic here if needed
                          return null;
                        },
                        decoration: const InputDecoration(
                            hintText: emailHint,
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              color: purpleColor,
                            )),
                      ),
                      40.heightBox,
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password  is required";
                          }
                          // You can add more validation logic here if needed
                          return null;
                        },
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: passwordHint,
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.password,
                            color: purpleColor,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: normalText(
                              text: forgotPassword,
                              color: purpleColor,
                            )),
                      ),
                      20.heightBox,
                      SizedBox(
                        width: context.screenWidth - 100,
                        child: ourButton(
                            title: login,
                            onPress: () {
                              if (formkey.currentState!.validate()) {
                                Get.to(() => const Screens());
                              }
                            }),
                      ),
                      10.heightBox,
                      SizedBox(
                        width: context.screenWidth - 100,
                        child: ourButton(
                            title: register,
                            onPress: () {
                              Get.to(() => const Register());
                            }),
                      ),
                    ],
                  )
                      .box
                      .white
                      .rounded
                      .outerShadowMd
                      .padding(const EdgeInsets.all(8))
                      .make(),
                ),
                10.heightBox,
                Center(child: normalText(text: anyProblem, color: lightGrey)),
                const Spacer(),
                Center(child: boldText(text: appname, size: 12.0)),
              ],
            ),
          ),
        ));
  }
}
