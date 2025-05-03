import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/domain/usecases/get_now_airing_tv_series.dart';
import 'package:ditonton/domain/usecases/get_popular_tv_series.dart';
import 'package:ditonton/domain/usecases/get_top_rated_tv_series.dart';
import 'package:flutter/material.dart';

class TvSeriesListNotifier extends ChangeNotifier {
  var _nowAiring = <TvSeries>[];
  List<TvSeries> get nowAiring => _nowAiring;

  RequestState _nowAiringState = RequestState.empty;
  RequestState get nowAiringState => _nowAiringState;

  var _popular = <TvSeries>[];
  List<TvSeries> get popular => _popular;

  RequestState _popularState = RequestState.empty;
  RequestState get popularState => _popularState;

  var _topRated = <TvSeries>[];
  List<TvSeries> get topRated => _topRated;

  RequestState _topRatedState = RequestState.empty;
  RequestState get topRatedState => _topRatedState;

  String _message = '';
  String get message => _message;

  TvSeriesListNotifier({
    required this.getNowAiringTvSeries,
    required this.getPopularTvSeries,
    required this.getTopRatedTvSeries,
  });

  final GetNowAiringTvSeries getNowAiringTvSeries;
  final GetPopularTvSeries getPopularTvSeries;
  final GetTopRatedTvSeries getTopRatedTvSeries;

  Future<void> fetchNowAiring() async {
    _nowAiringState = RequestState.loading;
    notifyListeners();

    final result = await getNowAiringTvSeries.execute();
    result.fold(
      (failure) {
        _nowAiringState = RequestState.error;
        _message = failure.message;
        notifyListeners();
      },
      (moviesData) {
        _nowAiringState = RequestState.loaded;
        _nowAiring = moviesData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchPopular() async {
    _popularState = RequestState.loading;
    notifyListeners();

    final result = await getPopularTvSeries.execute();
    result.fold(
      (failure) {
        _popularState = RequestState.error;
        _message = failure.message;
        notifyListeners();
      },
      (moviesData) {
        _popularState = RequestState.loaded;
        _popular = moviesData;
        notifyListeners();
      },
    );
  }

  Future<void> fetchTopRated() async {
    _topRatedState = RequestState.loading;
    notifyListeners();

    final result = await getTopRatedTvSeries.execute();
    result.fold(
      (failure) {
        _topRatedState = RequestState.error;
        _message = failure.message;
        notifyListeners();
      },
      (moviesData) {
        _topRatedState = RequestState.loaded;
        _topRated = moviesData;
        notifyListeners();
      },
    );
  }
}
