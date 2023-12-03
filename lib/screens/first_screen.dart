import 'package:cubit_internet_connectivity/cubits/internet_cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Check'),
      ),
      body: Center(child: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, state) {
          if (state == InternetState.gained) {
            return const Text('Internet Available');
          } else if (state == InternetState.lost) {
            return const Text('Internet Not Available');
          } else {
            return Text('Loading');
          }
        },
      )),
    );
  }
}
