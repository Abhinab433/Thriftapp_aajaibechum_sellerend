import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';

Widget productDropdown() {
  return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
    hint: normalText(text: "Select Category", color: fontGrey),
    value: null,
    isExpanded: true,
    items: const [],
    onChanged: (value) {},
  )).box.padding(const EdgeInsets.all(8)).white.roundedSM.make();
}
