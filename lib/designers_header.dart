import 'package:flutter/material.dart';

class DesignersHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      centerTitle: true,
      title: const Text('Designers'),
      leading: const Icon(
        Icons.menu,
        color: Colors.white,
      ),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              stops: [
                0.012,
                0.99,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFF5ddfbf),
                Color(0xFFe244ee),
              ],
            )
        ),
      ),
    );
  }
}