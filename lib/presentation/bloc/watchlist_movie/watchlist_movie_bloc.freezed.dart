// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watchlist_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WatchlistMovieEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WatchlistMovieEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchlistMovieEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistMovieEvent()';
  }


}

/// @nodoc
class $WatchlistMovieEventCopyWith<$Res> {
  $WatchlistMovieEventCopyWith(WatchlistMovieEvent _,
      $Res Function(WatchlistMovieEvent) __);
}


/// @nodoc


class _FetchWatchlist
    with DiagnosticableTreeMixin
    implements WatchlistMovieEvent {
  const _FetchWatchlist();


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'WatchlistMovieEvent.fetchWatchlist'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchWatchlist);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistMovieEvent.fetchWatchlist()';
  }


}


/// @nodoc
mixin _$WatchlistMovieState implements DiagnosticableTreeMixin {

  RequestState get state;

  List<Movie> get movies;

  String? get errorMessage;

  /// Create a copy of WatchlistMovieState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WatchlistMovieStateCopyWith<WatchlistMovieState> get copyWith =>
      _$WatchlistMovieStateCopyWithImpl<WatchlistMovieState>(
          this as WatchlistMovieState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'WatchlistMovieState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('movies', movies))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is WatchlistMovieState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(movies),
      errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistMovieState(state: $state, movies: $movies, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class $WatchlistMovieStateCopyWith<$Res> {
  factory $WatchlistMovieStateCopyWith(WatchlistMovieState value,
      $Res Function(WatchlistMovieState) _then) = _$WatchlistMovieStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, List<Movie> movies, String? errorMessage
  });


}

/// @nodoc
class _$WatchlistMovieStateCopyWithImpl<$Res>
    implements $WatchlistMovieStateCopyWith<$Res> {
  _$WatchlistMovieStateCopyWithImpl(this._self, this._then);

  final WatchlistMovieState _self;
  final $Res Function(WatchlistMovieState) _then;

  /// Create a copy of WatchlistMovieState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? state = null, Object? movies = null, Object? errorMessage = freezed,}) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      movies: null == movies
          ? _self.movies
          : movies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }

}


/// @nodoc


class _WatchlistMovieState
    with DiagnosticableTreeMixin
    implements WatchlistMovieState {
  const _WatchlistMovieState(
      {this.state = RequestState.empty, final List<Movie> movies = const [
      ], this.errorMessage = null}) : _movies = movies;


  @override
  @JsonKey()
  final RequestState state;
  final List<Movie> _movies;

  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  @JsonKey()
  final String? errorMessage;

  /// Create a copy of WatchlistMovieState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WatchlistMovieStateCopyWith<_WatchlistMovieState> get copyWith =>
      __$WatchlistMovieStateCopyWithImpl<_WatchlistMovieState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'WatchlistMovieState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('movies', movies))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchlistMovieState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(_movies),
      errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'WatchlistMovieState(state: $state, movies: $movies, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class _$WatchlistMovieStateCopyWith<$Res>
    implements $WatchlistMovieStateCopyWith<$Res> {
  factory _$WatchlistMovieStateCopyWith(_WatchlistMovieState value,
      $Res Function(_WatchlistMovieState) _then) = __$WatchlistMovieStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, List<Movie> movies, String? errorMessage
  });


}

/// @nodoc
class __$WatchlistMovieStateCopyWithImpl<$Res>
    implements _$WatchlistMovieStateCopyWith<$Res> {
  __$WatchlistMovieStateCopyWithImpl(this._self, this._then);

  final _WatchlistMovieState _self;
  final $Res Function(_WatchlistMovieState) _then;

  /// Create a copy of WatchlistMovieState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = null, Object? movies = null, Object? errorMessage = freezed,}) {
    return _then(_WatchlistMovieState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      movies: null == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }


}

// dart format on
