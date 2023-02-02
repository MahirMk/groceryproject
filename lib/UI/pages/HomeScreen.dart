import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:groceryproject/functions/HomeContainer.dart';
import 'package:groceryproject/functions/UIbackground.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            uiBackground(context),
            TextButton(
              onPressed: null,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('img/rectangleImage.png',width: 100)),
                  Positioned(
                    right: 2.w,
                    child:  Center(
                      child: Image.asset('img/notificationIconOne.png',width: 85,height: 10.h,)
                    ),
                  ),
                  Positioned(
                    left: 1.w,
                    top: 8.4.h,
                    child: Text('419, Platinum Point, O/p Cng Petrol Pump...',style: TextStyle(color: Theme.of(context).backgroundColor).copyWith(color:
                    const Color(0x6B645F5F),fontSize: 10),),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Row(
                        children: [
                          SizedBox(height: 13.h),
                          Icon(Icons.messenger,color: Theme.of(context).primaryColorDark,),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text('Work',style: TextStyle(color: Theme.of(context).backgroundColor),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Icon(Icons.keyboard_arrow_down_outlined,color: Theme.of(context).backgroundColor,),
                          ),
                        ],
                      ),
                  ),
                  SizedBox(
                    height: size.height * 10.h,
                    width: size.width,
                    child: Column(
                      children: [
                        SizedBox(height: 11.h),
                        Padding(
                          padding: const EdgeInsets.all(11.0),
                          child: ImageSlideshow(
                            height: 25.h,
                            indicatorColor: Colors.orange,
                            onPageChanged: (value) {
                              debugPrint('Page changed: $value');
                            },
                            autoPlayInterval: 3000,
                            isLoop: true,
                            children: [
                              Image.asset('img/banner1.png'),
                              Image.asset('img/banner2.png',),
                              Image.asset('img/banner3.png',),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Shop By Categories",style: TextStyle(color: Colors.black,fontSize: 15,)),
                            Text("View All",style: TextStyle(fontSize: 10)),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  homeScreenContainer(const Color(0xFFE2F5FF), 'img/vegetablesCard.png','Vegetables'),
                                  homeScreenContainer(const Color(0xFFFFEBE6), 'img/fruitsCard.png','Fruits'),
                                  homeScreenContainer(const Color(0xFFFFF4D8), 'img/bakeryCard.png','Bakery'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  homeScreenContainer(const Color(0xFFF9EEFF), 'img/attaMaindaCard.png','Atta & maida'),
                                  homeScreenContainer(const Color(0xFFEDEFFF), 'img/fruitsCard.png','Beverages'),
                                  homeScreenContainer(const Color(0xFFE3F8E0), 'img/toSeaCard.png','Snacks'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  homeScreenContainer(const Color(0xFFE2F5FF), 'img/vegetablesCard.png','Baby Care'),
                                  homeScreenContainer(const Color(0xFFFFEBE6), 'img/fruitsCard.png','Personal Care'),
                                  homeScreenContainer(const Color(0xFFFFF4D8), 'img/houseCleaningCard.png','House Cleaning'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('img/bornVita.png'),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text("Fruits & Vegetables",style: TextStyle(color: Colors.black,fontSize: 15,)),
                              Text("View All",style: TextStyle(fontSize: 10)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Stack(
                    children: [
                      SizedBox(
                        height: 270.h,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            homeScreenListContainer(context,'img/strawberryListCard.png','₹125','₹200','Freshly packed Strawberry Fruits','1 Kg'),
                            homeScreenListContainer(context,'img/leavesListCard.png','₹75','₹100','Fresh Organic Coriander Leaves','1 Kg'),
                            homeScreenListContainer(context,'img/vegetablesCard.png','₹1175','1375','Vegetables','2 Kg'),
                            homeScreenListContainer(context,'img/bakeryCard.png','999','₹1100','Bakery','2 Kg'),
                            Container(
                              height: 44.3.h,
                              decoration:  BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.elliptical(
                                      MediaQuery.of(context!).size.width, 35.w,
                                    )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}