import 'package:aajaibechum/const/const.dart';

Widget normalText({text, color = Colors.white}) {
  return "$text".text.color(color).make();
}

Widget boldText({text, color = Colors.white, size = 14}) {
  return "$text".text.semiBold.color(color).size(size).make();
}
