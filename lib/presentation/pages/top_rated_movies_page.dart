import 'package:common/route.dart';
import 'package:common/state_enum.dart';
import 'package:common/widgets/film_card.dart';
import 'package:ditonton/presentation/bloc/top_rated_movies/top_rated_movies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedMoviesPage extends StatefulWidget {
  static const routeName = '/top-rated-movie';

  const TopRatedMoviesPage({super.key});

  @override
  State<TopRatedMoviesPage> createState() => _TopRatedMoviesPageState();
}

class _TopRatedMoviesPageState extends State<TopRatedMoviesPage> {
  @override
  void initState() {
    super.initState();

    context.read<TopRatedMoviesBloc>().add(TopRatedMoviesEvent.fetchTopRated());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top Rated Movies')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TopRatedMoviesBloc, TopRatedMoviesState>(
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
      ),
    );
  }
}
