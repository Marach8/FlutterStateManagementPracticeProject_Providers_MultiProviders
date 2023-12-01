import 'package:flutter/material.dart';
import 'package:multiproviders_practice/customobjects.dart';
import 'package:multiproviders_practice/customwidgets.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MultiProviders Example'), centerTitle: true),
      body: MultiProvider(
        providers: [
          StreamProvider.value(
            value: Stream<EverySecond>.periodic(const Duration(seconds: 1), (_) => EverySecond()),
            initialData: EverySecond(),
          ),
          StreamProvider.value(
            value: Stream<EveryMinute>.periodic(const Duration(minutes: 1), (_) => EveryMinute()),
            initialData: EveryMinute(),
          )
        ],
        child: Row(
          children: [
            const EverySecondWidget(), const EveryMinuteWidget()
          ].expandEqually().toList(),
        ),
      )
    );
  }
}


extension Marach on Iterable<Widget>{
  Iterable<Widget> expandEqually() => map((item) => Expanded(child: item));
}
