import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/cubit/contact_cubit.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Row(children: [
                Row(
                  children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/png/Ellipse 13.png"),
                    ),
                    Text(
                      "Contacts",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
                Row(
                  children: [],
                )
              ]),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(16)),
              child: Column(
                children: [],
              ),
            ),
          );
        },
      ),
    );
  }
}
