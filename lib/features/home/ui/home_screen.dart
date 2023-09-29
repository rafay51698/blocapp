import 'package:blocapp/features/home/bloc/home_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc video app"),
      ),
      body: BlocConsumer<HomeBlocBloc, HomeBlocState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is HomeIncrementState || state is HomeInitialState) {
            return Container(
                alignment: Alignment.center,
                child: Text(state.count.toString()));
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<HomeBlocBloc>().add(HomeIncrementEvent()),
        // tooltip: 'Start',
        child: const Icon(Icons.add),
      ),
    );
  }
}
