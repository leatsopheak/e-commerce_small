import 'package:e_comerce_small_app/widgets/costomButtomwidget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final Map<String, dynamic> Product;

  const DetailPage({super.key, required this.Product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> sizes = ["S", "M", "L", "XL"];
  List<Color> colors = [
    Color(0xff91A1B0),
    Color(0xffB11D1D),
    Color(0xff1F44A3),
    Color(0xff1D752B),
    Color(0xff000000),
    Color(0xff9F632A),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 500,
            actions: [
              Icon(Icons.favorite_outlined),
              SizedBox(
                width: 15,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: widget.Product['name'],
                child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/${widget.Product['imagesPath']}"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.Product['name'],
                        style:
                            TextStyle(fontSize: 20, color: Color(0xff444444)),
                      ),
                      Text("\$${widget.Product['price']}",
                          style: TextStyle(
                              fontSize: 20, color: Color(0xff4D4C4C))),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("sizes",
                      style: TextStyle(fontSize: 20, color: Color(0xff444444))),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                        itemCount: sizes.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                              alignment: Alignment.center,
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: Text(
                                sizes[index],
                                style: TextStyle(
                                    fontSize: 18,
                                    color: index == 1
                                        ? Color(0xffE55B5B)
                                        : Color(0xff444444)),
                              ),
                            )),
                  ),
                  Text("Sizes",
                      style: TextStyle(fontSize: 20, color: Color(0xff444444))),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                              width: 20,
                            ),
                        itemCount: colors.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: index == 0
                                      ? Border.all(
                                          color: colors[index], width: 2)
                                      : null),
                              child: Container(
                                alignment: Alignment.center,
                                width: 36,
                                height: 36,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colors[index],
                                ),
                              ),
                            )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Color(0xffE96E6E),
                  //       minimumSize: Size(double.infinity, 70),
                  //     ),
                  //     onPressed: () {},
                  //     child: Text(
                  //       "Add to cart",
                  //       style: TextStyle(
                  //         color: Color(0xffFFFFFF),
                  //         fontSize: 24,
                  //       ),
                  //     ))
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButtonWidget(textButton: "Add to cart", onPressed: (){
          print("Product added to cart!");
        })
      ),
    );
  }
}

