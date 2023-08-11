import 'package:flutter/material.dart';
import 'package:portfolio/src/common_widgets/info_containers.dart';
import 'package:portfolio/src/features/info_bar/components/personal_info.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const InformationContainer(
      child: PersonalInfoRow(),
    );
  }
}
