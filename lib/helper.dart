import 'package:flutter/material.dart';

class Helper{
  final String title;
  final IconData icon;
  const Helper(this.title,this.icon);

}

const List<Helper> dataHelper = <Helper>[
  Helper('Recent Data', Icons.data_usage,),
  Helper('Old Data', Icons.data_usage),
  Helper('Recent Plans', Icons.calendar_today),
  Helper('Old Plans', Icons.calendar_today),

];