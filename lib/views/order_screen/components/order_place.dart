import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';

Widget orderPlaceDetails({title, title2, d1, d2}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldText(text: "title1", color: purpleColor, size: 16.0),
            boldText(text: "title1", color: red, size: 16.0),
          ],
        ),
        SizedBox(width:130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             boldText(text: "d1", color: purpleColor, size: 16.0),
            boldText(text: "d21", color: red, size: 16.0),
        ],),)
      ],
    ),
  );
}
