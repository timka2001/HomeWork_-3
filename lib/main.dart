// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:import_sorter/args.dart';
import 'package:import_sorter/files.dart';
import 'package:import_sorter/sort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Slider',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo MyApp'),
        ),
        body: Center(
          child: CarouselSlider(
            items: [
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SvgPicture.network(
                    "https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg"),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset("assets/imagePNG/markus.jpg",
                    fit: BoxFit.cover),
              ),
              Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white,
                child:
                    Image.asset("assets/imagePNG/meric.jpg", fit: BoxFit.cover),
              ),
            ],
            //Slider Container properties
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              aspectRatio: 2.0,
              initialPage: 2,
            ),
          ),
        ),
      ),
    );
  }
}
