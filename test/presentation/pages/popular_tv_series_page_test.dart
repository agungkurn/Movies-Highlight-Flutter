import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/presentation/bloc/popular_tv_series/popular_tv_series_bloc.dart';
import 'package:ditonton/presentation/pages/popular_tv_series_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'popular_tv_series_page_test.mocks.dart';

@GenerateMocks([PopularTvSeriesBloc])
void main() {
  late MockPopularTvSeriesBloc bloc;

  setUp(() {
    bloc = MockPopularTvSeriesBloc();
  });

  Widget makeTestableWidget(Widget body) {
    return BlocProvider<PopularTvSeriesBloc>.value(
      value: bloc,
      child: MaterialApp(home: body),
    );
  }

  testWidgets('Page should display center progress bar when loading', (
    WidgetTester tester,
  ) async {
    final state = PopularTvSeriesState(state: RequestState.loading);
    when(bloc.stream).thenAnswer((_) => Stream.value(state));
    when(bloc.state).thenReturn(state);

    final progressBarFinder = find.byType(CircularProgressIndicator);
    final centerFinder = find.byType(Center);

    await tester.pumpWidget(makeTestableWidget(PopularTvSeriesPage()));

    expect(centerFinder, findsOneWidget);
    expect(progressBarFinder, findsOneWidget);
  });

  testWidgets('Page should display ListView when data is loaded', (
    WidgetTester tester,
  ) async {
    final state = PopularTvSeriesState(
      state: RequestState.loaded,
      tvSeries: [],
    );
    when(bloc.stream).thenAnswer((_) => Stream.value(state));
    when(bloc.state).thenReturn(state);

    final listViewFinder = find.byType(ListView);

    await tester.pumpWidget(makeTestableWidget(PopularTvSeriesPage()));

    expect(listViewFinder, findsOneWidget);
  });

  testWidgets('Page should display text with message when Error', (
    WidgetTester tester,
  ) async {
    final state = PopularTvSeriesState(
      state: RequestState.error,
      errorMessage: 'Error message',
    );
    when(bloc.stream).thenAnswer((_) => Stream.value(state));
    when(bloc.state).thenReturn(state);

    final textFinder = find.byKey(Key('error_message'));

    await tester.pumpWidget(makeTestableWidget(PopularTvSeriesPage()));

    expect(textFinder, findsOneWidget);
  });
}
