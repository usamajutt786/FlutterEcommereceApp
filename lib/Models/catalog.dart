class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: " i phone",
      price: 999,
      color: "#33505a",
      desc: "hello it is good mobile",
      image: "assets/images/login_image.png",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String image;
  final String color;
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image,
      required this.color});
  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}


//internationally payment
//muhammad umar
