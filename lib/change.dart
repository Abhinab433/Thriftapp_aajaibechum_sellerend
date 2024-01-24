import 'package:aajaibechum/buyer/screens/login.dart';
import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/home_screen/home.dart';
import 'package:aajaibechum/views/widgets/our_button.dart';
import 'package:aajaibechum/buyer/screens/screens.dart';
import 'package:aajaibechum/views/auth_screen/login_screen.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';

class ChangeScreen extends StatelessWidget {
  const ChangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: purpleColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                30.heightBox,
                boldText(text: "Who are you?"),
                20.heightBox,
                Column(
                  children: [
                    20.heightBox,
                    SizedBox(
                        width: context.screenWidth - 100,
                        child: ourButton(
                            title: buyer,
                            onPress: () {
                              Get.to(() => const LoginScreenBuyer());
                            })),
                    20.heightBox,
                    SizedBox(
                        width: context.screenWidth - 100,
                        child: ourButton(
                            title: seller,
                            onPress: () {
                              Get.to(() => const LoginScreen());
                            })),
                    10.heightBox,
                  ],
                )
                    .box
                    .white
                    .rounded
                    .outerShadowMd
                    .padding(const EdgeInsets.all(8))
                    .make(),
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
