import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/widgets/appbar_widget.dart';
import 'package:aajaibechum/views/widgets/dashboard_button.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:aajaibechum/views/products_screen/product_details.dart';

import 'package:intl/intl.dart' as intl;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(dashboard),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(context,
                    title: products, count: '60', icon: icProducts),
                dashboardButton(
                  context,
                  title: order,
                  count: '32',
                  icon: icOrders,
                ),
              ],
            ),
            10.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                dashboardButton(
                  context,
                  title: rating,
                  count: '10',
                  icon: icStar,
                ),
                dashboardButton(context,
                    title: totalsales, count: '25', icon: icOrders),
              ],
            ),
            10.heightBox,
            const Divider(),
            10.heightBox,
            boldText(text: popularProducts, color: darkGrey, size: 16.0),
            20.heightBox,
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: List.generate(
                3,
                (index) => ListTile(
                  onTap: () {
                    Get.to(() => const ProductDetails());
                  },
                  leading: Image.asset(imgProduct,
                      width: 100, height: 100, fit: BoxFit.cover),
                  title:
                      boldText(text: 'Product Title', color: green, size: 16.0),
                  subtitle: normalText(text: "\$23", color: golden),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
