import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/home/homeScreen.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentTab=0;
  List<Widget> screens=[
    HomeScreen(),
    // Orders(),
    // Notices(),
    // Profile(),
  ];
  final PageStorageBucket bucket=PageStorageBucket();
  Widget currentScreen=HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          backgroundColor: Color(0xff00B83A),
          hoverColor: Colors.white,
          foregroundColor: Colors.white,
          onPressed: (){},
          child: Icon(Icons.card_giftcard),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 7,
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: (() {
                          setState(() {
                            currentScreen=HomeScreen();
                            currentTab =0; 
                          });   
                        }
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Icon(Icons.home,
                          color: currentTab == 0 ?  Color(0xff0F9E2D):Colors.grey,
                          ),  
                          currentTab ==0?
                           Container(
                           height: 2,
                           width: 18,
                           decoration: BoxDecoration(
                            color: currentTab ==0 ? Color(0xff0F9E2D):Colors.grey,
                           ),
                           ):
                           SizedBox(),
                          ],
                        ), 
                        ),
                    
                    //  MaterialButton(
                    //     minWidth: 40,
                    //     onPressed: (() {
                    //       setState(() {
                    //         currentScreen=Orders();
                    //         currentTab = 1;
                    //       });
                          
                    //     }
                    //     ),
                    //     child: Column(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //        Icon(Icons.shopping_basket_sharp,
                    //       color: currentTab == 1 ?  Color(0xff0F9E2D):Colors.grey,
                    //       ),
                    //       currentTab ==1?
                    //        Container(
                    //        height: 2,
                    //        width: 18,
                    //        decoration: BoxDecoration(
                    //         color: currentTab ==1 ? Color(0xff0F9E2D):Colors.grey,
                    //        ),
                    //        ):
                    //        SizedBox(),
                    //       ],
                    //     ), 
                    //     ),
                    
                    ],
                  ),

              //right side tab bar icon  
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     MaterialButton(
                  //       minWidth: 40,
                  //       onPressed: (() {
                  //         setState(() {
                  //           currentScreen=Notices();
                  //           currentTab =3; 
                  //         });
                          
                  //       }
                  //       ),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //          Icon(Icons.notifications,
                  //         color: currentTab == 3 ?  Color(0xff0F9E2D):Colors.grey,
                  //         ),
                  //         currentTab ==3?
                  //          Container(
                  //          height: 2,
                  //          width: 18,
                  //          decoration: BoxDecoration(
                  //           color: currentTab ==3 ? Color(0xff0F9E2D):Colors.grey,
                  //          ),
                  //          ):
                  //          SizedBox(), 
                  //         ],
                  //       ), 
                  //       ),
                    
                  //    MaterialButton(
                  //       minWidth: 40,
                  //       onPressed: (() {
                  //         setState(() {
                  //           currentScreen=Profile();
                  //           currentTab = 4;
                  //         });
                          
                  //       }
                  //       ),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //          Icon(Icons.perm_contact_calendar_sharp,
                  //         color: currentTab == 4 ?  Color(0xff0F9E2D):Colors.grey,
                  //         ),
                  //         currentTab ==4?
                  //          Container(
                  //          height: 2,
                  //          width: 18,
                  //          decoration: BoxDecoration(
                  //           color: currentTab ==4 ? Color(0xff0F9E2D):Colors.grey,
                  //          ),
                  //          ):
                  //          SizedBox(),
                  //         ],
                  //       ), 
                  //       ),
                    
                  //   ],
                  // ),
                
                ],
              ),
              ),
          ),
    );
  }
}