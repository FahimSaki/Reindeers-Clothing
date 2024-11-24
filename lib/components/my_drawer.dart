import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          // drawer logo
          DrawerHeader(
              child: Center(
            child:
                Image.asset('assets/images/logo.png', width: 170, height: 170),
          ))

          // shop tile

          // cart tile

          // ezit shop title
        ],
      ),
    );
  }
}
