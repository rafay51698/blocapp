import 'package:blocapp/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/videos_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc video app"),
      ),
      body: BlocConsumer<VideosBloc, VideosBlocState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is VideosLoadingState) {
            return const CircularProgressIndicator();
          } else if (state is VideosLoadedState) {
            return ListView.builder(
              itemCount: state.vid.length,
              itemBuilder: (context, index) {
                return VideoPlayerScreen(
                    videoUrl: state.vid[index].videoUrl ?? "");
              },
            );
          } else if (state is VideosErrorState) {
            return const Text("Error loading videos");
          }
          return Container();
        },
      ),
    );
  }
}
