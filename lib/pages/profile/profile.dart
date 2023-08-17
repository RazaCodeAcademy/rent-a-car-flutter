import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        titleSpacing: 0,
        backgroundColor:Color(0xff00B83A),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Padding(
            padding:EdgeInsets.only(bottom: 50),
            child: Icon(Icons.arrow_back,color: Colors.white,),
          )),
        title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Profile',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Amer Amer',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        SizedBox(height: 5,),
                        Text('Welcome to your profile',style: TextStyle(fontSize: 12,color: Colors.white),)
                      ],
                    ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60,bottom: 40),
          child: Column(
            children: [
              Container(
                height: 270,
                width: 270,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffF5F5F5),
                      spreadRadius: 1,
                      blurRadius: 2,
                    ),
                  ]
                ),
                child: Image.asset('assets/images/Rent_car_logo.png'),
              ),
              SizedBox(height: 30,),
           Padding(
                        padding: EdgeInsets.only(left: 30,right: 30,top: 10),
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
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: 30,right: 30,top: 10),
                        child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          primary: Color(0xffD6D6D6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: (){}, 
                        child: Text('Log Out',style: TextStyle(fontSize: 18,color: Color(0xff6F6F6F),),
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
