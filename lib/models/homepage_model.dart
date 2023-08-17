import 'package:flutter/material.dart';


class homepagemodel{
  Color colors;
  String  images;
  String title;
  String counter;
  homepagemodel({required this.colors ,required this.images,required this.title,required this.counter});
}
List<homepagemodel> homepagemodeldata=[
   homepagemodel(colors: Color(0xffEBA41E),images:'assets/images/reservation.svg' , title: 'Customers', counter: '1,060'),
   homepagemodel(colors: Color(0xff20BACE),images:'assets/images/reservation.svg' , title: 'Reservations', counter: '75'),
   homepagemodel(colors: Color(0xff3BDB16),images:'assets/images/reservation.svg' , title: 'Vehicles', counter: '660'),
   homepagemodel(colors: Color(0xffFF5757),images:'assets/images/reservation.svg' , title: 'Orders', counter: '52'),
   homepagemodel(colors: Colors.blueGrey.shade300,images:'assets/images/reservation.svg' , title: 'Invoices', counter: '976'),
   homepagemodel(colors: Colors.purpleAccent.shade400,images:'assets/images/reservation.svg' , title: 'Employes', counter: '106'), 
];