import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../models/pattern.dart';
import 'pattern_database.dart';

@lazySingleton
class PatternsRepository {
  PatternsRepository(this._database);

  final PatternDatabase _database;

  Future<List<Pattern>> fetchPatterns() async {
    final query = _database.select(_database.patterns)
      ..orderBy([(table) => OrderingTerm.asc(table.id)]);
    final rows = await query.get();
    return rows
        .map(
          (row) => Pattern(
            title: row.title,
            shortDescription: row.shortDescription,
            fullDescription: row.fullDescription,
            image: row.image,
          ),
        )
        .toList();
  }
}
