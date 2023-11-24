import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/order_screen/order_details.dart';
import 'package:aajaibechum/views/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(order),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
              children: List.generate(
            20,
            (index) => Container(
              margin: const EdgeInsetsDirectional.only(bottom: 4),
              child: ListTile(
                onTap: () {
                  Get.to(() => const OrderDetails());
                },
                tileColor: textfieldGrey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                title: boldText(
                    text: 'Product Title', color: purpleColor, size: 16.0),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_month, color: fontGrey),
                        10.widthBox,
                        boldText(
                            text: intl.DateFormat()
                                .add_yMd()
                                .format(DateTime.now()),
                            color: fontGrey,
                            size: 12.0),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.payment, color: fontGrey),
                        10.widthBox,
                        boldText(text: unpaid, color: red, size: 12.0),
                      ],
                    )
                  ],
                ),
                trailing:
                    boldText(text: '\$40', color: purpleColor, size: 16.0),
              ),
            ),
          )),
        ),
      ),
    );
  }
}
