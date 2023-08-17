import 'package:flutter/material.dart';

class Invocies extends StatefulWidget {
  const Invocies({super.key});

  @override
  State<Invocies> createState() => _InvociesState();
}

class _InvociesState extends State<Invocies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding:EdgeInsets.only(left: 10),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Image.asset('assets/images/car_invoice.png',scale: 8,),
                       Text('Invoice Number: 239',style: TextStyle(fontSize: 15,),),
                       Text('Date: 02/02/2022',style: TextStyle(fontSize: 15),),
                     ],
                   ),
                 ),
                 Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color:  Color(0xff00B83A),
                  ),
                  child: Center(child: Text('Invoice',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
                 ),
               ],
             ),
             SizedBox(height: 10,),
              Divider(
                color: Colors.grey.shade900,
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 165,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Bill from',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                           SizedBox(height: 3,),
                           Text('Sj solutions company',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                           SizedBox(height: 3,),
                           Text('anarkali bazzar near laal masjid lahore',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                           SizedBox(height: 3,),
                           Text('+923046282631',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                        ],
                      ),
                    ),
                    Container(
                      width: 165,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text('Bill to',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                           SizedBox(height: 3,),
                           Text('Ali raza company',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                           SizedBox(height: 3,),
                           Text('anarkali bazzar near laal masjid lahore',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                           SizedBox(height: 3,),
                           Text('+923046282631',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.grey.shade900,
              ),
              Padding(
                padding:EdgeInsets.only(left: 10,right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Item',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('Quantity',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('Rate',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('Tax',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    Text('Amount',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey.shade900,
              ),
              
                Padding(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                              SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 65,
                                child: Text('Hourly Car Rental',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),)),
                              Container(
                                height: 30,
                                width: 30,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('0888',style: TextStyle(fontSize: 12,),),
                                    Text('hour',style: TextStyle(fontSize: 12,),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('\$11111.0',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                                    Text('per hour',style: TextStyle(fontSize: 12,),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 40,
                                child: Text('0000.0',style: TextStyle(fontSize: 12,),)),
                              Container(
                                height: 30,
                                width: 45,
                                child: Text('\$8822.0',style: TextStyle(fontSize: 12,),textAlign: TextAlign.right,)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            color: Colors.grey.shade900,
                          ),
                          SizedBox(height: 10,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 65,
                                child: Text('Hourly Car Rental',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),)),
                              Container(
                                height: 30,
                                width: 30,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('0888',style: TextStyle(fontSize: 12,),),
                                    Text('hour',style: TextStyle(fontSize: 12,),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('\$11111.0',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                                    Text('per hour',style: TextStyle(fontSize: 12,),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 40,
                                child: Text('0000.0',style: TextStyle(fontSize: 12,),)),
                              Container(
                                height: 30,
                                width: 45,
                                child: Text('\$8822.0',style: TextStyle(fontSize: 12,),textAlign: TextAlign.right,)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            color: Colors.grey.shade900,
                          ),
                          SizedBox(height: 10,),
                           Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 65,
                                child: Text('Hourly Car Rental',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),)),
                              Container(
                                height: 30,
                                width: 30,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('0888',style: TextStyle(fontSize: 12,),),
                                    Text('hour',style: TextStyle(fontSize: 12,),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('\$11111.0',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                                    Text('per hour',style: TextStyle(fontSize: 12,),),
                                  ],
                                ),
                              ),
                              Container(
                                height: 30,
                                width: 40,
                                child: Text('0000.0',style: TextStyle(fontSize: 12,),)),
                              Container(
                                height: 30,
                                width: 45,
                                child: Text('\$8822.0',style: TextStyle(fontSize: 12,),textAlign: TextAlign.right,)),
                            ],
                          ),
                          SizedBox(height: 10,),
                          Divider(
                            color: Colors.grey.shade900,
                          ),
                        ],
                      ),
                    ),
              Padding(
                padding:EdgeInsets.only(left: 10),
                child: Text('Terms & Conditions',style: TextStyle(fontSize: 18),),
              ),
             
              Padding(
                padding: EdgeInsets.only(right: 10,top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Subtotal:',style: TextStyle(fontSize: 12),),
                        Text('Discount:',style: TextStyle(fontSize: 12),),
                        Text('Tax:',style: TextStyle(fontSize: 12),),
                        Text('Paid:',style: TextStyle(fontSize: 12),),
                      ],
                    ),
                     SizedBox(width: 40,),
                     Container(
                      width: 80,
                       child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('\$1826.00',style: TextStyle(fontSize: 12,overflow: TextOverflow.fade),),
                          Text('\$0.00:',style: TextStyle(fontSize: 12),),
                          Text('\$0.00',style: TextStyle(fontSize: 12),),
                          Text('\$0.00',style: TextStyle(fontSize: 12),),
                        ],
                    ),
                     ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.grey.shade900,
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    height: 50,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Color(0xff00B83A),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text('Total',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                        Text('\$1828.00',style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ),
               Padding(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 10),
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
                        child: Text('View Orders',style: TextStyle(fontSize: 18,color: Colors.white,),
                        ),
                        ),
                        ),
                      ),
            ],
          ),
        ),
      ),
    );
  }
}