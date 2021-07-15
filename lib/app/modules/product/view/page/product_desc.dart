import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_blueprint/app/data/model/product_model.dart';
import 'package:flutter_blueprint/app/modules/product/controller/product_controller.dart';
import 'package:flutter_blueprint/app/modules/product/view/local_widget/bottm_nav_bar.dart';
import 'package:flutter_blueprint/app/modules/product/view/local_widget/unordered_list.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:flutter_blueprint/app/theme/theme.dart';

class ProductDescriptionPage extends StatelessWidget {
  final Product product;

  @override
  const ProductDescriptionPage({Key key, this.product}) : super(key: key);

  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              highlightColor: Colors.black,
              color: Colors.black,
            ),
            title: Image(
              image: AssetImage(
                "assets/images/petzu logo2.png",
              ),
              fit: BoxFit.cover,
            ),
            actions: [
              IconButton(icon: Icon(Icons.share), onPressed: () {}),
              IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
              Stack(
                children: [
                  IconButton(
                      icon: Image(image: AssetImage("assets/images/Crate.png")),
                      onPressed: () {}),
                  Positioned(
                    top: 2,
                    right: 4,
                    child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.red,
                        child: Text(
                          "1",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )),
                  )
                ],
              )
            ],
          ),
          bottomNavigationBar: BottomNabBar(),
          body: Padding(
            padding: const EdgeInsets.only(top: 16, left: 15, right: 15),
            child: ListView(shrinkWrap: true, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                productSlider(),
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "NunitoSans-ExtraBold",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Rs.${product.newprice},000",
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Rs.${product.oldprice},000",
                      style: TextStyle(
                          color: Colors.black45,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Pet Id - ${product.id}",
                  style: TextStyle(
                      fontFamily: "NunitoSans-Bold",
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 14,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      squareBox("Gender", product.gender),
                      Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          child: squareBox(
                              "Age", product.age.toString() + " month")),
                      squareBox("Colour", product.color),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                description(),
                SizedBox(
                  height: 10,
                ),
                breedInfo(),
                SizedBox(
                  height: 10,
                ),
                reviewsSection(),
              ]),
              SizedBox(
                height: 18,
              ),
              deliverySection()
            ]),
          )),
    );
  }

  Widget squareBox(String property, String ans) {
    return Container(
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(9.0),
        child: Row(
          children: [Text("$property - "), Text(ans)],
        ),
      ),
    );
  }

  Widget description() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(
            fontFamily: "NunitoSans-ExtraBold",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        UnorderedList(["Line 1", "Line 2", "Line 3", "Infinite Lines"]),
      ],
    );
  }

  Widget breedInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Breed Info",
              style: TextStyle(
                fontFamily: "NunitoSans-ExtraBold",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              "Know More",
              style: TextStyle(
                color: ColorsValue.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
            "A short description of breed info will be written here with just two sentences and click more"),
      ],
    );
  }

  Widget reviewsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Reviews",
              style: TextStyle(
                fontFamily: "NunitoSans-ExtraBold",
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              "View all",
              style: TextStyle(
                color: ColorsValue.primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        userReviews(reviews[0]),
        SizedBox(
          height: 12,
        ),
        userReviews(reviews[1])
      ],
    );
  }

  Widget userReviews(Reviews review) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                )),
            SizedBox(
              width: 14,
            ),
            Text(
              review.username,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            SizedBox(
              width: 195,
            ),
            RatingBar.builder(
              initialRating: 4,
              direction: Axis.horizontal,
              itemSize: 20.0,
              itemCount: 5,
              // itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: ColorsValue.primaryColor,
              ),
              onRatingUpdate: (rating) {},
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(left: 50), child: Text(review.comment))
      ],
    );
  }

  Widget deliverySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Check For Delivery",
          style: TextStyle(
            fontFamily: "NunitoSans-ExtraBold",
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
            margin: EdgeInsets.only(left: 8, right: 8),
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                labelText: "560020",
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontFamily: "NunitoSans-ExtraBold",
                ),
                suffixIcon: TextButton(
                    child: Text(
                      "CHANGE",
                      style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    style: TextButton.styleFrom(primary: Colors.pinkAccent),
                    onPressed: () {}),
              ),
            )),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text("Get it by Sunday,12th June 2021")],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //1st button

            Container(
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.bookmark),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "WISHLISTED",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black54,
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: Colors.black),
                    ),
                    elevation: 0),
              ),
            ),

            //2nd button

            Container(
              height: 45,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Image(
                  image: AssetImage("assets/images/Crate.png"),
                  color: Colors.white,
                ),
                label: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("ADD TO CRATE"),
                ),
                style: ElevatedButton.styleFrom(
                  primary: ColorsValue.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget productSlider() {
    List<Widget> cardList = [
      item(product.img),
      item(product.img),
      item(product.img),
      item(product.img),
      item(product.img),
    ];
    return GetBuilder<ProductController>(
        builder: (controller) => Column(children: [
          Container(
            height: 400,
            width: double.infinity,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                autoPlay: false,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 4.0,
                onPageChanged: (index, reason) {
                  controller.setCurrentIndex(index);
                },
              ),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.10,
                    width: MediaQuery.of(context).size.width,
                    child: card,
                  );
                });
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cardList.map((urlOfItem) {
              int index = cardList.indexOf(urlOfItem);
              return Container(
                width: 20.0,
                height: 4.0,
                margin:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  color: controller.currentIndex == index
                      ? Color.fromRGBO(0, 0, 0, 0.8)
                      : Color.fromRGBO(0, 0, 0, 0.3),
                ),
              );
            }).toList(),
          )
        ]));
  }

  Widget item(String imgLink) {
    return Container(
      margin: EdgeInsets.only(left: 3, right: 3),
      width: double.infinity,
      color: ColorsValue.primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          imgLink,
          height: 300,
          width: 300,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
