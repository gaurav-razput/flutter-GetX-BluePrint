import 'package:flutter/material.dart';
import 'package:flutter_blueprint/app/data/model/product_model.dart';
import 'package:flutter_blueprint/app/global_widgets/product_card.dart';
import 'package:flutter_blueprint/app/modules/product/view/local_widget/bottm_nav_bar.dart';
import 'package:get/get.dart';

import 'package:flutter_blueprint/app/theme/theme.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          IconButton(icon: Icon(Icons.bookmark), onPressed: () {}),
          IconButton(
              icon: Image(image: AssetImage("assets/images/Crate.png")),
              onPressed: () {})
        ],
      ),
      bottomNavigationBar: BottomNabBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Text("Golden retriver",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ))),
          Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimens.ten),
                child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: Dimens.ten,
                      crossAxisSpacing: Dimens.ten,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ProductCard(
                      product: products[index],
                      press: () {
                        // Get.to(() => ProductDescriptionPage(
                        //   product: products[index],
                        // ));
                      },
                    )),
              )),
        ],
      ),
    );
  }
}
