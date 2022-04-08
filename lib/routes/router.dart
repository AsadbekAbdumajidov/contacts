import 'package:contact/core/components/buttom_nav_bar.dart';
import 'package:flutter/material.dart';

class RouteGenerateContact {
  Route? generateContact(RouteSettings settings) {
    
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const BottomBar(),
        );
      
      
    }
    return null;
  }
}
