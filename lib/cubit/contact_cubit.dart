import 'package:bloc/bloc.dart';
import 'package:contact/cubit/contact_state.dart';
import 'package:contact/screens/contact_page.dart';
import 'package:contact/screens/history_page.dart';
import 'package:contact/screens/new_page.dart';
import 'package:contact/screens/profile_page.dart';
import 'package:contact/screens/saved_page.dart';

class ContactBloc extends Cubit<ContactState> {
  ContactBloc() : super(ContactInitial());
  final List pages = const [
    ContactPage(),
    HistoryPage(),
    NewPage(),
    SavedPage(),
    ProfilePage()
  ];
  int currentIndex = 0;

  void addPages(v) {
    currentIndex = v;
    emit(ButtomState());
  }
}
