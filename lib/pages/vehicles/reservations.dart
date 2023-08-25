import 'package:flutter/material.dart';
import 'package:rent_a_car/pages/vehicles/reservations_detail.dart';

class ReservationsScreen extends StatefulWidget {
  const ReservationsScreen({super.key});

  @override
  State<ReservationsScreen> createState() => _ReservationsScreenState();
}

class _ReservationsScreenState extends State<ReservationsScreen> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        toolbarHeight: size.height*0.15,
        backgroundColor: Color(0xff00B83A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Text('Reservations',style: TextStyle(fontSize: 20),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                        padding: EdgeInsets.only(top: 10,bottom: 8,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 150,
                              child: Text('Id: 87654467777777777',style: TextStyle(fontSize: 15,color: Color(0xff00971E),overflow: TextOverflow.clip, fontFamily: 'MontB'),)),
                            Container(
                              height: 20,
                              width: 150,
                              child: Text('Customer: Amer Amer',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),)),
                            Container(
                               height: 20,
                              width: 150,
                              child: Text('Amount: 60 KD',style: TextStyle(fontSize: 12,color: Color(0xff052B0D),overflow: TextOverflow.clip, fontFamily: 'MontS'),)),
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
                        padding: EdgeInsets.only(top: 23),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: ((context) => ReservationsDetail())));
                              },
                              child: Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Color(0xff0F9E2D),
                                  borderRadius: BorderRadius.circular(30)
                                ),
                                child: Center(child: Text('Check',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'Montb'),)),
                            
                              ),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),
                  ),
                
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}