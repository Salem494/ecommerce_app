import 'package:ecommerceapp/admin/products.dart';
import 'package:ecommerceapp/authantication/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'admin/add_category.dart';
import 'admin/add_product.dart';
import 'admin/categories.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthTest(),
      theme: ThemeData(
          primaryColor: Colors.teal
      ),
      routes: {
        '/add_category' : ( context ) => AddCategoryScreen(),
        '/categories'   : ( context ) => AllCategories(),
        '/add_product'  : ( context ) => AddProduct(),
        '/products'     : ( context ) => AllProducts(),
      },
    );
  }
}

class AuthTest extends StatefulWidget {
  @override
  _AuthTestState createState() => _AuthTestState();
}

class _AuthTestState extends State<AuthTest> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text('All Products'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/products');
                },
              ),
              ListTile(
                title: Text('Add Product'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/add_product');
                },
              ),
              ListTile(
                title: Text('All Categories'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/categories');
                },
              ),
              ListTile(
                title: Text('Add Category'),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/add_category');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


