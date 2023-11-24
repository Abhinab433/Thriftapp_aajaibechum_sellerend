import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:intl/intl.dart' as intl;

AppBar appbarWidget(title) {
  return AppBar(
    backgroundColor: white ,
    automaticallyImplyLeading: false,
    title: boldText(text: title, color: darkGrey, size: 16.0),
    actions: [
      Center(
        child: normalText(
            text: intl.DateFormat('EEEE,MMM d, ' 'yy').format(DateTime.now()),
            color: purpleColor),
      ),
      10.widthBox,
    ],
  );
}
