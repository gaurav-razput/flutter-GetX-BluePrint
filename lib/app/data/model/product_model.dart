class Product {
  final String img;
  final String name;
  final int age;
  final int oldprice;
  final int newprice;
  final String id;
  final String color;
  final String info;
  final String gender;

  Product(
      {this.img,
        this.name,
        this.age,
        this.oldprice,
        this.newprice,
        this.id,
        this.color,
        this.info,
        this.gender});
}

class Reviews {
  final String profilePic;
  final String comment;
  final String username;

  Reviews({this.profilePic, this.comment, this.username});
}

List<Reviews> reviews = [
  Reviews(
    profilePic:
    "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    comment: "This product is very nice please buy it.",
    username: "John",
  ),
  Reviews(
    profilePic:
    "https://images.unsplash.com/photo-1500048993953-d23a436266cf?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbnxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    comment: "This product is very nice please buy it.",
    username: "John",
  )
];

List<Product> products = [
  Product(
      img: "assets/images/golden-retriever 1.png",
      name: "Golden retriver",
      age: 2,
      oldprice: 25,
      newprice: 20,
      id: "GRX101",
      color: "Golden",
      info:
      "A short description of breed info will be written here with just two sentences and click more",
      gender: "Male"),
  Product(
      img: "assets/images/golden-retriever 1.png",
      name: "Golden retriver",
      age: 2,
      oldprice: 25,
      newprice: 20,
      id: "GRX101",
      color: "Golden",
      info:
      "A short description of breed info will be written here with just two sentences and click more",
      gender: "Male"),
  Product(
      img: "assets/images/golden-retriever 1.png",
      name: "Golden retriver",
      age: 2,
      oldprice: 25,
      newprice: 20,
      id: "GRX101",
      color: "Golden",
      info:
      "A short description of breed info will be written here with just two sentences and click more",
      gender: "Male"),
  Product(
      img: "assets/images/golden-retriever 1.png",
      name: "Golden retrever",
      age: 2,
      oldprice: 25,
      newprice: 20,
      id: "GRX101",
      color: "Golden",
      info:
      "A short description of breed info will be written here with just two sentences and click more",
      gender: "Male"),
  Product(
      img: "assets/images/golden-retriever 1.png",
      name: "Golden retrever",
      age: 2,
      oldprice: 25,
      newprice: 20,
      id: "GRX101",
      color: "Golden",
      info:
      "A short description of breed info will be written here with just two sentences and click more",
      gender: "Male"),
  Product(
      img: "assets/images/golden-retriever 1.png",
      name: "Golden retriver",
      age: 2,
      oldprice: 25,
      newprice: 20,
      id: "GRX101",
      color: "Golden",
      info:
      "A short description of breed info will be written here with just two sentences and click more",
      gender: "Male"),
];
