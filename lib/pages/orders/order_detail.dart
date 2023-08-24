import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/orders/order_recipt.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {

  String processingdropdownvalue='Processing';
  List<DropdownMenuItem<String>> get processingdropdownItems{
  List<DropdownMenuItem<String>> processingmenuItems = [
    DropdownMenuItem(child: Text("Processing"),value: "Processing"),
    DropdownMenuItem(child: Text("Process"),value: "Process"),
    DropdownMenuItem(child: Text("On Going"),value: "On Going"),
    DropdownMenuItem(child: Text("Stay"),value: "Stay"),
    DropdownMenuItem(child: Text("Completed"),value: "Completed"),
  ];
  return processingmenuItems;
}

String namedropdownvalue='Ahmad';
  List<DropdownMenuItem<String>> get namedropdownItems{
  List<DropdownMenuItem<String>> namemenuItems = [
    DropdownMenuItem(child: Text("Ahmad"),value: "Ahmad"),
    DropdownMenuItem(child: Text("Ali"),value: "Ali"),
    DropdownMenuItem(child: Text("Salman"),value: "Salman"),
    DropdownMenuItem(child: Text("Irfan"),value: "Irfan"),
    DropdownMenuItem(child: Text("Zohaib"),value: "Zohaib"),
  ];
  return namemenuItems;
}
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //    elevation: 0,
      //   centerTitle: true,
      //   toolbarHeight: size.height*0.15,
      //   backgroundColor: Color(0xff00B83A),
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.vertical(
      //       bottom: Radius.circular(30),
      //     ),
      //   ),
      //   title: Text('Orders #119',style: TextStyle(fontSize: 20,color: Colors.white),),
      // ),
      body: Stack(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                color: Color(0xff00C444),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,color: Colors.white,),
                  ),
                  Text('Orders #119',style: TextStyle(fontSize: 20,color: Colors.white),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
                  // Icon(Icons.more_vert,color: Colors.white,),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(left: 15,right: 20,top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  //  Text('Orders details',style: TextStyle(fontSize: 18,),),
                  //  SizedBox(height: 10,),
                  //  Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Order Status',style: TextStyle(fontSize: 12,color: Color(0xff1BB83A)),),
                  //         SizedBox(height: 5,),
                  //         Container(
                  //       height: 40,
                  //       width: 150,
                  //       decoration: BoxDecoration(
                  //         color: Color(0xffEAEAEA),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: Padding(
                  //         padding: EdgeInsets.only(left: 15,right: 10),
                  //         child: DropdownButtonHideUnderline(
                  //           child: DropdownButton(
                  //             style: TextStyle(fontSize: 15,color: Colors.black),
                  //             dropdownColor: Color(0xff00C444),
                  //             icon: Icon(Icons.keyboard_arrow_down,color:Color(0xff847E7E) ,),
                  //             iconSize: 30,
                  //             isExpanded: true,
                  //             hint: Text('Processing'),
                  //             value: processingdropdownvalue,
                  //             items:processingdropdownItems,
                  //             onChanged: (String? value){
                  //               setState(() {
                  //                 processingdropdownvalue=value!;
                  //               });
                  //             }
                  //             ),
                  //         ),
                  //       ),
                  //     ),
                  //       ],
                  //     ),  
                  //     Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         Text('Delivery Driver',style: TextStyle(fontSize: 12,color: Color(0xff1BB83A)),),
                  //         SizedBox(height: 5,),
                  //         Container(
                  //       height: 40,
                  //       width: 150,
                  //       decoration: BoxDecoration(
                  //         color: Color(0xffEAEAEA),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //       child: Padding(
                  //         padding: EdgeInsets.only(left: 15,right: 10),
                  //         child: DropdownButtonHideUnderline(
                  //           child: DropdownButton(
                  //             style: TextStyle(fontSize: 15,color: Colors.black),
                  //             dropdownColor: Color(0xff00C444),
                  //             icon: Icon(Icons.keyboard_arrow_down,color:Color(0xff847E7E) ,),
                  //             iconSize: 30,
                  //             isExpanded: true,
                  //             hint: Text('Ahmad'),
                  //             value: namedropdownvalue,
                  //             items:namedropdownItems,
                  //             onChanged: (String? value){
                  //               setState(() {
                  //                 namedropdownvalue=value!;
                  //               });
                  //             }
                  //             ),
                  //         ),
                  //       ),
                  //     ),
                  //       ],
                  //     ),  
                  //   ],
                  //  ),
                  //  SizedBox(height: 15,),
                   Text('Orders informations',style: TextStyle(fontSize: 18,fontFamily: 'MOntB'),),
                   SizedBox(height: 40,),
                   Text('Branch Name:  Jabria Branch',style: TextStyle(fontSize: 15,color: Color(0xffA5A5A5),fontFamily: 'Tt-nr'),),
                   SizedBox(height: 20,),
                   Divider(
                    thickness: 2,
                    color: Color(0xffC1C1C1),
                   ),
                  //  SizedBox(height: 10,),
                  //  TextFormField(
                  //   textAlign: TextAlign.center,
                  //  decoration: InputDecoration(
                  //   hintText: 'Branch Name:  Jabria Branch',
                  //   hintStyle: TextStyle(fontSize: 12,color: Color(0xffA5A5A5),),
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   errorBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //  ),
                  //  ),
                   SizedBox(height: 20,),
                   Text('Order Amount: 80 KD',style: TextStyle(fontSize: 15,color: Color(0xffA5A5A5),fontFamily: 'Tt-nr'),),
                   SizedBox(height: 20,),
                   Divider(
                    thickness: 2,
                    color: Color(0xffC1C1C1),
                   ),
                  //  SizedBox(height: 10,),
                  //  TextFormField(
                  //   textAlign: TextAlign.center,
                  //  decoration: InputDecoration(
                  //   hintText: 'Order Amount: 80 KD',
                  //   hintStyle: TextStyle(fontSize: 12,color: Color(0xffA5A5A5),),
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   errorBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //  ),
                  //  ),
                   SizedBox(height: 20,),
                   Text('Customer Name: Amer Amer',style: TextStyle(fontSize: 15,color: Color(0xffA5A5A5),fontFamily: 'Tt-nr'),),
                   SizedBox(height: 20,),
                   Divider(
                    thickness: 2,
                    color: Color(0xffC1C1C1),
                   ),
                  //  SizedBox(height: 10,),
                  //  TextFormField(
                  //   textAlign: TextAlign.center,
                  //  decoration: InputDecoration(
                  //   hintText: 'Customer Name: Amer Amer',
                  //   hintStyle: TextStyle(fontSize: 12,color: Color(0xffA5A5A5),),
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   errorBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //  ),
                  //  ),
                   SizedBox(height: 20,),
                   Text('Customer Number: 11221122',style: TextStyle(fontSize: 15,color: Color(0xffA5A5A5),fontFamily: 'Tt-nr'),),
                   SizedBox(height: 20,),
                   Divider(
                    thickness: 2,
                    color: Color(0xffC1C1C1),
                   ),
                  //  SizedBox(height: 10,),
                  //  TextFormField(
                  //   textAlign: TextAlign.center,
                  //  decoration: InputDecoration(
                  //   hintText: 'Customer Number: 11221122',
                  //   hintStyle: TextStyle(fontSize: 12,color: Color(0xffA5A5A5),),
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   errorBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //  ),
                  //  ),
                   SizedBox(height: 20,),
                   Text('Customer Location: Map Link',style: TextStyle(fontSize: 15,color: Color(0xffA5A5A5),fontFamily: 'Tt-nr'),),
                   SizedBox(height: 20,),
                   Divider(
                    thickness: 2,
                    color: Color(0xffC1C1C1),
                   ),
                  //  SizedBox(height: 10,),
                  //  TextFormField(
                  //   textAlign: TextAlign.center,
                  //  decoration: InputDecoration(
                  //   hintText: 'Customer Location: Map Link ',
                  //   hintStyle: TextStyle(fontSize: 12,color: Color(0xffA5A5A5),),
                  //   enabledBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   focusedBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //   errorBorder: UnderlineInputBorder(
                  //     borderSide: BorderSide(
                  //       color: Color(0xffC1C1C1),
                  //     ),
                  //   ),
                  //  ),
                  //  ),
                   SizedBox(height: 20,),
                   Text('Order Date / Time: 17-9-2020 / 7:20 PM',style: TextStyle(fontSize: 15,color: Color(0xffA5A5A5),fontFamily: 'Tt-nr'),),
                   SizedBox(height: 20,),
                  //  SizedBox(height: 10,),
                  //  TextFormField(
                  //   textAlign: TextAlign.center,
                  //  decoration: InputDecoration(
                  //   hintText: 'Order Date / Time: 17-9-2020 / 7:20 PM',
                  //   hintStyle: TextStyle(fontSize: 12,color: Color(0xffA5A5A5),),
                  //   border: InputBorder.none,
                  //  ),
                  //  ),
                  //  Padding(
                  //    padding: EdgeInsets.only(left: 30,right: 30,top: 30),
                  //    child: SizedBox(
                  //     height: 50,
                  //     width: double.infinity,
                  //     child: ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //         elevation: 0,
                  //         primary: Color(0xff00B83A),
                  //         shape: RoundedRectangleBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //         ),
                  //       ),
                  //       onPressed: (){
                  //         Navigator.push(context, MaterialPageRoute(builder: ((context) => OrderRecipt())));
                  //       }, 
                  //       child: Text('View Reciept',style: TextStyle(fontSize: 18,color: Colors.white,),
                  //       ),
                  //       ),
                  //       ),
                  //  ),
                    //   Padding(
                    //     padding: EdgeInsets.only(left: 30,right: 30,top: 80),
                    //     child: SizedBox(
                    // height: 50,
                    // width: double.infinity,
                    // child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       elevation: 0,
                    //       primary: Color(0xff00B83A),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(30),
                    //       ),
                    //     ),
                    //     onPressed: (){}, 
                    //     child: Text('View PDF',style: TextStyle(fontSize: 18,color: Colors.white,),
                    //     ),
                    //     ),
                    //     ),
                    //   ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}