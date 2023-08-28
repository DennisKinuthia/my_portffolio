import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/navbar/components/animated_menu_item_labe.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({
    super.key,
    required this.menuOptions,
    required this.activeMenuItem,
  });

  final List<Sections> menuOptions;
  final String activeMenuItem;

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  bool _shouldShow = false;
  @override
  void initState() {
    super.initState();
    // delay the widget build to allow navbar drawer to extend to full width
    // avoiding any overflows albeit for a brief moment
    Future.delayed(const Duration(milliseconds: 350), () {
      if (mounted) {
        setState(() {
          _shouldShow = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _shouldShow
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              ...widget.menuOptions
                  .map(
                    (option) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: Sizes.p12),
                      child: MenuItemLabel(
                        onTap: () {
                          // TODO: load the page corresponding to the menu item
                        },
                        label: option.name,
                        isActive: widget.activeMenuItem == option.name,
                      ),
                    ),
                  )
                  .toList(),
              const Spacer(),
            ],
          )
        : Container();
  }
}
