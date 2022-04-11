import 'package:contact/core/components/calendar_agenda.dart';
import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/core/constants/const_icon.dart';
import 'package:contact/core/widgets/app_bar_widget.dart';
import 'package:contact/core/widgets/buttom_style_widget.dart';
import 'package:contact/core/widgets/text_button_widget.dart';
import 'package:contact/cubit/contact_cubit.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:contact/screens/filtr_page.dart';
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
            appBar: HomeAppBar(
                    title: "Contacts",
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
              children: [
                const Calendar(),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: he(15), horizontal: wi(15)),
                      child: Row(
                        children: [
                          context.watch<ContactBloc>().son == 0
                              ? ButtomStyle(title: "Contacts").getBar()
                              : StyleText(title: "Contacts").getBar(),
                          context.watch<ContactBloc>().son == 1
                              ? ButtomStyle(title: "Invoice").getBar()
                              : StyleText(title: "Invoice").getBar(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: he(430),
                      width: double.infinity,
                      child: PageView(
                        onPageChanged: (value) {
                          context.read<ContactBloc>().pageReload(value);
                        },
                        physics: const BouncingScrollPhysics(),
                        children:  [
                          SizedBox(
                            child:Column(
                              children: [],
                            )
                          ),
                         const SizedBox(
                            child: Center(
                              child: Text("2"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
