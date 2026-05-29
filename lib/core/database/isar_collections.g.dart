// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_collections.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarEventCollection on Isar {
  IsarCollection<IsarEvent> get isarEvents => this.collection();
}

const IsarEventSchema = CollectionSchema(
  name: r'IsarEvent',
  id: 5962100766301502855,
  properties: {
    r'accommodation': PropertySchema(
      id: 0,
      name: r'accommodation',
      type: IsarType.string,
    ),
    r'badgeTexts': PropertySchema(
      id: 1,
      name: r'badgeTexts',
      type: IsarType.stringList,
    ),
    r'badgeTypes': PropertySchema(
      id: 2,
      name: r'badgeTypes',
      type: IsarType.stringList,
    ),
    r'category': PropertySchema(
      id: 3,
      name: r'category',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'currency': PropertySchema(
      id: 5,
      name: r'currency',
      type: IsarType.string,
    ),
    r'date': PropertySchema(
      id: 6,
      name: r'date',
      type: IsarType.string,
    ),
    r'duration': PropertySchema(
      id: 7,
      name: r'duration',
      type: IsarType.string,
    ),
    r'eventId': PropertySchema(
      id: 8,
      name: r'eventId',
      type: IsarType.string,
    ),
    r'genres': PropertySchema(
      id: 9,
      name: r'genres',
      type: IsarType.stringList,
    ),
    r'gradient': PropertySchema(
      id: 10,
      name: r'gradient',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 11,
      name: r'imageUrl',
      type: IsarType.string,
    ),
    r'isFavorite': PropertySchema(
      id: 12,
      name: r'isFavorite',
      type: IsarType.bool,
    ),
    r'isPublished': PropertySchema(
      id: 13,
      name: r'isPublished',
      type: IsarType.bool,
    ),
    r'location': PropertySchema(
      id: 14,
      name: r'location',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 15,
      name: r'name',
      type: IsarType.string,
    ),
    r'pricingAmount': PropertySchema(
      id: 16,
      name: r'pricingAmount',
      type: IsarType.double,
    ),
    r'pricingLabel': PropertySchema(
      id: 17,
      name: r'pricingLabel',
      type: IsarType.string,
    ),
    r'pricingSavings': PropertySchema(
      id: 18,
      name: r'pricingSavings',
      type: IsarType.double,
    ),
    r'pricingSavingsText': PropertySchema(
      id: 19,
      name: r'pricingSavingsText',
      type: IsarType.string,
    ),
    r'section': PropertySchema(
      id: 20,
      name: r'section',
      type: IsarType.string,
    ),
    r'sortOrder': PropertySchema(
      id: 21,
      name: r'sortOrder',
      type: IsarType.long,
    ),
    r'totalRevenue': PropertySchema(
      id: 22,
      name: r'totalRevenue',
      type: IsarType.double,
    ),
    r'totalTicketsSold': PropertySchema(
      id: 23,
      name: r'totalTicketsSold',
      type: IsarType.long,
    ),
    r'transport': PropertySchema(
      id: 24,
      name: r'transport',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 25,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'updatedByEmail': PropertySchema(
      id: 26,
      name: r'updatedByEmail',
      type: IsarType.string,
    )
  },
  estimateSize: _isarEventEstimateSize,
  serialize: _isarEventSerialize,
  deserialize: _isarEventDeserialize,
  deserializeProp: _isarEventDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'eventId': IndexSchema(
      id: -2707901133518603130,
      name: r'eventId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'eventId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarEventGetId,
  getLinks: _isarEventGetLinks,
  attach: _isarEventAttach,
  version: '3.1.0+1',
);

int _isarEventEstimateSize(
  IsarEvent object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.accommodation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.badgeTexts.length * 3;
  {
    for (var i = 0; i < object.badgeTexts.length; i++) {
      final value = object.badgeTexts[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.badgeTypes.length * 3;
  {
    for (var i = 0; i < object.badgeTypes.length; i++) {
      final value = object.badgeTypes[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.currency.length * 3;
  bytesCount += 3 + object.date.length * 3;
  bytesCount += 3 + object.duration.length * 3;
  bytesCount += 3 + object.eventId.length * 3;
  bytesCount += 3 + object.genres.length * 3;
  {
    for (var i = 0; i < object.genres.length; i++) {
      final value = object.genres[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.gradient.length * 3;
  bytesCount += 3 + object.imageUrl.length * 3;
  bytesCount += 3 + object.location.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.pricingLabel.length * 3;
  {
    final value = object.pricingSavingsText;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.section.length * 3;
  bytesCount += 3 + object.transport.length * 3;
  {
    final value = object.updatedByEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarEventSerialize(
  IsarEvent object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accommodation);
  writer.writeStringList(offsets[1], object.badgeTexts);
  writer.writeStringList(offsets[2], object.badgeTypes);
  writer.writeString(offsets[3], object.category);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.currency);
  writer.writeString(offsets[6], object.date);
  writer.writeString(offsets[7], object.duration);
  writer.writeString(offsets[8], object.eventId);
  writer.writeStringList(offsets[9], object.genres);
  writer.writeString(offsets[10], object.gradient);
  writer.writeString(offsets[11], object.imageUrl);
  writer.writeBool(offsets[12], object.isFavorite);
  writer.writeBool(offsets[13], object.isPublished);
  writer.writeString(offsets[14], object.location);
  writer.writeString(offsets[15], object.name);
  writer.writeDouble(offsets[16], object.pricingAmount);
  writer.writeString(offsets[17], object.pricingLabel);
  writer.writeDouble(offsets[18], object.pricingSavings);
  writer.writeString(offsets[19], object.pricingSavingsText);
  writer.writeString(offsets[20], object.section);
  writer.writeLong(offsets[21], object.sortOrder);
  writer.writeDouble(offsets[22], object.totalRevenue);
  writer.writeLong(offsets[23], object.totalTicketsSold);
  writer.writeString(offsets[24], object.transport);
  writer.writeDateTime(offsets[25], object.updatedAt);
  writer.writeString(offsets[26], object.updatedByEmail);
}

IsarEvent _isarEventDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarEvent();
  object.accommodation = reader.readStringOrNull(offsets[0]);
  object.badgeTexts = reader.readStringList(offsets[1]) ?? [];
  object.badgeTypes = reader.readStringList(offsets[2]) ?? [];
  object.category = reader.readString(offsets[3]);
  object.createdAt = reader.readDateTimeOrNull(offsets[4]);
  object.currency = reader.readString(offsets[5]);
  object.date = reader.readString(offsets[6]);
  object.duration = reader.readString(offsets[7]);
  object.eventId = reader.readString(offsets[8]);
  object.genres = reader.readStringList(offsets[9]) ?? [];
  object.gradient = reader.readString(offsets[10]);
  object.imageUrl = reader.readString(offsets[11]);
  object.isFavorite = reader.readBool(offsets[12]);
  object.isPublished = reader.readBool(offsets[13]);
  object.isarId = id;
  object.location = reader.readString(offsets[14]);
  object.name = reader.readString(offsets[15]);
  object.pricingAmount = reader.readDouble(offsets[16]);
  object.pricingLabel = reader.readString(offsets[17]);
  object.pricingSavings = reader.readDoubleOrNull(offsets[18]);
  object.pricingSavingsText = reader.readStringOrNull(offsets[19]);
  object.section = reader.readString(offsets[20]);
  object.sortOrder = reader.readLong(offsets[21]);
  object.totalRevenue = reader.readDouble(offsets[22]);
  object.totalTicketsSold = reader.readLong(offsets[23]);
  object.transport = reader.readString(offsets[24]);
  object.updatedAt = reader.readDateTimeOrNull(offsets[25]);
  object.updatedByEmail = reader.readStringOrNull(offsets[26]);
  return object;
}

P _isarEventDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringList(offset) ?? []) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readDouble(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readStringOrNull(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    case 22:
      return (reader.readDouble(offset)) as P;
    case 23:
      return (reader.readLong(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    case 25:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarEventGetId(IsarEvent object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarEventGetLinks(IsarEvent object) {
  return [];
}

void _isarEventAttach(IsarCollection<dynamic> col, Id id, IsarEvent object) {
  object.isarId = id;
}

extension IsarEventByIndex on IsarCollection<IsarEvent> {
  Future<IsarEvent?> getByEventId(String eventId) {
    return getByIndex(r'eventId', [eventId]);
  }

  IsarEvent? getByEventIdSync(String eventId) {
    return getByIndexSync(r'eventId', [eventId]);
  }

  Future<bool> deleteByEventId(String eventId) {
    return deleteByIndex(r'eventId', [eventId]);
  }

  bool deleteByEventIdSync(String eventId) {
    return deleteByIndexSync(r'eventId', [eventId]);
  }

  Future<List<IsarEvent?>> getAllByEventId(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'eventId', values);
  }

  List<IsarEvent?> getAllByEventIdSync(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'eventId', values);
  }

  Future<int> deleteAllByEventId(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'eventId', values);
  }

  int deleteAllByEventIdSync(List<String> eventIdValues) {
    final values = eventIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'eventId', values);
  }

  Future<Id> putByEventId(IsarEvent object) {
    return putByIndex(r'eventId', object);
  }

  Id putByEventIdSync(IsarEvent object, {bool saveLinks = true}) {
    return putByIndexSync(r'eventId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEventId(List<IsarEvent> objects) {
    return putAllByIndex(r'eventId', objects);
  }

  List<Id> putAllByEventIdSync(List<IsarEvent> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'eventId', objects, saveLinks: saveLinks);
  }
}

extension IsarEventQueryWhereSort
    on QueryBuilder<IsarEvent, IsarEvent, QWhere> {
  QueryBuilder<IsarEvent, IsarEvent, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarEventQueryWhere
    on QueryBuilder<IsarEvent, IsarEvent, QWhereClause> {
  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> eventIdEqualTo(
      String eventId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eventId',
        value: [eventId],
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterWhereClause> eventIdNotEqualTo(
      String eventId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarEventQueryFilter
    on QueryBuilder<IsarEvent, IsarEvent, QFilterCondition> {
  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accommodation',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accommodation',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accommodation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accommodation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accommodation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accommodation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accommodation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accommodation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accommodation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accommodation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accommodation',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      accommodationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accommodation',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeTexts',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'badgeTexts',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'badgeTexts',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'badgeTexts',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'badgeTexts',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'badgeTexts',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeTexts',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeTexts',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeTexts',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeTexts',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTexts',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTexts',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTexts',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTexts',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTexts',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTextsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTexts',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'badgeTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'badgeTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'badgeTypes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'badgeTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'badgeTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeTypes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeTypes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeTypes',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTypes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTypes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTypes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTypes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTypes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      badgeTypesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'badgeTypes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> currencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      currencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'date',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'date',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> dateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'date',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duration',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'duration',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'duration',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> durationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duration',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      durationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'duration',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> eventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      eventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genres',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genres',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genres',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'genres',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> genresLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> genresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gradient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gradient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gradient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gradient',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gradient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gradient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gradient',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gradient',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> gradientIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gradient',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      gradientIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gradient',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> imageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      imageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> isFavoriteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFavorite',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> isPublishedEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isPublished',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'location',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'location',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'location',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> locationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      locationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'location',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pricingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pricingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pricingAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pricingAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> pricingLabelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pricingLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pricingLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pricingLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> pricingLabelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pricingLabel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pricingLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pricingLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pricingLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> pricingLabelMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pricingLabel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pricingLabel',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingLabelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pricingLabel',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pricingSavings',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pricingSavings',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pricingSavings',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pricingSavings',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pricingSavings',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pricingSavings',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pricingSavingsText',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pricingSavingsText',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pricingSavingsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pricingSavingsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pricingSavingsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pricingSavingsText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pricingSavingsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pricingSavingsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pricingSavingsText',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pricingSavingsText',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pricingSavingsText',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      pricingSavingsTextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pricingSavingsText',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'section',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'section',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      sectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sortOrderEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      sortOrderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sortOrderLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sortOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> sortOrderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sortOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> totalRevenueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalRevenue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      totalRevenueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalRevenue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      totalRevenueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalRevenue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> totalRevenueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalRevenue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      totalTicketsSoldEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalTicketsSold',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      totalTicketsSoldGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalTicketsSold',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      totalTicketsSoldLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalTicketsSold',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      totalTicketsSoldBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalTicketsSold',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transport',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      transportGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transport',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transport',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transport',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transport',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transport',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transport',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transport',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> transportIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transport',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      transportIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transport',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition> updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedByEmail',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedByEmail',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedByEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedByEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterFilterCondition>
      updatedByEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedByEmail',
        value: '',
      ));
    });
  }
}

extension IsarEventQueryObject
    on QueryBuilder<IsarEvent, IsarEvent, QFilterCondition> {}

extension IsarEventQueryLinks
    on QueryBuilder<IsarEvent, IsarEvent, QFilterCondition> {}

extension IsarEventQuerySortBy on QueryBuilder<IsarEvent, IsarEvent, QSortBy> {
  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByAccommodation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodation', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByAccommodationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodation', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByGradient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradient', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByGradientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradient', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByIsPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByIsPublishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingAmount', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingAmount', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingLabel', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingLabel', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingSavings() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavings', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingSavingsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavings', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByPricingSavingsText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavingsText', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy>
      sortByPricingSavingsTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavingsText', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortBySection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortBySectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortBySortOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortBySortOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByTotalRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalRevenue', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByTotalRevenueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalRevenue', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByTotalTicketsSold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketsSold', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy>
      sortByTotalTicketsSoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketsSold', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByTransport() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transport', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByTransportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transport', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByUpdatedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> sortByUpdatedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.desc);
    });
  }
}

extension IsarEventQuerySortThenBy
    on QueryBuilder<IsarEvent, IsarEvent, QSortThenBy> {
  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByAccommodation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodation', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByAccommodationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodation', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByDuration() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByDurationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'duration', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByGradient() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradient', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByGradientDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradient', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByIsFavoriteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFavorite', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByIsPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByIsPublishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isPublished', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'location', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingAmount', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingAmount', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingLabel', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingLabel', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingSavings() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavings', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingSavingsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavings', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByPricingSavingsText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavingsText', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy>
      thenByPricingSavingsTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pricingSavingsText', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenBySection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenBySectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenBySortOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenBySortOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortOrder', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByTotalRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalRevenue', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByTotalRevenueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalRevenue', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByTotalTicketsSold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketsSold', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy>
      thenByTotalTicketsSoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalTicketsSold', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByTransport() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transport', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByTransportDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transport', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByUpdatedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QAfterSortBy> thenByUpdatedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.desc);
    });
  }
}

extension IsarEventQueryWhereDistinct
    on QueryBuilder<IsarEvent, IsarEvent, QDistinct> {
  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByAccommodation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accommodation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByBadgeTexts() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'badgeTexts');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByBadgeTypes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'badgeTypes');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByCurrency(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currency', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByDuration(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'duration', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByEventId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByGenres() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genres');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByGradient(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gradient', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByIsFavorite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFavorite');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByIsPublished() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isPublished');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'location', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByPricingAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pricingAmount');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByPricingLabel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pricingLabel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByPricingSavings() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pricingSavings');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByPricingSavingsText(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pricingSavingsText',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctBySection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'section', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctBySortOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortOrder');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByTotalRevenue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalRevenue');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByTotalTicketsSold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalTicketsSold');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByTransport(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transport', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<IsarEvent, IsarEvent, QDistinct> distinctByUpdatedByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedByEmail',
          caseSensitive: caseSensitive);
    });
  }
}

extension IsarEventQueryProperty
    on QueryBuilder<IsarEvent, IsarEvent, QQueryProperty> {
  QueryBuilder<IsarEvent, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarEvent, String?, QQueryOperations> accommodationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accommodation');
    });
  }

  QueryBuilder<IsarEvent, List<String>, QQueryOperations> badgeTextsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'badgeTexts');
    });
  }

  QueryBuilder<IsarEvent, List<String>, QQueryOperations> badgeTypesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'badgeTypes');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<IsarEvent, DateTime?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> currencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currency');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> durationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'duration');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> eventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventId');
    });
  }

  QueryBuilder<IsarEvent, List<String>, QQueryOperations> genresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genres');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> gradientProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gradient');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<IsarEvent, bool, QQueryOperations> isFavoriteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFavorite');
    });
  }

  QueryBuilder<IsarEvent, bool, QQueryOperations> isPublishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isPublished');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> locationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'location');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<IsarEvent, double, QQueryOperations> pricingAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pricingAmount');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> pricingLabelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pricingLabel');
    });
  }

  QueryBuilder<IsarEvent, double?, QQueryOperations> pricingSavingsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pricingSavings');
    });
  }

  QueryBuilder<IsarEvent, String?, QQueryOperations>
      pricingSavingsTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pricingSavingsText');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> sectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'section');
    });
  }

  QueryBuilder<IsarEvent, int, QQueryOperations> sortOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortOrder');
    });
  }

  QueryBuilder<IsarEvent, double, QQueryOperations> totalRevenueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalRevenue');
    });
  }

  QueryBuilder<IsarEvent, int, QQueryOperations> totalTicketsSoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalTicketsSold');
    });
  }

  QueryBuilder<IsarEvent, String, QQueryOperations> transportProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transport');
    });
  }

  QueryBuilder<IsarEvent, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<IsarEvent, String?, QQueryOperations> updatedByEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedByEmail');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarTicketCollection on Isar {
  IsarCollection<IsarTicket> get isarTickets => this.collection();
}

const IsarTicketSchema = CollectionSchema(
  name: r'IsarTicket',
  id: -5905869201144332124,
  properties: {
    r'cancelledAt': PropertySchema(
      id: 0,
      name: r'cancelledAt',
      type: IsarType.dateTime,
    ),
    r'chosenTransportCo2SavedKg': PropertySchema(
      id: 1,
      name: r'chosenTransportCo2SavedKg',
      type: IsarType.double,
    ),
    r'chosenTransportLabel': PropertySchema(
      id: 2,
      name: r'chosenTransportLabel',
      type: IsarType.string,
    ),
    r'eventDate': PropertySchema(
      id: 3,
      name: r'eventDate',
      type: IsarType.string,
    ),
    r'eventDateParsed': PropertySchema(
      id: 4,
      name: r'eventDateParsed',
      type: IsarType.dateTime,
    ),
    r'eventId': PropertySchema(
      id: 5,
      name: r'eventId',
      type: IsarType.string,
    ),
    r'eventImageUrl': PropertySchema(
      id: 6,
      name: r'eventImageUrl',
      type: IsarType.string,
    ),
    r'eventLocation': PropertySchema(
      id: 7,
      name: r'eventLocation',
      type: IsarType.string,
    ),
    r'eventName': PropertySchema(
      id: 8,
      name: r'eventName',
      type: IsarType.string,
    ),
    r'orderId': PropertySchema(
      id: 9,
      name: r'orderId',
      type: IsarType.string,
    ),
    r'ownerEmail': PropertySchema(
      id: 10,
      name: r'ownerEmail',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 11,
      name: r'price',
      type: IsarType.double,
    ),
    r'purchaseDate': PropertySchema(
      id: 12,
      name: r'purchaseDate',
      type: IsarType.dateTime,
    ),
    r'qrCodeData': PropertySchema(
      id: 13,
      name: r'qrCodeData',
      type: IsarType.string,
    ),
    r'refundAmount': PropertySchema(
      id: 14,
      name: r'refundAmount',
      type: IsarType.double,
    ),
    r'seatInfo': PropertySchema(
      id: 15,
      name: r'seatInfo',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 16,
      name: r'status',
      type: IsarType.string,
    ),
    r'ticketId': PropertySchema(
      id: 17,
      name: r'ticketId',
      type: IsarType.string,
    ),
    r'ticketType': PropertySchema(
      id: 18,
      name: r'ticketType',
      type: IsarType.string,
    ),
    r'transferredAt': PropertySchema(
      id: 19,
      name: r'transferredAt',
      type: IsarType.dateTime,
    ),
    r'transferredToEmail': PropertySchema(
      id: 20,
      name: r'transferredToEmail',
      type: IsarType.string,
    )
  },
  estimateSize: _isarTicketEstimateSize,
  serialize: _isarTicketSerialize,
  deserialize: _isarTicketDeserialize,
  deserializeProp: _isarTicketDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'ticketId': IndexSchema(
      id: -6483959237056329942,
      name: r'ticketId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'ticketId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarTicketGetId,
  getLinks: _isarTicketGetLinks,
  attach: _isarTicketAttach,
  version: '3.1.0+1',
);

int _isarTicketEstimateSize(
  IsarTicket object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.chosenTransportLabel;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventDate.length * 3;
  bytesCount += 3 + object.eventId.length * 3;
  {
    final value = object.eventImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventLocation.length * 3;
  bytesCount += 3 + object.eventName.length * 3;
  {
    final value = object.orderId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.ownerEmail.length * 3;
  {
    final value = object.qrCodeData;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.seatInfo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.ticketId.length * 3;
  bytesCount += 3 + object.ticketType.length * 3;
  {
    final value = object.transferredToEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarTicketSerialize(
  IsarTicket object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.cancelledAt);
  writer.writeDouble(offsets[1], object.chosenTransportCo2SavedKg);
  writer.writeString(offsets[2], object.chosenTransportLabel);
  writer.writeString(offsets[3], object.eventDate);
  writer.writeDateTime(offsets[4], object.eventDateParsed);
  writer.writeString(offsets[5], object.eventId);
  writer.writeString(offsets[6], object.eventImageUrl);
  writer.writeString(offsets[7], object.eventLocation);
  writer.writeString(offsets[8], object.eventName);
  writer.writeString(offsets[9], object.orderId);
  writer.writeString(offsets[10], object.ownerEmail);
  writer.writeDouble(offsets[11], object.price);
  writer.writeDateTime(offsets[12], object.purchaseDate);
  writer.writeString(offsets[13], object.qrCodeData);
  writer.writeDouble(offsets[14], object.refundAmount);
  writer.writeString(offsets[15], object.seatInfo);
  writer.writeString(offsets[16], object.status);
  writer.writeString(offsets[17], object.ticketId);
  writer.writeString(offsets[18], object.ticketType);
  writer.writeDateTime(offsets[19], object.transferredAt);
  writer.writeString(offsets[20], object.transferredToEmail);
}

IsarTicket _isarTicketDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarTicket();
  object.cancelledAt = reader.readDateTimeOrNull(offsets[0]);
  object.chosenTransportCo2SavedKg = reader.readDoubleOrNull(offsets[1]);
  object.chosenTransportLabel = reader.readStringOrNull(offsets[2]);
  object.eventDate = reader.readString(offsets[3]);
  object.eventDateParsed = reader.readDateTimeOrNull(offsets[4]);
  object.eventId = reader.readString(offsets[5]);
  object.eventImageUrl = reader.readStringOrNull(offsets[6]);
  object.eventLocation = reader.readString(offsets[7]);
  object.eventName = reader.readString(offsets[8]);
  object.isarId = id;
  object.orderId = reader.readStringOrNull(offsets[9]);
  object.ownerEmail = reader.readString(offsets[10]);
  object.price = reader.readDouble(offsets[11]);
  object.purchaseDate = reader.readDateTime(offsets[12]);
  object.qrCodeData = reader.readStringOrNull(offsets[13]);
  object.refundAmount = reader.readDoubleOrNull(offsets[14]);
  object.seatInfo = reader.readStringOrNull(offsets[15]);
  object.status = reader.readString(offsets[16]);
  object.ticketId = reader.readString(offsets[17]);
  object.ticketType = reader.readString(offsets[18]);
  object.transferredAt = reader.readDateTimeOrNull(offsets[19]);
  object.transferredToEmail = reader.readStringOrNull(offsets[20]);
  return object;
}

P _isarTicketDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 20:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarTicketGetId(IsarTicket object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarTicketGetLinks(IsarTicket object) {
  return [];
}

void _isarTicketAttach(IsarCollection<dynamic> col, Id id, IsarTicket object) {
  object.isarId = id;
}

extension IsarTicketByIndex on IsarCollection<IsarTicket> {
  Future<IsarTicket?> getByTicketId(String ticketId) {
    return getByIndex(r'ticketId', [ticketId]);
  }

  IsarTicket? getByTicketIdSync(String ticketId) {
    return getByIndexSync(r'ticketId', [ticketId]);
  }

  Future<bool> deleteByTicketId(String ticketId) {
    return deleteByIndex(r'ticketId', [ticketId]);
  }

  bool deleteByTicketIdSync(String ticketId) {
    return deleteByIndexSync(r'ticketId', [ticketId]);
  }

  Future<List<IsarTicket?>> getAllByTicketId(List<String> ticketIdValues) {
    final values = ticketIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'ticketId', values);
  }

  List<IsarTicket?> getAllByTicketIdSync(List<String> ticketIdValues) {
    final values = ticketIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'ticketId', values);
  }

  Future<int> deleteAllByTicketId(List<String> ticketIdValues) {
    final values = ticketIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'ticketId', values);
  }

  int deleteAllByTicketIdSync(List<String> ticketIdValues) {
    final values = ticketIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'ticketId', values);
  }

  Future<Id> putByTicketId(IsarTicket object) {
    return putByIndex(r'ticketId', object);
  }

  Id putByTicketIdSync(IsarTicket object, {bool saveLinks = true}) {
    return putByIndexSync(r'ticketId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTicketId(List<IsarTicket> objects) {
    return putAllByIndex(r'ticketId', objects);
  }

  List<Id> putAllByTicketIdSync(List<IsarTicket> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'ticketId', objects, saveLinks: saveLinks);
  }
}

extension IsarTicketQueryWhereSort
    on QueryBuilder<IsarTicket, IsarTicket, QWhere> {
  QueryBuilder<IsarTicket, IsarTicket, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarTicketQueryWhere
    on QueryBuilder<IsarTicket, IsarTicket, QWhereClause> {
  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> ticketIdEqualTo(
      String ticketId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ticketId',
        value: [ticketId],
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterWhereClause> ticketIdNotEqualTo(
      String ticketId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ticketId',
              lower: [],
              upper: [ticketId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ticketId',
              lower: [ticketId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ticketId',
              lower: [ticketId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ticketId',
              lower: [],
              upper: [ticketId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarTicketQueryFilter
    on QueryBuilder<IsarTicket, IsarTicket, QFilterCondition> {
  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      cancelledAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cancelledAt',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      cancelledAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cancelledAt',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      cancelledAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancelledAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      cancelledAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cancelledAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      cancelledAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cancelledAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      cancelledAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cancelledAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportCo2SavedKgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chosenTransportCo2SavedKg',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportCo2SavedKgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chosenTransportCo2SavedKg',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportCo2SavedKgEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chosenTransportCo2SavedKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportCo2SavedKgGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chosenTransportCo2SavedKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportCo2SavedKgLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chosenTransportCo2SavedKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportCo2SavedKgBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chosenTransportCo2SavedKg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chosenTransportLabel',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chosenTransportLabel',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chosenTransportLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chosenTransportLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chosenTransportLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chosenTransportLabel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'chosenTransportLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'chosenTransportLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'chosenTransportLabel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'chosenTransportLabel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chosenTransportLabel',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      chosenTransportLabelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'chosenTransportLabel',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventDateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventDateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventDate',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventDate',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateParsedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventDateParsed',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateParsedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventDateParsed',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateParsedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventDateParsed',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateParsedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventDateParsed',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateParsedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventDateParsed',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventDateParsedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventDateParsed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventImageUrl',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventImageUrl',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> eventNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      eventNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'orderId',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      orderIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'orderId',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      orderIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orderId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> orderIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      orderIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ownerEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ownerEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ownerEmailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ownerEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      purchaseDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      purchaseDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      purchaseDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      purchaseDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qrCodeData',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qrCodeData',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> qrCodeDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> qrCodeDataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qrCodeData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> qrCodeDataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qrCodeData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrCodeData',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      qrCodeDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qrCodeData',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      refundAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refundAmount',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      refundAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refundAmount',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      refundAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      refundAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refundAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      refundAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refundAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      refundAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refundAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'seatInfo',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      seatInfoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'seatInfo',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seatInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      seatInfoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'seatInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'seatInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'seatInfo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      seatInfoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'seatInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'seatInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'seatInfo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> seatInfoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'seatInfo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      seatInfoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'seatInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      seatInfoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'seatInfo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ticketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ticketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ticketId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ticketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ticketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ticketId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ticketId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ticketId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ticketType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition> ticketTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ticketType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      ticketTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ticketType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transferredAt',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transferredAt',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transferredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transferredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transferredAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transferredAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transferredToEmail',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transferredToEmail',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transferredToEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transferredToEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transferredToEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transferredToEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transferredToEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transferredToEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transferredToEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transferredToEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transferredToEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterFilterCondition>
      transferredToEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transferredToEmail',
        value: '',
      ));
    });
  }
}

extension IsarTicketQueryObject
    on QueryBuilder<IsarTicket, IsarTicket, QFilterCondition> {}

extension IsarTicketQueryLinks
    on QueryBuilder<IsarTicket, IsarTicket, QFilterCondition> {}

extension IsarTicketQuerySortBy
    on QueryBuilder<IsarTicket, IsarTicket, QSortBy> {
  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByCancelledAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledAt', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByCancelledAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledAt', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByChosenTransportCo2SavedKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportCo2SavedKg', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByChosenTransportCo2SavedKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportCo2SavedKg', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByChosenTransportLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportLabel', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByChosenTransportLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportLabel', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventDateParsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDateParsed', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByEventDateParsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDateParsed', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByEventNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByOwnerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByOwnerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByQrCodeData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByQrCodeDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByRefundAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByRefundAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortBySeatInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seatInfo', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortBySeatInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seatInfo', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByTicketId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByTicketIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByTicketType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByTicketTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByTransferredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredAt', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> sortByTransferredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredAt', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByTransferredToEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredToEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      sortByTransferredToEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredToEmail', Sort.desc);
    });
  }
}

extension IsarTicketQuerySortThenBy
    on QueryBuilder<IsarTicket, IsarTicket, QSortThenBy> {
  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByCancelledAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledAt', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByCancelledAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledAt', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByChosenTransportCo2SavedKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportCo2SavedKg', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByChosenTransportCo2SavedKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportCo2SavedKg', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByChosenTransportLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportLabel', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByChosenTransportLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chosenTransportLabel', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventDateParsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDateParsed', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByEventDateParsedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDateParsed', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByEventNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByOwnerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByOwnerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByQrCodeData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByQrCodeDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByRefundAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByRefundAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenBySeatInfo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seatInfo', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenBySeatInfoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'seatInfo', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByTicketId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketId', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByTicketIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketId', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByTicketType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByTicketTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByTransferredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredAt', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy> thenByTransferredAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredAt', Sort.desc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByTransferredToEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredToEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QAfterSortBy>
      thenByTransferredToEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transferredToEmail', Sort.desc);
    });
  }
}

extension IsarTicketQueryWhereDistinct
    on QueryBuilder<IsarTicket, IsarTicket, QDistinct> {
  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByCancelledAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cancelledAt');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct>
      distinctByChosenTransportCo2SavedKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chosenTransportCo2SavedKg');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct>
      distinctByChosenTransportLabel({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chosenTransportLabel',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByEventDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByEventDateParsed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventDateParsed');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByEventId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByEventImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByEventLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByEventName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByOrderId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByOwnerEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseDate');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByQrCodeData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qrCodeData', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByRefundAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refundAmount');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctBySeatInfo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'seatInfo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByTicketId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ticketId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByTicketType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ticketType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByTransferredAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transferredAt');
    });
  }

  QueryBuilder<IsarTicket, IsarTicket, QDistinct> distinctByTransferredToEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transferredToEmail',
          caseSensitive: caseSensitive);
    });
  }
}

extension IsarTicketQueryProperty
    on QueryBuilder<IsarTicket, IsarTicket, QQueryProperty> {
  QueryBuilder<IsarTicket, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarTicket, DateTime?, QQueryOperations> cancelledAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cancelledAt');
    });
  }

  QueryBuilder<IsarTicket, double?, QQueryOperations>
      chosenTransportCo2SavedKgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chosenTransportCo2SavedKg');
    });
  }

  QueryBuilder<IsarTicket, String?, QQueryOperations>
      chosenTransportLabelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chosenTransportLabel');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> eventDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventDate');
    });
  }

  QueryBuilder<IsarTicket, DateTime?, QQueryOperations>
      eventDateParsedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventDateParsed');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> eventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventId');
    });
  }

  QueryBuilder<IsarTicket, String?, QQueryOperations> eventImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventImageUrl');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> eventLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventLocation');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> eventNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventName');
    });
  }

  QueryBuilder<IsarTicket, String?, QQueryOperations> orderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderId');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> ownerEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerEmail');
    });
  }

  QueryBuilder<IsarTicket, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<IsarTicket, DateTime, QQueryOperations> purchaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseDate');
    });
  }

  QueryBuilder<IsarTicket, String?, QQueryOperations> qrCodeDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qrCodeData');
    });
  }

  QueryBuilder<IsarTicket, double?, QQueryOperations> refundAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refundAmount');
    });
  }

  QueryBuilder<IsarTicket, String?, QQueryOperations> seatInfoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'seatInfo');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> ticketIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ticketId');
    });
  }

  QueryBuilder<IsarTicket, String, QQueryOperations> ticketTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ticketType');
    });
  }

  QueryBuilder<IsarTicket, DateTime?, QQueryOperations>
      transferredAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transferredAt');
    });
  }

  QueryBuilder<IsarTicket, String?, QQueryOperations>
      transferredToEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transferredToEmail');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarCartItemCollection on Isar {
  IsarCollection<IsarCartItem> get isarCartItems => this.collection();
}

const IsarCartItemSchema = CollectionSchema(
  name: r'IsarCartItem',
  id: -573762213265127887,
  properties: {
    r'accommodationOption': PropertySchema(
      id: 0,
      name: r'accommodationOption',
      type: IsarType.string,
    ),
    r'accommodationPrice': PropertySchema(
      id: 1,
      name: r'accommodationPrice',
      type: IsarType.double,
    ),
    r'eventDate': PropertySchema(
      id: 2,
      name: r'eventDate',
      type: IsarType.string,
    ),
    r'eventId': PropertySchema(
      id: 3,
      name: r'eventId',
      type: IsarType.string,
    ),
    r'eventImageUrl': PropertySchema(
      id: 4,
      name: r'eventImageUrl',
      type: IsarType.string,
    ),
    r'eventLocation': PropertySchema(
      id: 5,
      name: r'eventLocation',
      type: IsarType.string,
    ),
    r'eventName': PropertySchema(
      id: 6,
      name: r'eventName',
      type: IsarType.string,
    ),
    r'ownerEmail': PropertySchema(
      id: 7,
      name: r'ownerEmail',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 8,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'ticketType': PropertySchema(
      id: 9,
      name: r'ticketType',
      type: IsarType.string,
    ),
    r'transportOption': PropertySchema(
      id: 10,
      name: r'transportOption',
      type: IsarType.string,
    ),
    r'transportPrice': PropertySchema(
      id: 11,
      name: r'transportPrice',
      type: IsarType.double,
    ),
    r'unitPrice': PropertySchema(
      id: 12,
      name: r'unitPrice',
      type: IsarType.double,
    )
  },
  estimateSize: _isarCartItemEstimateSize,
  serialize: _isarCartItemSerialize,
  deserialize: _isarCartItemDeserialize,
  deserializeProp: _isarCartItemDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'ownerEmail': IndexSchema(
      id: -82102301092295674,
      name: r'ownerEmail',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ownerEmail',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'eventId': IndexSchema(
      id: -2707901133518603130,
      name: r'eventId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'eventId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarCartItemGetId,
  getLinks: _isarCartItemGetLinks,
  attach: _isarCartItemAttach,
  version: '3.1.0+1',
);

int _isarCartItemEstimateSize(
  IsarCartItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.accommodationOption;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventDate.length * 3;
  bytesCount += 3 + object.eventId.length * 3;
  {
    final value = object.eventImageUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eventLocation.length * 3;
  bytesCount += 3 + object.eventName.length * 3;
  bytesCount += 3 + object.ownerEmail.length * 3;
  bytesCount += 3 + object.ticketType.length * 3;
  {
    final value = object.transportOption;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarCartItemSerialize(
  IsarCartItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.accommodationOption);
  writer.writeDouble(offsets[1], object.accommodationPrice);
  writer.writeString(offsets[2], object.eventDate);
  writer.writeString(offsets[3], object.eventId);
  writer.writeString(offsets[4], object.eventImageUrl);
  writer.writeString(offsets[5], object.eventLocation);
  writer.writeString(offsets[6], object.eventName);
  writer.writeString(offsets[7], object.ownerEmail);
  writer.writeLong(offsets[8], object.quantity);
  writer.writeString(offsets[9], object.ticketType);
  writer.writeString(offsets[10], object.transportOption);
  writer.writeDouble(offsets[11], object.transportPrice);
  writer.writeDouble(offsets[12], object.unitPrice);
}

IsarCartItem _isarCartItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarCartItem();
  object.accommodationOption = reader.readStringOrNull(offsets[0]);
  object.accommodationPrice = reader.readDoubleOrNull(offsets[1]);
  object.eventDate = reader.readString(offsets[2]);
  object.eventId = reader.readString(offsets[3]);
  object.eventImageUrl = reader.readStringOrNull(offsets[4]);
  object.eventLocation = reader.readString(offsets[5]);
  object.eventName = reader.readString(offsets[6]);
  object.isarId = id;
  object.ownerEmail = reader.readString(offsets[7]);
  object.quantity = reader.readLong(offsets[8]);
  object.ticketType = reader.readString(offsets[9]);
  object.transportOption = reader.readStringOrNull(offsets[10]);
  object.transportPrice = reader.readDoubleOrNull(offsets[11]);
  object.unitPrice = reader.readDouble(offsets[12]);
  return object;
}

P _isarCartItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarCartItemGetId(IsarCartItem object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarCartItemGetLinks(IsarCartItem object) {
  return [];
}

void _isarCartItemAttach(
    IsarCollection<dynamic> col, Id id, IsarCartItem object) {
  object.isarId = id;
}

extension IsarCartItemQueryWhereSort
    on QueryBuilder<IsarCartItem, IsarCartItem, QWhere> {
  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarCartItemQueryWhere
    on QueryBuilder<IsarCartItem, IsarCartItem, QWhereClause> {
  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> ownerEmailEqualTo(
      String ownerEmail) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerEmail',
        value: [ownerEmail],
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause>
      ownerEmailNotEqualTo(String ownerEmail) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [],
              upper: [ownerEmail],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [ownerEmail],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [ownerEmail],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [],
              upper: [ownerEmail],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> eventIdEqualTo(
      String eventId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eventId',
        value: [eventId],
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterWhereClause> eventIdNotEqualTo(
      String eventId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarCartItemQueryFilter
    on QueryBuilder<IsarCartItem, IsarCartItem, QFilterCondition> {
  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accommodationOption',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accommodationOption',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accommodationOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accommodationOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accommodationOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accommodationOption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'accommodationOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'accommodationOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'accommodationOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'accommodationOption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accommodationOption',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationOptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'accommodationOption',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'accommodationPrice',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'accommodationPrice',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'accommodationPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'accommodationPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'accommodationPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      accommodationPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'accommodationPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventDate',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventDate',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eventImageUrl',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eventImageUrl',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventImageUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventImageUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventImageUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventImageUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventImageUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      eventNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ownerEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      quantityEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      quantityGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      quantityLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      quantityBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ticketType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ticketType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ticketType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      ticketTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ticketType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transportOption',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transportOption',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transportOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transportOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transportOption',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transportOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transportOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transportOption',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transportOption',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportOption',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportOptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transportOption',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportPriceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transportPrice',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportPriceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transportPrice',
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportPriceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportPriceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transportPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportPriceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transportPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      transportPriceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transportPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      unitPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      unitPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      unitPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterFilterCondition>
      unitPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension IsarCartItemQueryObject
    on QueryBuilder<IsarCartItem, IsarCartItem, QFilterCondition> {}

extension IsarCartItemQueryLinks
    on QueryBuilder<IsarCartItem, IsarCartItem, QFilterCondition> {}

extension IsarCartItemQuerySortBy
    on QueryBuilder<IsarCartItem, IsarCartItem, QSortBy> {
  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByAccommodationOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationOption', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByAccommodationOptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationOption', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByAccommodationPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationPrice', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByAccommodationPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationPrice', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByEventImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByEventLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByEventNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByOwnerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByOwnerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByTicketType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByTicketTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByTransportOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportOption', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByTransportOptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportOption', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByTransportPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportPrice', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      sortByTransportPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportPrice', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> sortByUnitPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.desc);
    });
  }
}

extension IsarCartItemQuerySortThenBy
    on QueryBuilder<IsarCartItem, IsarCartItem, QSortThenBy> {
  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByAccommodationOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationOption', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByAccommodationOptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationOption', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByAccommodationPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationPrice', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByAccommodationPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'accommodationPrice', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventDate', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventImageUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByEventImageUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventImageUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByEventLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventLocation', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByEventNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventName', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByOwnerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByOwnerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByTicketType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByTicketTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ticketType', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByTransportOption() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportOption', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByTransportOptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportOption', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByTransportPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportPrice', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy>
      thenByTransportPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportPrice', Sort.desc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.asc);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QAfterSortBy> thenByUnitPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitPrice', Sort.desc);
    });
  }
}

extension IsarCartItemQueryWhereDistinct
    on QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> {
  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct>
      distinctByAccommodationOption({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accommodationOption',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct>
      distinctByAccommodationPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'accommodationPrice');
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByEventDate(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventDate', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByEventId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByEventImageUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventImageUrl',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByEventLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByEventName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByOwnerEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByTicketType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ticketType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByTransportOption(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transportOption',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct>
      distinctByTransportPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transportPrice');
    });
  }

  QueryBuilder<IsarCartItem, IsarCartItem, QDistinct> distinctByUnitPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitPrice');
    });
  }
}

extension IsarCartItemQueryProperty
    on QueryBuilder<IsarCartItem, IsarCartItem, QQueryProperty> {
  QueryBuilder<IsarCartItem, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarCartItem, String?, QQueryOperations>
      accommodationOptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accommodationOption');
    });
  }

  QueryBuilder<IsarCartItem, double?, QQueryOperations>
      accommodationPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'accommodationPrice');
    });
  }

  QueryBuilder<IsarCartItem, String, QQueryOperations> eventDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventDate');
    });
  }

  QueryBuilder<IsarCartItem, String, QQueryOperations> eventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventId');
    });
  }

  QueryBuilder<IsarCartItem, String?, QQueryOperations>
      eventImageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventImageUrl');
    });
  }

  QueryBuilder<IsarCartItem, String, QQueryOperations> eventLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventLocation');
    });
  }

  QueryBuilder<IsarCartItem, String, QQueryOperations> eventNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventName');
    });
  }

  QueryBuilder<IsarCartItem, String, QQueryOperations> ownerEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerEmail');
    });
  }

  QueryBuilder<IsarCartItem, int, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<IsarCartItem, String, QQueryOperations> ticketTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ticketType');
    });
  }

  QueryBuilder<IsarCartItem, String?, QQueryOperations>
      transportOptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transportOption');
    });
  }

  QueryBuilder<IsarCartItem, double?, QQueryOperations>
      transportPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transportPrice');
    });
  }

  QueryBuilder<IsarCartItem, double, QQueryOperations> unitPriceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitPrice');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarUserProfileCollection on Isar {
  IsarCollection<IsarUserProfile> get isarUserProfiles => this.collection();
}

const IsarUserProfileSchema = CollectionSchema(
  name: r'IsarUserProfile',
  id: 8546962976391985935,
  properties: {
    r'avatarUrl': PropertySchema(
      id: 0,
      name: r'avatarUrl',
      type: IsarType.string,
    ),
    r'bio': PropertySchema(
      id: 1,
      name: r'bio',
      type: IsarType.string,
    ),
    r'budgetMax': PropertySchema(
      id: 2,
      name: r'budgetMax',
      type: IsarType.double,
    ),
    r'co2SavedKg': PropertySchema(
      id: 3,
      name: r'co2SavedKg',
      type: IsarType.double,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'darkMode': PropertySchema(
      id: 5,
      name: r'darkMode',
      type: IsarType.bool,
    ),
    r'ecoMode': PropertySchema(
      id: 6,
      name: r'ecoMode',
      type: IsarType.bool,
    ),
    r'email': PropertySchema(
      id: 7,
      name: r'email',
      type: IsarType.string,
    ),
    r'emailNotificationsEnabled': PropertySchema(
      id: 8,
      name: r'emailNotificationsEnabled',
      type: IsarType.bool,
    ),
    r'eventsBooked': PropertySchema(
      id: 9,
      name: r'eventsBooked',
      type: IsarType.long,
    ),
    r'genres': PropertySchema(
      id: 10,
      name: r'genres',
      type: IsarType.stringList,
    ),
    r'isOnboarded': PropertySchema(
      id: 11,
      name: r'isOnboarded',
      type: IsarType.bool,
    ),
    r'isSuspended': PropertySchema(
      id: 12,
      name: r'isSuspended',
      type: IsarType.bool,
    ),
    r'language': PropertySchema(
      id: 13,
      name: r'language',
      type: IsarType.string,
    ),
    r'lastLoginAt': PropertySchema(
      id: 14,
      name: r'lastLoginAt',
      type: IsarType.dateTime,
    ),
    r'locationName': PropertySchema(
      id: 15,
      name: r'locationName',
      type: IsarType.string,
    ),
    r'memberSince': PropertySchema(
      id: 16,
      name: r'memberSince',
      type: IsarType.long,
    ),
    r'moneySavedEur': PropertySchema(
      id: 17,
      name: r'moneySavedEur',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 18,
      name: r'name',
      type: IsarType.string,
    ),
    r'notificationsEnabled': PropertySchema(
      id: 19,
      name: r'notificationsEnabled',
      type: IsarType.bool,
    ),
    r'passwordHash': PropertySchema(
      id: 20,
      name: r'passwordHash',
      type: IsarType.string,
    ),
    r'percentile': PropertySchema(
      id: 21,
      name: r'percentile',
      type: IsarType.long,
    ),
    r'phone': PropertySchema(
      id: 22,
      name: r'phone',
      type: IsarType.string,
    ),
    r'role': PropertySchema(
      id: 23,
      name: r'role',
      type: IsarType.string,
    ),
    r'showCarbonFootprint': PropertySchema(
      id: 24,
      name: r'showCarbonFootprint',
      type: IsarType.bool,
    ),
    r'socialNotificationsEnabled': PropertySchema(
      id: 25,
      name: r'socialNotificationsEnabled',
      type: IsarType.bool,
    ),
    r'suspendedAt': PropertySchema(
      id: 26,
      name: r'suspendedAt',
      type: IsarType.dateTime,
    ),
    r'suspendedReason': PropertySchema(
      id: 27,
      name: r'suspendedReason',
      type: IsarType.string,
    )
  },
  estimateSize: _isarUserProfileEstimateSize,
  serialize: _isarUserProfileSerialize,
  deserialize: _isarUserProfileDeserialize,
  deserializeProp: _isarUserProfileDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'email': IndexSchema(
      id: -26095440403582047,
      name: r'email',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'email',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarUserProfileGetId,
  getLinks: _isarUserProfileGetLinks,
  attach: _isarUserProfileAttach,
  version: '3.1.0+1',
);

int _isarUserProfileEstimateSize(
  IsarUserProfile object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.avatarUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.email.length * 3;
  bytesCount += 3 + object.genres.length * 3;
  {
    for (var i = 0; i < object.genres.length; i++) {
      final value = object.genres[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.language.length * 3;
  bytesCount += 3 + object.locationName.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.passwordHash.length * 3;
  {
    final value = object.phone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.role.length * 3;
  {
    final value = object.suspendedReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarUserProfileSerialize(
  IsarUserProfile object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.avatarUrl);
  writer.writeString(offsets[1], object.bio);
  writer.writeDouble(offsets[2], object.budgetMax);
  writer.writeDouble(offsets[3], object.co2SavedKg);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeBool(offsets[5], object.darkMode);
  writer.writeBool(offsets[6], object.ecoMode);
  writer.writeString(offsets[7], object.email);
  writer.writeBool(offsets[8], object.emailNotificationsEnabled);
  writer.writeLong(offsets[9], object.eventsBooked);
  writer.writeStringList(offsets[10], object.genres);
  writer.writeBool(offsets[11], object.isOnboarded);
  writer.writeBool(offsets[12], object.isSuspended);
  writer.writeString(offsets[13], object.language);
  writer.writeDateTime(offsets[14], object.lastLoginAt);
  writer.writeString(offsets[15], object.locationName);
  writer.writeLong(offsets[16], object.memberSince);
  writer.writeDouble(offsets[17], object.moneySavedEur);
  writer.writeString(offsets[18], object.name);
  writer.writeBool(offsets[19], object.notificationsEnabled);
  writer.writeString(offsets[20], object.passwordHash);
  writer.writeLong(offsets[21], object.percentile);
  writer.writeString(offsets[22], object.phone);
  writer.writeString(offsets[23], object.role);
  writer.writeBool(offsets[24], object.showCarbonFootprint);
  writer.writeBool(offsets[25], object.socialNotificationsEnabled);
  writer.writeDateTime(offsets[26], object.suspendedAt);
  writer.writeString(offsets[27], object.suspendedReason);
}

IsarUserProfile _isarUserProfileDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarUserProfile();
  object.avatarUrl = reader.readStringOrNull(offsets[0]);
  object.bio = reader.readStringOrNull(offsets[1]);
  object.budgetMax = reader.readDouble(offsets[2]);
  object.co2SavedKg = reader.readDouble(offsets[3]);
  object.createdAt = reader.readDateTime(offsets[4]);
  object.darkMode = reader.readBool(offsets[5]);
  object.ecoMode = reader.readBool(offsets[6]);
  object.email = reader.readString(offsets[7]);
  object.emailNotificationsEnabled = reader.readBool(offsets[8]);
  object.eventsBooked = reader.readLong(offsets[9]);
  object.genres = reader.readStringList(offsets[10]) ?? [];
  object.isOnboarded = reader.readBool(offsets[11]);
  object.isSuspended = reader.readBool(offsets[12]);
  object.isarId = id;
  object.language = reader.readString(offsets[13]);
  object.lastLoginAt = reader.readDateTimeOrNull(offsets[14]);
  object.locationName = reader.readString(offsets[15]);
  object.memberSince = reader.readLong(offsets[16]);
  object.moneySavedEur = reader.readDouble(offsets[17]);
  object.name = reader.readString(offsets[18]);
  object.notificationsEnabled = reader.readBool(offsets[19]);
  object.passwordHash = reader.readString(offsets[20]);
  object.percentile = reader.readLong(offsets[21]);
  object.phone = reader.readStringOrNull(offsets[22]);
  object.role = reader.readString(offsets[23]);
  object.showCarbonFootprint = reader.readBool(offsets[24]);
  object.socialNotificationsEnabled = reader.readBool(offsets[25]);
  object.suspendedAt = reader.readDateTimeOrNull(offsets[26]);
  object.suspendedReason = reader.readStringOrNull(offsets[27]);
  return object;
}

P _isarUserProfileDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readStringList(offset) ?? []) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readDouble(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readBool(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readBool(offset)) as P;
    case 25:
      return (reader.readBool(offset)) as P;
    case 26:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarUserProfileGetId(IsarUserProfile object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarUserProfileGetLinks(IsarUserProfile object) {
  return [];
}

void _isarUserProfileAttach(
    IsarCollection<dynamic> col, Id id, IsarUserProfile object) {
  object.isarId = id;
}

extension IsarUserProfileByIndex on IsarCollection<IsarUserProfile> {
  Future<IsarUserProfile?> getByEmail(String email) {
    return getByIndex(r'email', [email]);
  }

  IsarUserProfile? getByEmailSync(String email) {
    return getByIndexSync(r'email', [email]);
  }

  Future<bool> deleteByEmail(String email) {
    return deleteByIndex(r'email', [email]);
  }

  bool deleteByEmailSync(String email) {
    return deleteByIndexSync(r'email', [email]);
  }

  Future<List<IsarUserProfile?>> getAllByEmail(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndex(r'email', values);
  }

  List<IsarUserProfile?> getAllByEmailSync(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'email', values);
  }

  Future<int> deleteAllByEmail(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'email', values);
  }

  int deleteAllByEmailSync(List<String> emailValues) {
    final values = emailValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'email', values);
  }

  Future<Id> putByEmail(IsarUserProfile object) {
    return putByIndex(r'email', object);
  }

  Id putByEmailSync(IsarUserProfile object, {bool saveLinks = true}) {
    return putByIndexSync(r'email', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEmail(List<IsarUserProfile> objects) {
    return putAllByIndex(r'email', objects);
  }

  List<Id> putAllByEmailSync(List<IsarUserProfile> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'email', objects, saveLinks: saveLinks);
  }
}

extension IsarUserProfileQueryWhereSort
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QWhere> {
  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarUserProfileQueryWhere
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QWhereClause> {
  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      emailEqualTo(String email) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'email',
        value: [email],
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterWhereClause>
      emailNotEqualTo(String email) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [],
              upper: [email],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [email],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [email],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'email',
              lower: [],
              upper: [email],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarUserProfileQueryFilter
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QFilterCondition> {
  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'avatarUrl',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'avatarUrl',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'avatarUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'avatarUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'avatarUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      avatarUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'avatarUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bio',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bio',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bio',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      bioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bio',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      budgetMaxEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'budgetMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      budgetMaxGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'budgetMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      budgetMaxLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'budgetMax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      budgetMaxBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'budgetMax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      co2SavedKgEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'co2SavedKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      co2SavedKgGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'co2SavedKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      co2SavedKgLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'co2SavedKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      co2SavedKgBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'co2SavedKg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      darkModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'darkMode',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      ecoModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ecoMode',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      emailNotificationsEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emailNotificationsEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      eventsBookedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventsBooked',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      eventsBookedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventsBooked',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      eventsBookedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventsBooked',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      eventsBookedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventsBooked',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'genres',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'genres',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'genres',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'genres',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'genres',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      genresLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'genres',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      isOnboardedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isOnboarded',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      isSuspendedEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSuspended',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'language',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'language',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'language',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      languageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'language',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      lastLoginAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastLoginAt',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      lastLoginAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastLoginAt',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      lastLoginAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastLoginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      lastLoginAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastLoginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      lastLoginAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastLoginAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      lastLoginAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastLoginAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      locationNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationName',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      memberSinceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'memberSince',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      memberSinceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'memberSince',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      memberSinceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'memberSince',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      memberSinceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'memberSince',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      moneySavedEurEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'moneySavedEur',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      moneySavedEurGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'moneySavedEur',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      moneySavedEurLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'moneySavedEur',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      moneySavedEurBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'moneySavedEur',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      notificationsEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notificationsEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passwordHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passwordHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passwordHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passwordHash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'passwordHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'passwordHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'passwordHash',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'passwordHash',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passwordHash',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      passwordHashIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'passwordHash',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      percentileEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'percentile',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      percentileGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'percentile',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      percentileLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'percentile',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      percentileBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'percentile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phone',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      phoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phone',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'role',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'role',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'role',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      roleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'role',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      showCarbonFootprintEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'showCarbonFootprint',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      socialNotificationsEnabledEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'socialNotificationsEnabled',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'suspendedAt',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'suspendedAt',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suspendedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'suspendedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'suspendedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'suspendedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'suspendedReason',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'suspendedReason',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suspendedReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'suspendedReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'suspendedReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'suspendedReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'suspendedReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'suspendedReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'suspendedReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'suspendedReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'suspendedReason',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterFilterCondition>
      suspendedReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'suspendedReason',
        value: '',
      ));
    });
  }
}

extension IsarUserProfileQueryObject
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QFilterCondition> {}

extension IsarUserProfileQueryLinks
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QFilterCondition> {}

extension IsarUserProfileQuerySortBy
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QSortBy> {
  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByBio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByBioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByBudgetMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budgetMax', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByBudgetMaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budgetMax', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByCo2SavedKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'co2SavedKg', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByCo2SavedKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'co2SavedKg', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByEcoMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoMode', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByEcoModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoMode', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByEmailNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailNotificationsEnabled', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByEmailNotificationsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailNotificationsEnabled', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByEventsBooked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventsBooked', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByEventsBookedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventsBooked', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByIsOnboarded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboarded', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByIsOnboardedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboarded', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByIsSuspended() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSuspended', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByIsSuspendedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSuspended', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByLastLoginAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoginAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByLastLoginAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoginAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByLocationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByLocationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByMemberSince() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberSince', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByMemberSinceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberSince', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByMoneySavedEur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moneySavedEur', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByMoneySavedEurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moneySavedEur', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationsEnabled', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByNotificationsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationsEnabled', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByPasswordHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passwordHash', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByPasswordHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passwordHash', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByPercentile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percentile', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByPercentileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percentile', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> sortByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByShowCarbonFootprint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showCarbonFootprint', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortByShowCarbonFootprintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showCarbonFootprint', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortBySocialNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialNotificationsEnabled', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortBySocialNotificationsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialNotificationsEnabled', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortBySuspendedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortBySuspendedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortBySuspendedReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedReason', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      sortBySuspendedReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedReason', Sort.desc);
    });
  }
}

extension IsarUserProfileQuerySortThenBy
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QSortThenBy> {
  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByAvatarUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByAvatarUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'avatarUrl', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByBio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByBioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByBudgetMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budgetMax', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByBudgetMaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'budgetMax', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByCo2SavedKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'co2SavedKg', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByCo2SavedKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'co2SavedKg', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByDarkModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'darkMode', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByEcoMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoMode', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByEcoModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecoMode', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByEmailNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailNotificationsEnabled', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByEmailNotificationsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emailNotificationsEnabled', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByEventsBooked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventsBooked', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByEventsBookedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventsBooked', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByIsOnboarded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboarded', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByIsOnboardedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isOnboarded', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByIsSuspended() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSuspended', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByIsSuspendedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSuspended', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByLanguage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByLanguageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'language', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByLastLoginAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoginAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByLastLoginAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastLoginAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByLocationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByLocationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationName', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByMemberSince() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberSince', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByMemberSinceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'memberSince', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByMoneySavedEur() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moneySavedEur', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByMoneySavedEurDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'moneySavedEur', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationsEnabled', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByNotificationsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notificationsEnabled', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByPasswordHash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passwordHash', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByPasswordHashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passwordHash', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByPercentile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percentile', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByPercentileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'percentile', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phone', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy> thenByRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'role', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByShowCarbonFootprint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showCarbonFootprint', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenByShowCarbonFootprintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'showCarbonFootprint', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenBySocialNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialNotificationsEnabled', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenBySocialNotificationsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'socialNotificationsEnabled', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenBySuspendedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenBySuspendedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenBySuspendedReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedReason', Sort.asc);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QAfterSortBy>
      thenBySuspendedReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'suspendedReason', Sort.desc);
    });
  }
}

extension IsarUserProfileQueryWhereDistinct
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> {
  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByAvatarUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'avatarUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByBio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByBudgetMax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'budgetMax');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByCo2SavedKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'co2SavedKg');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByDarkMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'darkMode');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByEcoMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ecoMode');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByEmailNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emailNotificationsEnabled');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByEventsBooked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventsBooked');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByGenres() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'genres');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByIsOnboarded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isOnboarded');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByIsSuspended() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSuspended');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByLanguage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'language', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByLastLoginAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastLoginAt');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByLocationName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByMemberSince() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'memberSince');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByMoneySavedEur() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'moneySavedEur');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notificationsEnabled');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByPasswordHash({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'passwordHash', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByPercentile() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'percentile');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct> distinctByRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'role', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctByShowCarbonFootprint() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'showCarbonFootprint');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctBySocialNotificationsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'socialNotificationsEnabled');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctBySuspendedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suspendedAt');
    });
  }

  QueryBuilder<IsarUserProfile, IsarUserProfile, QDistinct>
      distinctBySuspendedReason({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'suspendedReason',
          caseSensitive: caseSensitive);
    });
  }
}

extension IsarUserProfileQueryProperty
    on QueryBuilder<IsarUserProfile, IsarUserProfile, QQueryProperty> {
  QueryBuilder<IsarUserProfile, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarUserProfile, String?, QQueryOperations> avatarUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'avatarUrl');
    });
  }

  QueryBuilder<IsarUserProfile, String?, QQueryOperations> bioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bio');
    });
  }

  QueryBuilder<IsarUserProfile, double, QQueryOperations> budgetMaxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'budgetMax');
    });
  }

  QueryBuilder<IsarUserProfile, double, QQueryOperations> co2SavedKgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'co2SavedKg');
    });
  }

  QueryBuilder<IsarUserProfile, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations> darkModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'darkMode');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations> ecoModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ecoMode');
    });
  }

  QueryBuilder<IsarUserProfile, String, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations>
      emailNotificationsEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emailNotificationsEnabled');
    });
  }

  QueryBuilder<IsarUserProfile, int, QQueryOperations> eventsBookedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventsBooked');
    });
  }

  QueryBuilder<IsarUserProfile, List<String>, QQueryOperations>
      genresProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'genres');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations> isOnboardedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isOnboarded');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations> isSuspendedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSuspended');
    });
  }

  QueryBuilder<IsarUserProfile, String, QQueryOperations> languageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'language');
    });
  }

  QueryBuilder<IsarUserProfile, DateTime?, QQueryOperations>
      lastLoginAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastLoginAt');
    });
  }

  QueryBuilder<IsarUserProfile, String, QQueryOperations>
      locationNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationName');
    });
  }

  QueryBuilder<IsarUserProfile, int, QQueryOperations> memberSinceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'memberSince');
    });
  }

  QueryBuilder<IsarUserProfile, double, QQueryOperations>
      moneySavedEurProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'moneySavedEur');
    });
  }

  QueryBuilder<IsarUserProfile, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations>
      notificationsEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationsEnabled');
    });
  }

  QueryBuilder<IsarUserProfile, String, QQueryOperations>
      passwordHashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'passwordHash');
    });
  }

  QueryBuilder<IsarUserProfile, int, QQueryOperations> percentileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'percentile');
    });
  }

  QueryBuilder<IsarUserProfile, String?, QQueryOperations> phoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phone');
    });
  }

  QueryBuilder<IsarUserProfile, String, QQueryOperations> roleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'role');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations>
      showCarbonFootprintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'showCarbonFootprint');
    });
  }

  QueryBuilder<IsarUserProfile, bool, QQueryOperations>
      socialNotificationsEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'socialNotificationsEnabled');
    });
  }

  QueryBuilder<IsarUserProfile, DateTime?, QQueryOperations>
      suspendedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suspendedAt');
    });
  }

  QueryBuilder<IsarUserProfile, String?, QQueryOperations>
      suspendedReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'suspendedReason');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarAuthSessionCollection on Isar {
  IsarCollection<IsarAuthSession> get isarAuthSessions => this.collection();
}

const IsarAuthSessionSchema = CollectionSchema(
  name: r'IsarAuthSession',
  id: 3510586180664865890,
  properties: {
    r'activeEmail': PropertySchema(
      id: 0,
      name: r'activeEmail',
      type: IsarType.string,
    ),
    r'key': PropertySchema(
      id: 1,
      name: r'key',
      type: IsarType.string,
    ),
    r'loggedInAt': PropertySchema(
      id: 2,
      name: r'loggedInAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _isarAuthSessionEstimateSize,
  serialize: _isarAuthSessionSerialize,
  deserialize: _isarAuthSessionDeserialize,
  deserializeProp: _isarAuthSessionDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'key': IndexSchema(
      id: -4906094122524121629,
      name: r'key',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarAuthSessionGetId,
  getLinks: _isarAuthSessionGetLinks,
  attach: _isarAuthSessionAttach,
  version: '3.1.0+1',
);

int _isarAuthSessionEstimateSize(
  IsarAuthSession object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.activeEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.key.length * 3;
  return bytesCount;
}

void _isarAuthSessionSerialize(
  IsarAuthSession object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activeEmail);
  writer.writeString(offsets[1], object.key);
  writer.writeDateTime(offsets[2], object.loggedInAt);
}

IsarAuthSession _isarAuthSessionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarAuthSession();
  object.activeEmail = reader.readStringOrNull(offsets[0]);
  object.isarId = id;
  object.key = reader.readString(offsets[1]);
  object.loggedInAt = reader.readDateTimeOrNull(offsets[2]);
  return object;
}

P _isarAuthSessionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarAuthSessionGetId(IsarAuthSession object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarAuthSessionGetLinks(IsarAuthSession object) {
  return [];
}

void _isarAuthSessionAttach(
    IsarCollection<dynamic> col, Id id, IsarAuthSession object) {
  object.isarId = id;
}

extension IsarAuthSessionByIndex on IsarCollection<IsarAuthSession> {
  Future<IsarAuthSession?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  IsarAuthSession? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<IsarAuthSession?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<IsarAuthSession?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<Id> putByKey(IsarAuthSession object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(IsarAuthSession object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<IsarAuthSession> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<IsarAuthSession> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension IsarAuthSessionQueryWhereSort
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QWhere> {
  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarAuthSessionQueryWhere
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QWhereClause> {
  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause> keyEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterWhereClause>
      keyNotEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarAuthSessionQueryFilter
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QFilterCondition> {
  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'activeEmail',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'activeEmail',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activeEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'activeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'activeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activeEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activeEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      activeEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activeEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      loggedInAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loggedInAt',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      loggedInAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loggedInAt',
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      loggedInAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loggedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      loggedInAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loggedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      loggedInAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loggedInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterFilterCondition>
      loggedInAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loggedInAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarAuthSessionQueryObject
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QFilterCondition> {}

extension IsarAuthSessionQueryLinks
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QFilterCondition> {}

extension IsarAuthSessionQuerySortBy
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QSortBy> {
  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      sortByActiveEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      sortByActiveEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      sortByLoggedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInAt', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      sortByLoggedInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInAt', Sort.desc);
    });
  }
}

extension IsarAuthSessionQuerySortThenBy
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QSortThenBy> {
  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      thenByActiveEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      thenByActiveEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activeEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      thenByLoggedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInAt', Sort.asc);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QAfterSortBy>
      thenByLoggedInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'loggedInAt', Sort.desc);
    });
  }
}

extension IsarAuthSessionQueryWhereDistinct
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QDistinct> {
  QueryBuilder<IsarAuthSession, IsarAuthSession, QDistinct>
      distinctByActiveEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activeEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAuthSession, IsarAuthSession, QDistinct>
      distinctByLoggedInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loggedInAt');
    });
  }
}

extension IsarAuthSessionQueryProperty
    on QueryBuilder<IsarAuthSession, IsarAuthSession, QQueryProperty> {
  QueryBuilder<IsarAuthSession, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarAuthSession, String?, QQueryOperations>
      activeEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activeEmail');
    });
  }

  QueryBuilder<IsarAuthSession, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<IsarAuthSession, DateTime?, QQueryOperations>
      loggedInAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'loggedInAt');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarFavoriteCollection on Isar {
  IsarCollection<IsarFavorite> get isarFavorites => this.collection();
}

const IsarFavoriteSchema = CollectionSchema(
  name: r'IsarFavorite',
  id: 3411495256394630395,
  properties: {
    r'addedAt': PropertySchema(
      id: 0,
      name: r'addedAt',
      type: IsarType.dateTime,
    ),
    r'eventId': PropertySchema(
      id: 1,
      name: r'eventId',
      type: IsarType.string,
    ),
    r'userEmail': PropertySchema(
      id: 2,
      name: r'userEmail',
      type: IsarType.string,
    )
  },
  estimateSize: _isarFavoriteEstimateSize,
  serialize: _isarFavoriteSerialize,
  deserialize: _isarFavoriteDeserialize,
  deserializeProp: _isarFavoriteDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'userEmail': IndexSchema(
      id: -7139880982916714350,
      name: r'userEmail',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'userEmail',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'eventId': IndexSchema(
      id: -2707901133518603130,
      name: r'eventId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'eventId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarFavoriteGetId,
  getLinks: _isarFavoriteGetLinks,
  attach: _isarFavoriteAttach,
  version: '3.1.0+1',
);

int _isarFavoriteEstimateSize(
  IsarFavorite object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.eventId.length * 3;
  bytesCount += 3 + object.userEmail.length * 3;
  return bytesCount;
}

void _isarFavoriteSerialize(
  IsarFavorite object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.addedAt);
  writer.writeString(offsets[1], object.eventId);
  writer.writeString(offsets[2], object.userEmail);
}

IsarFavorite _isarFavoriteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarFavorite();
  object.addedAt = reader.readDateTime(offsets[0]);
  object.eventId = reader.readString(offsets[1]);
  object.isarId = id;
  object.userEmail = reader.readString(offsets[2]);
  return object;
}

P _isarFavoriteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarFavoriteGetId(IsarFavorite object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarFavoriteGetLinks(IsarFavorite object) {
  return [];
}

void _isarFavoriteAttach(
    IsarCollection<dynamic> col, Id id, IsarFavorite object) {
  object.isarId = id;
}

extension IsarFavoriteQueryWhereSort
    on QueryBuilder<IsarFavorite, IsarFavorite, QWhere> {
  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarFavoriteQueryWhere
    on QueryBuilder<IsarFavorite, IsarFavorite, QWhereClause> {
  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> userEmailEqualTo(
      String userEmail) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userEmail',
        value: [userEmail],
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause>
      userEmailNotEqualTo(String userEmail) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userEmail',
              lower: [],
              upper: [userEmail],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userEmail',
              lower: [userEmail],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userEmail',
              lower: [userEmail],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'userEmail',
              lower: [],
              upper: [userEmail],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> eventIdEqualTo(
      String eventId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'eventId',
        value: [eventId],
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterWhereClause> eventIdNotEqualTo(
      String eventId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [eventId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'eventId',
              lower: [],
              upper: [eventId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarFavoriteQueryFilter
    on QueryBuilder<IsarFavorite, IsarFavorite, QFilterCondition> {
  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      addedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      addedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      addedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      addedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eventId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eventId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eventId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      eventIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eventId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterFilterCondition>
      userEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userEmail',
        value: '',
      ));
    });
  }
}

extension IsarFavoriteQueryObject
    on QueryBuilder<IsarFavorite, IsarFavorite, QFilterCondition> {}

extension IsarFavoriteQueryLinks
    on QueryBuilder<IsarFavorite, IsarFavorite, QFilterCondition> {}

extension IsarFavoriteQuerySortBy
    on QueryBuilder<IsarFavorite, IsarFavorite, QSortBy> {
  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> sortByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> sortByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> sortByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> sortByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> sortByUserEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> sortByUserEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.desc);
    });
  }
}

extension IsarFavoriteQuerySortThenBy
    on QueryBuilder<IsarFavorite, IsarFavorite, QSortThenBy> {
  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByAddedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByEventId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByEventIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eventId', Sort.desc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByUserEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QAfterSortBy> thenByUserEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userEmail', Sort.desc);
    });
  }
}

extension IsarFavoriteQueryWhereDistinct
    on QueryBuilder<IsarFavorite, IsarFavorite, QDistinct> {
  QueryBuilder<IsarFavorite, IsarFavorite, QDistinct> distinctByAddedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedAt');
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QDistinct> distinctByEventId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eventId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarFavorite, IsarFavorite, QDistinct> distinctByUserEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userEmail', caseSensitive: caseSensitive);
    });
  }
}

extension IsarFavoriteQueryProperty
    on QueryBuilder<IsarFavorite, IsarFavorite, QQueryProperty> {
  QueryBuilder<IsarFavorite, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarFavorite, DateTime, QQueryOperations> addedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedAt');
    });
  }

  QueryBuilder<IsarFavorite, String, QQueryOperations> eventIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eventId');
    });
  }

  QueryBuilder<IsarFavorite, String, QQueryOperations> userEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userEmail');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarOrderCollection on Isar {
  IsarCollection<IsarOrder> get isarOrders => this.collection();
}

const IsarOrderSchema = CollectionSchema(
  name: r'IsarOrder',
  id: 1544355436237365092,
  properties: {
    r'currency': PropertySchema(
      id: 0,
      name: r'currency',
      type: IsarType.string,
    ),
    r'customerEmail': PropertySchema(
      id: 1,
      name: r'customerEmail',
      type: IsarType.string,
    ),
    r'discount': PropertySchema(
      id: 2,
      name: r'discount',
      type: IsarType.double,
    ),
    r'failureReason': PropertySchema(
      id: 3,
      name: r'failureReason',
      type: IsarType.string,
    ),
    r'itemCount': PropertySchema(
      id: 4,
      name: r'itemCount',
      type: IsarType.long,
    ),
    r'orderId': PropertySchema(
      id: 5,
      name: r'orderId',
      type: IsarType.string,
    ),
    r'paymentBrand': PropertySchema(
      id: 6,
      name: r'paymentBrand',
      type: IsarType.string,
    ),
    r'paymentLast4': PropertySchema(
      id: 7,
      name: r'paymentLast4',
      type: IsarType.string,
    ),
    r'paymentMethod': PropertySchema(
      id: 8,
      name: r'paymentMethod',
      type: IsarType.string,
    ),
    r'placedAt': PropertySchema(
      id: 9,
      name: r'placedAt',
      type: IsarType.dateTime,
    ),
    r'promoCode': PropertySchema(
      id: 10,
      name: r'promoCode',
      type: IsarType.string,
    ),
    r'refundAmount': PropertySchema(
      id: 11,
      name: r'refundAmount',
      type: IsarType.double,
    ),
    r'refundReason': PropertySchema(
      id: 12,
      name: r'refundReason',
      type: IsarType.string,
    ),
    r'refundedAt': PropertySchema(
      id: 13,
      name: r'refundedAt',
      type: IsarType.dateTime,
    ),
    r'refundedByEmail': PropertySchema(
      id: 14,
      name: r'refundedByEmail',
      type: IsarType.string,
    ),
    r'serviceFee': PropertySchema(
      id: 15,
      name: r'serviceFee',
      type: IsarType.double,
    ),
    r'status': PropertySchema(
      id: 16,
      name: r'status',
      type: IsarType.string,
    ),
    r'subtotal': PropertySchema(
      id: 17,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'tax': PropertySchema(
      id: 18,
      name: r'tax',
      type: IsarType.double,
    ),
    r'ticketIds': PropertySchema(
      id: 19,
      name: r'ticketIds',
      type: IsarType.stringList,
    ),
    r'total': PropertySchema(
      id: 20,
      name: r'total',
      type: IsarType.double,
    )
  },
  estimateSize: _isarOrderEstimateSize,
  serialize: _isarOrderSerialize,
  deserialize: _isarOrderDeserialize,
  deserializeProp: _isarOrderDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'orderId': IndexSchema(
      id: -6176610178429382285,
      name: r'orderId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'orderId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'customerEmail': IndexSchema(
      id: -4787032169302939962,
      name: r'customerEmail',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'customerEmail',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'status': IndexSchema(
      id: -107785170620420283,
      name: r'status',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'status',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarOrderGetId,
  getLinks: _isarOrderGetLinks,
  attach: _isarOrderAttach,
  version: '3.1.0+1',
);

int _isarOrderEstimateSize(
  IsarOrder object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.currency.length * 3;
  bytesCount += 3 + object.customerEmail.length * 3;
  {
    final value = object.failureReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.orderId.length * 3;
  bytesCount += 3 + object.paymentBrand.length * 3;
  {
    final value = object.paymentLast4;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.paymentMethod.length * 3;
  {
    final value = object.promoCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refundReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refundedByEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.length * 3;
  bytesCount += 3 + object.ticketIds.length * 3;
  {
    for (var i = 0; i < object.ticketIds.length; i++) {
      final value = object.ticketIds[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _isarOrderSerialize(
  IsarOrder object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.currency);
  writer.writeString(offsets[1], object.customerEmail);
  writer.writeDouble(offsets[2], object.discount);
  writer.writeString(offsets[3], object.failureReason);
  writer.writeLong(offsets[4], object.itemCount);
  writer.writeString(offsets[5], object.orderId);
  writer.writeString(offsets[6], object.paymentBrand);
  writer.writeString(offsets[7], object.paymentLast4);
  writer.writeString(offsets[8], object.paymentMethod);
  writer.writeDateTime(offsets[9], object.placedAt);
  writer.writeString(offsets[10], object.promoCode);
  writer.writeDouble(offsets[11], object.refundAmount);
  writer.writeString(offsets[12], object.refundReason);
  writer.writeDateTime(offsets[13], object.refundedAt);
  writer.writeString(offsets[14], object.refundedByEmail);
  writer.writeDouble(offsets[15], object.serviceFee);
  writer.writeString(offsets[16], object.status);
  writer.writeDouble(offsets[17], object.subtotal);
  writer.writeDouble(offsets[18], object.tax);
  writer.writeStringList(offsets[19], object.ticketIds);
  writer.writeDouble(offsets[20], object.total);
}

IsarOrder _isarOrderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarOrder();
  object.currency = reader.readString(offsets[0]);
  object.customerEmail = reader.readString(offsets[1]);
  object.discount = reader.readDouble(offsets[2]);
  object.failureReason = reader.readStringOrNull(offsets[3]);
  object.isarId = id;
  object.itemCount = reader.readLong(offsets[4]);
  object.orderId = reader.readString(offsets[5]);
  object.paymentBrand = reader.readString(offsets[6]);
  object.paymentLast4 = reader.readStringOrNull(offsets[7]);
  object.paymentMethod = reader.readString(offsets[8]);
  object.placedAt = reader.readDateTime(offsets[9]);
  object.promoCode = reader.readStringOrNull(offsets[10]);
  object.refundAmount = reader.readDoubleOrNull(offsets[11]);
  object.refundReason = reader.readStringOrNull(offsets[12]);
  object.refundedAt = reader.readDateTimeOrNull(offsets[13]);
  object.refundedByEmail = reader.readStringOrNull(offsets[14]);
  object.serviceFee = reader.readDouble(offsets[15]);
  object.status = reader.readString(offsets[16]);
  object.subtotal = reader.readDouble(offsets[17]);
  object.tax = reader.readDouble(offsets[18]);
  object.ticketIds = reader.readStringList(offsets[19]) ?? [];
  object.total = reader.readDouble(offsets[20]);
  return object;
}

P _isarOrderDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readDouble(offset)) as P;
    case 18:
      return (reader.readDouble(offset)) as P;
    case 19:
      return (reader.readStringList(offset) ?? []) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarOrderGetId(IsarOrder object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarOrderGetLinks(IsarOrder object) {
  return [];
}

void _isarOrderAttach(IsarCollection<dynamic> col, Id id, IsarOrder object) {
  object.isarId = id;
}

extension IsarOrderByIndex on IsarCollection<IsarOrder> {
  Future<IsarOrder?> getByOrderId(String orderId) {
    return getByIndex(r'orderId', [orderId]);
  }

  IsarOrder? getByOrderIdSync(String orderId) {
    return getByIndexSync(r'orderId', [orderId]);
  }

  Future<bool> deleteByOrderId(String orderId) {
    return deleteByIndex(r'orderId', [orderId]);
  }

  bool deleteByOrderIdSync(String orderId) {
    return deleteByIndexSync(r'orderId', [orderId]);
  }

  Future<List<IsarOrder?>> getAllByOrderId(List<String> orderIdValues) {
    final values = orderIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'orderId', values);
  }

  List<IsarOrder?> getAllByOrderIdSync(List<String> orderIdValues) {
    final values = orderIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'orderId', values);
  }

  Future<int> deleteAllByOrderId(List<String> orderIdValues) {
    final values = orderIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'orderId', values);
  }

  int deleteAllByOrderIdSync(List<String> orderIdValues) {
    final values = orderIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'orderId', values);
  }

  Future<Id> putByOrderId(IsarOrder object) {
    return putByIndex(r'orderId', object);
  }

  Id putByOrderIdSync(IsarOrder object, {bool saveLinks = true}) {
    return putByIndexSync(r'orderId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByOrderId(List<IsarOrder> objects) {
    return putAllByIndex(r'orderId', objects);
  }

  List<Id> putAllByOrderIdSync(List<IsarOrder> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'orderId', objects, saveLinks: saveLinks);
  }
}

extension IsarOrderQueryWhereSort
    on QueryBuilder<IsarOrder, IsarOrder, QWhere> {
  QueryBuilder<IsarOrder, IsarOrder, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarOrderQueryWhere
    on QueryBuilder<IsarOrder, IsarOrder, QWhereClause> {
  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> isarIdGreaterThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> orderIdEqualTo(
      String orderId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'orderId',
        value: [orderId],
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> orderIdNotEqualTo(
      String orderId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'orderId',
              lower: [],
              upper: [orderId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'orderId',
              lower: [orderId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'orderId',
              lower: [orderId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'orderId',
              lower: [],
              upper: [orderId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> customerEmailEqualTo(
      String customerEmail) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'customerEmail',
        value: [customerEmail],
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> customerEmailNotEqualTo(
      String customerEmail) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerEmail',
              lower: [],
              upper: [customerEmail],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerEmail',
              lower: [customerEmail],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerEmail',
              lower: [customerEmail],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'customerEmail',
              lower: [],
              upper: [customerEmail],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> statusEqualTo(
      String status) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'status',
        value: [status],
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterWhereClause> statusNotEqualTo(
      String status) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [],
              upper: [status],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [status],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [status],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'status',
              lower: [],
              upper: [status],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarOrderQueryFilter
    on QueryBuilder<IsarOrder, IsarOrder, QFilterCondition> {
  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> currencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      currencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currency',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      customerEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> discountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> discountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> discountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> discountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'failureReason',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'failureReason',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'failureReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'failureReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'failureReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'failureReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'failureReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'failureReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'failureReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'failureReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'failureReason',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      failureReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'failureReason',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> isarIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> itemCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      itemCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> itemCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> itemCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orderId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orderId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orderId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> orderIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      orderIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orderId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> paymentBrandEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> paymentBrandBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentBrand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentBrand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> paymentBrandMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentBrand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentBrandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentBrand',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentLast4',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentLast4',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> paymentLast4EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentLast4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentLast4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentLast4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> paymentLast4Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentLast4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentLast4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentLast4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentLast4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> paymentLast4Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentLast4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentLast4',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentLast4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentLast4',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentMethod',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentMethod',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentMethod',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      paymentMethodIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentMethod',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> placedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> placedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> placedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> placedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'promoCode',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      promoCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'promoCode',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'promoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      promoCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'promoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'promoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'promoCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'promoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'promoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'promoCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'promoCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> promoCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'promoCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      promoCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'promoCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refundAmount',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refundAmount',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refundAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refundAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refundAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refundReason',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refundReason',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refundReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refundReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refundReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refundReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refundReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refundReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundReasonMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refundReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundReason',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refundReason',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refundedAt',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refundedAt',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refundedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refundedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> refundedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refundedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refundedByEmail',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refundedByEmail',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refundedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refundedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refundedByEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refundedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refundedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refundedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refundedByEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refundedByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      refundedByEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refundedByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> serviceFeeEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceFee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      serviceFeeGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceFee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> serviceFeeLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceFee',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> serviceFeeBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceFee',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> subtotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> subtotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> subtotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> subtotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> taxEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> taxGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> taxLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tax',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> taxBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ticketIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ticketIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ticketIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ticketIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ticketIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ticketIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ticketIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ticketIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ticketIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> ticketIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition>
      ticketIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'ticketIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> totalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> totalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> totalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterFilterCondition> totalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension IsarOrderQueryObject
    on QueryBuilder<IsarOrder, IsarOrder, QFilterCondition> {}

extension IsarOrderQueryLinks
    on QueryBuilder<IsarOrder, IsarOrder, QFilterCondition> {}

extension IsarOrderQuerySortBy on QueryBuilder<IsarOrder, IsarOrder, QSortBy> {
  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByCustomerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByCustomerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByFailureReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'failureReason', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByFailureReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'failureReason', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByItemCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCount', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByItemCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCount', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPaymentBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentBrand', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPaymentBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentBrand', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPaymentLast4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentLast4', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPaymentLast4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentLast4', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPaymentMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMethod', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPaymentMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMethod', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPlacedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPlacedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPromoCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promoCode', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByPromoCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promoCode', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundReason', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundReason', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByRefundedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedByEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByServiceFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFee', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByServiceFeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFee', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }
}

extension IsarOrderQuerySortThenBy
    on QueryBuilder<IsarOrder, IsarOrder, QSortThenBy> {
  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currency', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByCustomerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByCustomerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByFailureReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'failureReason', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByFailureReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'failureReason', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByItemCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCount', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByItemCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemCount', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByOrderId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByOrderIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orderId', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPaymentBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentBrand', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPaymentBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentBrand', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPaymentLast4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentLast4', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPaymentLast4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentLast4', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPaymentMethod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMethod', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPaymentMethodDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMethod', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPlacedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPlacedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPromoCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promoCode', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByPromoCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'promoCode', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundAmount', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundReason', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundReason', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByRefundedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refundedByEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByServiceFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFee', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByServiceFeeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFee', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByTaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tax', Sort.desc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QAfterSortBy> thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }
}

extension IsarOrderQueryWhereDistinct
    on QueryBuilder<IsarOrder, IsarOrder, QDistinct> {
  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByCurrency(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currency', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByCustomerEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerEmail',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discount');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByFailureReason(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'failureReason',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByItemCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemCount');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByOrderId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orderId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByPaymentBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentBrand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByPaymentLast4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentLast4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByPaymentMethod(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentMethod',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByPlacedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placedAt');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByPromoCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'promoCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByRefundAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refundAmount');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByRefundReason(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refundReason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByRefundedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refundedAt');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByRefundedByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refundedByEmail',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByServiceFee() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceFee');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByTax() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tax');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByTicketIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ticketIds');
    });
  }

  QueryBuilder<IsarOrder, IsarOrder, QDistinct> distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
    });
  }
}

extension IsarOrderQueryProperty
    on QueryBuilder<IsarOrder, IsarOrder, QQueryProperty> {
  QueryBuilder<IsarOrder, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarOrder, String, QQueryOperations> currencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currency');
    });
  }

  QueryBuilder<IsarOrder, String, QQueryOperations> customerEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerEmail');
    });
  }

  QueryBuilder<IsarOrder, double, QQueryOperations> discountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discount');
    });
  }

  QueryBuilder<IsarOrder, String?, QQueryOperations> failureReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'failureReason');
    });
  }

  QueryBuilder<IsarOrder, int, QQueryOperations> itemCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemCount');
    });
  }

  QueryBuilder<IsarOrder, String, QQueryOperations> orderIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orderId');
    });
  }

  QueryBuilder<IsarOrder, String, QQueryOperations> paymentBrandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentBrand');
    });
  }

  QueryBuilder<IsarOrder, String?, QQueryOperations> paymentLast4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentLast4');
    });
  }

  QueryBuilder<IsarOrder, String, QQueryOperations> paymentMethodProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentMethod');
    });
  }

  QueryBuilder<IsarOrder, DateTime, QQueryOperations> placedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placedAt');
    });
  }

  QueryBuilder<IsarOrder, String?, QQueryOperations> promoCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'promoCode');
    });
  }

  QueryBuilder<IsarOrder, double?, QQueryOperations> refundAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refundAmount');
    });
  }

  QueryBuilder<IsarOrder, String?, QQueryOperations> refundReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refundReason');
    });
  }

  QueryBuilder<IsarOrder, DateTime?, QQueryOperations> refundedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refundedAt');
    });
  }

  QueryBuilder<IsarOrder, String?, QQueryOperations> refundedByEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refundedByEmail');
    });
  }

  QueryBuilder<IsarOrder, double, QQueryOperations> serviceFeeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceFee');
    });
  }

  QueryBuilder<IsarOrder, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<IsarOrder, double, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }

  QueryBuilder<IsarOrder, double, QQueryOperations> taxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tax');
    });
  }

  QueryBuilder<IsarOrder, List<String>, QQueryOperations> ticketIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ticketIds');
    });
  }

  QueryBuilder<IsarOrder, double, QQueryOperations> totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarAppSettingsCollection on Isar {
  IsarCollection<IsarAppSettings> get isarAppSettings => this.collection();
}

const IsarAppSettingsSchema = CollectionSchema(
  name: r'IsarAppSettings',
  id: -9223260734181630302,
  properties: {
    r'currencyCode': PropertySchema(
      id: 0,
      name: r'currencyCode',
      type: IsarType.string,
    ),
    r'currencySymbol': PropertySchema(
      id: 1,
      name: r'currencySymbol',
      type: IsarType.string,
    ),
    r'featuredEventIds': PropertySchema(
      id: 2,
      name: r'featuredEventIds',
      type: IsarType.stringList,
    ),
    r'key': PropertySchema(
      id: 3,
      name: r'key',
      type: IsarType.string,
    ),
    r'maintenanceMessage': PropertySchema(
      id: 4,
      name: r'maintenanceMessage',
      type: IsarType.string,
    ),
    r'maintenanceMode': PropertySchema(
      id: 5,
      name: r'maintenanceMode',
      type: IsarType.bool,
    ),
    r'maxTicketsPerOrder': PropertySchema(
      id: 6,
      name: r'maxTicketsPerOrder',
      type: IsarType.long,
    ),
    r'paymentSimulation': PropertySchema(
      id: 7,
      name: r'paymentSimulation',
      type: IsarType.bool,
    ),
    r'serviceFeeRate': PropertySchema(
      id: 8,
      name: r'serviceFeeRate',
      type: IsarType.double,
    ),
    r'stripePublishableKey': PropertySchema(
      id: 9,
      name: r'stripePublishableKey',
      type: IsarType.string,
    ),
    r'supportEmail': PropertySchema(
      id: 10,
      name: r'supportEmail',
      type: IsarType.string,
    ),
    r'taxRate': PropertySchema(
      id: 11,
      name: r'taxRate',
      type: IsarType.double,
    ),
    r'updatedAt': PropertySchema(
      id: 12,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'updatedByEmail': PropertySchema(
      id: 13,
      name: r'updatedByEmail',
      type: IsarType.string,
    )
  },
  estimateSize: _isarAppSettingsEstimateSize,
  serialize: _isarAppSettingsSerialize,
  deserialize: _isarAppSettingsDeserialize,
  deserializeProp: _isarAppSettingsDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'key': IndexSchema(
      id: -4906094122524121629,
      name: r'key',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'key',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarAppSettingsGetId,
  getLinks: _isarAppSettingsGetLinks,
  attach: _isarAppSettingsAttach,
  version: '3.1.0+1',
);

int _isarAppSettingsEstimateSize(
  IsarAppSettings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.currencyCode.length * 3;
  bytesCount += 3 + object.currencySymbol.length * 3;
  bytesCount += 3 + object.featuredEventIds.length * 3;
  {
    for (var i = 0; i < object.featuredEventIds.length; i++) {
      final value = object.featuredEventIds[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.key.length * 3;
  bytesCount += 3 + object.maintenanceMessage.length * 3;
  {
    final value = object.stripePublishableKey;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.supportEmail.length * 3;
  {
    final value = object.updatedByEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarAppSettingsSerialize(
  IsarAppSettings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.currencyCode);
  writer.writeString(offsets[1], object.currencySymbol);
  writer.writeStringList(offsets[2], object.featuredEventIds);
  writer.writeString(offsets[3], object.key);
  writer.writeString(offsets[4], object.maintenanceMessage);
  writer.writeBool(offsets[5], object.maintenanceMode);
  writer.writeLong(offsets[6], object.maxTicketsPerOrder);
  writer.writeBool(offsets[7], object.paymentSimulation);
  writer.writeDouble(offsets[8], object.serviceFeeRate);
  writer.writeString(offsets[9], object.stripePublishableKey);
  writer.writeString(offsets[10], object.supportEmail);
  writer.writeDouble(offsets[11], object.taxRate);
  writer.writeDateTime(offsets[12], object.updatedAt);
  writer.writeString(offsets[13], object.updatedByEmail);
}

IsarAppSettings _isarAppSettingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarAppSettings();
  object.currencyCode = reader.readString(offsets[0]);
  object.currencySymbol = reader.readString(offsets[1]);
  object.featuredEventIds = reader.readStringList(offsets[2]) ?? [];
  object.isarId = id;
  object.key = reader.readString(offsets[3]);
  object.maintenanceMessage = reader.readString(offsets[4]);
  object.maintenanceMode = reader.readBool(offsets[5]);
  object.maxTicketsPerOrder = reader.readLong(offsets[6]);
  object.paymentSimulation = reader.readBool(offsets[7]);
  object.serviceFeeRate = reader.readDouble(offsets[8]);
  object.stripePublishableKey = reader.readStringOrNull(offsets[9]);
  object.supportEmail = reader.readString(offsets[10]);
  object.taxRate = reader.readDouble(offsets[11]);
  object.updatedAt = reader.readDateTime(offsets[12]);
  object.updatedByEmail = reader.readStringOrNull(offsets[13]);
  return object;
}

P _isarAppSettingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? []) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarAppSettingsGetId(IsarAppSettings object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarAppSettingsGetLinks(IsarAppSettings object) {
  return [];
}

void _isarAppSettingsAttach(
    IsarCollection<dynamic> col, Id id, IsarAppSettings object) {
  object.isarId = id;
}

extension IsarAppSettingsByIndex on IsarCollection<IsarAppSettings> {
  Future<IsarAppSettings?> getByKey(String key) {
    return getByIndex(r'key', [key]);
  }

  IsarAppSettings? getByKeySync(String key) {
    return getByIndexSync(r'key', [key]);
  }

  Future<bool> deleteByKey(String key) {
    return deleteByIndex(r'key', [key]);
  }

  bool deleteByKeySync(String key) {
    return deleteByIndexSync(r'key', [key]);
  }

  Future<List<IsarAppSettings?>> getAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndex(r'key', values);
  }

  List<IsarAppSettings?> getAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'key', values);
  }

  Future<int> deleteAllByKey(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'key', values);
  }

  int deleteAllByKeySync(List<String> keyValues) {
    final values = keyValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'key', values);
  }

  Future<Id> putByKey(IsarAppSettings object) {
    return putByIndex(r'key', object);
  }

  Id putByKeySync(IsarAppSettings object, {bool saveLinks = true}) {
    return putByIndexSync(r'key', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByKey(List<IsarAppSettings> objects) {
    return putAllByIndex(r'key', objects);
  }

  List<Id> putAllByKeySync(List<IsarAppSettings> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'key', objects, saveLinks: saveLinks);
  }
}

extension IsarAppSettingsQueryWhereSort
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QWhere> {
  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarAppSettingsQueryWhere
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QWhereClause> {
  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause> keyEqualTo(
      String key) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'key',
        value: [key],
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterWhereClause>
      keyNotEqualTo(String key) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [key],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'key',
              lower: [],
              upper: [key],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarAppSettingsQueryFilter
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QFilterCondition> {
  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currencyCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currencyCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currencyCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencyCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currencyCode',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currencySymbol',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'currencySymbol',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'currencySymbol',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currencySymbol',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      currencySymbolIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'currencySymbol',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'featuredEventIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'featuredEventIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'featuredEventIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'featuredEventIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'featuredEventIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'featuredEventIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'featuredEventIds',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'featuredEventIds',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'featuredEventIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'featuredEventIds',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'featuredEventIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'featuredEventIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'featuredEventIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'featuredEventIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'featuredEventIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      featuredEventIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'featuredEventIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'key',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'key',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'key',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      keyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'key',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maintenanceMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maintenanceMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maintenanceMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maintenanceMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'maintenanceMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'maintenanceMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'maintenanceMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'maintenanceMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maintenanceMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'maintenanceMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maintenanceModeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maintenanceMode',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maxTicketsPerOrderEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxTicketsPerOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maxTicketsPerOrderGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxTicketsPerOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maxTicketsPerOrderLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxTicketsPerOrder',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      maxTicketsPerOrderBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxTicketsPerOrder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      paymentSimulationEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentSimulation',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      serviceFeeRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceFeeRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      serviceFeeRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceFeeRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      serviceFeeRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceFeeRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      serviceFeeRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceFeeRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stripePublishableKey',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stripePublishableKey',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stripePublishableKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stripePublishableKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stripePublishableKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stripePublishableKey',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stripePublishableKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stripePublishableKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stripePublishableKey',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stripePublishableKey',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stripePublishableKey',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      stripePublishableKeyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stripePublishableKey',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supportEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supportEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supportEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supportEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'supportEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'supportEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supportEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supportEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supportEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      supportEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supportEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      taxRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      taxRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      taxRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      taxRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedByEmail',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedByEmail',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedByEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updatedByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updatedByEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterFilterCondition>
      updatedByEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updatedByEmail',
        value: '',
      ));
    });
  }
}

extension IsarAppSettingsQueryObject
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QFilterCondition> {}

extension IsarAppSettingsQueryLinks
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QFilterCondition> {}

extension IsarAppSettingsQuerySortBy
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QSortBy> {
  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByCurrencyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyCode', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByCurrencyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyCode', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByCurrencySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByCurrencySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> sortByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> sortByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByMaintenanceMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMessage', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByMaintenanceMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMessage', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByMaintenanceMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMode', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByMaintenanceModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMode', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByMaxTicketsPerOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTicketsPerOrder', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByMaxTicketsPerOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTicketsPerOrder', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByPaymentSimulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentSimulation', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByPaymentSimulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentSimulation', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByServiceFeeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFeeRate', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByServiceFeeRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFeeRate', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByStripePublishableKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stripePublishableKey', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByStripePublishableKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stripePublishableKey', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortBySupportEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supportEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortBySupportEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supportEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> sortByTaxRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxRate', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByTaxRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxRate', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByUpdatedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      sortByUpdatedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.desc);
    });
  }
}

extension IsarAppSettingsQuerySortThenBy
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QSortThenBy> {
  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByCurrencyCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyCode', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByCurrencyCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencyCode', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByCurrencySymbol() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByCurrencySymbolDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currencySymbol', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> thenByKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> thenByKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'key', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByMaintenanceMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMessage', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByMaintenanceMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMessage', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByMaintenanceMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMode', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByMaintenanceModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maintenanceMode', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByMaxTicketsPerOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTicketsPerOrder', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByMaxTicketsPerOrderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxTicketsPerOrder', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByPaymentSimulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentSimulation', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByPaymentSimulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentSimulation', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByServiceFeeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFeeRate', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByServiceFeeRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFeeRate', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByStripePublishableKey() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stripePublishableKey', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByStripePublishableKeyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stripePublishableKey', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenBySupportEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supportEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenBySupportEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supportEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy> thenByTaxRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxRate', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByTaxRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxRate', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByUpdatedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QAfterSortBy>
      thenByUpdatedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedByEmail', Sort.desc);
    });
  }
}

extension IsarAppSettingsQueryWhereDistinct
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct> {
  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByCurrencyCode({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currencyCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByCurrencySymbol({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currencySymbol',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByFeaturedEventIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'featuredEventIds');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct> distinctByKey(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'key', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByMaintenanceMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maintenanceMessage',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByMaintenanceMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maintenanceMode');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByMaxTicketsPerOrder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxTicketsPerOrder');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByPaymentSimulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentSimulation');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByServiceFeeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceFeeRate');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByStripePublishableKey({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stripePublishableKey',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctBySupportEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supportEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByTaxRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxRate');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<IsarAppSettings, IsarAppSettings, QDistinct>
      distinctByUpdatedByEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedByEmail',
          caseSensitive: caseSensitive);
    });
  }
}

extension IsarAppSettingsQueryProperty
    on QueryBuilder<IsarAppSettings, IsarAppSettings, QQueryProperty> {
  QueryBuilder<IsarAppSettings, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarAppSettings, String, QQueryOperations>
      currencyCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencyCode');
    });
  }

  QueryBuilder<IsarAppSettings, String, QQueryOperations>
      currencySymbolProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currencySymbol');
    });
  }

  QueryBuilder<IsarAppSettings, List<String>, QQueryOperations>
      featuredEventIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'featuredEventIds');
    });
  }

  QueryBuilder<IsarAppSettings, String, QQueryOperations> keyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'key');
    });
  }

  QueryBuilder<IsarAppSettings, String, QQueryOperations>
      maintenanceMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maintenanceMessage');
    });
  }

  QueryBuilder<IsarAppSettings, bool, QQueryOperations>
      maintenanceModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maintenanceMode');
    });
  }

  QueryBuilder<IsarAppSettings, int, QQueryOperations>
      maxTicketsPerOrderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxTicketsPerOrder');
    });
  }

  QueryBuilder<IsarAppSettings, bool, QQueryOperations>
      paymentSimulationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentSimulation');
    });
  }

  QueryBuilder<IsarAppSettings, double, QQueryOperations>
      serviceFeeRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceFeeRate');
    });
  }

  QueryBuilder<IsarAppSettings, String?, QQueryOperations>
      stripePublishableKeyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stripePublishableKey');
    });
  }

  QueryBuilder<IsarAppSettings, String, QQueryOperations>
      supportEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supportEmail');
    });
  }

  QueryBuilder<IsarAppSettings, double, QQueryOperations> taxRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxRate');
    });
  }

  QueryBuilder<IsarAppSettings, DateTime, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<IsarAppSettings, String?, QQueryOperations>
      updatedByEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedByEmail');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarPromoCodeCollection on Isar {
  IsarCollection<IsarPromoCode> get isarPromoCodes => this.collection();
}

const IsarPromoCodeSchema = CollectionSchema(
  name: r'IsarPromoCode',
  id: 7953409698435268463,
  properties: {
    r'code': PropertySchema(
      id: 0,
      name: r'code',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'createdByEmail': PropertySchema(
      id: 2,
      name: r'createdByEmail',
      type: IsarType.string,
    ),
    r'discountType': PropertySchema(
      id: 3,
      name: r'discountType',
      type: IsarType.string,
    ),
    r'discountValue': PropertySchema(
      id: 4,
      name: r'discountValue',
      type: IsarType.double,
    ),
    r'emoji': PropertySchema(
      id: 5,
      name: r'emoji',
      type: IsarType.string,
    ),
    r'expiresAt': PropertySchema(
      id: 6,
      name: r'expiresAt',
      type: IsarType.dateTime,
    ),
    r'isActive': PropertySchema(
      id: 7,
      name: r'isActive',
      type: IsarType.bool,
    ),
    r'label': PropertySchema(
      id: 8,
      name: r'label',
      type: IsarType.string,
    ),
    r'maxUses': PropertySchema(
      id: 9,
      name: r'maxUses',
      type: IsarType.long,
    ),
    r'minSubtotal': PropertySchema(
      id: 10,
      name: r'minSubtotal',
      type: IsarType.double,
    ),
    r'usedCount': PropertySchema(
      id: 11,
      name: r'usedCount',
      type: IsarType.long,
    )
  },
  estimateSize: _isarPromoCodeEstimateSize,
  serialize: _isarPromoCodeSerialize,
  deserialize: _isarPromoCodeDeserialize,
  deserializeProp: _isarPromoCodeDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'code': IndexSchema(
      id: 329780482934683790,
      name: r'code',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'code',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarPromoCodeGetId,
  getLinks: _isarPromoCodeGetLinks,
  attach: _isarPromoCodeAttach,
  version: '3.1.0+1',
);

int _isarPromoCodeEstimateSize(
  IsarPromoCode object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.code.length * 3;
  {
    final value = object.createdByEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.discountType.length * 3;
  bytesCount += 3 + object.emoji.length * 3;
  bytesCount += 3 + object.label.length * 3;
  return bytesCount;
}

void _isarPromoCodeSerialize(
  IsarPromoCode object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.code);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.createdByEmail);
  writer.writeString(offsets[3], object.discountType);
  writer.writeDouble(offsets[4], object.discountValue);
  writer.writeString(offsets[5], object.emoji);
  writer.writeDateTime(offsets[6], object.expiresAt);
  writer.writeBool(offsets[7], object.isActive);
  writer.writeString(offsets[8], object.label);
  writer.writeLong(offsets[9], object.maxUses);
  writer.writeDouble(offsets[10], object.minSubtotal);
  writer.writeLong(offsets[11], object.usedCount);
}

IsarPromoCode _isarPromoCodeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarPromoCode();
  object.code = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.createdByEmail = reader.readStringOrNull(offsets[2]);
  object.discountType = reader.readString(offsets[3]);
  object.discountValue = reader.readDouble(offsets[4]);
  object.emoji = reader.readString(offsets[5]);
  object.expiresAt = reader.readDateTimeOrNull(offsets[6]);
  object.isActive = reader.readBool(offsets[7]);
  object.isarId = id;
  object.label = reader.readString(offsets[8]);
  object.maxUses = reader.readLong(offsets[9]);
  object.minSubtotal = reader.readDouble(offsets[10]);
  object.usedCount = reader.readLong(offsets[11]);
  return object;
}

P _isarPromoCodeDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarPromoCodeGetId(IsarPromoCode object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarPromoCodeGetLinks(IsarPromoCode object) {
  return [];
}

void _isarPromoCodeAttach(
    IsarCollection<dynamic> col, Id id, IsarPromoCode object) {
  object.isarId = id;
}

extension IsarPromoCodeByIndex on IsarCollection<IsarPromoCode> {
  Future<IsarPromoCode?> getByCode(String code) {
    return getByIndex(r'code', [code]);
  }

  IsarPromoCode? getByCodeSync(String code) {
    return getByIndexSync(r'code', [code]);
  }

  Future<bool> deleteByCode(String code) {
    return deleteByIndex(r'code', [code]);
  }

  bool deleteByCodeSync(String code) {
    return deleteByIndexSync(r'code', [code]);
  }

  Future<List<IsarPromoCode?>> getAllByCode(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return getAllByIndex(r'code', values);
  }

  List<IsarPromoCode?> getAllByCodeSync(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'code', values);
  }

  Future<int> deleteAllByCode(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'code', values);
  }

  int deleteAllByCodeSync(List<String> codeValues) {
    final values = codeValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'code', values);
  }

  Future<Id> putByCode(IsarPromoCode object) {
    return putByIndex(r'code', object);
  }

  Id putByCodeSync(IsarPromoCode object, {bool saveLinks = true}) {
    return putByIndexSync(r'code', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByCode(List<IsarPromoCode> objects) {
    return putAllByIndex(r'code', objects);
  }

  List<Id> putAllByCodeSync(List<IsarPromoCode> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'code', objects, saveLinks: saveLinks);
  }
}

extension IsarPromoCodeQueryWhereSort
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QWhere> {
  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarPromoCodeQueryWhere
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QWhereClause> {
  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause> isarIdEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause> isarIdLessThan(
      Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause> codeEqualTo(
      String code) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'code',
        value: [code],
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterWhereClause> codeNotEqualTo(
      String code) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [],
              upper: [code],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [code],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [code],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'code',
              lower: [],
              upper: [code],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarPromoCodeQueryFilter
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QFilterCondition> {
  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition> codeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition> codeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition> codeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      codeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'code',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdByEmail',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdByEmail',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdByEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      createdByEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discountType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discountType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      discountValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'emoji',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'emoji',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'emoji',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'emoji',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      emojiIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'emoji',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      expiresAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'expiresAt',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      expiresAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'expiresAt',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      expiresAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiresAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      expiresAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiresAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      expiresAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiresAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      expiresAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiresAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      isActiveEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isActive',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'label',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'label',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'label',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'label',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      labelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'label',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      maxUsesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxUses',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      maxUsesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxUses',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      maxUsesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxUses',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      maxUsesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxUses',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      minSubtotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minSubtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      minSubtotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minSubtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      minSubtotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minSubtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      minSubtotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minSubtotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      usedCountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'usedCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      usedCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'usedCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      usedCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'usedCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterFilterCondition>
      usedCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'usedCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarPromoCodeQueryObject
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QFilterCondition> {}

extension IsarPromoCodeQueryLinks
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QFilterCondition> {}

extension IsarPromoCodeQuerySortBy
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QSortBy> {
  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByCreatedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByCreatedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByDiscountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountType', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByDiscountTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountType', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByDiscountValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountValue', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByDiscountValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountValue', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByExpiresAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresAt', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByExpiresAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresAt', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByMaxUses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxUses', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByMaxUsesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxUses', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByMinSubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minSubtotal', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByMinSubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minSubtotal', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> sortByUsedCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usedCount', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      sortByUsedCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usedCount', Sort.desc);
    });
  }
}

extension IsarPromoCodeQuerySortThenBy
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QSortThenBy> {
  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'code', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByCreatedByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByCreatedByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByDiscountType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountType', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByDiscountTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountType', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByDiscountValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountValue', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByDiscountValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountValue', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByEmoji() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByEmojiDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'emoji', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByExpiresAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresAt', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByExpiresAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiresAt', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByIsActiveDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isActive', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByLabel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByLabelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'label', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByMaxUses() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxUses', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByMaxUsesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxUses', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByMinSubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minSubtotal', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByMinSubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'minSubtotal', Sort.desc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy> thenByUsedCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usedCount', Sort.asc);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QAfterSortBy>
      thenByUsedCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'usedCount', Sort.desc);
    });
  }
}

extension IsarPromoCodeQueryWhereDistinct
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> {
  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct>
      distinctByCreatedByEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByEmail',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByDiscountType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct>
      distinctByDiscountValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountValue');
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByEmoji(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'emoji', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByExpiresAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expiresAt');
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByIsActive() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isActive');
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByLabel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'label', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByMaxUses() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxUses');
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct>
      distinctByMinSubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'minSubtotal');
    });
  }

  QueryBuilder<IsarPromoCode, IsarPromoCode, QDistinct> distinctByUsedCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'usedCount');
    });
  }
}

extension IsarPromoCodeQueryProperty
    on QueryBuilder<IsarPromoCode, IsarPromoCode, QQueryProperty> {
  QueryBuilder<IsarPromoCode, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarPromoCode, String, QQueryOperations> codeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'code');
    });
  }

  QueryBuilder<IsarPromoCode, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<IsarPromoCode, String?, QQueryOperations>
      createdByEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByEmail');
    });
  }

  QueryBuilder<IsarPromoCode, String, QQueryOperations> discountTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountType');
    });
  }

  QueryBuilder<IsarPromoCode, double, QQueryOperations>
      discountValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountValue');
    });
  }

  QueryBuilder<IsarPromoCode, String, QQueryOperations> emojiProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'emoji');
    });
  }

  QueryBuilder<IsarPromoCode, DateTime?, QQueryOperations> expiresAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expiresAt');
    });
  }

  QueryBuilder<IsarPromoCode, bool, QQueryOperations> isActiveProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isActive');
    });
  }

  QueryBuilder<IsarPromoCode, String, QQueryOperations> labelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'label');
    });
  }

  QueryBuilder<IsarPromoCode, int, QQueryOperations> maxUsesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxUses');
    });
  }

  QueryBuilder<IsarPromoCode, double, QQueryOperations> minSubtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'minSubtotal');
    });
  }

  QueryBuilder<IsarPromoCode, int, QQueryOperations> usedCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'usedCount');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarPaymentMethodCollection on Isar {
  IsarCollection<IsarPaymentMethod> get isarPaymentMethods => this.collection();
}

const IsarPaymentMethodSchema = CollectionSchema(
  name: r'IsarPaymentMethod',
  id: -112226820327895051,
  properties: {
    r'brand': PropertySchema(
      id: 0,
      name: r'brand',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'expiry': PropertySchema(
      id: 2,
      name: r'expiry',
      type: IsarType.string,
    ),
    r'holder': PropertySchema(
      id: 3,
      name: r'holder',
      type: IsarType.string,
    ),
    r'isDefault': PropertySchema(
      id: 4,
      name: r'isDefault',
      type: IsarType.bool,
    ),
    r'last4': PropertySchema(
      id: 5,
      name: r'last4',
      type: IsarType.string,
    ),
    r'methodId': PropertySchema(
      id: 6,
      name: r'methodId',
      type: IsarType.string,
    ),
    r'ownerEmail': PropertySchema(
      id: 7,
      name: r'ownerEmail',
      type: IsarType.string,
    )
  },
  estimateSize: _isarPaymentMethodEstimateSize,
  serialize: _isarPaymentMethodSerialize,
  deserialize: _isarPaymentMethodDeserialize,
  deserializeProp: _isarPaymentMethodDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'methodId': IndexSchema(
      id: 6819300769009312973,
      name: r'methodId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'methodId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'ownerEmail': IndexSchema(
      id: -82102301092295674,
      name: r'ownerEmail',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ownerEmail',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarPaymentMethodGetId,
  getLinks: _isarPaymentMethodGetLinks,
  attach: _isarPaymentMethodAttach,
  version: '3.1.0+1',
);

int _isarPaymentMethodEstimateSize(
  IsarPaymentMethod object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.brand.length * 3;
  bytesCount += 3 + object.expiry.length * 3;
  bytesCount += 3 + object.holder.length * 3;
  bytesCount += 3 + object.last4.length * 3;
  bytesCount += 3 + object.methodId.length * 3;
  bytesCount += 3 + object.ownerEmail.length * 3;
  return bytesCount;
}

void _isarPaymentMethodSerialize(
  IsarPaymentMethod object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.brand);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.expiry);
  writer.writeString(offsets[3], object.holder);
  writer.writeBool(offsets[4], object.isDefault);
  writer.writeString(offsets[5], object.last4);
  writer.writeString(offsets[6], object.methodId);
  writer.writeString(offsets[7], object.ownerEmail);
}

IsarPaymentMethod _isarPaymentMethodDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarPaymentMethod();
  object.brand = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.expiry = reader.readString(offsets[2]);
  object.holder = reader.readString(offsets[3]);
  object.isDefault = reader.readBool(offsets[4]);
  object.isarId = id;
  object.last4 = reader.readString(offsets[5]);
  object.methodId = reader.readString(offsets[6]);
  object.ownerEmail = reader.readString(offsets[7]);
  return object;
}

P _isarPaymentMethodDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarPaymentMethodGetId(IsarPaymentMethod object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarPaymentMethodGetLinks(
    IsarPaymentMethod object) {
  return [];
}

void _isarPaymentMethodAttach(
    IsarCollection<dynamic> col, Id id, IsarPaymentMethod object) {
  object.isarId = id;
}

extension IsarPaymentMethodByIndex on IsarCollection<IsarPaymentMethod> {
  Future<IsarPaymentMethod?> getByMethodId(String methodId) {
    return getByIndex(r'methodId', [methodId]);
  }

  IsarPaymentMethod? getByMethodIdSync(String methodId) {
    return getByIndexSync(r'methodId', [methodId]);
  }

  Future<bool> deleteByMethodId(String methodId) {
    return deleteByIndex(r'methodId', [methodId]);
  }

  bool deleteByMethodIdSync(String methodId) {
    return deleteByIndexSync(r'methodId', [methodId]);
  }

  Future<List<IsarPaymentMethod?>> getAllByMethodId(
      List<String> methodIdValues) {
    final values = methodIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'methodId', values);
  }

  List<IsarPaymentMethod?> getAllByMethodIdSync(List<String> methodIdValues) {
    final values = methodIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'methodId', values);
  }

  Future<int> deleteAllByMethodId(List<String> methodIdValues) {
    final values = methodIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'methodId', values);
  }

  int deleteAllByMethodIdSync(List<String> methodIdValues) {
    final values = methodIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'methodId', values);
  }

  Future<Id> putByMethodId(IsarPaymentMethod object) {
    return putByIndex(r'methodId', object);
  }

  Id putByMethodIdSync(IsarPaymentMethod object, {bool saveLinks = true}) {
    return putByIndexSync(r'methodId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMethodId(List<IsarPaymentMethod> objects) {
    return putAllByIndex(r'methodId', objects);
  }

  List<Id> putAllByMethodIdSync(List<IsarPaymentMethod> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'methodId', objects, saveLinks: saveLinks);
  }
}

extension IsarPaymentMethodQueryWhereSort
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QWhere> {
  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarPaymentMethodQueryWhere
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QWhereClause> {
  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      methodIdEqualTo(String methodId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'methodId',
        value: [methodId],
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      methodIdNotEqualTo(String methodId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'methodId',
              lower: [],
              upper: [methodId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'methodId',
              lower: [methodId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'methodId',
              lower: [methodId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'methodId',
              lower: [],
              upper: [methodId],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      ownerEmailEqualTo(String ownerEmail) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ownerEmail',
        value: [ownerEmail],
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterWhereClause>
      ownerEmailNotEqualTo(String ownerEmail) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [],
              upper: [ownerEmail],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [ownerEmail],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [ownerEmail],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ownerEmail',
              lower: [],
              upper: [ownerEmail],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarPaymentMethodQueryFilter
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QFilterCondition> {
  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'brand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'brand',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'brand',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      brandIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'brand',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'expiry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'expiry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'expiry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'expiry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'expiry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'expiry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'expiry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'expiry',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      expiryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'expiry',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'holder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'holder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'holder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'holder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'holder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'holder',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'holder',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'holder',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      holderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'holder',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      isDefaultEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDefault',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'last4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'last4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'last4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'last4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'last4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'last4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'last4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4Matches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'last4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'last4',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      last4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'last4',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'methodId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'methodId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'methodId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'methodId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'methodId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'methodId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'methodId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'methodId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'methodId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      methodIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'methodId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ownerEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ownerEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ownerEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ownerEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterFilterCondition>
      ownerEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ownerEmail',
        value: '',
      ));
    });
  }
}

extension IsarPaymentMethodQueryObject
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QFilterCondition> {}

extension IsarPaymentMethodQueryLinks
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QFilterCondition> {}

extension IsarPaymentMethodQuerySortBy
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QSortBy> {
  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByExpiry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByExpiryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByHolder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holder', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByHolderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holder', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByLast4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last4', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByLast4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last4', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByMethodId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'methodId', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByMethodIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'methodId', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByOwnerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      sortByOwnerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.desc);
    });
  }
}

extension IsarPaymentMethodQuerySortThenBy
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QSortThenBy> {
  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByBrand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByBrandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'brand', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByExpiry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByExpiryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'expiry', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByHolder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holder', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByHolderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'holder', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByIsDefaultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDefault', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByLast4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last4', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByLast4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'last4', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByMethodId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'methodId', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByMethodIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'methodId', Sort.desc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByOwnerEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QAfterSortBy>
      thenByOwnerEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ownerEmail', Sort.desc);
    });
  }
}

extension IsarPaymentMethodQueryWhereDistinct
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct> {
  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct> distinctByBrand(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'brand', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct>
      distinctByExpiry({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'expiry', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct>
      distinctByHolder({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'holder', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct>
      distinctByIsDefault() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDefault');
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct> distinctByLast4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'last4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct>
      distinctByMethodId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'methodId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QDistinct>
      distinctByOwnerEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ownerEmail', caseSensitive: caseSensitive);
    });
  }
}

extension IsarPaymentMethodQueryProperty
    on QueryBuilder<IsarPaymentMethod, IsarPaymentMethod, QQueryProperty> {
  QueryBuilder<IsarPaymentMethod, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarPaymentMethod, String, QQueryOperations> brandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'brand');
    });
  }

  QueryBuilder<IsarPaymentMethod, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<IsarPaymentMethod, String, QQueryOperations> expiryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'expiry');
    });
  }

  QueryBuilder<IsarPaymentMethod, String, QQueryOperations> holderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'holder');
    });
  }

  QueryBuilder<IsarPaymentMethod, bool, QQueryOperations> isDefaultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDefault');
    });
  }

  QueryBuilder<IsarPaymentMethod, String, QQueryOperations> last4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'last4');
    });
  }

  QueryBuilder<IsarPaymentMethod, String, QQueryOperations> methodIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'methodId');
    });
  }

  QueryBuilder<IsarPaymentMethod, String, QQueryOperations>
      ownerEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ownerEmail');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarAdminActionCollection on Isar {
  IsarCollection<IsarAdminAction> get isarAdminActions => this.collection();
}

const IsarAdminActionSchema = CollectionSchema(
  name: r'IsarAdminAction',
  id: -2851406178896008523,
  properties: {
    r'action': PropertySchema(
      id: 0,
      name: r'action',
      type: IsarType.string,
    ),
    r'actorEmail': PropertySchema(
      id: 1,
      name: r'actorEmail',
      type: IsarType.string,
    ),
    r'actorRole': PropertySchema(
      id: 2,
      name: r'actorRole',
      type: IsarType.string,
    ),
    r'at': PropertySchema(
      id: 3,
      name: r'at',
      type: IsarType.dateTime,
    ),
    r'details': PropertySchema(
      id: 4,
      name: r'details',
      type: IsarType.string,
    ),
    r'entityId': PropertySchema(
      id: 5,
      name: r'entityId',
      type: IsarType.string,
    ),
    r'entityType': PropertySchema(
      id: 6,
      name: r'entityType',
      type: IsarType.string,
    )
  },
  estimateSize: _isarAdminActionEstimateSize,
  serialize: _isarAdminActionSerialize,
  deserialize: _isarAdminActionDeserialize,
  deserializeProp: _isarAdminActionDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'actorEmail': IndexSchema(
      id: -6335768250623904520,
      name: r'actorEmail',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'actorEmail',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'action': IndexSchema(
      id: -2948318935682215514,
      name: r'action',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'action',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarAdminActionGetId,
  getLinks: _isarAdminActionGetLinks,
  attach: _isarAdminActionAttach,
  version: '3.1.0+1',
);

int _isarAdminActionEstimateSize(
  IsarAdminAction object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.action.length * 3;
  bytesCount += 3 + object.actorEmail.length * 3;
  bytesCount += 3 + object.actorRole.length * 3;
  {
    final value = object.details;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.entityId.length * 3;
  bytesCount += 3 + object.entityType.length * 3;
  return bytesCount;
}

void _isarAdminActionSerialize(
  IsarAdminAction object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.action);
  writer.writeString(offsets[1], object.actorEmail);
  writer.writeString(offsets[2], object.actorRole);
  writer.writeDateTime(offsets[3], object.at);
  writer.writeString(offsets[4], object.details);
  writer.writeString(offsets[5], object.entityId);
  writer.writeString(offsets[6], object.entityType);
}

IsarAdminAction _isarAdminActionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarAdminAction();
  object.action = reader.readString(offsets[0]);
  object.actorEmail = reader.readString(offsets[1]);
  object.actorRole = reader.readString(offsets[2]);
  object.at = reader.readDateTime(offsets[3]);
  object.details = reader.readStringOrNull(offsets[4]);
  object.entityId = reader.readString(offsets[5]);
  object.entityType = reader.readString(offsets[6]);
  object.isarId = id;
  return object;
}

P _isarAdminActionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarAdminActionGetId(IsarAdminAction object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarAdminActionGetLinks(IsarAdminAction object) {
  return [];
}

void _isarAdminActionAttach(
    IsarCollection<dynamic> col, Id id, IsarAdminAction object) {
  object.isarId = id;
}

extension IsarAdminActionQueryWhereSort
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QWhere> {
  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarAdminActionQueryWhere
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QWhereClause> {
  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      actorEmailEqualTo(String actorEmail) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'actorEmail',
        value: [actorEmail],
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      actorEmailNotEqualTo(String actorEmail) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'actorEmail',
              lower: [],
              upper: [actorEmail],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'actorEmail',
              lower: [actorEmail],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'actorEmail',
              lower: [actorEmail],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'actorEmail',
              lower: [],
              upper: [actorEmail],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      actionEqualTo(String action) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'action',
        value: [action],
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterWhereClause>
      actionNotEqualTo(String action) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'action',
              lower: [],
              upper: [action],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'action',
              lower: [action],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'action',
              lower: [action],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'action',
              lower: [],
              upper: [action],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarAdminActionQueryFilter
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QFilterCondition> {
  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'action',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'action',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'action',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'action',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actorEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actorEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actorEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actorEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actorEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actorEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actorEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actorEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actorEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actorEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actorRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actorRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actorRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actorRole',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actorRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actorRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actorRole',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actorRole',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actorRole',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      actorRoleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actorRole',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      atEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'at',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      atGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'at',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      atLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'at',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      atBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'at',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'details',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'details',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'details',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'details',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'details',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'details',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'details',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'details',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'details',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'details',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'details',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      detailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'details',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'entityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'entityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'entityId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'entityId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entityId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'entityId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'entityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'entityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'entityType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'entityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'entityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'entityType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'entityType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'entityType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      entityTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'entityType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterFilterCondition>
      isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarAdminActionQueryObject
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QFilterCondition> {}

extension IsarAdminActionQueryLinks
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QFilterCondition> {}

extension IsarAdminActionQuerySortBy
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QSortBy> {
  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> sortByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByActorEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByActorEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByActorRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorRole', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByActorRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorRole', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> sortByAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'at', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> sortByAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'at', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> sortByDetails() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByDetailsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByEntityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityId', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByEntityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityId', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByEntityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityType', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      sortByEntityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityType', Sort.desc);
    });
  }
}

extension IsarAdminActionQuerySortThenBy
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QSortThenBy> {
  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> thenByAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'action', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByActorEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByActorEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByActorRole() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorRole', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByActorRoleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actorRole', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> thenByAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'at', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> thenByAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'at', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> thenByDetails() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByDetailsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'details', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByEntityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityId', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByEntityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityId', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByEntityType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityType', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByEntityTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'entityType', Sort.desc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QAfterSortBy>
      thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }
}

extension IsarAdminActionQueryWhereDistinct
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct> {
  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct> distinctByAction(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'action', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct>
      distinctByActorEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actorEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct> distinctByActorRole(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actorRole', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct> distinctByAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'at');
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct> distinctByDetails(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'details', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct> distinctByEntityId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entityId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarAdminAction, IsarAdminAction, QDistinct>
      distinctByEntityType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'entityType', caseSensitive: caseSensitive);
    });
  }
}

extension IsarAdminActionQueryProperty
    on QueryBuilder<IsarAdminAction, IsarAdminAction, QQueryProperty> {
  QueryBuilder<IsarAdminAction, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarAdminAction, String, QQueryOperations> actionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'action');
    });
  }

  QueryBuilder<IsarAdminAction, String, QQueryOperations> actorEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actorEmail');
    });
  }

  QueryBuilder<IsarAdminAction, String, QQueryOperations> actorRoleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actorRole');
    });
  }

  QueryBuilder<IsarAdminAction, DateTime, QQueryOperations> atProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'at');
    });
  }

  QueryBuilder<IsarAdminAction, String?, QQueryOperations> detailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'details');
    });
  }

  QueryBuilder<IsarAdminAction, String, QQueryOperations> entityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entityId');
    });
  }

  QueryBuilder<IsarAdminAction, String, QQueryOperations> entityTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'entityType');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarBroadcastNotificationCollection on Isar {
  IsarCollection<IsarBroadcastNotification> get isarBroadcastNotifications =>
      this.collection();
}

const IsarBroadcastNotificationSchema = CollectionSchema(
  name: r'IsarBroadcastNotification',
  id: -7016566426774441049,
  properties: {
    r'actionRoute': PropertySchema(
      id: 0,
      name: r'actionRoute',
      type: IsarType.string,
    ),
    r'audience': PropertySchema(
      id: 1,
      name: r'audience',
      type: IsarType.string,
    ),
    r'body': PropertySchema(
      id: 2,
      name: r'body',
      type: IsarType.string,
    ),
    r'broadcastId': PropertySchema(
      id: 3,
      name: r'broadcastId',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 4,
      name: r'category',
      type: IsarType.string,
    ),
    r'sentAt': PropertySchema(
      id: 5,
      name: r'sentAt',
      type: IsarType.dateTime,
    ),
    r'sentByEmail': PropertySchema(
      id: 6,
      name: r'sentByEmail',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _isarBroadcastNotificationEstimateSize,
  serialize: _isarBroadcastNotificationSerialize,
  deserialize: _isarBroadcastNotificationDeserialize,
  deserializeProp: _isarBroadcastNotificationDeserializeProp,
  idName: r'isarId',
  indexes: {
    r'broadcastId': IndexSchema(
      id: 1167548752914739979,
      name: r'broadcastId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'broadcastId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _isarBroadcastNotificationGetId,
  getLinks: _isarBroadcastNotificationGetLinks,
  attach: _isarBroadcastNotificationAttach,
  version: '3.1.0+1',
);

int _isarBroadcastNotificationEstimateSize(
  IsarBroadcastNotification object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.actionRoute;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.audience.length * 3;
  bytesCount += 3 + object.body.length * 3;
  bytesCount += 3 + object.broadcastId.length * 3;
  bytesCount += 3 + object.category.length * 3;
  bytesCount += 3 + object.sentByEmail.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _isarBroadcastNotificationSerialize(
  IsarBroadcastNotification object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.actionRoute);
  writer.writeString(offsets[1], object.audience);
  writer.writeString(offsets[2], object.body);
  writer.writeString(offsets[3], object.broadcastId);
  writer.writeString(offsets[4], object.category);
  writer.writeDateTime(offsets[5], object.sentAt);
  writer.writeString(offsets[6], object.sentByEmail);
  writer.writeString(offsets[7], object.title);
}

IsarBroadcastNotification _isarBroadcastNotificationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarBroadcastNotification();
  object.actionRoute = reader.readStringOrNull(offsets[0]);
  object.audience = reader.readString(offsets[1]);
  object.body = reader.readString(offsets[2]);
  object.broadcastId = reader.readString(offsets[3]);
  object.category = reader.readString(offsets[4]);
  object.isarId = id;
  object.sentAt = reader.readDateTime(offsets[5]);
  object.sentByEmail = reader.readString(offsets[6]);
  object.title = reader.readString(offsets[7]);
  return object;
}

P _isarBroadcastNotificationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarBroadcastNotificationGetId(IsarBroadcastNotification object) {
  return object.isarId;
}

List<IsarLinkBase<dynamic>> _isarBroadcastNotificationGetLinks(
    IsarBroadcastNotification object) {
  return [];
}

void _isarBroadcastNotificationAttach(
    IsarCollection<dynamic> col, Id id, IsarBroadcastNotification object) {
  object.isarId = id;
}

extension IsarBroadcastNotificationByIndex
    on IsarCollection<IsarBroadcastNotification> {
  Future<IsarBroadcastNotification?> getByBroadcastId(String broadcastId) {
    return getByIndex(r'broadcastId', [broadcastId]);
  }

  IsarBroadcastNotification? getByBroadcastIdSync(String broadcastId) {
    return getByIndexSync(r'broadcastId', [broadcastId]);
  }

  Future<bool> deleteByBroadcastId(String broadcastId) {
    return deleteByIndex(r'broadcastId', [broadcastId]);
  }

  bool deleteByBroadcastIdSync(String broadcastId) {
    return deleteByIndexSync(r'broadcastId', [broadcastId]);
  }

  Future<List<IsarBroadcastNotification?>> getAllByBroadcastId(
      List<String> broadcastIdValues) {
    final values = broadcastIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'broadcastId', values);
  }

  List<IsarBroadcastNotification?> getAllByBroadcastIdSync(
      List<String> broadcastIdValues) {
    final values = broadcastIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'broadcastId', values);
  }

  Future<int> deleteAllByBroadcastId(List<String> broadcastIdValues) {
    final values = broadcastIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'broadcastId', values);
  }

  int deleteAllByBroadcastIdSync(List<String> broadcastIdValues) {
    final values = broadcastIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'broadcastId', values);
  }

  Future<Id> putByBroadcastId(IsarBroadcastNotification object) {
    return putByIndex(r'broadcastId', object);
  }

  Id putByBroadcastIdSync(IsarBroadcastNotification object,
      {bool saveLinks = true}) {
    return putByIndexSync(r'broadcastId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByBroadcastId(
      List<IsarBroadcastNotification> objects) {
    return putAllByIndex(r'broadcastId', objects);
  }

  List<Id> putAllByBroadcastIdSync(List<IsarBroadcastNotification> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'broadcastId', objects, saveLinks: saveLinks);
  }
}

extension IsarBroadcastNotificationQueryWhereSort on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QWhere> {
  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarBroadcastNotificationQueryWhere on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QWhereClause> {
  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> isarIdNotEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> isarIdGreaterThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> isarIdLessThan(Id isarId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> broadcastIdEqualTo(String broadcastId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'broadcastId',
        value: [broadcastId],
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterWhereClause> broadcastIdNotEqualTo(String broadcastId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'broadcastId',
              lower: [],
              upper: [broadcastId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'broadcastId',
              lower: [broadcastId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'broadcastId',
              lower: [broadcastId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'broadcastId',
              lower: [],
              upper: [broadcastId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarBroadcastNotificationQueryFilter on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QFilterCondition> {
  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actionRoute',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actionRoute',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actionRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actionRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actionRoute',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actionRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actionRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      actionRouteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actionRoute',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      actionRouteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actionRoute',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actionRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> actionRouteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actionRoute',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'audience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'audience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'audience',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'audience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'audience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      audienceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'audience',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      audienceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'audience',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'audience',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> audienceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'audience',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'body',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      bodyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'body',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      bodyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'body',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'body',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> bodyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'body',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'broadcastId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'broadcastId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'broadcastId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'broadcastId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'broadcastId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'broadcastId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      broadcastIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'broadcastId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      broadcastIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'broadcastId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'broadcastId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> broadcastIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'broadcastId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> isarIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> isarIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> isarIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> isarIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sentAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sentAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sentAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sentByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sentByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sentByEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sentByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sentByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      sentByEmailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sentByEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      sentByEmailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sentByEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sentByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> sentByEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sentByEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
          QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension IsarBroadcastNotificationQueryObject on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QFilterCondition> {}

extension IsarBroadcastNotificationQueryLinks on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QFilterCondition> {}

extension IsarBroadcastNotificationQuerySortBy on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QSortBy> {
  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByActionRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionRoute', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByActionRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionRoute', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByAudience() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audience', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByAudienceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audience', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByBroadcastId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'broadcastId', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByBroadcastIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'broadcastId', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortBySentAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentAt', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortBySentAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentAt', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortBySentByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortBySentByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentByEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension IsarBroadcastNotificationQuerySortThenBy on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QSortThenBy> {
  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByActionRoute() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionRoute', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByActionRouteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actionRoute', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByAudience() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audience', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByAudienceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'audience', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByBody() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByBodyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'body', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByBroadcastId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'broadcastId', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByBroadcastIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'broadcastId', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenBySentAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentAt', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenBySentAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentAt', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenBySentByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentByEmail', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenBySentByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sentByEmail', Sort.desc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification,
      QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension IsarBroadcastNotificationQueryWhereDistinct on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QDistinct> {
  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctByActionRoute({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actionRoute', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctByAudience({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'audience', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctByBody({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'body', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctByBroadcastId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'broadcastId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctBySentAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sentAt');
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctBySentByEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sentByEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarBroadcastNotification, IsarBroadcastNotification, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension IsarBroadcastNotificationQueryProperty on QueryBuilder<
    IsarBroadcastNotification, IsarBroadcastNotification, QQueryProperty> {
  QueryBuilder<IsarBroadcastNotification, int, QQueryOperations>
      isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String?, QQueryOperations>
      actionRouteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actionRoute');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String, QQueryOperations>
      audienceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'audience');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String, QQueryOperations>
      bodyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'body');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String, QQueryOperations>
      broadcastIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'broadcastId');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<IsarBroadcastNotification, DateTime, QQueryOperations>
      sentAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sentAt');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String, QQueryOperations>
      sentByEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sentByEmail');
    });
  }

  QueryBuilder<IsarBroadcastNotification, String, QQueryOperations>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
