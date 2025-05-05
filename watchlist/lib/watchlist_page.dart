import 'package:common/route.dart';
import 'package:common/state_enum.dart';
import 'package:common/utils.dart';
import 'package:common/widgets/film_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watchlist/bloc/watchlist_movie/watchlist_movie_bloc.dart';
import 'package:watchlist/bloc/watchlist_tv_series/watchlist_tv_series_bloc.dart';

class WatchlistPage extends StatefulWidget {
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
              return FilmCard(
                title: movie.title,
                overview: movie.overview,
                posterPath: movie.posterPath,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.movieDetails,
                    arguments: movie.id,
                  );
                },
              );
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
              return FilmCard(
                title: tvSeries.name,
                overview: tvSeries.overview,
                posterPath: tvSeries.posterPath,
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.tvSeriesDetails,
                    arguments: tvSeries.id,
                  );
                },
              );
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
