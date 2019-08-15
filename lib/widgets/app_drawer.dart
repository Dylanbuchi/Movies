import 'package:flutter/material.dart';

import 'package:movies/screens/order_screen.dart';

import 'package:movies/screens/products_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              "Menu",
            ),
            automaticallyImplyLeading: false,
          ),
          MenuTile(
            icon: Icons.history,
            text: Text("History"),
            navigation: () =>
                Navigator.of(context).pushReplacementNamed(OrderScreen.page),
          ),
          MenuTile(
            icon: Icons.local_movies,
            text: Text("Movies"),
            navigation: () =>
                Navigator.of(context).pushReplacementNamed(ProductScreen.page),
          ),
          MenuTile(
            icon: Icons.home,
            text: Text("Home"),
            navigation: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
        ],
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final IconData icon;
  final Text text;
  final Function navigation;

  const MenuTile({
    this.icon,
    this.text,
    this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListTile(
        leading: Icon(
          icon,
          size: 25,
        ),
        title: text,
        onTap: navigation,
      ),
    );
  }
}
/* /*               Navigator.of(context).pushReplacementNamed(
                 */ProductDetailScreen.page, */
