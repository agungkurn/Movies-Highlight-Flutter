import 'package:equatable/equatable.dart';

class TvSeriesNetwork extends Equatable {
  final int id;
  final String? logoPath;
  final String name;
  final String originCountry;

  const TvSeriesNetwork({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  @override
  List<Object?> get props => [
        id,
        logoPath,
        name,
        originCountry,
      ];
}
