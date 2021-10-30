import 'package:flutter/material.dart';
import 'package:workshop1/constraints.dart';
import 'package:workshop1/dummy_bottom_bar_items.dart';
import 'package:workshop1/models/bottom_bar_model.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {

  final List<BottomBarModel> _bottomBarItems = bottomBarListItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom:20),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_bottomBarItems.length, (index) {
          var  barItemWidget = _bottomBarItems[index];
          return IconButton(
            icon: Icon(
              barItemWidget.icon,
              color: barItemWidget.isSelected! ? mainYellow : Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _bottomBarItems.forEach((element) {
                  element.isSelected = element == barItemWidget;
                });
              });
            },
          );
        }),
      ),
    );
  }
}
