import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:contact/core/constants/const_color.dart';
import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalendarAgenda(
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 140)),
      lastDate: DateTime.now().add(const Duration(days: 4)),
      calendarEventColor: ConstColor.green,
      onDateSelected: (date) {},
    );
  }
}
