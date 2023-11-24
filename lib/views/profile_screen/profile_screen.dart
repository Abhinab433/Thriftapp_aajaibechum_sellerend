import 'package:aajaibechum/const/const.dart';
import 'package:aajaibechum/views/messages_screen/messages_screen.dart';
import 'package:aajaibechum/views/profile_screen/edit_profilescreen.dart';
import 'package:aajaibechum/views/widgets/text_style.dart';
import 'package:get/get.dart';
import 'package:aajaibechum/views/shop_screen/shop_settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: boldText(text: setting, size: 16.0),
          actions: [
            IconButton(
                onPressed: () {
                  Get.to(() => EditProfileScreen());
                },
                icon: const Icon(Icons.edit)),
            TextButton(onPressed: () {}, child: normalText(text: logout))
          ]),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset(imgProduct)
                .box
                .roundedFull
                .clip(Clip.antiAlias)
                .make(),
            title: boldText(text: "Vendor name", size: 16.0),
            subtitle: normalText(text: "vendoremail@email.com"),
          ),
          const Divider(),
          10.heightBox,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                  profileButtonsIcons.length,
                  (index) => ListTile(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.to(() => const ShopSettings());

                              break;
                            case 1:
                              Get.to(() => const MessagesScreen());
                            default:
                          }
                        },
                        leading: Icon(profileButtonsIcons[index], color: white),
                        title: normalText(text: profileButtonsTitles[index]),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
