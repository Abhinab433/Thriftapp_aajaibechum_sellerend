import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';

import 'package:get/get.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: darkGrey,
          ),
        ),
        title: boldText(text: "Product Title", color: fontGrey, size: 16.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VxSwiper.builder(
              autoPlay: true,
              height: 350,
              itemCount: 3,
              aspectRatio: 16 / 9,
              viewportFraction: 1.0,
              itemBuilder: (context, index) {
                return Image.asset(imgProduct,
                    //data["p_imgs"][index],
                    width: double.infinity,
                    fit: BoxFit.cover);
              },
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldText(text: "Product titel", color: fontGrey, size: 16.0),
                  VxRating(
                    isSelectable: false,
                    value: 3.0,
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    maxRating: 5,
                    size: 25,
                  ),
                  10.heightBox,
                  boldText(text: "\$300", color: red, size: 16.0),
                  20.heightBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child:
                                    "Color:".text.color(textfieldGrey).make(),
                              ),
                              Row(
                                children: List.generate(
                                  3,
                                  (index) => Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      VxBox()
                                          .size(40, 20)
                                          .roundedFull
                                          .color(Vx.randomColor)
                                          .margin(const EdgeInsets.symmetric(
                                              horizontal: 4))
                                          .make()
                                          .onTap(() {}),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),
                          10.heightBox,
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quality:   "
                                    .text
                                    .color(textfieldGrey)
                                    .make(),
                              ),
                              normalText(
                                  text: "      20 items", color: textfieldGrey),
                            ],
                          )
                        ],
                      )
                          .box
                          .white
                          .outerShadowSm
                          .padding(const EdgeInsets.all(8))
                          .make(),
                      const Divider(),
                      10.heightBox,
                      boldText(
                          text: "Description", color: fontGrey, size: 16.0),
                      10.heightBox,
                      normalText(
                          text: "Description of this item", color: fontGrey),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
