// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pattern_database.dart';

// ignore_for_file: type=lint
class $PatternsTable extends Patterns
    with TableInfo<$PatternsTable, PatternRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PatternsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _shortDescriptionMeta = const VerificationMeta(
    'shortDescription',
  );
  @override
  late final GeneratedColumn<String> shortDescription = GeneratedColumn<String>(
    'short_description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fullDescriptionMeta = const VerificationMeta(
    'fullDescription',
  );
  @override
  late final GeneratedColumn<String> fullDescription = GeneratedColumn<String>(
    'full_description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
    'image',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    shortDescription,
    fullDescription,
    image,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'patterns';
  @override
  VerificationContext validateIntegrity(
    Insertable<PatternRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('short_description')) {
      context.handle(
        _shortDescriptionMeta,
        shortDescription.isAcceptableOrUnknown(
          data['short_description']!,
          _shortDescriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_shortDescriptionMeta);
    }
    if (data.containsKey('full_description')) {
      context.handle(
        _fullDescriptionMeta,
        fullDescription.isAcceptableOrUnknown(
          data['full_description']!,
          _fullDescriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_fullDescriptionMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
        _imageMeta,
        image.isAcceptableOrUnknown(data['image']!, _imageMeta),
      );
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PatternRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PatternRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      shortDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}short_description'],
      )!,
      fullDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}full_description'],
      )!,
      image: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image'],
      )!,
    );
  }

  @override
  $PatternsTable createAlias(String alias) {
    return $PatternsTable(attachedDatabase, alias);
  }
}

class PatternRow extends DataClass implements Insertable<PatternRow> {
  final int id;
  final String title;
  final String shortDescription;
  final String fullDescription;
  final String image;
  const PatternRow({
    required this.id,
    required this.title,
    required this.shortDescription,
    required this.fullDescription,
    required this.image,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['short_description'] = Variable<String>(shortDescription);
    map['full_description'] = Variable<String>(fullDescription);
    map['image'] = Variable<String>(image);
    return map;
  }

  PatternsCompanion toCompanion(bool nullToAbsent) {
    return PatternsCompanion(
      id: Value(id),
      title: Value(title),
      shortDescription: Value(shortDescription),
      fullDescription: Value(fullDescription),
      image: Value(image),
    );
  }

  factory PatternRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PatternRow(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      shortDescription: serializer.fromJson<String>(json['shortDescription']),
      fullDescription: serializer.fromJson<String>(json['fullDescription']),
      image: serializer.fromJson<String>(json['image']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'shortDescription': serializer.toJson<String>(shortDescription),
      'fullDescription': serializer.toJson<String>(fullDescription),
      'image': serializer.toJson<String>(image),
    };
  }

  PatternRow copyWith({
    int? id,
    String? title,
    String? shortDescription,
    String? fullDescription,
    String? image,
  }) => PatternRow(
    id: id ?? this.id,
    title: title ?? this.title,
    shortDescription: shortDescription ?? this.shortDescription,
    fullDescription: fullDescription ?? this.fullDescription,
    image: image ?? this.image,
  );
  PatternRow copyWithCompanion(PatternsCompanion data) {
    return PatternRow(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      shortDescription: data.shortDescription.present
          ? data.shortDescription.value
          : this.shortDescription,
      fullDescription: data.fullDescription.present
          ? data.fullDescription.value
          : this.fullDescription,
      image: data.image.present ? data.image.value : this.image,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PatternRow(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('fullDescription: $fullDescription, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, shortDescription, fullDescription, image);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PatternRow &&
          other.id == this.id &&
          other.title == this.title &&
          other.shortDescription == this.shortDescription &&
          other.fullDescription == this.fullDescription &&
          other.image == this.image);
}

class PatternsCompanion extends UpdateCompanion<PatternRow> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> shortDescription;
  final Value<String> fullDescription;
  final Value<String> image;
  const PatternsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.fullDescription = const Value.absent(),
    this.image = const Value.absent(),
  });
  PatternsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String shortDescription,
    required String fullDescription,
    required String image,
  }) : title = Value(title),
       shortDescription = Value(shortDescription),
       fullDescription = Value(fullDescription),
       image = Value(image);
  static Insertable<PatternRow> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? shortDescription,
    Expression<String>? fullDescription,
    Expression<String>? image,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (shortDescription != null) 'short_description': shortDescription,
      if (fullDescription != null) 'full_description': fullDescription,
      if (image != null) 'image': image,
    });
  }

  PatternsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String>? shortDescription,
    Value<String>? fullDescription,
    Value<String>? image,
  }) {
    return PatternsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      shortDescription: shortDescription ?? this.shortDescription,
      fullDescription: fullDescription ?? this.fullDescription,
      image: image ?? this.image,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (shortDescription.present) {
      map['short_description'] = Variable<String>(shortDescription.value);
    }
    if (fullDescription.present) {
      map['full_description'] = Variable<String>(fullDescription.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PatternsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('fullDescription: $fullDescription, ')
          ..write('image: $image')
          ..write(')'))
        .toString();
  }
}

abstract class _$PatternDatabase extends GeneratedDatabase {
  _$PatternDatabase(QueryExecutor e) : super(e);
  $PatternDatabaseManager get managers => $PatternDatabaseManager(this);
  late final $PatternsTable patterns = $PatternsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [patterns];
}

typedef $$PatternsTableCreateCompanionBuilder = PatternsCompanion Function({
  Value<int> id,
  required String title,
  required String shortDescription,
  required String fullDescription,
  required String image,
});
typedef $$PatternsTableUpdateCompanionBuilder = PatternsCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String> shortDescription,
  Value<String> fullDescription,
  Value<String> image,
});

class $$PatternsTableFilterComposer
    extends Composer<_$PatternDatabase, $PatternsTable> {
  $$PatternsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get shortDescription => $composableBuilder(
    column: $table.shortDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fullDescription => $composableBuilder(
    column: $table.fullDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PatternsTableOrderingComposer
    extends Composer<_$PatternDatabase, $PatternsTable> {
  $$PatternsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get shortDescription => $composableBuilder(
    column: $table.shortDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fullDescription => $composableBuilder(
    column: $table.fullDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get image => $composableBuilder(
    column: $table.image,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PatternsTableAnnotationComposer
    extends Composer<_$PatternDatabase, $PatternsTable> {
  $$PatternsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get shortDescription => $composableBuilder(
    column: $table.shortDescription,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fullDescription => $composableBuilder(
    column: $table.fullDescription,
    builder: (column) => column,
  );

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);
}

class $$PatternsTableTableManager
    extends
        RootTableManager<
          _$PatternDatabase,
          $PatternsTable,
          PatternRow,
          $$PatternsTableFilterComposer,
          $$PatternsTableOrderingComposer,
          $$PatternsTableAnnotationComposer,
          $$PatternsTableCreateCompanionBuilder,
          $$PatternsTableUpdateCompanionBuilder,
          (
            PatternRow,
            BaseReferences<_$PatternDatabase, $PatternsTable, PatternRow>,
          ),
          PatternRow,
          PrefetchHooks Function()
        > {
  $$PatternsTableTableManager(_$PatternDatabase db, $PatternsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PatternsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PatternsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PatternsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> shortDescription = const Value.absent(),
                Value<String> fullDescription = const Value.absent(),
                Value<String> image = const Value.absent(),
              }) => PatternsCompanion(
                id: id,
                title: title,
                shortDescription: shortDescription,
                fullDescription: fullDescription,
                image: image,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required String shortDescription,
                required String fullDescription,
                required String image,
              }) => PatternsCompanion.insert(
                id: id,
                title: title,
                shortDescription: shortDescription,
                fullDescription: fullDescription,
                image: image,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable<$PatternsTable, PatternRow>(table),
                  BaseReferences<_$PatternDatabase, $PatternsTable, PatternRow>(
                    db,
                    table,
                    e,
                  ),
                ),
              )
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PatternsTableProcessedTableManager =
    ProcessedTableManager<
      _$PatternDatabase,
      $PatternsTable,
      PatternRow,
      $$PatternsTableFilterComposer,
      $$PatternsTableOrderingComposer,
      $$PatternsTableAnnotationComposer,
      $$PatternsTableCreateCompanionBuilder,
      $$PatternsTableUpdateCompanionBuilder,
      (
        PatternRow,
        BaseReferences<_$PatternDatabase, $PatternsTable, PatternRow>,
      ),
      PatternRow,
      PrefetchHooks Function()
    >;

class $PatternDatabaseManager {
  final _$PatternDatabase _db;
  $PatternDatabaseManager(this._db);
  $$PatternsTableTableManager get patterns =>
      $$PatternsTableTableManager(_db, _db.patterns);
}
