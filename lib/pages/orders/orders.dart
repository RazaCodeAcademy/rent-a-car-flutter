
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rent_a_car/pages/orders/delivery.dart';
import 'package:rent_a_car/models/orders_model.dart';
import 'package:rent_a_car/pages/orders/order_detail.dart';
import 'package:rent_a_car/pages/orders/pickup.dart';
import 'package:rent_a_car/pages/vehicles/reservations.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin { 
  String dropdownvalue='All Branches';
  List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("All Branches"),value: "All Branches"),
    DropdownMenuItem(child: Text("Lahore"),value: "Lahore"),
    DropdownMenuItem(child: Text("Karachi"),value: "Karachi"),
    DropdownMenuItem(child: Text("Islambad"),value: "Islambad"),
    DropdownMenuItem(child: Text("Peshawar"),value: "Peshawar"),
  ];
  return menuItems;
}
  @override
  Widget build(BuildContext context) {
    // TabController _tabController=TabController(length: 2, vsync: this);
    var size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   titleSpacing: 0,
      //   title: Text('Orders'),
      //   centerTitle: true,
      //   backgroundColor: Color(0xff00C444),
      //   elevation: 0,
      //   toolbarHeight: 120,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(
      //       bottom: Radius.circular(30),
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.only(right: 15),
      //       child: Icon(Icons.search_rounded),
      //     ),
      //   ], 
      //   flexibleSpace: Padding(
      //     padding: EdgeInsets.only(left: 18,right: 18,),
      //     child: Container(
      //       margin: EdgeInsets.only(top: 100),
      //               height: 40,
      //               width: double.infinity,
      //               decoration: BoxDecoration(
      //                 color: Colors.white.withOpacity(0.3),
      //                 borderRadius: BorderRadius.circular(5),
      //               ),
      //               child: Padding(
      //                 padding: EdgeInsets.only(left: 15,right: 10),
      //                 child: DropdownButtonHideUnderline(
      //                   child: DropdownButton(
      //                     style: TextStyle(fontSize: 15,color: Colors.white),
      //                     dropdownColor: Color(0xff00C444),
      //                     icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
      //                     iconSize: 30,
      //                     isExpanded: true,
      //                     hint: Text('Hello'),
      //                     value: dropdownvalue,
      //                     items:dropdownItems ,
      //                     onChanged: (String? value){
      //                       setState(() {
      //                         dropdownvalue=value!;
      //                       });
      //                     }
      //                     ),
      //                 ),
      //               ),
      //             ),
      //   ),
      // ),
       body: 
       Column(
        children: [
         Container(
          height: 140,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff00C444),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back,color: Colors.white,),
                    ),
                  Text('Orders',style: TextStyle(fontSize: 20,color: Colors.white,),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
                ],
              ),
              // SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.only(left: 15,right: 15,),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15,right: 10),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'MontB'),
                        dropdownColor: Color(0xff00C444),
                        icon: Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                        iconSize: 30,
                        isExpanded: true,
                        hint: Text('Hello'),
                        value: dropdownvalue,
                        items:dropdownItems ,
                        onChanged: (String? value){
                          setState(() {
                            dropdownvalue=value!;
                          });
                        }
                        ),
                    ),
                  ),
                ),
              ),
            ],
          ), 
         ),

         ////tabbar
        
        // Container(
        //   height: 50,
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     color: Colors.white,
        //   ),
        //   child:TabBar(
        //     controller: _tabController,
        //     labelColor: Color(0xff00C444),
        //     indicatorColor:Color(0xff00C444),
        //     unselectedLabelColor: Color(0xffB1B1B1),
        //     indicatorWeight: 3,
        //     // isScrollable: true,
        //     tabs: [
        //        Stack(
        //          children: [
        //            Padding(
        //               padding: EdgeInsets.only(left: 66,top: 7),
        //               child: Container(
        //                 height: 20,
        //                 width: 20,
        //                 decoration: BoxDecoration(
        //                   color: Colors.red,
        //                   borderRadius: BorderRadius.circular(100),
        //                   boxShadow: [
        //                     BoxShadow(
        //                       blurRadius: 25,
        //                       color: Colors.grey,
        //                     ),
        //                   ]
        //                 ),
        //                 child: Center(child: Text('1',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)),
        //               ),
        //             ),
        //            Tab(
        //             child: Text('Delivery',style: TextStyle(fontSize: 18,),),
        //            ),
        //          ],
        //        ),
        //        Stack(
        //          children: [
        //            Padding(
        //               padding: EdgeInsets.only(left: 66,top: 7),
        //               child: Container(
        //                 height: 20,
        //                 width: 20,
        //                 decoration: BoxDecoration(
        //                   color: Colors.red,
        //                   borderRadius: BorderRadius.circular(100),
        //                    boxShadow: [
        //                     BoxShadow(
        //                       blurRadius: 25,
        //                       color: Colors.grey,
        //                     ),
        //                   ]
        //                 ),
        //                 child: Center(child: Text('1',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)),
        //               ),
        //             ),
        //            Tab(
        //             child: Text('Pickup',style: TextStyle(fontSize: 18,),
        //               ),
        //            ),
        //          ],
        //        ),
        //     ],
        //     ),
        // ),
        // Expanded(
        //   child: TabBarView(
        //     controller: _tabController,
        //     children: [
        //       Delivery(),
        //       Pickup(),
        //     ],
        //     ),
        // ),
        // SizedBox(height: 5,),
        //     Container(
        //   height: size.height*0.25,
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     color: Color(0xffEAEAEA),
        //     borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
        //   ),
        //   child:GridView.builder(
        //     // scrollDirection: Axis.horizontal,
        //     primary: false,
        //     padding: EdgeInsets.only(top:15,bottom: 15,left: 20,right: 20),
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 3,
        //       crossAxisSpacing: 10.0,
        //       mainAxisSpacing: 15,
        //       childAspectRatio: 1,
        //       mainAxisExtent: 70,

        //     ),
        //     itemCount: 5,
        //     itemBuilder: (BuildContext context, int index) {
        //       return Stack(
        //         children: [
        //           Container(
        //           decoration: BoxDecoration(
        //             color: Color(0xff1BB83A),
        //             borderRadius: BorderRadius.circular(10),
        //           ),
        //           child: Padding(
        //             padding: EdgeInsets.only(left: 10),
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: [
        //                 Image.asset(ordermodeldata[index].images,),
        //                 Container(
        //                   height: 20,
        //                   width: 100,
        //                   child: Text(ordermodeldata[index].title,style: TextStyle(fontSize:12,color: Colors.white,fontFamily: 'MontS',fontWeight: FontWeight.bold),)),
        //               ],
        //             ),
        //           ),
        //         ),
        //         Padding(
        //           padding: EdgeInsets.only(left: 80),
        //           child: Container(
        //             height: 20,
        //             width: 20,
        //             decoration: BoxDecoration(
        //               color: Color(0xffEAA015),
        //               borderRadius: BorderRadius.circular(100),
        //             ),
        //             child: Center(child: Text('1',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold),)),
        //           ),
        //         ),
        //         ],
                
        //       );
        //     },
        //   ),            
        // ),
        Expanded(
          child:ListView.builder(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: Container(
                  height: 110,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:index%2==0 ? Colors.white: Color(0xffEAEAEA),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:EdgeInsets.only(left: 16,right: 20,),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20,bottom: 8,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 150,
                                child: Text('Id: 87654467777777777',style: TextStyle(fontSize: 15,color: Color(0xff00971E),overflow: TextOverflow.clip, fontFamily: 'MontB'),)),
                                SizedBox(height: 10,),
                              Container(
                                height: 20,
                                width: 150,
                                child: Text('Name: Amer Amer',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),)),
                                SizedBox(height: 10,),
                              Container(
                                 height: 20,
                                width: 150,
                                child: Text('Advance: 60 KD',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),)),
                            //   Container(
                            //       height: 20,
                            //     width: 150,
                            //     child: Text('Paid: 3948',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),)),
                            //   Container(
                            //     height: 20,
                            //     width: 150,
                            //      child: Text('Remaining: 1948',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),),
                            //   ),
                            // Container(
                            //     height: 20,
                            //     width: 150,
                            //      child: Text('Plate No: 1948',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),),
                            //   ),
                            ],
                          ),    
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: ((context) => OrderDetail())));
                                },
                                child: Container(
                                  height: 35,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color: Color(0xff0F9E2D),
                                    borderRadius: BorderRadius.circular(30)
                                  ),
                                  child: Center(child: Text('View',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'Montb'),)),
                              
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text('Avaliable',style: TextStyle(fontSize: 15,color: Color(0xff052B0D),fontFamily: 'MontS'),),
                              SizedBox(height: 5,),
                              Text('80 KD',style: TextStyle(fontSize: 15,color: Color(0xff052B0D),fontFamily: 'MontB'),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                
                ),
              );
            },
          ),
          ),                          
        ],
       )
    );
  }
}