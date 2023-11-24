import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/controllers/home_controller.dart';
import 'package:aajaibechum/views/home_screen/home_screen.dart';
import 'package:aajaibechum/views/order_screen/order_screen.dart';
import 'package:aajaibechum/views/products_screen/products_screen.dart';
import 'package:aajaibechum/views/profile_screen/profile_screen.dart';


import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Homecontroller());
    var navScreens = [
      const HomeScreen(),
      const ProductsScreen(),
      const OrdersScreen(),
      const ProfileScreen()
    ];
    var bottomNavbar = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: dashboard,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icProducts, color: darkGrey, width: 30),
        label: products,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icOrders, color: darkGrey, width: 30),
        label: order,
      ),
      BottomNavigationBarItem(
        icon: Image.asset(icSettings, color: darkGrey, width: 30),
        label: setting,
      ),
    ];
    return Scaffold(
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            onTap: (index) {
              controller.navIndex.value = index;
            },
            currentIndex: controller.navIndex.value,
            type: BottomNavigationBarType.fixed,
            items: bottomNavbar,
            selectedItemColor: purpleColor,
            unselectedItemColor: darkGrey,
          ),
        ),
        body: Obx(
          () => Column(
            children: [
              Expanded(
                child: navScreens.elementAt(controller.navIndex.value),
              )
            ],
          ),
        ));
  }
}
