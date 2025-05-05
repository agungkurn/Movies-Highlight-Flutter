import 'package:data/datasources/db/database_helper.dart';
import 'package:data/datasources/movie_local_data_source.dart';
import 'package:data/datasources/movie_remote_data_source.dart';
import 'package:data/datasources/tv_local_data_source.dart';
import 'package:data/datasources/tv_remote_data_source.dart';
import 'package:http/io_client.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  MovieRemoteDataSource,
  MovieLocalDataSource,
  DatabaseHelper,
  TvRemoteDataSource,
  TvSeriesLocalDataSource
], customMocks: [
  MockSpec<IOClient>(as: #MockIOClient)
])
void main() {}
