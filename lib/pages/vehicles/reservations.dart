import 'package:flutter/material.dart';

class Reservations extends StatefulWidget {
  const Reservations({super.key});

  @override
  State<Reservations> createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
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
        title: Text('Reservation',style: TextStyle(fontSize: 20),),
      ),
      body: SingleChildScrollView(
        primary: false,
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Reservation Details',style: TextStyle(fontSize: 20,color: Color(0xff00B83A)),),
              SizedBox(height: 10,),
              Text('Name: Amer amer',style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
              SizedBox(height: 10,),
              Text('Phone: +92334455666',style: TextStyle(fontSize: 15),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
               SizedBox(height: 10,),
              Text('Email: amerali234@gmail.com',style: TextStyle(fontSize: 15,overflow: TextOverflow.fade),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
               SizedBox(height: 10,),
              Text('City: Lahore',style: TextStyle(fontSize: 15,overflow: TextOverflow.fade),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
                SizedBox(height: 10,),
              Text('Vehicle Type: Honda',style: TextStyle(fontSize: 15,overflow: TextOverflow.fade),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
                SizedBox(height: 10,),
              Text('Vehicle Model: Type first',style: TextStyle(fontSize: 15,overflow: TextOverflow.fade),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
              
                SizedBox(height: 10,),
              Text('Date Out: 20/7/2023',style: TextStyle(fontSize: 15,overflow: TextOverflow.fade),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),
      
               SizedBox(height: 10,),
              Text('Return Date: 24/7/2023',style: TextStyle(fontSize: 15,overflow: TextOverflow.fade),),
              SizedBox(height: 10,),
              Divider(
                color: Colors.black,
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.check_outlined,size: 18,),
                  SizedBox(width: 5,),
                  Text('No Hidden Charges',style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.check_outlined,size: 18,),
                  SizedBox(width: 5,),
                  Text('Low Price Guaranteed',style: TextStyle(fontSize: 15),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.check_outlined,size: 18,),
                  SizedBox(width: 5,),
                  Text('24/7 Support',style: TextStyle(fontSize: 15),),
                ],
              ),

              SizedBox(height: 20,),
               Padding(
                        padding: EdgeInsets.only(left: 10,right: 10,top: 30),
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
                        child: Text('Get Reservation',style: TextStyle(fontSize: 18,color: Colors.white,),
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
