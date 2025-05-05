// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TopRatedMoviesEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TopRatedMoviesEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopRatedMoviesEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedMoviesEvent()';
  }


}

/// @nodoc
class $TopRatedMoviesEventCopyWith<$Res> {
  $TopRatedMoviesEventCopyWith(TopRatedMoviesEvent _,
      $Res Function(TopRatedMoviesEvent) __);
}


/// @nodoc


class _FetchTopRated
    with DiagnosticableTreeMixin
    implements TopRatedMoviesEvent {
  const _FetchTopRated();


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'TopRatedMoviesEvent.fetchTopRated'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchTopRated);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedMoviesEvent.fetchTopRated()';
  }


}


/// @nodoc
mixin _$TopRatedMoviesState implements DiagnosticableTreeMixin {

  RequestState get state;

  String? get errorMessage;

  List<Movie> get movies;

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopRatedMoviesStateCopyWith<TopRatedMoviesState> get copyWith =>
      _$TopRatedMoviesStateCopyWithImpl<TopRatedMoviesState>(
          this as TopRatedMoviesState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TopRatedMoviesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('movies', movies));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TopRatedMoviesState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other.movies, movies));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType, const DeepCollectionEquality().hash(state), errorMessage,
      const DeepCollectionEquality().hash(movies));

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedMoviesState(state: $state, errorMessage: $errorMessage, movies: $movies)';
  }


}

/// @nodoc
abstract mixin class $TopRatedMoviesStateCopyWith<$Res> {
  factory $TopRatedMoviesStateCopyWith(TopRatedMoviesState value,
      $Res Function(TopRatedMoviesState) _then) = _$TopRatedMoviesStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<Movie> movies
  });


}
/// @nodoc
class _$TopRatedMoviesStateCopyWithImpl<$Res>
    implements $TopRatedMoviesStateCopyWith<$Res> {
  _$TopRatedMoviesStateCopyWithImpl(this._self, this._then);

  final TopRatedMoviesState _self;
  final $Res Function(TopRatedMoviesState) _then;

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? state = freezed, Object? errorMessage = freezed, Object? movies = null,}) {
    return _then(_self.copyWith(
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      movies: null == movies
          ? _self.movies
          : movies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
    ));
  }

}


/// @nodoc


class _TopRatedMoviesState
    with DiagnosticableTreeMixin
    implements TopRatedMoviesState {
  const _TopRatedMoviesState(
      {this.state = RequestState.empty, this.errorMessage = null, final List<
          Movie> movies = const []}) : _movies = movies;


  @override
  @JsonKey()
  final RequestState state;
  @override
  @JsonKey()
  final String? errorMessage;
  final List<Movie> _movies;

  @override
  @JsonKey()
  List<Movie> get movies {
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }


  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TopRatedMoviesStateCopyWith<_TopRatedMoviesState> get copyWith =>
      __$TopRatedMoviesStateCopyWithImpl<_TopRatedMoviesState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TopRatedMoviesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('movies', movies));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TopRatedMoviesState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType, const DeepCollectionEquality().hash(state), errorMessage,
      const DeepCollectionEquality().hash(_movies));

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TopRatedMoviesState(state: $state, errorMessage: $errorMessage, movies: $movies)';
  }


}

/// @nodoc
abstract mixin class _$TopRatedMoviesStateCopyWith<$Res>
    implements $TopRatedMoviesStateCopyWith<$Res> {
  factory _$TopRatedMoviesStateCopyWith(_TopRatedMoviesState value,
      $Res Function(_TopRatedMoviesState) _then) = __$TopRatedMoviesStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<Movie> movies
  });


}
/// @nodoc
class __$TopRatedMoviesStateCopyWithImpl<$Res>
    implements _$TopRatedMoviesStateCopyWith<$Res> {
  __$TopRatedMoviesStateCopyWithImpl(this._self, this._then);

  final _TopRatedMoviesState _self;
  final $Res Function(_TopRatedMoviesState) _then;

  /// Create a copy of TopRatedMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = freezed, Object? errorMessage = freezed, Object? movies = null,}) {
    return _then(_TopRatedMoviesState(
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      movies: null == movies
          ? _self._movies
          : movies // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
    ));
  }


}

// dart format on
