import 'package:flutter/material.dart';

class MyMainMenuCardItem {
  final String id;
  final String text;
  final String subtext;
  final Icon icon;

  MyMainMenuCardItem(this.id, this.text, this.subtext, this.icon);

  MyMainMenuCardItem.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        text = json['text'],
        subtext = json['subtext'],
        icon = json['icon'];

}