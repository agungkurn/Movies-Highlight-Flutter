import 'package:common/route.dart';
import 'package:common/state_enum.dart';
import 'package:common/widgets/film_card.dart';
import 'package:ditonton/presentation/bloc/top_rated_tv_series/top_rated_tv_series_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopRatedTvSeriesPage extends StatefulWidget {
  static const routeName = '/top-rated-tv-series';

  const TopRatedTvSeriesPage({super.key});

  @override
  State<TopRatedTvSeriesPage> createState() => _TopRatedTvSeriesPageState();
}

class _TopRatedTvSeriesPageState extends State<TopRatedTvSeriesPage> {
  @override
  void initState() {
    super.initState();

    context.read<TopRatedTvSeriesBloc>().add(
      TopRatedTvSeriesEvent.fetchTopRated(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Top Rated TV Series')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<TopRatedTvSeriesBloc, TopRatedTvSeriesState>(
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
      ),
    );
  }
}
