// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieListEvent {


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieListEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieListEvent()';
  }


}

/// @nodoc
class $MovieListEventCopyWith<$Res> {
  $MovieListEventCopyWith(MovieListEvent _, $Res Function(MovieListEvent) __);
}


/// @nodoc


class _FetchNowPlaying implements MovieListEvent {
  const _FetchNowPlaying();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchNowPlaying);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieListEvent.fetchNowPlaying()';
  }


}


/// @nodoc


class _FetchPopular implements MovieListEvent {
  const _FetchPopular();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchPopular);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieListEvent.fetchPopular()';
  }


}


/// @nodoc


class _FetchTopRated implements MovieListEvent {
  const _FetchTopRated();


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchTopRated);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MovieListEvent.fetchTopRated()';
  }


}


/// @nodoc
mixin _$MovieListState {

  RequestState get nowPlayingMoviesState;

  RequestState get popularMoviesState;

  RequestState get topRatedMoviesState;

  String? get errorMessage;

  List<Movie> get nowPlayingMovies;

  List<Movie> get popularMovies;

  List<Movie> get topRatedMovies;

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieListStateCopyWith<MovieListState> get copyWith =>
      _$MovieListStateCopyWithImpl<MovieListState>(
          this as MovieListState, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieListState &&
            (identical(other.nowPlayingMoviesState, nowPlayingMoviesState) ||
                other.nowPlayingMoviesState == nowPlayingMoviesState) &&
            (identical(other.popularMoviesState, popularMoviesState) ||
                other.popularMoviesState == popularMoviesState) &&
            (identical(other.topRatedMoviesState, topRatedMoviesState) ||
                other.topRatedMoviesState == topRatedMoviesState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
                other.nowPlayingMovies, nowPlayingMovies) &&
            const DeepCollectionEquality().equals(
                other.popularMovies, popularMovies) &&
            const DeepCollectionEquality().equals(
                other.topRatedMovies, topRatedMovies));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          nowPlayingMoviesState,
          popularMoviesState,
          topRatedMoviesState,
          errorMessage,
          const DeepCollectionEquality().hash(nowPlayingMovies),
          const DeepCollectionEquality().hash(popularMovies),
          const DeepCollectionEquality().hash(topRatedMovies));

  @override
  String toString() {
    return 'MovieListState(nowPlayingMoviesState: $nowPlayingMoviesState, popularMoviesState: $popularMoviesState, topRatedMoviesState: $topRatedMoviesState, errorMessage: $errorMessage, nowPlayingMovies: $nowPlayingMovies, popularMovies: $popularMovies, topRatedMovies: $topRatedMovies)';
  }


}

/// @nodoc
abstract mixin class $MovieListStateCopyWith<$Res> {
  factory $MovieListStateCopyWith(MovieListState value,
      $Res Function(MovieListState) _then) = _$MovieListStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState nowPlayingMoviesState, RequestState popularMoviesState, RequestState topRatedMoviesState, String? errorMessage, List<
        Movie> nowPlayingMovies, List<Movie> popularMovies, List<
        Movie> topRatedMovies
  });


}

/// @nodoc
class _$MovieListStateCopyWithImpl<$Res>
    implements $MovieListStateCopyWith<$Res> {
  _$MovieListStateCopyWithImpl(this._self, this._then);

  final MovieListState _self;
  final $Res Function(MovieListState) _then;

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? nowPlayingMoviesState = null, Object? popularMoviesState = null, Object? topRatedMoviesState = null, Object? errorMessage = freezed, Object? nowPlayingMovies = null, Object? popularMovies = null, Object? topRatedMovies = null,}) {
    return _then(_self.copyWith(
      nowPlayingMoviesState: null == nowPlayingMoviesState
          ? _self.nowPlayingMoviesState
          : nowPlayingMoviesState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      popularMoviesState: null == popularMoviesState
          ? _self.popularMoviesState
          : popularMoviesState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      topRatedMoviesState: null == topRatedMoviesState
          ? _self.topRatedMoviesState
          : topRatedMoviesState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      nowPlayingMovies: null == nowPlayingMovies
          ? _self.nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      popularMovies: null == popularMovies
          ? _self.popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      topRatedMovies: null == topRatedMovies
          ? _self.topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
    ));
  }

}


/// @nodoc


class _MovieListState implements MovieListState {
  const _MovieListState({this.nowPlayingMoviesState = RequestState
      .empty, this.popularMoviesState = RequestState
      .empty, this.topRatedMoviesState = RequestState
      .empty, this.errorMessage = null, final List<
      Movie> nowPlayingMovies = const [], final List<
      Movie> popularMovies = const [], final List<
      Movie> topRatedMovies = const []})
      : _nowPlayingMovies = nowPlayingMovies,
        _popularMovies = popularMovies,
        _topRatedMovies = topRatedMovies;


  @override
  @JsonKey()
  final RequestState nowPlayingMoviesState;
  @override
  @JsonKey()
  final RequestState popularMoviesState;
  @override
  @JsonKey()
  final RequestState topRatedMoviesState;
  @override
  @JsonKey()
  final String? errorMessage;
  final List<Movie> _nowPlayingMovies;

  @override
  @JsonKey()
  List<Movie> get nowPlayingMovies {
    if (_nowPlayingMovies is EqualUnmodifiableListView)
      return _nowPlayingMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingMovies);
  }

  final List<Movie> _popularMovies;

  @override
  @JsonKey()
  List<Movie> get popularMovies {
    if (_popularMovies is EqualUnmodifiableListView) return _popularMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMovies);
  }

  final List<Movie> _topRatedMovies;

  @override
  @JsonKey()
  List<Movie> get topRatedMovies {
    if (_topRatedMovies is EqualUnmodifiableListView) return _topRatedMovies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topRatedMovies);
  }


  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieListStateCopyWith<_MovieListState> get copyWith =>
      __$MovieListStateCopyWithImpl<_MovieListState>(this, _$identity);


  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MovieListState &&
            (identical(other.nowPlayingMoviesState, nowPlayingMoviesState) ||
                other.nowPlayingMoviesState == nowPlayingMoviesState) &&
            (identical(other.popularMoviesState, popularMoviesState) ||
                other.popularMoviesState == popularMoviesState) &&
            (identical(other.topRatedMoviesState, topRatedMoviesState) ||
                other.topRatedMoviesState == topRatedMoviesState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
                other._nowPlayingMovies, _nowPlayingMovies) &&
            const DeepCollectionEquality().equals(
                other._popularMovies, _popularMovies) &&
            const DeepCollectionEquality().equals(
                other._topRatedMovies, _topRatedMovies));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          nowPlayingMoviesState,
          popularMoviesState,
          topRatedMoviesState,
          errorMessage,
          const DeepCollectionEquality().hash(_nowPlayingMovies),
          const DeepCollectionEquality().hash(_popularMovies),
          const DeepCollectionEquality().hash(_topRatedMovies));

  @override
  String toString() {
    return 'MovieListState(nowPlayingMoviesState: $nowPlayingMoviesState, popularMoviesState: $popularMoviesState, topRatedMoviesState: $topRatedMoviesState, errorMessage: $errorMessage, nowPlayingMovies: $nowPlayingMovies, popularMovies: $popularMovies, topRatedMovies: $topRatedMovies)';
  }


}

/// @nodoc
abstract mixin class _$MovieListStateCopyWith<$Res>
    implements $MovieListStateCopyWith<$Res> {
  factory _$MovieListStateCopyWith(_MovieListState value,
      $Res Function(_MovieListState) _then) = __$MovieListStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState nowPlayingMoviesState, RequestState popularMoviesState, RequestState topRatedMoviesState, String? errorMessage, List<
        Movie> nowPlayingMovies, List<Movie> popularMovies, List<
        Movie> topRatedMovies
  });


}

/// @nodoc
class __$MovieListStateCopyWithImpl<$Res>
    implements _$MovieListStateCopyWith<$Res> {
  __$MovieListStateCopyWithImpl(this._self, this._then);

  final _MovieListState _self;
  final $Res Function(_MovieListState) _then;

  /// Create a copy of MovieListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? nowPlayingMoviesState = null, Object? popularMoviesState = null, Object? topRatedMoviesState = null, Object? errorMessage = freezed, Object? nowPlayingMovies = null, Object? popularMovies = null, Object? topRatedMovies = null,}) {
    return _then(_MovieListState(
      nowPlayingMoviesState: null == nowPlayingMoviesState
          ? _self.nowPlayingMoviesState
          : nowPlayingMoviesState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      popularMoviesState: null == popularMoviesState
          ? _self.popularMoviesState
          : popularMoviesState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      topRatedMoviesState: null == topRatedMoviesState
          ? _self.topRatedMoviesState
          : topRatedMoviesState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      nowPlayingMovies: null == nowPlayingMovies
          ? _self._nowPlayingMovies
          : nowPlayingMovies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      popularMovies: null == popularMovies
          ? _self._popularMovies
          : popularMovies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      topRatedMovies: null == topRatedMovies
          ? _self._topRatedMovies
          : topRatedMovies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
    ));
  }


}

// dart format on
