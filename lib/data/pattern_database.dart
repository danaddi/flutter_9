import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';

import 'initial_patterns.dart';

part 'pattern_database.g.dart';

@DataClassName('PatternRow')
class Patterns extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get shortDescription => text()();
  TextColumn get fullDescription => text()();
  TextColumn get image => text()();
}

@lazySingleton
@DriftDatabase(tables: [Patterns])
class PatternDatabase extends _$PatternDatabase {
  PatternDatabase()
    : super(
        driftDatabase(
          name: 'patterns',
          web: DriftWebOptions(
            sqlite3Wasm: Uri.base.resolve('sqlite3.wasm'),
            driftWorker: Uri.base.resolve('drift_worker.js'),
          ),
        ),
      );

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (migrator) async {
      await migrator.createAll();
      await batch((batch) {
        batch.insertAll(
          patterns,
          initialPatterns.map(
            (pattern) => PatternsCompanion.insert(
              title: pattern.title,
              shortDescription: pattern.shortDescription,
              fullDescription: pattern.fullDescription,
              image: pattern.image,
            ),
          ),
        );
      });
    },
  );
}
