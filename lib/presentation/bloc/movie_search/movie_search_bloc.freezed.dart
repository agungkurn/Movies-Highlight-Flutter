// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieSearchEvent implements DiagnosticableTreeMixin {

  String get query;

  /// Create a copy of MovieSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieSearchEventCopyWith<MovieSearchEvent> get copyWith =>
      _$MovieSearchEventCopyWithImpl<MovieSearchEvent>(
          this as MovieSearchEvent, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MovieSearchEvent'))..add(
        DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieSearchEvent &&
            (identical(other.query, query) || other.query == query));
  }


  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieSearchEvent(query: $query)';
  }


}

/// @nodoc
abstract mixin class $MovieSearchEventCopyWith<$Res> {
  factory $MovieSearchEventCopyWith(MovieSearchEvent value,
      $Res Function(MovieSearchEvent) _then) = _$MovieSearchEventCopyWithImpl;

  @useResult
  $Res call({
    String query
  });


}

/// @nodoc
class _$MovieSearchEventCopyWithImpl<$Res>
    implements $MovieSearchEventCopyWith<$Res> {
  _$MovieSearchEventCopyWithImpl(this._self, this._then);

  final MovieSearchEvent _self;
  final $Res Function(MovieSearchEvent) _then;

  /// Create a copy of MovieSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? query = null,}) {
    return _then(_self.copyWith(
      query: null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }

}


/// @nodoc


class _Search with DiagnosticableTreeMixin implements MovieSearchEvent {
  const _Search(this.query);


  @override final String query;

  /// Create a copy of MovieSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(
        DiagnosticsProperty('type', 'MovieSearchEvent.search'))..add(
        DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Search &&
            (identical(other.query, query) || other.query == query));
  }


  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieSearchEvent.search(query: $query)';
  }


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res>
    implements $MovieSearchEventCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value,
      $Res Function(_Search) _then) = __$SearchCopyWithImpl;

  @override
  @useResult
  $Res call({
    String query
  });


}

/// @nodoc
class __$SearchCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(this._self, this._then);

  final _Search _self;
  final $Res Function(_Search) _then;

  /// Create a copy of MovieSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({Object? query = null,}) {
    return _then(_Search(
      null == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
      as String,
    ));
  }


}

/// @nodoc
mixin _$MovieSearchState implements DiagnosticableTreeMixin {

  RequestState get state;

  List<Movie> get searchResult;

  String? get errorMessage;

  /// Create a copy of MovieSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieSearchStateCopyWith<MovieSearchState> get copyWith =>
      _$MovieSearchStateCopyWithImpl<MovieSearchState>(
          this as MovieSearchState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MovieSearchState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('searchResult', searchResult))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieSearchState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(
                other.searchResult, searchResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
      runtimeType, state, const DeepCollectionEquality().hash(searchResult),
      errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieSearchState(state: $state, searchResult: $searchResult, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class $MovieSearchStateCopyWith<$Res> {
  factory $MovieSearchStateCopyWith(MovieSearchState value,
      $Res Function(MovieSearchState) _then) = _$MovieSearchStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, List<Movie> searchResult, String? errorMessage
  });


}

/// @nodoc
class _$MovieSearchStateCopyWithImpl<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  _$MovieSearchStateCopyWithImpl(this._self, this._then);

  final MovieSearchState _self;
  final $Res Function(MovieSearchState) _then;

  /// Create a copy of MovieSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? state = null, Object? searchResult = null, Object? errorMessage = freezed,}) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      searchResult: null == searchResult
          ? _self.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }

}


/// @nodoc


class _MovieSearchState
    with DiagnosticableTreeMixin
    implements MovieSearchState {
  const _MovieSearchState(
      {this.state = RequestState.empty, final List<Movie> searchResult = const [
      ], this.errorMessage = null}) : _searchResult = searchResult;


  @override
  @JsonKey()
  final RequestState state;
  final List<Movie> _searchResult;

  @override
  @JsonKey()
  List<Movie> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  @JsonKey()
  final String? errorMessage;

  /// Create a copy of MovieSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieSearchStateCopyWith<_MovieSearchState> get copyWith =>
      __$MovieSearchStateCopyWithImpl<_MovieSearchState>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MovieSearchState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('searchResult', searchResult))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MovieSearchState &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality().equals(
                other._searchResult, _searchResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(runtimeType, state,
      const DeepCollectionEquality().hash(_searchResult), errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieSearchState(state: $state, searchResult: $searchResult, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class _$MovieSearchStateCopyWith<$Res>
    implements $MovieSearchStateCopyWith<$Res> {
  factory _$MovieSearchStateCopyWith(_MovieSearchState value,
      $Res Function(_MovieSearchState) _then) = __$MovieSearchStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, List<Movie> searchResult, String? errorMessage
  });


}

/// @nodoc
class __$MovieSearchStateCopyWithImpl<$Res>
    implements _$MovieSearchStateCopyWith<$Res> {
  __$MovieSearchStateCopyWithImpl(this._self, this._then);

  final _MovieSearchState _self;
  final $Res Function(_MovieSearchState) _then;

  /// Create a copy of MovieSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = null, Object? searchResult = null, Object? errorMessage = freezed,}) {
    return _then(_MovieSearchState(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      searchResult: null == searchResult
          ? _self._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }


}

// dart format on
