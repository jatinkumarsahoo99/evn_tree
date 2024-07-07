import 'package:flutter/material.dart';

import '../app_theme/colors.dart';
import '../app_theme/text_styles.dart';
import '../common_widgets/common_text_field_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<DataLstClass> dataLst = [
    DataLstClass(
      icon: Icons.border_all_rounded,
      nameStr: "All"
    ),
    DataLstClass(
        icon: Icons.music_note_outlined,
        nameStr: "Connect"
    ),
    DataLstClass(
        icon: Icons.theater_comedy_outlined,
        nameStr: "Theatre"
    ),
    DataLstClass(
        icon: Icons.sports,
        nameStr: "Sports"
    ),
    DataLstClass(
        icon: Icons.music_note_outlined,
        nameStr: "Magic Show"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
    DataLstClass(
        icon: Icons.games,
        nameStr: "Circus"
    ),
  ];
  double maxScrollExtent = 0.0;
  ScrollController scrollController = ScrollController();
  int selectedIndex = 0;
  @override
  void initState() {
    scrollController.addListener((){
      maxScrollExtent = scrollController.position.maxScrollExtent;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xFF231D32),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                color: const Color(0xFF2A233D)
              ),
              height: 41,
              child: Padding(
                padding: const EdgeInsets.only(left: 20,right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.menu_outlined,color: Colors.white,),
                        const SizedBox(
                          width: 13,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF1F1734),
                              borderRadius: BorderRadius.circular(8.5)
                          ),
                          child: Padding(
                            padding:  const EdgeInsets.only(top: 4.0,bottom: 4,right: 35,left: 6),
                            child: Row(
                              children: [
                                Icon(Icons.location_on,size: 16,color: ColorsGroup.iconColor,),
                                Text("Bhubaneswar",style: TextStyles(context).googleRubikFontsForText1(fontSize: 9,fontWeight: FontWeight.w400),)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 30,
                      child: Stack(
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Icon(Icons.notifications_outlined,size: 20,color: ColorsGroup.iconColor,)),
                          const Positioned(
                              left: 8,
                              right: 0,
                              top: -2,
                              child: Text("3",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0,top: 12,right: 18),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Hello",style: TextStyles(context).googleRubikFontsForButtonText(fontWeight: FontWeight.w400,fontSize: 20),),
                      Text(" Jay",style: TextStyles(context).googleRubikFontsForText2(fontWeight: FontWeight.w400,fontSize: 20)),
                      Text(",",style: TextStyles(context).googleRubikFontsForButtonText(fontWeight: FontWeight.w400,fontSize: 20)),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Let’s explore your fav",style: TextStyles(context).googleRubikFontsForButtonText(fontWeight: FontWeight.w400,fontSize: 20),),
                      Text(" event",style: TextStyles(context).googleRubikFontsForText2(fontWeight: FontWeight.w400,fontSize: 20)),
                      Text(" !",style: TextStyles(context).googleRubikFontsForButtonText(fontWeight: FontWeight.w400,fontSize: 20)),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  CommonTextFieldView(
                    controller: TextEditingController(),
                    // errorText: _errorFName,
                    padding: const EdgeInsets.only(left: 0, right: 0),
                    keyboardType: TextInputType.name,
                    onChanged: (String txt) {},
                    isAllowTopTitleView: false,
                    suffixIcon: Icons.search,
                    suffixIconColor: Colors.white,
                    suffixIconSize: 25,
                    radius: 15.5,
                    height: 35,
                    borderColor: const Color(0xFFC1C1C1),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                        width: size.width*0.82,
                        child: ListView.builder(
                            itemCount: dataLst.length,
                            controller: scrollController,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context,int index){
                             return GestureDetector(
                            onTap: (){
                              selectedIndex = index;
                              setState(() {

                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 19.0),
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      border: Border.all(width: 1,color: const Color(0xFF362B51)),
                                      color: (selectedIndex == index)?const Color(0xFFB74BFF) :const Color(0xFF221D31)
                                    ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Icon(dataLst[index].icon,size: 30,color: Colors.white,),
                                      )),
                                  Text(dataLst[index].nameStr??"",style: TextStyles(context).googleRubikFontsForButtonText(fontSize: 9,fontWeight: FontWeight.w600),)
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                      (dataLst.length > 4)? GestureDetector(
                        onTap: (){
                          double currentOffset = scrollController.offset;
                          double newOffset = currentOffset + 30.0;

                          if(maxScrollExtent == 0){
                            scrollController.jumpTo(
                              30,
                            );
                          }

                          if (newOffset <= maxScrollExtent) {
                            scrollController.animateTo(
                              newOffset,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            // If reached the end, stop scrolling further
                            scrollController.jumpTo(maxScrollExtent);
                          }
                        },
                        child: Container(
                          color: const Color(0xFF362B51),
                          height: 40,
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(Icons.arrow_forward_sharp,size: 18,color: Colors.white,),
                          ),
                        ),
                      ):Container()
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

class DataLstClass{
  IconData? icon;
  String? nameStr;
  DataLstClass({this.icon,this.nameStr});
}
