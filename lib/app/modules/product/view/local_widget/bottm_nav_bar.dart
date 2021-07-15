import 'package:flutter/material.dart';
import 'package:flutter_blueprint/app/theme/theme.dart';

class BottomNabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 0,
        currentIndex: 0,
        unselectedLabelStyle:
        TextStyle(color: Colors.black, fontFamily: "NunitoSans-ExtraBold"),
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: ColorsValue.primaryColor,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: "Services",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pets,
                color: Colors.black,
              ),
              label: "Pet care"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.model_training,
                color: Colors.black,
              ),
              label: "Pet training"),
        ]);
  }
}
