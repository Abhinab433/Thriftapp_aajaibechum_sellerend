import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/products_screen/add_product.dart';
import 'package:aajaibechum/views/products_screen/product_details.dart';
import 'package:aajaibechum/views/widgets/appbar_widget.dart';

import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(() => const AddProduct());
          },
          child: const Icon(Icons.add)),
      appBar: appbarWidget(products),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              children: List.generate(
            20,
            (index) => ListTile(
              onTap: () {
                Get.to(() => const ProductDetails());
              },
              leading: Image.asset(imgProduct,
                  width: 100, height: 100, fit: BoxFit.cover),
              title: boldText(text: 'Product Title', color: green, size: 16.0),
              subtitle: normalText(text: "\$23", color: golden),
              trailing: VxPopupMenu(
                  child: Icon(Icons.more_vert_rounded),
                  menuBuilder: () => Column(
                        children: List.generate(
                          popupMenuTitles.length,
                          (index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(popupMenuIcons[index]),
                                10.widthBox,
                                normalText(
                                    text: popupMenuTitles[index],
                                    color: darkGrey)
                              ],
                            ).onTap(() {}),
                          ),
                        ),
                      ).box.white.rounded.width(200).make(),
                  clickType: VxClickType.singleClick),
            ),
          )),
        ),
      ),
    );
  }
}
