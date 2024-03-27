import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:blocapp/data/video_model.dart';
import 'package:blocapp/data/videos.dart';
import 'package:flutter/material.dart';
part 'videos_event.dart';
part 'videos_state.dart';

class VideosBloc extends Bloc<VideosBlocEvent, VideosBlocState> {
  VideosBloc() : super(VideosLoadingState()) {
    Future.delayed(Duration(seconds: 1), () {
      try {
        var videoList =
            List<VideoModel>.from(videos.map((e) => VideoModel.fromJson(e)));
        emit(VideosLoadedState(vid: videoList));
      } catch (e) {
        print(e.toString());
        emit(VideosErrorState(e));
      }
    });
  }
}
