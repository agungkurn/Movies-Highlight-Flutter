import 'dart:convert';

import 'package:data/models/tv_series_model.dart';
import 'package:data/models/tv_series_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../json_reader.dart';

void main() {
  final tTvSeriesModel = TvSeriesModel(
    adult: false,
    backdropPath: "/h0y3OzHzG4yNvn8u3Za6ByH8lrQ.jpg",
    genreIds: [18, 10766],
    id: 45789,
    originalName: "Sturm der Liebe",
    overview:
        "These are the stories of relationships taking place in the fictional five-star hotel Fürstenhof, located in Feldkirchen-Westerham near Rosenheim with the plot revolving around members of the family room area, the hotel owners, and employees.",
    popularity: 574.302,
    posterPath: "/jfFNydakwvbeACEwSd2Gh8UWtba.jpg",
    firstAirDate: '2005-09-26',
    name: "Sturm der Liebe",
    voteAverage: 6.014,
    voteCount: 35,
    originCountry: ['DE'],
    originalLanguage: 'de',
  );
  final tTvSeriesResponseModel =
      TvSeriesResponse(tvSeriesList: <TvSeriesModel>[tTvSeriesModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readJson('dummy_data/now_airing_tv_series.json'));
      // act
      final result = TvSeriesResponse.fromJson(jsonMap);
      // assert
      expect(result, tTvSeriesResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      // arrange

      // act
      final result = tTvSeriesResponseModel.toJson();
      // assert
      final expectedJsonMap = {
        "results": [
          {
            "adult": false,
            "backdrop_path": "/h0y3OzHzG4yNvn8u3Za6ByH8lrQ.jpg",
            "genre_ids": [18, 10766],
            "id": 45789,
            "origin_country": ["DE"],
            "original_language": "de",
            "original_name": "Sturm der Liebe",
            "overview":
                "These are the stories of relationships taking place in the fictional five-star hotel Fürstenhof, located in Feldkirchen-Westerham near Rosenheim with the plot revolving around members of the family room area, the hotel owners, and employees.",
            "popularity": 574.302,
            "poster_path": "/jfFNydakwvbeACEwSd2Gh8UWtba.jpg",
            "first_air_date": "2005-09-26",
            "name": "Sturm der Liebe",
            "vote_average": 6.014,
            "vote_count": 35
          }
        ],
      };
      expect(result, expectedJsonMap);
    });
  });
}
