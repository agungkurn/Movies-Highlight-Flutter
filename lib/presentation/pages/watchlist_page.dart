import 'package:common/state_enum.dart';
import 'package:common/utils.dart';
import 'package:ditonton/presentation/bloc/watchlist_movie/watchlist_movie_bloc.dart';
import 'package:ditonton/presentation/bloc/watchlist_tv_series/watchlist_tv_series_bloc.dart';
import 'package:ditonton/presentation/widgets/movie_card_list.dart';
import 'package:ditonton/presentation/widgets/tv_series_card_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistPage extends StatefulWidget {
  static const routeName = '/watchlist';

  const WatchlistPage({super.key});

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> with RouteAware {
  @override
  void initState() {
    super.initState();

    context.read<WatchlistMovieBloc>().add(
      WatchlistMovieEvent.fetchWatchlist(),
    );
    context.read<WatchlistTvSeriesBloc>().add(
      WatchlistTvSeriesEvent.fetchWatchlist(),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void didPopNext() {
    context.read<WatchlistMovieBloc>().add(
      WatchlistMovieEvent.fetchWatchlist(),
    );
    context.read<WatchlistTvSeriesBloc>().add(
      WatchlistTvSeriesEvent.fetchWatchlist(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Watchlist'),
          bottom: TabBar(tabs: [Tab(text: "Movies"), Tab(text: "TV Series")]),
        ),
        body: TabBarView(children: [_movieTab(), _tvSeriesTab()]),
      ),
    );
  }

  Widget _movieTab() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: BlocBuilder<WatchlistMovieBloc, WatchlistMovieState>(
      builder: (context, data) {
        if (data.state == RequestState.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (data.state == RequestState.loaded) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final movie = data.movies[index];
              return MovieCard(movie);
            },
            itemCount: data.movies.length,
          );
        } else {
          return Center(
            key: Key('error_message'),
            child: Text(data.errorMessage ?? "An error occurred"),
          );
        }
      },
    ),
  );

  Widget _tvSeriesTab() => Padding(
    padding: const EdgeInsets.all(8.0),
    child: BlocBuilder<WatchlistTvSeriesBloc, WatchlistTvSeriesState>(
      builder: (context, data) {
        if (data.state == RequestState.loading) {
          return Center(child: CircularProgressIndicator());
        } else if (data.state == RequestState.loaded) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final tvSeries = data.tvSeries[index];
              return TvSeriesCard(tvSeries);
            },
            itemCount: data.tvSeries.length,
          );
        } else {
          return Center(
            key: Key('error_message'),
            child: Text(data.errorMessage ?? "An error occurred"),
          );
        }
      },
    ),
  );

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
}
