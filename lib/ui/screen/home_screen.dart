import 'package:cuan_sheep/ui/util/color_constant.dart';
import 'package:cuan_sheep/ui/util/route_names.dart';
import 'package:cuan_sheep/ui/util/text_styles.dart';
import 'package:cuan_sheep/ui/widgets/acticle_card.dart';
import 'package:cuan_sheep/ui/widgets/home_dialog.dart';
import 'package:cuan_sheep/ui/widgets/invest_card.dart';
import 'package:cuan_sheep/ui/widgets/track_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key: _globalKey,
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 20,
                  color: Color(0xff353B40),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 20,
                  ),
                  color: ColorConstants.primaryColor,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ahmad Dani',
                        style: bodyBoldTextStyle(),
                      ),
                      Container(
                        width: 210,
                        height: 1.5,
                        color: ColorConstants.secondaryColor,
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Ahmad33@gmail.com',
                        style: bodyBoldTextStyle(),
                      ),
                      Container(
                        width: 210,
                        height: 1.5,
                        color: ColorConstants.secondaryColor,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 25,
                    horizontal: 20,
                  ),
                  height: height - 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/faq_icon.svg'),
                              SizedBox(width: 6),
                              Text(
                                "FAQ",
                                style: bodyBoldTextStyle(),
                              ),
                            ],
                          ),
                          SizedBox(height: 13),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/help_icon.svg'),
                              SizedBox(width: 6),
                              Text(
                                "Bantuan",
                                style: bodyBoldTextStyle(),
                              ),
                            ],
                          ),
                          SizedBox(height: 13),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/icons/exclamation_icon.svg'),
                              SizedBox(width: 6),
                              Text(
                                "Tentang Tcah Angon",
                                style: bodyBoldTextStyle(),
                              ),
                            ],
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Keluar',
                          style: bodyBoldTextStyle(),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
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
                                      Text(
                                        'Hi Ahmad',
                                        style: h3TextStyle(),
                                      ),
                                      Text(
                                        'Selamat Datang di Tcah Angon',
                                        style: bodyRegularTextStyle(),
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
                              onPressed: () {},
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
                                context.push(RoutePath.panduan);
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
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext builder) {
                                  return HomeDialog(
                                    title: 'Transparan',
                                    content:
                                        "Investor dapat memonitoring kandang dengan camera cctv kandang. Tcah Angon secara real-time terkait kondisi ternak.  Alur bagi hasil investasi akan dilaporkan setiap 2 kali sebulan",
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Transparan',
                              style: bodyBoldTextStyle(),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext builder) {
                                    return HomeDialog(
                                      title: 'Profesioanal',
                                      content:
                                          'Kualitas pengelolaan akan dilakukan secara terjadwal dan konsisten. Disisi lain, pengolahan kandang berbasis IoT sehingga kualitas yang dihasil sesuai harapan.',
                                    );
                                  },
                                );
                              },
                              child: Text(
                                'Profesional',
                                style: bodyBoldTextStyle(),
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext builder) {
                                  return HomeDialog(
                                    title: 'Aman',
                                    content:
                                        'Keamanan seluruh data pengguna dan transaksi menjadi salah satu prioritas Tcah angon untuk kenyamanan pengguna. ',
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Aman',
                              style: bodyBoldTextStyle(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Investasi Pilihan untuk mu...',
                        style: bodyRegularTextStyle(),
                      ),
                      SizedBox(height: 10),
                      InvestCard(),
                      SizedBox(height: 10),
                      InvestCard(),
                      SizedBox(height: 10),
                      InvestCard(),
                      SizedBox(height: 10),
                      InvestCard(),
                      SizedBox(height: 10),
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
      ),
    );
  }
}
