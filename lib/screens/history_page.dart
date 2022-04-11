import 'package:contact/core/constants/const_icon.dart';
import 'package:contact/core/widgets/app_bar_widget.dart';
import 'package:contact/cubit/contact_cubit.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:contact/screens/filtr_page.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: HomeAppBar(
                    title: "History",
                    rightIcon: ConstIcon.setting,
                    leftIcon: Icons.search,
                    leftOntap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const FilterPage())));
                    },
                    rightOntap: () {})
                .getBar(),
            body: Column(
              children: [],
            ),
          );
        },
      ),
    );
  }
}
