import 'package:common/constants.dart';
import 'package:common/route.dart';
import 'package:common/state_enum.dart';
import 'package:common/widgets/film_card.dart';
import 'package:ditonton/presentation/bloc/tv_series_search/tv_series_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchTvSeriesPage extends StatelessWidget {
  static const routeName = '/search-tv-series';

  const SearchTvSeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onSubmitted: (query) {
                context.read<TvSeriesSearchBloc>().add(
                  TvSeriesSearchEvent.search(query),
                );
              },
              decoration: InputDecoration(
                hintText: 'Search title',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.search,
            ),
            SizedBox(height: 16),
            Text('Search Result', style: kHeading6),
            BlocBuilder<TvSeriesSearchBloc, TvSeriesSearchState>(
              builder: (context, data) {
                if (data.state == RequestState.loading) {
                  return Center(child: CircularProgressIndicator());
                } else if (data.state == RequestState.loaded) {
                  final result = data.searchResult;
                  return Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemBuilder: (context, index) {
                        final tvSeries = data.searchResult[index];
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
                      itemCount: result.length,
                    ),
                  );
                } else {
                  return Expanded(child: Container());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
