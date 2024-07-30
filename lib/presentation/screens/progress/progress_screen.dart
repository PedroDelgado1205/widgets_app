import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Screen'),
      ),
      body: const _PogressView(),
    );
  }
}

class _PogressView extends StatelessWidget {
  const _PogressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Circular Progress Indicator'),
          _ProgressIndicator(),
          SizedBox(
            height: 30,
          ),
          Text('Circular Indicator Controlado'),
          SizedBox(
            height: 10,
          ),
          _ControlledCircularIndicator(),
        ],
      ),
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      strokeWidth: 2,
      backgroundColor: Colors.black12,
    );
  }
}

class _ControlledCircularIndicator extends StatelessWidget {
  const _ControlledCircularIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value){
        return (value * 2) / 100;
      }).takeWhile((value)=> value < 100),
      builder: (context, snapshot){

        final progressValue = snapshot.data ?? 0;

        return  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue),
              const SizedBox(width: 20),
              Expanded(child: LinearProgressIndicator(value: progressValue))
            ],
          ),
        );
      });
  }
}
