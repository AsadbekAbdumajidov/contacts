import 'package:contact/core/constants/const_color.dart';
import 'package:contact/cubit/contact_cubit.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: Text(
                "Filters",
                style: TextStyle(fontFamily: "Ubuntu", color: ConstColor.white),
              ),
            ),
            body: Column(
              children: [
                Text(
                  "Status",
                  style: TextStyle(color: ConstColor.selektColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
