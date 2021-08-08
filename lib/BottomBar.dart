import 'package:flutter/material.dart';
import 'package:stack_column/menu_item.dart';

class BottomBar extends StatefulWidget {
  final Function updateParent;
  final bool isMenuVisible;

  BottomBar({required this.updateParent,this.isMenuVisible=true});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    print("Build call");

    return Container(
      height: 65,
      color: Colors.white,
      child: Row(
        children: [
          MenuItem(
            title: "Home",
            icon: Icons.home,
            tapFun: () {
              print("Home click");
              selectedIndex = 0;
              widget.updateParent(selectedIndex);
              setState(() {});
            },
            isSelected: selectedIndex == 0,
          ),
          MenuItem(
              title: "Cart",
              icon: Icons.shopping_cart,
              isSelected: selectedIndex == 1,
              tapFun: () {
                selectedIndex = 1;
                widget.updateParent(selectedIndex);
                setState(() {});
                print("Cart click");
              }),
          MenuItem(
              title: "Fav",
              icon: Icons.favorite,
              isSelected: selectedIndex == 2,
              tapFun: () {
                selectedIndex = 2;
                widget.updateParent(selectedIndex);
                setState(() {});
              }),
          Visibility(
            visible: widget.isMenuVisible,
            child: MenuItem(
                title: "Menu",
                icon: Icons.menu,
                isSelected: selectedIndex == 3,
                tapFun: () {
                  selectedIndex = 3;
                  widget.updateParent(selectedIndex);
                  setState(() {});
                }),
          ),
        ],
      ),
    );
  }
}
