import 'package:domain/entities/genre.dart';
import 'package:domain/entities/movie.dart';
import 'package:domain/entities/movie_detail.dart';
import 'package:domain/entities/tv_series.dart';
import 'package:domain/entities/tv_series_details.dart';
import 'package:domain/entities/tv_series_network.dart';
import 'package:domain/entities/tv_series_season.dart';

final testMovie = Movie(
  adult: false,
  backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
  genreIds: [14, 28],
  id: 557,
  originalTitle: 'Spider-Man',
  overview:
      'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
  popularity: 60.441,
  posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
  releaseDate: '2002-05-01',
  title: 'Spider-Man',
  video: false,
  voteAverage: 7.2,
  voteCount: 13507,
);

final testMovieList = [testMovie];

final testTvSeries = TvSeries(
    adult: false,
    backdropPath: '/muth4OYamXf41G2evdrLEg8d3om.jpg',
    genreIds: [14, 28],
    id: 557,
    originalName: 'Spider-Man',
    overview:
        'After being bitten by a genetically altered spider, nerdy high school student Peter Parker is endowed with amazing powers to become the Amazing superhero known as Spider-Man.',
    popularity: 60.441,
    posterPath: '/rweIrveL43TaxUN0akQEaAXL6x0.jpg',
    firstAirDate: '2025-01-01',
    name: 'Spider-Man',
    voteAverage: 7.2,
    voteCount: 13507,
    originalLanguage: 'en',
    originCountry: ['abc']);

final testTvSeriesList = [testTvSeries];

final testMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [Genre(id: 1, name: 'Action')],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 120,
  title: 'title',
  voteAverage: 1,
  voteCount: 1,
);

final testTvSeriesDetail = TvSeriesDetails(
    adult: false,
    backdropPath: 'backdropPath',
    genres: [Genre(id: 1, name: 'Action')],
    id: 1,
    originalName: 'originalTitle',
    overview: 'overview',
    posterPath: 'posterPath',
    firstAirDate: DateTime(2012),
    episodeRunTime: [120],
    name: 'title',
    voteAverage: 1,
    voteCount: 1,
    originCountry: ['en'],
    originalLanguage: 'en',
    inProduction: false,
    languages: ['en'],
    status: 'ok',
    lastAirDate: DateTime(2012),
    numberOfEpisodes: 3,
    networks: [
      TvSeriesNetwork(
          id: 1,
          logoPath: 'logoPath',
          name: 'name',
          originCountry: 'originCountry')
    ],
    numberOfSeasons: 3,
    popularity: 2.3,
    tagline: '',
    type: '',
    seasons: [
      TvSeriesSeason(
          airDate: DateTime(2012),
          episodeCount: 2,
          id: 1,
          name: 'name',
          overview: 'overview',
          posterPath: 'posterPath',
          seasonNumber: 2,
          voteAverage: .3)
    ]);

final testWatchlistMovie = Movie.watchlist(
  id: 1,
  title: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testWatchlistTvSeries = TvSeries.watchlist(
  id: 1,
  name: 'title',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testMovieMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};

final testTvSeriesMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'title': 'title',
};
