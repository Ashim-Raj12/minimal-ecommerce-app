import 'package:ecommerce/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // DrawerHeader - logo
          DrawerHeader(
            child: Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),
          //Shop tile
          MyListTile(
            text: 'Shop',
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          //Cart tile
          MyListTile(
            text: 'Cart',
            icon: Icons.shopping_cart,
            onTap: () => {
              Navigator.pop(context),
              Navigator.pushNamed(context, '/cart_page'),
            },
          ),
          //Exit
          MyListTile(
            text: 'Exit',
            icon: Icons.exit_to_app,
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/intro_page',
              (route) => false,
            ),
          ),
        ],
      ),
    );
  }
}
