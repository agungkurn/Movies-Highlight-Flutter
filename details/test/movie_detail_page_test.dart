import 'dart:async';

import 'package:common/state_enum.dart';
import 'package:details/bloc/movie_details/movie_detail_bloc.dart';
import 'package:details/movie_detail_page.dart';
import 'package:domain/entities/movie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'dummy_data/dummy_objects.dart';
import 'movie_detail_page_test.mocks.dart';

@GenerateMocks([MovieDetailBloc])
void main() {
  late MockMovieDetailBloc bloc;

  setUp(() {
    bloc = MockMovieDetailBloc();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<MovieDetailBloc>.value(
      value: bloc,
      child: MaterialApp(home: body),
    );
  }

  MovieDetailState createLoadedState({
    required bool isWatchlisted,
    String? watchlistMessage,
  }) {
    return MovieDetailState(
      movie: testMovieDetail,
      detailsState: RequestState.loaded,
      recommendationsState: RequestState.loaded,
      movieRecommendations: <Movie>[],
      isInWatchlist: isWatchlisted,
      watchlistMessage: watchlistMessage,
      errorMessage: null,
    );
  }

  testWidgets(
    'Watchlist button should display add icon when movie not added to watchlist',
    (WidgetTester tester) async {
      when(bloc.stream).thenAnswer(
        (_) => Stream.value(createLoadedState(isWatchlisted: false)),
      );
      when(bloc.state).thenReturn(createLoadedState(isWatchlisted: false));

      await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

      final watchlistButtonIcon = find.byIcon(Icons.add);
      expect(watchlistButtonIcon, findsOneWidget);
    },
  );

  testWidgets(
    'Watchlist button should display check icon when movie is added to watchlist',
    (WidgetTester tester) async {
      when(bloc.stream).thenAnswer(
        ((_) => Stream.value(createLoadedState(isWatchlisted: true))),
      );
      when(bloc.state).thenReturn(createLoadedState(isWatchlisted: true));

      await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

      final watchlistButtonIcon = find.byIcon(Icons.check);
      expect(watchlistButtonIcon, findsOneWidget);
    },
  );

  testWidgets(
    'Watchlist button should display Snackbar when added to watchlist',
    (WidgetTester tester) async {
      final initialState = createLoadedState(isWatchlisted: false);
      when(bloc.state).thenReturn(initialState);

      final afterPressState = createLoadedState(
        isWatchlisted: true,
        watchlistMessage: 'Added to Watchlist',
      );

      final controller = StreamController<MovieDetailState>.broadcast();
      when(bloc.stream).thenAnswer((_) => controller.stream);

      await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

      expect(find.byIcon(Icons.add), findsOneWidget);

      await tester.tap(find.byType(FilledButton));

      controller.add(afterPressState);
      await tester.pump();

      expect(find.byType(SnackBar), findsOneWidget);
      expect(find.text('Added to Watchlist'), findsOneWidget);

      controller.close();
    },
  );

  testWidgets(
    'Watchlist button should display AlertDialog when add to watchlist failed',
    (WidgetTester tester) async {
      final initialState = createLoadedState(isWatchlisted: false);
      when(bloc.state).thenReturn(initialState);

      final afterPressState = createLoadedState(
        isWatchlisted: false,
      ).copyWith(errorMessage: 'Failed');

      final controller = StreamController<MovieDetailState>.broadcast();
      when(bloc.stream).thenAnswer((_) => controller.stream);

      await tester.pumpWidget(makeTestableWidget(MovieDetailPage(id: 1)));

      expect(find.byIcon(Icons.add), findsOneWidget);

      await tester.tap(find.byType(FilledButton));

      controller.add(afterPressState);
      await tester.pump();

      expect(find.byType(AlertDialog), findsOneWidget);
      expect(find.text('Failed'), findsOneWidget);

      controller.close();
    },
  );
}
