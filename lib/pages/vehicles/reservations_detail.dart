import 'package:flutter/material.dart';

class ReservationsDetail extends StatefulWidget {
  const ReservationsDetail({super.key});

  @override
  State<ReservationsDetail> createState() => _ReservationsState();
}

class _ReservationsState extends State<ReservationsDetail> {
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
        title: Text('Reservations Detail',style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        primary: false,
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reservation Details',style: TextStyle(fontSize: 18,color: Color(0xff00B83A),fontFamily: 'MontB'),),
              SizedBox(height: 10,),
               RichText(
                  text: TextSpan(
                    text: 'Id:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 87654467777777777',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
              SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Customer:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Amer Amer',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
               SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Amount:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 100 KD',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
               SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Advance:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 60 KD',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
                SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Vehicle:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' BMW',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
                SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Vehicle Category:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' SUV',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
              
                SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Pickup Date:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 25/07/2030',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
               SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Pickup Location:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Lahore',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),

               SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Return Date:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 30/07/2030',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),

              SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Return Location:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Lahore',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),

              SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Reservation Date:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' 15/07/2030',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),

              SizedBox(height: 10,),
              RichText(
                  text: TextSpan(
                    text: 'Reservation Location:',
                    style: TextStyle(fontSize: 17, color: Color(0xff00B83A),fontFamily: 'Arial',fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: ' Lahore',style: TextStyle(fontSize: 15, color: Colors.black,fontFamily: 'MOntS')),
                    ],
                  ),
                  ),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),

              // SizedBox(height: 20,),
              //  Padding(
              //           padding: EdgeInsets.only(left: 10,right: 10,top: 30),
              //           child: SizedBox(
              //       height: 50,
              //       width: double.infinity,
              //       child: ElevatedButton(
              //           style: ElevatedButton.styleFrom(
              //             elevation: 0,
              //             primary: Color(0xff00B83A),
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(30),
              //             ),
              //           ),
              //           onPressed: (){}, 
              //           child: Text('Get Reservation',style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'MontB'),
              //           ),
              //           ),
              //           ),
              //         ),
            ],
          ),
        ),
      ),
    );
  }
}
