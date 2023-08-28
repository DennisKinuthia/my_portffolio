import 'package:flutter/material.dart';
import 'package:portfolio/src/constants/app_sizes.dart';
import 'package:portfolio/src/features/navbar/components/animated_menu_item_labe.dart';
import 'package:portfolio/src/features/section_builder/sections.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({
    super.key,
    required this.menuOptions,
    required this.activeMenuItem,
  });

  final List<Sections> menuOptions;
  final String activeMenuItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Spacer(),
        ...menuOptions
            .map(
              (option) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: Sizes.p12),
                  child: MenuItemLabel(
                    onTap: () {
                      // TODO: load the page corresponding to the menu item
                    },
                    label: option.name,
                    isActive: activeMenuItem == option.name,
                  )),
            )
            .toList(),
        const Spacer(),
      ],
    );
  }
}
