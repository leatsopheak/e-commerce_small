import 'package:e_comerce_small_app/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = [
    "Trending Now",
    "All",
    "New",
  ];

  List<Map<String, dynamic>> Product = [
    {
      "imagesPath": "Blue-denimArtboard-1_600x600.jpg",
      "name": "Jacket Jeans",
      "price": 49.7,
      "IsAdded": true,
    },
    {
      "imagesPath": "image2.jpg",
      "name": "Acrylic Sweater",
      "price": 49.7,
      "IsAdded": false,
    },
    {
      "imagesPath": "team_member_7.jpg",
      "name": "Skirt Suit Lady",
      "price": 49.7,
      "IsAdded": false,
    },
    {
      "imagesPath": "team_member_7.jpg",
      "name": "Ginger by Lifestyle",
      "price": 49.7,
      "IsAdded": false,
    },
    {
      "imagesPath": "Blue-denimArtboard-1_600x600.jpg",
      "name": "Jacket Jeans",
      "price": 49.7,
      "IsAdded": true,
    },
     {
      "imagesPath": "image2.jpg",
      "name": "Acrylic Sweater",
      "price": 49.7,
      "IsAdded": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xffFDF0F3),
            Color(0xffFFFBFC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Container(
            margin: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/images/apps.png'),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sunghoon.png"),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text(
                  "Match Your Style",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Color(0xffB6B6B6)),
                      prefixIcon: Icon(Icons.search, color: Color(0xffC0C0C0)),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 10),
                    itemCount: category.length,
                    itemBuilder: (context, index) {
                      return Chip(
                        padding: EdgeInsets.all(15),
                        side: BorderSide.none,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        backgroundColor: index == 0
                            ? Color(0xffE96E6E)
                            : Color(0xffDFDCDC),
                        label: Text(
                          category[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w300,
                            color: index == 0
                                ? Colors.white
                                : Color(0xff938f8f),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 12),
                MasonryGridView.builder(
                  itemCount: Product.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  gridDelegate:
                      SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final item = Product[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(Product: item),
                          ),
                        );
                      },
                      onDoubleTap: () => print("Double Tap!"),
                      onLongPress: () => print("Long Press!"),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Hero(
                                  tag: item['name'],
                                  child: Image.asset(
                                    "assets/images/${item['imagesPath']}",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Icon(
                                    item['IsAdded']
                                        ? Icons.favorite_rounded
                                        : Icons.favorite_outline,
                                    color: Color(0xffE55B5B),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["name"],
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff444444),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "\$${item["price"]}",
                                  style: TextStyle(
                                    color: Color(0xff9c9c9c),
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
