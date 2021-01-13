import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Carousel",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            height: 500.0,
          ),
          items: _imgURI.map((imgpath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  // decoration: BoxDecoration(color: imgpath),
                  child: Center(child: Image.network(imgpath)),
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }

  // final List _source = [Colors.pinkAccent, Colors.redAccent, Colors.deepOrange];

  final List _imgURI = [
    "https://cdn.pixabay.com/photo/2015/12/26/08/35/texture-1108420_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/03/27/19/20/indian-1283789_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/02/19/09/59/taj-mahal-1209004_1280.jpg",
    "https://cdn.pixabay.com/photo/2017/08/11/12/52/rakhi-2630652_1280.jpg",
    "https://cdn.pixabay.com/photo/2013/08/15/04/59/indian-172654_1280.jpg",
    "https://cdn.pixabay.com/photo/2020/07/27/17/40/flag-5443011_1280.jpg",
  ];
}
