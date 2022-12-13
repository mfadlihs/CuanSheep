import 'package:cuan_sheep/services/api/api_client.dart';
import 'package:cuan_sheep/services/api/token.dart';
import 'package:cuan_sheep/ui/screen/global/controller/user_controller.dart';
import 'package:cuan_sheep/ui/screen/home/controller/home_controller.dart';
import 'package:cuan_sheep/ui/screen/home/widget/drawer_home.dart';
import 'package:cuan_sheep/ui/screen/home/widget/pen_wrapper.dart';
import 'package:cuan_sheep/ui/screen/home/widget/popup.dart';
import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/acticle_card.dart';
import 'package:cuan_sheep/ui/widgets/bottom_navbar.dart';
import 'package:cuan_sheep/ui/widgets/home_dialog.dart';
import 'package:cuan_sheep/ui/widgets/pen_card.dart';
import 'package:cuan_sheep/ui/widgets/pen_wrapper.dart';
import 'package:cuan_sheep/ui/widgets/track_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final userController = Get.find<UserController>();
  final homeController = Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final user = await RestApi.getUser(context);

      homeController.userData(user);
      homeController.penData(await RestApi.getPens(context));
      userController.user(user);

      print(userController.user.value.first_name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: DrawerHome(),
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/image_home.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 60),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/icons/profile.svg'),
                                  SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Obx(
                                        () {
                                          return Text(
                                            'Hi ${homeController.userData.value.first_name}',
                                            style: h3TextStyle(),
                                          );
                                        },
                                      ),
                                      Text(
                                        'Selamat Datang di Tcah Angon',
                                        style: bodyRegularTextStyle(
                                          size: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.menu,
                                  size: 30,
                                ),
                                onPressed: () {
                                  _globalKey.currentState!.openDrawer();
                                },
                              ),
                              SizedBox(height: 5),
                              Icon(Icons.notifications_active_outlined),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      TrackCard(),
                      Divider(
                        height: 35,
                        color: ColorConstants.tertiaryColor,
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(RoutePath.investasi);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFE6E6E6),
                                padding: EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/invest.svg',
                                    width: 46,
                                  ),
                                  Text(
                                    "Investasi",
                                    style: h4TextStyle(),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(RoutePath.panduan);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFE6E6E6),
                                padding: EdgeInsets.symmetric(
                                  vertical: 14,
                                  horizontal: 3,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/panduan.svg',
                                    width: 46,
                                  ),
                                  Text(
                                    "Panduan",
                                    style: h4TextStyle(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 14),
                      Text(
                        'Makin yakin investasi ',
                        style: bodyRegularTextStyle(
                          color: ColorConstants.black2,
                        ),
                      ),
                      SizedBox(height: 14),
                      PopupHome(),
                      SizedBox(height: 15),
                      Text(
                        'Investasi Pilihan untuk mu...',
                        style: bodyRegularTextStyle(),
                      ),
                      SizedBox(height: 10),
                      PenWrapper(controller: homeController.penData),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Selengkapnya',
                            style: TextStyle(
                              color: Color(0xff2B67F6),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: 14,
                            color: Color(0xff2B67F6),
                          ),
                        ],
                      ),
                      Text(
                        "Tren Artikel",
                        style: bodyRegularTextStyle(),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 200,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            ArticleCard(),
                            ArticleCard(),
                            ArticleCard(),
                            ArticleCard(),
                            ArticleCard(),
                            ArticleCard(),
                          ],
                        ),
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavbar(route: 1),
      ),
    );
  }
}
