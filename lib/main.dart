import 'package:flutter/material.dart';

void main() => runApp(ScreenWidget());

class ScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container widget'),
        ),
        body: SimpleWidget(),
      ),
    );
  }
}

class SimpleWidget extends StatelessWidget {
  const SimpleWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            // color: Colors.green,
            child: Text(
              'Panda',
              style: TextStyle(fontSize: 40, color: Colors.white70),
            ),
            height: 200,
            width: 200, // double.infinity
            alignment: Alignment.center,
            // padding: EdgeInsets.all(50),
            // margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(
                            'https://images.wallpaperscraft.ru/image/bambuk_palki_zelenyy_vertikalnyy_9687_2048x1152.jpg')
                        .image,
                    fit: BoxFit.cover),
                // gradient: new LinearGradient(
                //   colors: [Colors.red, Colors.cyan],
                // ),
                // color: Colors.cyan,
                // border: Border.all(
                //   color: Colors.black,
                //   width: 8,
                // ),
                // borderRadius: BorderRadius.circular(15),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 5.0,
                    spreadRadius: 5.0,
                    offset: Offset(-5, 5),
                  )
                ]) //
            ));
  }
}
