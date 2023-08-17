import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_a_car/pages/users/customers.dart';
import 'package:rent_a_car/pages/users/employes.dart';
import 'package:rent_a_car/models/homepage_model.dart';
import 'package:rent_a_car/pages/orders/invoices.dart';
import 'package:rent_a_car/pages/orders/orders.dart';
import 'package:rent_a_car/pages/vehicles/reservations.dart';
import 'package:rent_a_car/pages/vehicles/vehicles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages=[
    CustomersPage(),
    Reservations(),
    Vehicals(),
    Orders(),
    Invocies(),
    Employes(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: size.height * 0.5,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff00B83A).withOpacity(0.1),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DASHBOARD',
                          style:
                              TextStyle(fontSize: 18, color: Color(0xff00B83A)),
                        ),
                        Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Color(0xff00B83A),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                          ),
                          child: Center(
                            child: Text(
                              'ع',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Expanded(
                    child: GridView.builder(
                      primary: false,
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1,
                        mainAxisExtent: 100,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: ((context) => pages[index])));
                          },
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  // width: size.width*0.5,
                                  decoration: BoxDecoration(
                                    color:homepagemodeldata[index].colors,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SvgPicture.asset(
                                        homepagemodeldata[index].images,
                                        height: 20,
                                        width: 30,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        homepagemodeldata[index].title,
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Text(
                                          homepagemodeldata[index].counter,
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Image.asset('assets/images/signal.png'),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Reports',
                style: TextStyle(fontSize: 20, color: Color(0xff00B83A)),
              ),
            ),
            SizedBox(
              height: size.height *0.018,
            ),
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Container(
                height: 100,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 12,
                    childAspectRatio: 1,
                    mainAxisExtent: 102,
                  ),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                    height: size.height * 0.15,
                    width: size.width * 0.27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F5F5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          'assets/images/reservation.svg',
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          'Vendor',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          'Statement',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  );
                  },
                ),
                ),
            
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              height: size.height * 0.223,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff00B83A),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25,top: 10),
                    child: Text(
                      'Branch Status',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Divider(
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 25, right: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Salmiya Branch',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 193, 243, 137)
                                .withOpacity(0.2),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text(
                            'Closed',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                ),
                          )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
