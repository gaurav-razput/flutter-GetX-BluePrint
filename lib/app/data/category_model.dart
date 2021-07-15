import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  final int id;
  final String title;
  final String image;
  final Color color;

  Category({
    @required this.id,
    @required this.title,
    @required this.image,
    this.color = Colors.teal,
  });
}

final animal = [
  Category(
    id: 0,
    title: 'Dogs',
    image: 'assets/pngaaa 1.png',
    color: Color(0xfffcccc),
  ),
// ignore: non_constant_identifier_names
  Category(
    id: 1,
    title: 'Cats',
    image: 'assets/19-cat-png-image-download-picture-kitten 1.png',
    color: Color(0xafeeee),
  ),
// ignore: non_constant_identifier_names
  Category(
    id: 2,
    title: 'Fishes',
    image: 'assets/14-gold-fish-png-image 1.png',
    color: Color(0xc0c0c0),
  ),
// ignore: non_constant_identifier_names
  Category(
    id: 3,
    title: 'Birds',
    image: 'assets/2-parrot-png-images-download 1.png',
    color: Color(0xd8bfd8),
  ),
// ignore: non_constant_identifier_names
  Category(
    id: 4,
    title: 'Rabbits',
    image: 'assets/4-rabbit-png-image 1.png',
    color: Color(0xf0e68c),
  ),
  Category(
    id: 5,
    title: 'Coming Soon..',
    image: '',
    color: Color(0x00dcdc),
  ),
];
