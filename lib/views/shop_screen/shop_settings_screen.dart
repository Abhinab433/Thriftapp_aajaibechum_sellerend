import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/widgets/custom_textfield.dart';

import 'package:aajaibechum/views/widgets/text_style.dart';

class ShopSettings extends StatelessWidget {
  const ShopSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(title: boldText(text: shopsettings, size: 16.0), actions: [
        TextButton(onPressed: () {}, child: normalText(text: save)),
      ]),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            customTextField(label: shopName, hint: nameHint),
            10.heightBox,
            customTextField(label: address, hint: shopAddressHint),
            10.heightBox,
            customTextField(label: mobile, hint: mobileHint),
            10.heightBox,
            customTextField(label: description, hint: websiteHint),
            10.heightBox,
            customTextField(
                isDesc: true, label: description, hint: websiteHint),
          ],
        ),
      ),
    );
  }
}
