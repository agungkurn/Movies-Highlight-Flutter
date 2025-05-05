// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tv_series_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TvSeriesSearchEvent implements DiagnosticableTreeMixin {

  String get query;

  /// Create a copy of TvSeriesSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvSeriesSearchEventCopyWith<TvSeriesSearchEvent> get copyWith =>
      _$TvSeriesSearchEventCopyWithImpl<TvSeriesSearchEvent>(
          this as TvSeriesSearchEvent, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TvSeriesSearchEvent'))..add(
        DiagnosticsProperty('query', query));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TvSeriesSearchEvent &&
            (identical(other.query, query) || other.query == query));
  }


  @override
  int get hashCode => Object.hash(runtimeType, query);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesSearchEvent(query: $query)';
  }


}

/// @nodoc
abstract mixin class $TvSeriesSearchEventCopyWith<$Res> {
  factory $TvSeriesSearchEventCopyWith(TvSeriesSearchEvent value,
      $Res Function(TvSeriesSearchEvent) _then) = _$TvSeriesSearchEventCopyWithImpl;

  @useResult
  $Res call({
    String query
  });


}
/// @nodoc
class _$TvSeriesSearchEventCopyWithImpl<$Res>
    implements $TvSeriesSearchEventCopyWith<$Res> {
  _$TvSeriesSearchEventCopyWithImpl(this._self, this._then);

  final TvSeriesSearchEvent _self;
  final $Res Function(TvSeriesSearchEvent) _then;

  /// Create a copy of TvSeriesSearchEvent
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


class _Search with DiagnosticableTreeMixin implements TvSeriesSearchEvent {
  const _Search(this.query);


  @override final String query;

  /// Create a copy of TvSeriesSearchEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(
        DiagnosticsProperty('type', 'TvSeriesSearchEvent.search'))..add(
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
    return 'TvSeriesSearchEvent.search(query: $query)';
  }


}

/// @nodoc
abstract mixin class _$SearchCopyWith<$Res>
    implements $TvSeriesSearchEventCopyWith<$Res> {
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

  /// Create a copy of TvSeriesSearchEvent
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
mixin _$TvSeriesSearchState implements DiagnosticableTreeMixin {

  RequestState get state;

  List<TvSeries> get searchResult;

  String? get errorMessage;

  /// Create a copy of TvSeriesSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TvSeriesSearchStateCopyWith<TvSeriesSearchState> get copyWith =>
      _$TvSeriesSearchStateCopyWithImpl<TvSeriesSearchState>(
          this as TvSeriesSearchState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TvSeriesSearchState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('searchResult', searchResult))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is TvSeriesSearchState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(
                other.searchResult, searchResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType, const DeepCollectionEquality().hash(state),
          const DeepCollectionEquality().hash(searchResult), errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesSearchState(state: $state, searchResult: $searchResult, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class $TvSeriesSearchStateCopyWith<$Res> {
  factory $TvSeriesSearchStateCopyWith(TvSeriesSearchState value,
      $Res Function(TvSeriesSearchState) _then) = _$TvSeriesSearchStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState state, List<TvSeries> searchResult, String? errorMessage
  });


}
/// @nodoc
class _$TvSeriesSearchStateCopyWithImpl<$Res>
    implements $TvSeriesSearchStateCopyWith<$Res> {
  _$TvSeriesSearchStateCopyWithImpl(this._self, this._then);

  final TvSeriesSearchState _self;
  final $Res Function(TvSeriesSearchState) _then;

  /// Create a copy of TvSeriesSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? state = freezed, Object? searchResult = null, Object? errorMessage = freezed,}) {
    return _then(_self.copyWith(
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      searchResult: null == searchResult
          ? _self.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }

}


/// @nodoc


class _TvSeriesSearchState
    with DiagnosticableTreeMixin
    implements TvSeriesSearchState {
  const _TvSeriesSearchState({this.state = RequestState.empty, final List<
      TvSeries> searchResult = const [], this.errorMessage = null})
      : _searchResult = searchResult;


  @override
  @JsonKey()
  final RequestState state;
  final List<TvSeries> _searchResult;

  @override
  @JsonKey()
  List<TvSeries> get searchResult {
    if (_searchResult is EqualUnmodifiableListView) return _searchResult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResult);
  }

  @override
  @JsonKey()
  final String? errorMessage;

  /// Create a copy of TvSeriesSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TvSeriesSearchStateCopyWith<_TvSeriesSearchState> get copyWith =>
      __$TvSeriesSearchStateCopyWithImpl<_TvSeriesSearchState>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'TvSeriesSearchState'))..add(
        DiagnosticsProperty('state', state))..add(
        DiagnosticsProperty('searchResult', searchResult))..add(
        DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TvSeriesSearchState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(
                other._searchResult, _searchResult) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType, const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(_searchResult), errorMessage);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'TvSeriesSearchState(state: $state, searchResult: $searchResult, errorMessage: $errorMessage)';
  }


}

/// @nodoc
abstract mixin class _$TvSeriesSearchStateCopyWith<$Res>
    implements $TvSeriesSearchStateCopyWith<$Res> {
  factory _$TvSeriesSearchStateCopyWith(_TvSeriesSearchState value,
      $Res Function(_TvSeriesSearchState) _then) = __$TvSeriesSearchStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState state, List<TvSeries> searchResult, String? errorMessage
  });


}
/// @nodoc
class __$TvSeriesSearchStateCopyWithImpl<$Res>
    implements _$TvSeriesSearchStateCopyWith<$Res> {
  __$TvSeriesSearchStateCopyWithImpl(this._self, this._then);

  final _TvSeriesSearchState _self;
  final $Res Function(_TvSeriesSearchState) _then;

  /// Create a copy of TvSeriesSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? state = freezed, Object? searchResult = null, Object? errorMessage = freezed,}) {
    return _then(_TvSeriesSearchState(
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
      as RequestState,
      searchResult: null == searchResult
          ? _self._searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
      as List<TvSeries>,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
    ));
  }


}

// dart format on
