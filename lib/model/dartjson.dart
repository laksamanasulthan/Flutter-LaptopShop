class dartjson {
  String name;
  String price;
  String description;
  String spek;
  String imageAsset;

  dartjson({
    required this.name,
    required this.price,
    required this.description,
    required this.spek,
    required this.imageAsset,
  });
}

var dartjsondata = [
  dartjson(
    name: 'Lenovo Ideapad Slim 3i ',
    price: 'Rp.8.099.000',
    description:
        'Laptop kantoran yang memiliki performa yang mumpuni, dan juga bisa menjalankan game game dengan setting rata tengah-kiri',
    spek: 'Intel i3-10110U, GeForce MX130',
    imageAsset: 'images/01.jpeg',
  ),
  dartjson(
    name: 'ASUS Vivobook 14',
    price: 'Rp.7.999.000',
    description:
        'Merupakan Laptop buatan ASUS yang ditujukan untuk kalangan Mahasiswa dengan performa yang oke dan harga yang relatif terjangkau',
    spek: 'Intel i3-8145U, GeForce MX250 2GB',
    imageAsset: 'images/02.jpg',
  ),
  dartjson(
    name: 'HP ENVY X360 13-AG0023AU',
    price: 'Rp.16.499.000',
    description:
        'Adalah laptop besutan HP yang ditujukan untuk Office namun memiliki performa yang Powerful, desain ini tipis cocok untuk dibawa bepergian',
    spek: 'AMD Ryzen 7 2700U, Radeon RX Vega 10',
    imageAsset: 'images/03.jpeg',
  ),
  dartjson(
    name: 'ASUS ROG Strix G G512LI-I75TB6B',
    price: 'Rp.17.799.000',
    description:
        'Asus ROG Strix G adalah laptop tipis dan ringkas yang dirancang untuk pemain esports. Laptop ini memiliki teknologi Intelligent Cooling yang dapat melepaskan performa prosesor Intel Core i7 generasi ke-10 dan VGA NVIDIA GeForce GTX 1650 Ti ke tingkat maksimal. Laptop gaming Asus terbaru ini juga memiliki teknologi ROG RangeBoost yang memastikan sinyal WiFi selalu stabil.',
    spek: 'Intel i7-10750H, GeForce GTX 1650Ti',
    imageAsset: 'images/04.jpg',
  ),
  dartjson(
    name: 'MSI GF-63 Thin',
    price: 'Rp.10.999.000',
    description:
        'Adalah sebuah laptop yang powerful dari MSI, yang menawarkan performa tinggi namun dengan harga yang relatif terjangkau',
    spek: 'Intel i5-10500H, GeForce GTX 1650 Max-Q',
    imageAsset: 'images/06.jpg',
  ),
];
