part of 'videos_bloc.dart';

sealed class VideosBlocState {
  VideosBlocState();
}

final class VideosLoadingState extends VideosBlocState {
  VideosLoadingState() : super();
}

final class VideosLoadedState extends VideosBlocState {
  List<VideoModel> vid;
  VideosLoadedState({required this.vid}) : super();
}

final class VideosErrorState extends VideosBlocState {
  var e;
  VideosErrorState(this.e) : super();
}
