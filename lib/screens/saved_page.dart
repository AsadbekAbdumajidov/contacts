import 'package:contact/core/constants/const_icon.dart';
import 'package:contact/core/widgets/app_bar_widget.dart';
import 'package:contact/screens/filtr_page.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
              title: "Saved",
              rightIcon: ConstIcon.setting,
              leftIcon: Icons.search,
              leftOntap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>  FilterPage())));
              },
              rightOntap: () {})
          .getBar(),
      body: Column(
        children: [],
      ),
    );
  }
}
