// import 'dart:ffi';
import 'package:e_comerce_small_app/widgets/costomButtomwidget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Map<String, dynamic>> Product = [
    {
      "imagesPath": "Blue-denimArtboard-1_600x600.jpg",
      "name": "jacket jeans",
      "price": 49.7,
      "IsAdded": true,
      "color": Color(0xff7094c1),
      "size": "L",
    },
    {
      "imagesPath": "image2.jpg",
      "name": "Acrylic Sweater",
      "price": 49.7,
      "IsAdded": false,
      "color": Color(0xffE1A021),
      "size": "M",
    },
    {
      "imagesPath": "team_member_7.jpg",
      "name": "Skirt Suit Lady ",
      "price": 49.7,
      "IsAdded": false,
      "color": Color(0xff7094c1),
      "size": "L",
    },
    // {
    //   "imagesPath": "team_member_7.jpg",
    //   "name": "Ginger by Lifestyle",
    //   "price": 49.7,
    //   "IsAdded": false,
    //   "color": Color(0xff7094c1),
    //   "size": "M",
    // },
    // {
    //   "imagesPath": "team_member_7.jpg",
    //   "name": "Ginger by Lifestyle",
    //   "price": 49.7,
    //   "IsAdded": false,
    //   "color": Color(0xff7094c1),
    //   "size": "M",
    // },
    // {
    //   "imagesPath": "team_member_7.jpg",
    //   "name": "Ginger by Lifestyle",
    //   "price": 49.7,
    //   "IsAdded": false,
    //   "color": Color(0xff7094c1),
    //   "size": "M",
    // },
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
            ]),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leadingWidth: 70,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.arrow_back_ios)),
            ],
          ),
          backgroundColor: Colors.transparent,
          title: Text("My cart"),
          actions: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/sunghoon2.jpg"),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                              // color: Colors.amber,
                              ),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                    width: 150,
                                    height: 250,
                                    fit: BoxFit.cover,
                                    "assets/images/${Product[index]["imagesPath"]}"),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              Product[index]['name'],
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff444444),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Icon(
                                              Icons.delete,
                                              color: Color(0xffF68CB5),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "\$${Product[index]['price']}",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff797979),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            color: Product[index]['color'],
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Container(
                                          width: 40,
                                          height: 40,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            Product[index]['size'],
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff444444),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, Index) => SizedBox(
                            height: 10,
                          ),
                      itemCount: Product.length),
                  SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    title: Text(
                      "Total",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Text(
                      "\$119.7",
                      style: TextStyle(
                        color: Color(0xffF808888),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Shipping",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Text(
                      "\$0.0",
                      style: TextStyle(
                        color: Color(0xffF808888),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Divider(
                    color: Color(0xffC0C0C0),
                  ),
                  ListTile(
                    title: Text(
                      "Grand Total",
                      style: TextStyle(
                        color: Color(0xff757575),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    trailing: Text(
                      "\$119.7",
                      style: TextStyle(
                        color: Color(0xff3c3c3c),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: CustomButtonWidget(textButton: "Checked out", onPressed: (){
          print("Cheked out product!");
        })
        ),
      ),
    );
  }
}

