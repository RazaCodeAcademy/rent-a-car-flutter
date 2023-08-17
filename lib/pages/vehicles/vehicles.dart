import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_a_car/models/vehical/vehical_model.dart';

class Vehicals extends StatefulWidget {
  const Vehicals({super.key});

  @override
  State<Vehicals> createState() => _VehicalsState();
}

class _VehicalsState extends State<Vehicals> {
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
        title: Text('Vehicals',style: TextStyle(fontSize: 20),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
        
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width*0.030,right:size.width*0.030,top: size.height*0.020),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose a Car',style: TextStyle(fontSize: 20,color: Color(0xff00B83A)),),
            SizedBox(height: size.height*0.030),
            Text('Brand',style: TextStyle(fontSize: 18),),
            SizedBox(height: size.height*0.020,),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                // color: Colors.amber,
              ),
              child: GridView.builder(
                scrollDirection: Axis.horizontal,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                  mainAxisExtent: 60,
                ),
                itemCount: 8, 
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xffEAEAEA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: 
                    SvgPicture.asset('assets/images/suzuki.svg',height: 30,width: 30,),
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Avaliable Cars',style: TextStyle(fontSize: 18),),
                 Icon(Icons.filter_alt_outlined,color: Colors.black,),
              ],
            ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xffEAEAEA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                       padding: EdgeInsets.only(left: 10,right: 15,top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.red,
                              height: 70,
                              width: 150,
                              child: Image.asset('assets/images/car.png')),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('BMW',style: TextStyle(fontSize: 18),),
                                  Text('2015',style: TextStyle(fontSize: 15),),
                                ],
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$180/day",),
                            Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                               color: Color(0xff00B83A),
                               borderRadius: BorderRadius.only(topLeft: Radius.circular(20,),bottomRight: Radius.circular(20)),
                              ),
                              child: Center(child: Text('Details',style: TextStyle(fontSize: 18,color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            ),
          ]
          ),
      ),
    );
  }
}