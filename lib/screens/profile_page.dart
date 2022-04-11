import 'package:contact/core/components/size_konfig.dart';
import 'package:contact/core/constants/const_color.dart';
import 'package:contact/cubit/contact_cubit.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

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
              title: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/png/Ellipse 13.png"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: wi(10)),
                    child: Text(
                      "Profile",
                      style: TextStyle(
                          color: ConstColor.white,
                          fontFamily: "Ubuntu",
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: he(20), horizontal: wi(16)),
                  child: Container(
                    height: he(200),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ConstColor.selektColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8))),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/png/Vector.png",
                                height: he(50),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: wi(10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Asadbek Abdumajidov",
                                      style: TextStyle(
                                          color: ConstColor.green,
                                          fontSize: he(18),
                                          fontFamily: "Poppins"),
                                    ),
                                    Text(
                                      "Flutter Developer - Najot Ta'lim",
                                      style: TextStyle(
                                          color: ConstColor.white,
                                          fontSize: he(14),
                                          fontFamily: "Poppins"),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: he(20)),
                            child: Row(
                              children: [
                                Text(
                                  "Date of birth: ",
                                  style: TextStyle(color: ConstColor.white),
                                ),
                                Text(
                                  "22.05.2022",
                                  style: TextStyle(
                                      color:
                                          ConstColor.white.withOpacity(0.7)),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: he(20)),
                            child: Row(
                              children: [
                                Text(
                                  "Phone number: ",
                                  style: TextStyle(color: ConstColor.white),
                                ),
                                Text(
                                  "+998 33 954 06 90",
                                  style: TextStyle(
                                      color:
                                          ConstColor.white.withOpacity(0.7)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "E-mail: ",
                                style: TextStyle(color: ConstColor.white),
                              ),
                              Text(
                                "asadbekabdumajidov7@gmail.com",
                                style: TextStyle(
                                    color:
                                        ConstColor.white.withOpacity(0.7)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
