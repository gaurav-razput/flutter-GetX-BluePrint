import 'package:flutter/material.dart';
import 'package:flutter_blueprint/app/data/model/product_model.dart';
import 'package:flutter_blueprint/app/theme/colors_value.dart';
import 'package:flutter_blueprint/app/theme/theme.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ProductCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(12),
              height: 400,
              width: 200,
              decoration: BoxDecoration(
                color: ColorsValue.productCardColor,
              ),
              child: Hero(
                tag: product.id,
                child: Image.asset(
                  product.img,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: Dimens.ten / 4),
                child: Text(
                  product.name,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.bookmark,
                    color: ColorsValue.primaryColor,
                  ),
                  onPressed: () {}),
            ],
          ),
          Text(
            "${product.age} month old",
            style: TextStyle(color: Colors.black45),
          ),
          Row(
            children: [
              Text(
                "Rs.${product.newprice},000",
                style: TextStyle(color: Colors.pinkAccent),
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
          )
        ],
      ),
    );
  }
}
