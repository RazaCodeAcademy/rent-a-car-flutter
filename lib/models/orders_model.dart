import 'package:flutter/material.dart';

class ordermodel {
  String images;
  String title;
  ordermodel({required this.images, required this.title});
}

List<ordermodel> ordermodeldata = [
  ordermodel(images: 'assets/images/pending.png',title: 'Pending'),
  ordermodel(images: 'assets/images/processing.png', title: 'Processing'),
  ordermodel(images: 'assets/images/dispatch.png', title: 'Dispatched'),
  ordermodel(images: 'assets/images/completed.png', title: 'Completed'),
  ordermodel(images: 'assets/images/canceled.png', title: 'Canceled'),
];
