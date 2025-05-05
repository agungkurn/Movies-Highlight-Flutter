import 'package:common/route.dart';
import 'package:common/state_enum.dart';
import 'package:common/widgets/film_card.dart';
import 'package:ditonton/presentation/bloc/popular_movies/popular_movies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularMoviesPage extends StatefulWidget {
  static const routeName = '/popular-movie';

  const PopularMoviesPage({super.key});

  @override
  State<PopularMoviesPage> createState() => _PopularMoviesPageState();
}

class _PopularMoviesPageState extends State<PopularMoviesPage> {
  @override
  void initState() {
    super.initState();
    context.read<PopularMoviesBloc>().add(PopularMoviesEvent.fetchPopular());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Popular Movies')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
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
