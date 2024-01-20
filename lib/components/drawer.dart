import 'package:flutter/material.dart';
import 'package:twister/Pages/shopage.dart';
import 'package:twister/Pages/wallet.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset('asset/cofe.png'),
          ),
          ListTile(
            title: const Text('Home'),
            trailing: const Icon(Icons.arrow_forward_rounded),
            hoverColor: Colors.blueGrey,
            leading: const Icon(Icons.home_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => const ShopPage()),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Wallet'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.arrow_forward),
            hoverColor: Colors.blueGrey,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Wallet()),
              );
            },
          ),
          const SizedBox(
            height: 500,
          ),
          ListTile(
            title: const Text('About'),
            leading: const Icon(Icons.warning),
            onTap: () {},
            hoverColor: Colors.blueGrey,
          ),
        ],
      ),
    );
  }
}
