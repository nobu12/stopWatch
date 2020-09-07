import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class Clock extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ClockState();
  }
}

class _ClockState extends State<Clock> {
  Stopwatch s = Stopwatch();
  String _time = '';

  @override
  void initState() {
    s.start();
    Timer.periodic(
      Duration(milliseconds: 500),
      _onTimer,
    );
    super.initState();
  }

  void _onTimer(Timer timer) {
    setState(() => _time = '${s.elapsedMilliseconds}');
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _time,
      style: TextStyle(fontSize: 30.0),
    );
  }
}
