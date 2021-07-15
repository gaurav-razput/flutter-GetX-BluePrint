import 'package:flutter/material.dart';
import 'package:flutter_blueprint/app/data/category_model.dart';
import 'package:flutter_blueprint/app/global_widgets/category_card.dart';

class CategoryScreen extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          highlightColor: Colors.black,
          color: Colors.black,
        ),
        title: Padding(
          padding: EdgeInsets.all(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/petzu_logo.2.png',
                fit: BoxFit.cover,
                height: 30,
                width: 90,
              ),
              Image.asset(
                'assets/crate.png',
                fit: BoxFit.cover,
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
        toolbarHeight: 45,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView(
                padding: EdgeInsets.all(20),
                children: animal.map(
                      (categoryItem) => CategoryItem(
                    categoryItem.title,
                    categoryItem.color,
                    categoryItem.image,
                  ),
                ).toList(),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250,
                  childAspectRatio: 2 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Services',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Pet Care',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pets),
            label: 'Pet Training',
            backgroundColor: Colors.white,
          ),
        ],
        onTap: (index) {},
      ),
    );
  }
}
