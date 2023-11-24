import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/products_screen/components/product_dropdown.dart';
import 'package:aajaibechum/views/products_screen/components/product_images.dart';
import 'package:aajaibechum/views/widgets/custom_textfield.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:aajaibechum/views/products_screen/components/product_images.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: white,
          ),
        ),
        title: boldText(text: "Add Product", color: white, size: 16.0),
        actions: [
          TextButton(
            onPressed: () {},
            child: boldText(text: "Save", size: 16.0, color: purpleColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customTextField(
                hint: "Navia Force ",
                label: "Product name",
              ),
              10.heightBox,
              customTextField(
                hint: "eg. Nice Product ",
                label: "Description",
                isDesc: true,
              ),
              10.heightBox,
              customTextField(
                hint: "\$100 ",
                label: "Price",
              ),
              10.heightBox,
              customTextField(
                hint: "eg 20 ",
                label: "Quantity",
              ),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              productDropdown(),
              10.heightBox,
              boldText(text: "choose product image", size: 16.0),
              Row(
                children: List.generate(
                    3, (index) => productImages(label: "${index + 1}")),
              ),
              5.heightBox,
              normalText(
                  text: "First image will be your display image",
                  color: lightGrey),
              10.heightBox,
              boldText(text: "choose product color", size: 16.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: List.generate(
                  9,
                  (index) => Stack(
                    alignment: Alignment.center,
                    children: [
                      VxBox()
                          .color(Vx.randomColor)
                          .roundedFull
                          .size(50, 50)
                          .make(),
                      const Icon(Icons.done, color: white),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
