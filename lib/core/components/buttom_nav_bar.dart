import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/core/constants/const_color.dart';
import 'package:contact/cubit/contact_cubit.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => ContactBloc(),
      child: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {},
        builder: (context, state) {
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    return Scaffold(
      body: context
          .read<ContactBloc>()
          .pages[context.watch<ContactBloc>().currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        onTap: (v) {
        
            context.read<ContactBloc>().addPages(v);

        },
        selectedItemColor: ConstColor.white,
        unselectedItemColor: ConstColor.selektColor,
        currentIndex: context.watch<ContactBloc>().currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.description_outlined),
            ),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.history),
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.add_box_outlined),
            ),
            label: 'New',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.bookmark_outline_sharp),
            ),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: he(7)),
              child: const Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}