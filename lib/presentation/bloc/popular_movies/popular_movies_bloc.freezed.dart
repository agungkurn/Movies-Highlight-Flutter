// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'popular_movies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PopularMoviesEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PopularMoviesEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopularMoviesEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'PopularMoviesEvent()';
  }


}

/// @nodoc
class $PopularMoviesEventCopyWith<$Res> {
  $PopularMoviesEventCopyWith(PopularMoviesEvent _,
      $Res Function(PopularMoviesEvent) __);
}


/// @nodoc


class _FetchPopular with DiagnosticableTreeMixin implements PopularMoviesEvent {
  const _FetchPopular();


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'PopularMoviesEvent.fetchPopular'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchPopular);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'PopularMoviesEvent.fetchPopular()';
  }


}


/// @nodoc
mixin _$PopularMoviesState implements DiagnosticableTreeMixin {

  RequestState get state;

  String? get errorMessage;

  List<Movie> get movies;

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PopularMoviesStateCopyWith<PopularMoviesState> get copyWith =>
      _$PopularMoviesStateCopyWithImpl<PopularMoviesState>(
          this as PopularMoviesState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PopularMoviesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('movies', movies));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PopularMoviesState &&
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
    return 'PopularMoviesState(state: $state, errorMessage: $errorMessage, movies: $movies)';
  }


}

/// @nodoc
abstract mixin class $PopularMoviesStateCopyWith<$Res> {
  factory $PopularMoviesStateCopyWith(PopularMoviesState value,
      $Res Function(PopularMoviesState) _then) = _$PopularMoviesStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<Movie> movies
  });


}
/// @nodoc
class _$PopularMoviesStateCopyWithImpl<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  _$PopularMoviesStateCopyWithImpl(this._self, this._then);

  final PopularMoviesState _self;
  final $Res Function(PopularMoviesState) _then;

  /// Create a copy of PopularMoviesState
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


class _PopularMoviesState
    with DiagnosticableTreeMixin
    implements PopularMoviesState {
  const _PopularMoviesState(
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


  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PopularMoviesStateCopyWith<_PopularMoviesState> get copyWith =>
      __$PopularMoviesStateCopyWithImpl<_PopularMoviesState>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'PopularMoviesState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('movies', movies));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PopularMoviesState &&
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
    return 'PopularMoviesState(state: $state, errorMessage: $errorMessage, movies: $movies)';
  }


}

/// @nodoc
abstract mixin class _$PopularMoviesStateCopyWith<$Res>
    implements $PopularMoviesStateCopyWith<$Res> {
  factory _$PopularMoviesStateCopyWith(_PopularMoviesState value,
      $Res Function(_PopularMoviesState) _then) = __$PopularMoviesStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, String? errorMessage, List<Movie> movies
  });


}
/// @nodoc
class __$PopularMoviesStateCopyWithImpl<$Res>
    implements _$PopularMoviesStateCopyWith<$Res> {
  __$PopularMoviesStateCopyWithImpl(this._self, this._then);

  final _PopularMoviesState _self;
  final $Res Function(_PopularMoviesState) _then;

  /// Create a copy of PopularMoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = freezed, Object? errorMessage = freezed, Object? movies = null,}) {
    return _then(_PopularMoviesState(
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
