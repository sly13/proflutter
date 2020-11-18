import 'package:flutter/material.dart';
import './utils/theme.dart';

class Product {
  final String imageUrl;
  final String name;
  final String description;

  Product({this.imageUrl, this.name, this.description});
}

class AnonymousRoutesWithParams extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: basicTheme(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Routes With Params'),
      ),
      backgroundColor: Colors.white,
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
                Product product = Product(
                  imageUrl:
                      'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp13touch-space-select-202005?wid=904&hei=840&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1587460552755',
                  name: 'Macbook Pro 13, 2020',
                  description:
                      'Intel Core i5,Turbo Boost up to 3.8GHz, 32GB, 1TB SSD',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return DetailScreen(product: product);
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Product product;
  DetailScreen({this.product});

  @override
  Widget build(BuildContext context) {
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
