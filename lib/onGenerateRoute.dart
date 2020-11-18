import 'package:flutter/material.dart';
import 'package:tmp/utils/route_generator.dart';

import './utils/theme.dart';

class OnGenerateRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      home: HomeScreen(),
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('onGenerateRoute'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp13touch-space-select-202005?wid=904&hei=840&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1587460552755',
              width: 200,
            ),
            RaisedButton(
              child: Text('Подробнее'),
              onPressed: () {
                Navigator.pushNamed(context, '/details/2');
              },
            )
          ],
        ),
      ),
    );
  }
}

class Product {
  final int id;
  final String imageUrl;
  final String name;
  final String description;

  Product({this.id, this.imageUrl, this.name, this.description});
}

List<Product> products = [
  Product(
    id: 1,
    imageUrl:
        'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp13touch-space-select-202005?wid=904&hei=840&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1587460552755',
    name: 'Macbook Pro 13, 2020',
    description: 'Intel Core i5,Turbo Boost up to 3.8GHz, 32GB, 1TB SSD',
  ),
  Product(
    id: 2,
    imageUrl:
        'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-12-pro-max-blue-hero?wid=940&hei=1112&fmt=png-alpha&qlt=80&.v=1601620620000',
    name: 'iPhone 12 Pro Max',
    description: '6.7-inch display, Pacific Blue, 512GB',
  ),
];

class DetailScreen extends StatelessWidget {
  int _id;
  DetailScreen({int id}) : _id = id;

  Product findProduct(int id) =>
      products.firstWhere((product) => product.id == id);

  @override
  Widget build(BuildContext context) {
    Product product = findProduct(_id);

    return Scaffold(
      appBar: AppBar(
        title: Text('Подробная информация'),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Image.network(
                    product.imageUrl,
                    width: 300,
                  ),
                  ListTile(
                    title: Text(product.name),
                    subtitle: Text(product.description),
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text('Назад'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
