import 'package:aajaibechum/buyer/screens/screens.dart';
import 'package:aajaibechum/const/const.dart';

import 'package:aajaibechum/views/widgets/our_button.dart';
import 'package:sqflite/sqflite.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';

class RegisterS extends StatelessWidget {
  const RegisterS({super.key});

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
              children: [
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
                Column(
                  children: [
                    TextFormField(
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
                      decoration: const InputDecoration(
                        hintText: passwordHint,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.password,
                          color: purpleColor,
                        ),
                      ),
                    ),
                    20.heightBox,
                    SizedBox(
                      width: context.screenWidth - 100,
                      child: ourButton(
                          title: save,
                          onPress: () {
                            Get.to(() => const Screens());
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
