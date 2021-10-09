import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

width(context) => MediaQuery.of(context).size.width;
height(context) => MediaQuery.of(context).size.height;
route(context, widget) =>
    Navigator.of(context).push(MaterialPageRoute(builder: (_) => widget));
pop(context) => Navigator.of(context).pop();
