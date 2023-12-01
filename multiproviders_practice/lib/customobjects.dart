import 'package:flutter/material.dart';
import 'package:multiproviders_practice/periodicfunctions.dart';

@immutable
class EverySecond{
  final String time;
  EverySecond(): time = currentTime();
}


@immutable
class EveryMinute{
  final String time;
  EveryMinute(): time = currentTime();
}


