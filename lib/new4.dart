import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class New4 extends StatefulWidget {
  const New4({Key? key}) : super(key: key);

  @override
  State<New4> createState() => _New4State();
}

final urlImages = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRodpilFcNyTmO9Lf4rlhygBc6LG3Y8YcYhIQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbsiMsYNvCU0qXZcNjCG63HbEAHqR3PyxJUw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-BRgcLWsYliNNZy46Hw_pmOuBA26U3vftSQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDjDTLtWAYNbr-1ZdT9h7Q5CJzhCLmVpj-pg&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKZWw-BOgNovCjhOTDfoPwVhpG9KxOImrRyw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWg8Csy7EKOnDIdxJt4jlx0QT0tvZz8mTZjA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3n31fZUXVhe9H_s2xe3LA3c1v4wtMhzIroA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRroE2WRYHJsgonpSwpKNkuOEQpANfiNLzhGQ&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkVms4Z_fpP75AKgm-PXUBHR8sFs9hQYjUbA&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE584fufhsfqxQYwd1xRWtv7zv9EPXBYMmcg&usqp=CAU",
];

class _New4State extends State<New4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.blue.withOpacity(0.5),
        title: Text(
          "Photos",
          style: TextStyle(
              color: Colors.yellow, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: CarouselSlider.builder(
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];
            return buildImage(urlImage, index);
          },
          options: CarouselOptions(
            height: 400,
            autoPlay: true,
            reverse: true,
            autoPlayInterval: Duration(seconds: 4),
            // viewportFraction: 1,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      child: Image.network(
        urlImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
