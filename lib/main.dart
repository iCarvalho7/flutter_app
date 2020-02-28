import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Product {
  final String name;
  final int amount;
  final double value;

  Product(
    this.name,
    this.amount,
    this.value,
  );

  @override
  String toString() {
    return 'Product{name: $name, amount, $amount, value: $value}';
  }
}

class MyApp extends StatelessWidget {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerQuant = TextEditingController();
  final TextEditingController _controllerValue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Welcome to Flutter",
      home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Flutter'),
          ),
          body:
          Column(
            children: <Widget>[
              TextField(
                controller: _controllerName,
              ),
              TextField(
                controller: _controllerQuant,
              ),
              TextField(
                controller: _controllerValue,
              ),
              RaisedButton(
                child: Text('Cadastrar'),
                onPressed: () {
                  final String name = _controllerName.text;
                  final int quanty = int.tryParse(_controllerValue.text);
                  final double value = double.tryParse(_controllerValue.text);

                  final Product newProduct = Product(name, quanty, value);
                  print(newProduct);
                },
              )
            ],
          ),
      ),
    );
  }
}
