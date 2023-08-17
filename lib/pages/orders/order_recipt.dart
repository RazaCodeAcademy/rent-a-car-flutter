import 'package:flutter/material.dart';

class OrderRecipt extends StatefulWidget {
  OrderRecipt({Key? key}) : super(key: key);

  @override
  State<OrderRecipt> createState() => _OrderReciptState();
}

class _OrderReciptState extends State<OrderRecipt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff00C444),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            'Orders #119',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    margin: EdgeInsets.only(top: 90),
                    height: 425 ,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffD6D6D6),
                          spreadRadius: 1,
                          blurRadius: 2,
                        ),
                      ]
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15,top: 15,right: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Orders details',style: TextStyle(fontSize: 18,),),
                          SizedBox(height: 10,),
                          Text('Name: Amer Amer',style: TextStyle(fontSize: 13,color: Color(0xffA5A5A5)),),
                          Text('Address: Jabria, House 1, Street 1, Block 1, Building 1 Floor 9, Appt 2',overflow: TextOverflow.fade, style: TextStyle(fontSize: 13,color: Color(0xffA5A5A5)),),
                          Text('Phone: 11122233',style: TextStyle(fontSize: 13,color: Color(0xffA5A5A5)),),
                           Text('Payment Type: Cash ',style: TextStyle(fontSize: 13,color: Color(0xffA5A5A5)),),
                           SizedBox(height: 5,),
                           Text('-------------------------------',style: TextStyle(fontSize: 35, color: Color(0xffD8D8D8)),),
                           Column(
                             children: [
                               Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Description',style: TextStyle(fontSize: 13,color: Color(0xff1BB83A)),),
                                  Text('Addons',style: TextStyle(fontSize: 13,color: Color(0xff1BB83A)),),
                                  Text('Spc. Rq.',style: TextStyle(fontSize: 13,color: Color(0xff1BB83A)),),
                                  Text('Qty.',style: TextStyle(fontSize: 13,color: Color(0xff1BB83A)),),
                                ],
                               ),
                               SizedBox(height: 3,),
                               Container(
                            height: 180,
                             child: ListView.builder(
                              padding: EdgeInsets.zero,
                               itemCount: 10,
                               itemBuilder: (BuildContext context, int index) {
                                 return Container(
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                   borderRadius: BorderRadius.circular(10), 
                                  ),
                                  // color:index%==0? Colors.white:Colors.red,
                                  child: Row(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Text('Burger Cheese',style: TextStyle(fontSize: 12),)),
                                      Container(
                                        width: 60,
                                        child: Text('Cold',style: TextStyle(fontSize: 12),)),
                                      Padding(
                                        padding: EdgeInsets.only(right: 1),
                                        child: Container(
                                          width: 60,
                                          child: Text('sprite',style: TextStyle(fontSize: 12),)),
                                      ),
                                      Container(
                                        width: 22,
                                        child: Text('2',style: TextStyle(fontSize: 12),)),
                                    ],
                                  ),
                                 );
                               },
                             ),
                           ),
                           SizedBox(height: 10,),
                          SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color(0xffEAEAEA),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: (){}, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('Total',style: TextStyle(fontSize: 15,color: Color(0xff616F8D),),),
                              SizedBox(width: 10,),
                              Text('100 KD',style: TextStyle(fontSize: 15,color: Color(0xff1BB83A),),),
                            ],
                          ),
                          ),
                          ),
                             ],
                           ),
                           
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:EdgeInsets.only(left: 18,right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Company details',style: TextStyle(fontSize: 18,color: Color(0xff4D4D4D)),),
                  SizedBox(height: 10,),
                  Text('Store Name: John Wick',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                  Text('Branch Name: Jabria Branch',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                  Text('Branch Phone: 11122233',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                  Text('Driver Name: Ahmad Ahmad',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                  Text('Driver Contact: 11221122',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                  Text('Delivery Notes: Leave on door',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                  Text('Payment Type: Cash',style: TextStyle(fontSize: 13,color: Color(0xff898989)),),
                ],
              ),
            ),
            Padding(
                          padding: EdgeInsets.only(left: 50,right: 50,top: 20),
                          child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color(0xff00B83A),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: (){}, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/location.png',),
                              SizedBox(width: 10,),
                              Text('Map location',style: TextStyle(fontSize: 15,color: Colors.white,),
                              ),
                            ],
                          ),
                          ),
                          ),
                        ),
          ],
        ),
      ),
    );
  }
}
