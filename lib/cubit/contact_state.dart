
import 'package:flutter/widgets.dart';

@immutable
abstract class ContactState {}

class ContactInitial extends ContactState {}

class TextState extends ContactState{
  TextState();
}