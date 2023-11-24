import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/order_screen/components/order_place.dart';
import 'package:aajaibechum/views/widgets/our_button.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

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
        title: boldText(text: 'Order Details', color: fontGrey, size: 16.0),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        width: context.screenWidth,
        child: ourButton(color: green, onPress: () {}, title: "Confirm Order"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //order delivery status
              Visibility(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText(text: "Order Status", color: fontGrey, size: 16.0),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title:
                          boldText(text: "Placed", color: fontGrey, size: 16.0),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(
                          text: "Delivered", color: fontGrey, size: 16.0),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: true,
                      onChanged: (value) {},
                      title: boldText(
                          text: "Confirmed", color: fontGrey, size: 16.0),
                    ),
                    SwitchListTile(
                      activeColor: green,
                      value: false,
                      onChanged: (value) {},
                      title: boldText(
                          text: "Delivered", color: fontGrey, size: 16.0),
                    ),
                  ],
                )
                    .box
                    .padding(const EdgeInsets.all(8))
                    .outerShadowMd
                    .white
                    .border(color: lightGrey)
                    .roundedSM
                    .margin(const EdgeInsets.only(bottom: 4))
                    .make(),
              ),
              //order detail section
              Column(
                children: [
                  orderPlaceDetails(
                    d1: "data['order_code']",
                    d2: "data['shipping method']",
                    title: "Order Code",
                    title2: "Shipping Method",
                  ),
                  orderPlaceDetails(
                    d1: DateTime.now().toString(),
                    d2: "data['Payment method']",
                    title: "Order Date",
                    title2: "Payment Method",
                  ),
                  orderPlaceDetails(
                    d1: "Unpaid",
                    d2: "Order Placed",
                    title: "Payment Status",
                    title2: "Delivery Status",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            boldText(
                              text: "shipping Address",
                              color: purpleColor,
                              size: 16.0,
                            ),
                            "{data['order_by_name']}".text.make(),
                            "{data['order_by_email']}".text.make(),
                            "{data['order_by_address']}".text.make(),
                            "{data['order_by_city']}".text.make(),
                            "{data['order_by_state']}".text.make(),
                            "{data['order_by_phone']}".text.make(),
                            "{data['order_by_postalcode']}".text.make(),
                          ],
                        ),
                        SizedBox(
                          width: 130,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              boldText(
                                text: "Total Amount",
                                color: purpleColor,
                                size: 16.0,
                              ),
                              boldText(
                                text: "\$300.0",
                                color: red,
                                size: 16.0,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  10.heightBox,
                  boldText(
                    text: "Ordered Product",
                    color: fontGrey,
                    size: 16.0,
                  ),
                  10.heightBox,
                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(3, (index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          orderPlaceDetails(
                            d1: "Unpaid",
                            d2: "Order Placed",
                            title: "Payment Status",
                            title2: "Delivery Status",
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              width: 30,
                              height: 20,
                              color: purpleColor,
                            ),
                          ),
                          const Divider(),
                        ],
                      );
                    }).toList(),
                  )
                      .box
                      .outerShadowMd
                      .white
                      .border(color: lightGrey)
                      .roundedSM
                      .margin(const EdgeInsets.only(bottom: 4))
                      .make(),
                  20.heightBox,
                ],
              ).box.outerShadow.white.make(),
            ],
          ),
        ),
      ),
    );
  }
}
