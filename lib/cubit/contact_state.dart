import 'package:flutter/widgets.dart';

@immutable
abstract class ContactState {}

class ContactInitial extends ContactState {}

class ButtomState extends ContactState{
  ButtomState();
}