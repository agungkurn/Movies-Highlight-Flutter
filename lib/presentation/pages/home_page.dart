import 'package:cached_network_image/cached_network_image.dart';
import 'package:ditonton/common/constants.dart';
import 'package:ditonton/common/state_enum.dart';
import 'package:ditonton/domain/entities/movie.dart';
import 'package:ditonton/domain/entities/tv_series.dart';
import 'package:ditonton/presentation/bloc/movie_list/movie_list_bloc.dart';
import 'package:ditonton/presentation/bloc/tv_series_list/tv_series_list_bloc.dart';
import 'package:ditonton/presentation/pages/about_page.dart';
import 'package:ditonton/presentation/pages/movie_detail_page.dart';
import 'package:ditonton/presentation/pages/popular_movies_page.dart';
import 'package:ditonton/presentation/pages/popular_tv_series_page.dart';
import 'package:ditonton/presentation/pages/search_movie_page.dart';
import 'package:ditonton/presentation/pages/search_tv_series_page.dart';
import 'package:ditonton/presentation/pages/top_rated_movies_page.dart';
import 'package:ditonton/presentation/pages/top_rated_tv_series_page.dart';
import 'package:ditonton/presentation/pages/tv_series_detail_page.dart';
import 'package:ditonton/presentation/pages/watchlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    context.read<MovieListBloc>()
      ..add(MovieListEvent.fetchNowPlaying())
      ..add(MovieListEvent.fetchTopRated())
      ..add(MovieListEvent.fetchPopular());
    context.read<TvSeriesListBloc>()
      ..add(TvSeriesListEvent.fetchNowAiring())
      ..add(TvSeriesListEvent.fetchTopRated())
      ..add(TvSeriesListEvent.fetchPopular());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/circle-g.png'),
                backgroundColor: Colors.grey.shade900,
              ),
              accountName: Text('Ditonton'),
              accountEmail: Text('ditonton@dicoding.com'),
              decoration: BoxDecoration(color: Colors.grey.shade900),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('Movies'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.tv),
              title: Text('TV Series'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.save_alt),
              title: Text('Watchlist'),
              onTap: () {
                Navigator.pushNamed(context, WatchlistPage.routeName);
              },
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, AboutPage.routeName);
              },
              leading: Icon(Icons.info_outline),
              title: Text('About'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Ditonton'),
        actions: [
          IconButton(
            onPressed: () {
              switch (_tabController.index) {
                case 0:
                  Navigator.pushNamed(context, SearchMoviePage.routeName);
                  break;
                case 1:
                  Navigator.pushNamed(context, SearchTvSeriesPage.routeName);
                  break;
              }
            },
            icon: Icon(Icons.search),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [Tab(text: "Movies"), Tab(text: "TV Series")],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [_movieTab(context), _tvSeriesTab(context)],
      ),
    );
  }

  Widget _movieTab(BuildContext context) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Now Playing', style: kHeading6),
          BlocBuilder<MovieListBloc, MovieListState>(
            builder: (context, data) {
              final state = data.nowPlayingMoviesState;
              if (state == RequestState.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state == RequestState.loaded) {
                return MovieList(data.nowPlayingMovies);
              } else {
                return Text('Failed');
              }
            },
          ),
          _buildSubHeading(
            title: 'Popular',
            onTap:
                () => Navigator.pushNamed(context, PopularMoviesPage.routeName),
          ),
          BlocBuilder<MovieListBloc, MovieListState>(
            builder: (context, data) {
              final state = data.popularMoviesState;
              if (state == RequestState.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state == RequestState.loaded) {
                return MovieList(data.popularMovies);
              } else {
                return Text('Failed');
              }
            },
          ),
          _buildSubHeading(
            title: 'Top Rated',
            onTap:
                () =>
                    Navigator.pushNamed(context, TopRatedMoviesPage.routeName),
          ),
          BlocBuilder<MovieListBloc, MovieListState>(
            builder: (context, data) {
              final state = data.topRatedMoviesState;
              if (state == RequestState.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state == RequestState.loaded) {
                return MovieList(data.topRatedMovies);
              } else {
                return Text('Failed');
              }
            },
          ),
        ],
      ),
    ),
  );

  Widget _tvSeriesTab(BuildContext context) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Now Airing', style: kHeading6),
          BlocBuilder<TvSeriesListBloc, TvSeriesListState>(
            builder: (context, data) {
              final state = data.nowAiringState;
              if (state == RequestState.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state == RequestState.loaded) {
                return TvSeriesList(data.nowAiring);
              } else {
                return Text('Failed');
              }
            },
          ),
          _buildSubHeading(
            title: 'Popular',
            onTap:
                () =>
                    Navigator.pushNamed(context, PopularTvSeriesPage.routeName),
          ),
          BlocBuilder<TvSeriesListBloc, TvSeriesListState>(
            builder: (context, data) {
              final state = data.popularState;
              if (state == RequestState.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state == RequestState.loaded) {
                return TvSeriesList(data.popular);
              } else {
                return Text('Failed');
              }
            },
          ),
          _buildSubHeading(
            title: 'Top Rated',
            onTap:
                () => Navigator.pushNamed(
                  context,
                  TopRatedTvSeriesPage.routeName,
                ),
          ),
          BlocBuilder<TvSeriesListBloc, TvSeriesListState>(
            builder: (context, data) {
              final state = data.topRatedState;
              if (state == RequestState.loading) {
                return Center(child: CircularProgressIndicator());
              } else if (state == RequestState.loaded) {
                return TvSeriesList(data.topRated);
              } else {
                return Text('Failed');
              }
            },
          ),
        ],
      ),
    ),
  );

  Row _buildSubHeading({required String title, required Function() onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: kHeading6),
        InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [Text('See More'), Icon(Icons.arrow_forward_ios)],
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class MovieList extends StatelessWidget {
  final List<Movie> movies;

  const MovieList(this.movies, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Container(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  MovieDetailPage.routeName,
                  arguments: movie.id,
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: CachedNetworkImage(
                  imageUrl: '$baseImageUrl${movie.posterPath}',
                  placeholder:
                      (context, url) =>
                          Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          );
        },
        itemCount: movies.length,
      ),
    );
  }
}

class TvSeriesList extends StatelessWidget {
  final List<TvSeries> tvSeries;

  const TvSeriesList(this.tvSeries, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final movie = tvSeries[index];
          return Container(
            padding: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  TvSeriesDetailPage.routeName,
                  arguments: movie.id,
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                child: CachedNetworkImage(
                  imageUrl: '$baseImageUrl${movie.posterPath}',
                  placeholder:
                      (context, url) =>
                          Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
            ),
          );
        },
        itemCount: tvSeries.length,
      ),
    );
  }
}
