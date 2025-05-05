// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailEvent implements DiagnosticableTreeMixin {


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MovieDetailEvent'))
    ;
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailEvent);
  }


  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailEvent()';
  }


}

/// @nodoc
class $MovieDetailEventCopyWith<$Res> {
  $MovieDetailEventCopyWith(MovieDetailEvent _,
      $Res Function(MovieDetailEvent) __);
}


/// @nodoc


class _FetchDetails with DiagnosticableTreeMixin implements MovieDetailEvent {
  const _FetchDetails(this.id);


  final int id;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchDetailsCopyWith<_FetchDetails> get copyWith =>
      __$FetchDetailsCopyWithImpl<_FetchDetails>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(
        DiagnosticsProperty('type', 'MovieDetailEvent.fetchDetails'))..add(
        DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchDetails &&
            (identical(other.id, id) || other.id == id));
  }


  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailEvent.fetchDetails(id: $id)';
  }


}

/// @nodoc
abstract mixin class _$FetchDetailsCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$FetchDetailsCopyWith(_FetchDetails value,
      $Res Function(_FetchDetails) _then) = __$FetchDetailsCopyWithImpl;

  @useResult
  $Res call({
    int id
  });


}
/// @nodoc
class __$FetchDetailsCopyWithImpl<$Res>
    implements _$FetchDetailsCopyWith<$Res> {
  __$FetchDetailsCopyWithImpl(this._self, this._then);

  final _FetchDetails _self;
  final $Res Function(_FetchDetails) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
    return _then(_FetchDetails(
      null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

/// @nodoc


class _FetchRecommendations
    with DiagnosticableTreeMixin
    implements MovieDetailEvent {
  const _FetchRecommendations(this.id);


  final int id;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchRecommendationsCopyWith<_FetchRecommendations> get copyWith =>
      __$FetchRecommendationsCopyWithImpl<_FetchRecommendations>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty(
        'type', 'MovieDetailEvent.fetchRecommendations'))..add(
        DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FetchRecommendations &&
            (identical(other.id, id) || other.id == id));
  }


  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailEvent.fetchRecommendations(id: $id)';
  }


}

/// @nodoc
abstract mixin class _$FetchRecommendationsCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$FetchRecommendationsCopyWith(_FetchRecommendations value,
      $Res Function(_FetchRecommendations) _then) = __$FetchRecommendationsCopyWithImpl;

  @useResult
  $Res call({
    int id
  });


}
/// @nodoc
class __$FetchRecommendationsCopyWithImpl<$Res>
    implements _$FetchRecommendationsCopyWith<$Res> {
  __$FetchRecommendationsCopyWithImpl(this._self, this._then);

  final _FetchRecommendations _self;
  final $Res Function(_FetchRecommendations) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
    return _then(_FetchRecommendations(
      null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

/// @nodoc


class _CheckWatchlistStatus
    with DiagnosticableTreeMixin
    implements MovieDetailEvent {
  const _CheckWatchlistStatus(this.id);


  final int id;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckWatchlistStatusCopyWith<_CheckWatchlistStatus> get copyWith =>
      __$CheckWatchlistStatusCopyWithImpl<_CheckWatchlistStatus>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty(
        'type', 'MovieDetailEvent.checkWatchlistStatus'))..add(
        DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CheckWatchlistStatus &&
            (identical(other.id, id) || other.id == id));
  }


  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailEvent.checkWatchlistStatus(id: $id)';
  }


}

/// @nodoc
abstract mixin class _$CheckWatchlistStatusCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$CheckWatchlistStatusCopyWith(_CheckWatchlistStatus value,
      $Res Function(_CheckWatchlistStatus) _then) = __$CheckWatchlistStatusCopyWithImpl;

  @useResult
  $Res call({
    int id
  });


}
/// @nodoc
class __$CheckWatchlistStatusCopyWithImpl<$Res>
    implements _$CheckWatchlistStatusCopyWith<$Res> {
  __$CheckWatchlistStatusCopyWithImpl(this._self, this._then);

  final _CheckWatchlistStatus _self;
  final $Res Function(_CheckWatchlistStatus) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
    return _then(_CheckWatchlistStatus(
      null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
      as int,
    ));
  }


}

/// @nodoc


class _AddToWatchlist with DiagnosticableTreeMixin implements MovieDetailEvent {
  const _AddToWatchlist(this.movie);


  final MovieDetail movie;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddToWatchlistCopyWith<_AddToWatchlist> get copyWith =>
      __$AddToWatchlistCopyWithImpl<_AddToWatchlist>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(
        DiagnosticsProperty('type', 'MovieDetailEvent.addToWatchlist'))..add(
        DiagnosticsProperty('movie', movie));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddToWatchlist &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }


  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailEvent.addToWatchlist(movie: $movie)';
  }


}

/// @nodoc
abstract mixin class _$AddToWatchlistCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$AddToWatchlistCopyWith(_AddToWatchlist value,
      $Res Function(_AddToWatchlist) _then) = __$AddToWatchlistCopyWithImpl;

  @useResult
  $Res call({
    MovieDetail movie
  });


}
/// @nodoc
class __$AddToWatchlistCopyWithImpl<$Res>
    implements _$AddToWatchlistCopyWith<$Res> {
  __$AddToWatchlistCopyWithImpl(this._self, this._then);

  final _AddToWatchlist _self;
  final $Res Function(_AddToWatchlist) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? movie = freezed,}) {
    return _then(_AddToWatchlist(
      freezed == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
      as MovieDetail,
    ));
  }


}

/// @nodoc


class _RemoveFromWatchlist
    with DiagnosticableTreeMixin
    implements MovieDetailEvent {
  const _RemoveFromWatchlist(this.movie);


  final MovieDetail movie;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RemoveFromWatchlistCopyWith<_RemoveFromWatchlist> get copyWith =>
      __$RemoveFromWatchlistCopyWithImpl<_RemoveFromWatchlist>(
          this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty(
        'type', 'MovieDetailEvent.removeFromWatchlist'))..add(
        DiagnosticsProperty('movie', movie));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveFromWatchlist &&
            const DeepCollectionEquality().equals(other.movie, movie));
  }


  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movie));

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailEvent.removeFromWatchlist(movie: $movie)';
  }


}

/// @nodoc
abstract mixin class _$RemoveFromWatchlistCopyWith<$Res>
    implements $MovieDetailEventCopyWith<$Res> {
  factory _$RemoveFromWatchlistCopyWith(_RemoveFromWatchlist value,
      $Res Function(_RemoveFromWatchlist) _then) = __$RemoveFromWatchlistCopyWithImpl;

  @useResult
  $Res call({
    MovieDetail movie
  });


}
/// @nodoc
class __$RemoveFromWatchlistCopyWithImpl<$Res>
    implements _$RemoveFromWatchlistCopyWith<$Res> {
  __$RemoveFromWatchlistCopyWithImpl(this._self, this._then);

  final _RemoveFromWatchlist _self;
  final $Res Function(_RemoveFromWatchlist) _then;

  /// Create a copy of MovieDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline') $Res call({Object? movie = freezed,}) {
    return _then(_RemoveFromWatchlist(
      freezed == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
      as MovieDetail,
    ));
  }


}

/// @nodoc
mixin _$MovieDetailState implements DiagnosticableTreeMixin {

  RequestState get detailsState;

  RequestState get recommendationsState;

  String? get errorMessage;

  String? get watchlistMessage;

  MovieDetail? get movie;

  List<Movie> get movieRecommendations;

  bool get isInWatchlist;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      _$MovieDetailStateCopyWithImpl<MovieDetailState>(
          this as MovieDetailState, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MovieDetailState'))..add(
        DiagnosticsProperty('detailsState', detailsState))..add(
        DiagnosticsProperty('recommendationsState', recommendationsState))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('watchlistMessage', watchlistMessage))..add(
        DiagnosticsProperty('movie', movie))..add(
        DiagnosticsProperty('movieRecommendations', movieRecommendations))..add(
        DiagnosticsProperty('isInWatchlist', isInWatchlist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MovieDetailState &&
            const DeepCollectionEquality().equals(
                other.detailsState, detailsState) &&
            const DeepCollectionEquality().equals(
                other.recommendationsState, recommendationsState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.watchlistMessage, watchlistMessage) ||
                other.watchlistMessage == watchlistMessage) &&
            const DeepCollectionEquality().equals(other.movie, movie) &&
            const DeepCollectionEquality().equals(
                other.movieRecommendations, movieRecommendations) &&
            (identical(other.isInWatchlist, isInWatchlist) ||
                other.isInWatchlist == isInWatchlist));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          const DeepCollectionEquality().hash(detailsState),
          const DeepCollectionEquality().hash(recommendationsState),
          errorMessage,
          watchlistMessage,
          const DeepCollectionEquality().hash(movie),
          const DeepCollectionEquality().hash(movieRecommendations),
          isInWatchlist);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailState(detailsState: $detailsState, recommendationsState: $recommendationsState, errorMessage: $errorMessage, watchlistMessage: $watchlistMessage, movie: $movie, movieRecommendations: $movieRecommendations, isInWatchlist: $isInWatchlist)';
  }


}

/// @nodoc
abstract mixin class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(MovieDetailState value,
      $Res Function(MovieDetailState) _then) = _$MovieDetailStateCopyWithImpl;

  @useResult
  $Res call({
    RequestState detailsState, RequestState recommendationsState, String? errorMessage, String? watchlistMessage, MovieDetail? movie, List<
        Movie> movieRecommendations, bool isInWatchlist
  });


}
/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._self, this._then);

  final MovieDetailState _self;
  final $Res Function(MovieDetailState) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call(
      {Object? detailsState = freezed, Object? recommendationsState = freezed, Object? errorMessage = freezed, Object? watchlistMessage = freezed, Object? movie = freezed, Object? movieRecommendations = null, Object? isInWatchlist = null,}) {
    return _then(_self.copyWith(
      detailsState: freezed == detailsState
          ? _self.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      recommendationsState: freezed == recommendationsState
          ? _self.recommendationsState
          : recommendationsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      watchlistMessage: freezed == watchlistMessage
          ? _self.watchlistMessage
          : watchlistMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      movie: freezed == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
      as MovieDetail?,
      movieRecommendations: null == movieRecommendations
          ? _self.movieRecommendations
          : movieRecommendations // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      isInWatchlist: null == isInWatchlist
          ? _self.isInWatchlist
          : isInWatchlist // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }

}


/// @nodoc


class _MovieDetailState
    with DiagnosticableTreeMixin
    implements MovieDetailState {
  const _MovieDetailState({this.detailsState = RequestState
      .empty, this.recommendationsState = RequestState
      .empty, this.errorMessage = null, this.watchlistMessage = null, this.movie = null, final List<
      Movie> movieRecommendations = const [], this.isInWatchlist = false})
      : _movieRecommendations = movieRecommendations;


  @override
  @JsonKey()
  final RequestState detailsState;
  @override
  @JsonKey()
  final RequestState recommendationsState;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final String? watchlistMessage;
  @override
  @JsonKey()
  final MovieDetail? movie;
  final List<Movie> _movieRecommendations;

  @override
  @JsonKey()
  List<Movie> get movieRecommendations {
    if (_movieRecommendations is EqualUnmodifiableListView)
      return _movieRecommendations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movieRecommendations);
  }

  @override
  @JsonKey()
  final bool isInWatchlist;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieDetailStateCopyWith<_MovieDetailState> get copyWith =>
      __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);


  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'MovieDetailState'))..add(
        DiagnosticsProperty('detailsState', detailsState))..add(
        DiagnosticsProperty('recommendationsState', recommendationsState))..add(
        DiagnosticsProperty('errorMessage', errorMessage))..add(
        DiagnosticsProperty('watchlistMessage', watchlistMessage))..add(
        DiagnosticsProperty('movie', movie))..add(
        DiagnosticsProperty('movieRecommendations', movieRecommendations))..add(
        DiagnosticsProperty('isInWatchlist', isInWatchlist));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MovieDetailState &&
            const DeepCollectionEquality().equals(
                other.detailsState, detailsState) &&
            const DeepCollectionEquality().equals(
                other.recommendationsState, recommendationsState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.watchlistMessage, watchlistMessage) ||
                other.watchlistMessage == watchlistMessage) &&
            const DeepCollectionEquality().equals(other.movie, movie) &&
            const DeepCollectionEquality().equals(
                other._movieRecommendations, _movieRecommendations) &&
            (identical(other.isInWatchlist, isInWatchlist) ||
                other.isInWatchlist == isInWatchlist));
  }


  @override
  int get hashCode =>
      Object.hash(
          runtimeType,
          const DeepCollectionEquality().hash(detailsState),
          const DeepCollectionEquality().hash(recommendationsState),
          errorMessage,
          watchlistMessage,
          const DeepCollectionEquality().hash(movie),
          const DeepCollectionEquality().hash(_movieRecommendations),
          isInWatchlist);

  @override
  String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
    return 'MovieDetailState(detailsState: $detailsState, recommendationsState: $recommendationsState, errorMessage: $errorMessage, watchlistMessage: $watchlistMessage, movie: $movie, movieRecommendations: $movieRecommendations, isInWatchlist: $isInWatchlist)';
  }


}

/// @nodoc
abstract mixin class _$MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(_MovieDetailState value,
      $Res Function(_MovieDetailState) _then) = __$MovieDetailStateCopyWithImpl;

  @override
  @useResult
  $Res call({
    RequestState detailsState, RequestState recommendationsState, String? errorMessage, String? watchlistMessage, MovieDetail? movie, List<
        Movie> movieRecommendations, bool isInWatchlist
  });


}
/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(this._self, this._then);

  final _MovieDetailState _self;
  final $Res Function(_MovieDetailState) _then;

  /// Create a copy of MovieDetailState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call(
      {Object? detailsState = freezed, Object? recommendationsState = freezed, Object? errorMessage = freezed, Object? watchlistMessage = freezed, Object? movie = freezed, Object? movieRecommendations = null, Object? isInWatchlist = null,}) {
    return _then(_MovieDetailState(
      detailsState: freezed == detailsState
          ? _self.detailsState
          : detailsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      recommendationsState: freezed == recommendationsState
          ? _self.recommendationsState
          : recommendationsState // ignore: cast_nullable_to_non_nullable
      as RequestState,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      watchlistMessage: freezed == watchlistMessage
          ? _self.watchlistMessage
          : watchlistMessage // ignore: cast_nullable_to_non_nullable
      as String?,
      movie: freezed == movie
          ? _self.movie
          : movie // ignore: cast_nullable_to_non_nullable
      as MovieDetail?,
      movieRecommendations: null == movieRecommendations
          ? _self._movieRecommendations
          : movieRecommendations // ignore: cast_nullable_to_non_nullable
      as List<Movie>,
      isInWatchlist: null == isInWatchlist
          ? _self.isInWatchlist
          : isInWatchlist // ignore: cast_nullable_to_non_nullable
      as bool,
    ));
  }


}

// dart format on
