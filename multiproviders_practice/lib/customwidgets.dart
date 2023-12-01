import 'package:flutter/material.dart';
import 'package:multiproviders_practice/customobjects.dart';
import 'package:provider/provider.dart';

class EverySecondWidget extends StatelessWidget {
  const EverySecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final secondsProvider = context.watch<EverySecond>();
    return Container(
      height: 100, color: Colors.green,
      child: Text(secondsProvider.time)
    );
  }
}




class EveryMinuteWidget extends StatelessWidget {
  const EveryMinuteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final minutesProvider = context.watch<EveryMinute>();
    return Container(
      height: 100, color: Colors.yellow,
      child: Text(minutesProvider.time)
    );
  }
}