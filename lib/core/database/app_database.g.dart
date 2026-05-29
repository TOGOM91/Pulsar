// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $IsarEventsTable extends IsarEvents with TableInfo<$IsarEventsTable, IsarEvent>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarEventsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _eventIdMeta = const VerificationMeta('eventId');
@override
late final GeneratedColumn<String> eventId = GeneratedColumn<String>('event_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _nameMeta = const VerificationMeta('name');
@override
late final GeneratedColumn<String> name = GeneratedColumn<String>('name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _categoryMeta = const VerificationMeta('category');
@override
late final GeneratedColumn<String> category = GeneratedColumn<String>('category', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _durationMeta = const VerificationMeta('duration');
@override
late final GeneratedColumn<String> duration = GeneratedColumn<String>('duration', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
@override
late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>('image_url', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _gradientMeta = const VerificationMeta('gradient');
@override
late final GeneratedColumn<String> gradient = GeneratedColumn<String>('gradient', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _dateMeta = const VerificationMeta('date');
@override
late final GeneratedColumn<String> date = GeneratedColumn<String>('date', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _locationMeta = const VerificationMeta('location');
@override
late final GeneratedColumn<String> location = GeneratedColumn<String>('location', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _transportMeta = const VerificationMeta('transport');
@override
late final GeneratedColumn<String> transport = GeneratedColumn<String>('transport', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _accommodationMeta = const VerificationMeta('accommodation');
@override
late final GeneratedColumn<String> accommodation = GeneratedColumn<String>('accommodation', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _pricingLabelMeta = const VerificationMeta('pricingLabel');
@override
late final GeneratedColumn<String> pricingLabel = GeneratedColumn<String>('pricing_label', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _pricingAmountMeta = const VerificationMeta('pricingAmount');
@override
late final GeneratedColumn<double> pricingAmount = GeneratedColumn<double>('pricing_amount', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _pricingSavingsMeta = const VerificationMeta('pricingSavings');
@override
late final GeneratedColumn<double> pricingSavings = GeneratedColumn<double>('pricing_savings', aliasedName, true, type: DriftSqlType.double, requiredDuringInsert: false);
static const VerificationMeta _pricingSavingsTextMeta = const VerificationMeta('pricingSavingsText');
@override
late final GeneratedColumn<String> pricingSavingsText = GeneratedColumn<String>('pricing_savings_text', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _currencyMeta = const VerificationMeta('currency');
@override
late final GeneratedColumn<String> currency = GeneratedColumn<String>('currency', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('€'));
static const VerificationMeta _genresMeta = const VerificationMeta('genres');
@override
late final GeneratedColumnWithTypeConverter<List<String>, String> genres = GeneratedColumn<String>('genres', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('')).withConverter<List<String>>($IsarEventsTable.$convertergenres);
static const VerificationMeta _badgeTypesMeta = const VerificationMeta('badgeTypes');
@override
late final GeneratedColumnWithTypeConverter<List<String>, String> badgeTypes = GeneratedColumn<String>('badge_types', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('')).withConverter<List<String>>($IsarEventsTable.$converterbadgeTypes);
static const VerificationMeta _badgeTextsMeta = const VerificationMeta('badgeTexts');
@override
late final GeneratedColumnWithTypeConverter<List<String>, String> badgeTexts = GeneratedColumn<String>('badge_texts', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('')).withConverter<List<String>>($IsarEventsTable.$converterbadgeTexts);
static const VerificationMeta _isFavoriteMeta = const VerificationMeta('isFavorite');
@override
late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>('is_favorite', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_favorite" IN (0, 1))'), defaultValue: const Constant(false));
static const VerificationMeta _sectionMeta = const VerificationMeta('section');
@override
late final GeneratedColumn<String> section = GeneratedColumn<String>('section', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _sortOrderMeta = const VerificationMeta('sortOrder');
@override
late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>('sort_order', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _isPublishedMeta = const VerificationMeta('isPublished');
@override
late final GeneratedColumn<bool> isPublished = GeneratedColumn<bool>('is_published', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_published" IN (0, 1))'), defaultValue: const Constant(true));
static const VerificationMeta _totalTicketsSoldMeta = const VerificationMeta('totalTicketsSold');
@override
late final GeneratedColumn<int> totalTicketsSold = GeneratedColumn<int>('total_tickets_sold', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _totalRevenueMeta = const VerificationMeta('totalRevenue');
@override
late final GeneratedColumn<double> totalRevenue = GeneratedColumn<double>('total_revenue', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
@override
late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>('created_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
@override
late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>('updated_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _updatedByEmailMeta = const VerificationMeta('updatedByEmail');
@override
late final GeneratedColumn<String> updatedByEmail = GeneratedColumn<String>('updated_by_email', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, eventId, name, category, duration, imageUrl, gradient, date, location, transport, accommodation, pricingLabel, pricingAmount, pricingSavings, pricingSavingsText, currency, genres, badgeTypes, badgeTexts, isFavorite, section, sortOrder, isPublished, totalTicketsSold, totalRevenue, createdAt, updatedAt, updatedByEmail];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_events';
@override
VerificationContext validateIntegrity(Insertable<IsarEvent> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('event_id')) {
context.handle(_eventIdMeta, eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));} else if (isInserting) {
context.missing(_eventIdMeta);
}
if (data.containsKey('name')) {
context.handle(_nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));} else if (isInserting) {
context.missing(_nameMeta);
}
if (data.containsKey('category')) {
context.handle(_categoryMeta, category.isAcceptableOrUnknown(data['category']!, _categoryMeta));} else if (isInserting) {
context.missing(_categoryMeta);
}
if (data.containsKey('duration')) {
context.handle(_durationMeta, duration.isAcceptableOrUnknown(data['duration']!, _durationMeta));} else if (isInserting) {
context.missing(_durationMeta);
}
if (data.containsKey('image_url')) {
context.handle(_imageUrlMeta, imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));} else if (isInserting) {
context.missing(_imageUrlMeta);
}
if (data.containsKey('gradient')) {
context.handle(_gradientMeta, gradient.isAcceptableOrUnknown(data['gradient']!, _gradientMeta));} else if (isInserting) {
context.missing(_gradientMeta);
}
if (data.containsKey('date')) {
context.handle(_dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));} else if (isInserting) {
context.missing(_dateMeta);
}
if (data.containsKey('location')) {
context.handle(_locationMeta, location.isAcceptableOrUnknown(data['location']!, _locationMeta));} else if (isInserting) {
context.missing(_locationMeta);
}
if (data.containsKey('transport')) {
context.handle(_transportMeta, transport.isAcceptableOrUnknown(data['transport']!, _transportMeta));} else if (isInserting) {
context.missing(_transportMeta);
}
if (data.containsKey('accommodation')) {
context.handle(_accommodationMeta, accommodation.isAcceptableOrUnknown(data['accommodation']!, _accommodationMeta));}if (data.containsKey('pricing_label')) {
context.handle(_pricingLabelMeta, pricingLabel.isAcceptableOrUnknown(data['pricing_label']!, _pricingLabelMeta));} else if (isInserting) {
context.missing(_pricingLabelMeta);
}
if (data.containsKey('pricing_amount')) {
context.handle(_pricingAmountMeta, pricingAmount.isAcceptableOrUnknown(data['pricing_amount']!, _pricingAmountMeta));} else if (isInserting) {
context.missing(_pricingAmountMeta);
}
if (data.containsKey('pricing_savings')) {
context.handle(_pricingSavingsMeta, pricingSavings.isAcceptableOrUnknown(data['pricing_savings']!, _pricingSavingsMeta));}if (data.containsKey('pricing_savings_text')) {
context.handle(_pricingSavingsTextMeta, pricingSavingsText.isAcceptableOrUnknown(data['pricing_savings_text']!, _pricingSavingsTextMeta));}if (data.containsKey('currency')) {
context.handle(_currencyMeta, currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));}context.handle(_genresMeta, const VerificationResult.success());context.handle(_badgeTypesMeta, const VerificationResult.success());context.handle(_badgeTextsMeta, const VerificationResult.success());if (data.containsKey('is_favorite')) {
context.handle(_isFavoriteMeta, isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta));}if (data.containsKey('section')) {
context.handle(_sectionMeta, section.isAcceptableOrUnknown(data['section']!, _sectionMeta));} else if (isInserting) {
context.missing(_sectionMeta);
}
if (data.containsKey('sort_order')) {
context.handle(_sortOrderMeta, sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta));}if (data.containsKey('is_published')) {
context.handle(_isPublishedMeta, isPublished.isAcceptableOrUnknown(data['is_published']!, _isPublishedMeta));}if (data.containsKey('total_tickets_sold')) {
context.handle(_totalTicketsSoldMeta, totalTicketsSold.isAcceptableOrUnknown(data['total_tickets_sold']!, _totalTicketsSoldMeta));}if (data.containsKey('total_revenue')) {
context.handle(_totalRevenueMeta, totalRevenue.isAcceptableOrUnknown(data['total_revenue']!, _totalRevenueMeta));}if (data.containsKey('created_at')) {
context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));}if (data.containsKey('updated_at')) {
context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));}if (data.containsKey('updated_by_email')) {
context.handle(_updatedByEmailMeta, updatedByEmail.isAcceptableOrUnknown(data['updated_by_email']!, _updatedByEmailMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarEvent map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarEvent(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, eventId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_id'])!, name: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}name'])!, category: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}category'])!, duration: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}duration'])!, imageUrl: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}image_url'])!, gradient: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}gradient'])!, date: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}date'])!, location: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}location'])!, transport: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}transport'])!, accommodation: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}accommodation']), pricingLabel: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}pricing_label'])!, pricingAmount: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}pricing_amount'])!, pricingSavings: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}pricing_savings']), pricingSavingsText: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}pricing_savings_text']), currency: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}currency'])!, genres: $IsarEventsTable.$convertergenres.fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}genres'])!), badgeTypes: $IsarEventsTable.$converterbadgeTypes.fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}badge_types'])!), badgeTexts: $IsarEventsTable.$converterbadgeTexts.fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}badge_texts'])!), isFavorite: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_favorite'])!, section: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}section'])!, sortOrder: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}sort_order'])!, isPublished: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_published'])!, totalTicketsSold: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}total_tickets_sold'])!, totalRevenue: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}total_revenue'])!, createdAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']), updatedAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']), updatedByEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}updated_by_email']), );
}
@override
$IsarEventsTable createAlias(String alias) {
return $IsarEventsTable(attachedDatabase, alias);}static TypeConverter<List<String>,String> $convertergenres = _stringList;static TypeConverter<List<String>,String> $converterbadgeTypes = _stringList;static TypeConverter<List<String>,String> $converterbadgeTexts = _stringList;}class IsarEvent extends DataClass implements Insertable<IsarEvent> 
{
final int isarId;
final String eventId;
final String name;
final String category;
final String duration;
final String imageUrl;
final String gradient;
final String date;
final String location;
final String transport;
final String? accommodation;
final String pricingLabel;
final double pricingAmount;
final double? pricingSavings;
final String? pricingSavingsText;
final String currency;
final List<String> genres;
final List<String> badgeTypes;
final List<String> badgeTexts;
final bool isFavorite;
final String section;
final int sortOrder;
final bool isPublished;
final int totalTicketsSold;
final double totalRevenue;
final DateTime? createdAt;
final DateTime? updatedAt;
final String? updatedByEmail;
const IsarEvent({required this.isarId, required this.eventId, required this.name, required this.category, required this.duration, required this.imageUrl, required this.gradient, required this.date, required this.location, required this.transport, this.accommodation, required this.pricingLabel, required this.pricingAmount, this.pricingSavings, this.pricingSavingsText, required this.currency, required this.genres, required this.badgeTypes, required this.badgeTexts, required this.isFavorite, required this.section, required this.sortOrder, required this.isPublished, required this.totalTicketsSold, required this.totalRevenue, this.createdAt, this.updatedAt, this.updatedByEmail});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['event_id'] = Variable<String>(eventId);
map['name'] = Variable<String>(name);
map['category'] = Variable<String>(category);
map['duration'] = Variable<String>(duration);
map['image_url'] = Variable<String>(imageUrl);
map['gradient'] = Variable<String>(gradient);
map['date'] = Variable<String>(date);
map['location'] = Variable<String>(location);
map['transport'] = Variable<String>(transport);
if (!nullToAbsent || accommodation != null){map['accommodation'] = Variable<String>(accommodation);
}map['pricing_label'] = Variable<String>(pricingLabel);
map['pricing_amount'] = Variable<double>(pricingAmount);
if (!nullToAbsent || pricingSavings != null){map['pricing_savings'] = Variable<double>(pricingSavings);
}if (!nullToAbsent || pricingSavingsText != null){map['pricing_savings_text'] = Variable<String>(pricingSavingsText);
}map['currency'] = Variable<String>(currency);
{map['genres'] = Variable<String>($IsarEventsTable.$convertergenres.toSql(genres));
}{map['badge_types'] = Variable<String>($IsarEventsTable.$converterbadgeTypes.toSql(badgeTypes));
}{map['badge_texts'] = Variable<String>($IsarEventsTable.$converterbadgeTexts.toSql(badgeTexts));
}map['is_favorite'] = Variable<bool>(isFavorite);
map['section'] = Variable<String>(section);
map['sort_order'] = Variable<int>(sortOrder);
map['is_published'] = Variable<bool>(isPublished);
map['total_tickets_sold'] = Variable<int>(totalTicketsSold);
map['total_revenue'] = Variable<double>(totalRevenue);
if (!nullToAbsent || createdAt != null){map['created_at'] = Variable<DateTime>(createdAt);
}if (!nullToAbsent || updatedAt != null){map['updated_at'] = Variable<DateTime>(updatedAt);
}if (!nullToAbsent || updatedByEmail != null){map['updated_by_email'] = Variable<String>(updatedByEmail);
}return map; 
}
IsarEventsCompanion toCompanion(bool nullToAbsent) {
return IsarEventsCompanion(isarId: Value(isarId),eventId: Value(eventId),name: Value(name),category: Value(category),duration: Value(duration),imageUrl: Value(imageUrl),gradient: Value(gradient),date: Value(date),location: Value(location),transport: Value(transport),accommodation: accommodation == null && nullToAbsent ? const Value.absent() : Value(accommodation),pricingLabel: Value(pricingLabel),pricingAmount: Value(pricingAmount),pricingSavings: pricingSavings == null && nullToAbsent ? const Value.absent() : Value(pricingSavings),pricingSavingsText: pricingSavingsText == null && nullToAbsent ? const Value.absent() : Value(pricingSavingsText),currency: Value(currency),genres: Value(genres),badgeTypes: Value(badgeTypes),badgeTexts: Value(badgeTexts),isFavorite: Value(isFavorite),section: Value(section),sortOrder: Value(sortOrder),isPublished: Value(isPublished),totalTicketsSold: Value(totalTicketsSold),totalRevenue: Value(totalRevenue),createdAt: createdAt == null && nullToAbsent ? const Value.absent() : Value(createdAt),updatedAt: updatedAt == null && nullToAbsent ? const Value.absent() : Value(updatedAt),updatedByEmail: updatedByEmail == null && nullToAbsent ? const Value.absent() : Value(updatedByEmail),);
}
factory IsarEvent.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarEvent(isarId: serializer.fromJson<int>(json['isarId']),eventId: serializer.fromJson<String>(json['eventId']),name: serializer.fromJson<String>(json['name']),category: serializer.fromJson<String>(json['category']),duration: serializer.fromJson<String>(json['duration']),imageUrl: serializer.fromJson<String>(json['imageUrl']),gradient: serializer.fromJson<String>(json['gradient']),date: serializer.fromJson<String>(json['date']),location: serializer.fromJson<String>(json['location']),transport: serializer.fromJson<String>(json['transport']),accommodation: serializer.fromJson<String?>(json['accommodation']),pricingLabel: serializer.fromJson<String>(json['pricingLabel']),pricingAmount: serializer.fromJson<double>(json['pricingAmount']),pricingSavings: serializer.fromJson<double?>(json['pricingSavings']),pricingSavingsText: serializer.fromJson<String?>(json['pricingSavingsText']),currency: serializer.fromJson<String>(json['currency']),genres: serializer.fromJson<List<String>>(json['genres']),badgeTypes: serializer.fromJson<List<String>>(json['badgeTypes']),badgeTexts: serializer.fromJson<List<String>>(json['badgeTexts']),isFavorite: serializer.fromJson<bool>(json['isFavorite']),section: serializer.fromJson<String>(json['section']),sortOrder: serializer.fromJson<int>(json['sortOrder']),isPublished: serializer.fromJson<bool>(json['isPublished']),totalTicketsSold: serializer.fromJson<int>(json['totalTicketsSold']),totalRevenue: serializer.fromJson<double>(json['totalRevenue']),createdAt: serializer.fromJson<DateTime?>(json['createdAt']),updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),updatedByEmail: serializer.fromJson<String?>(json['updatedByEmail']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'eventId': serializer.toJson<String>(eventId),'name': serializer.toJson<String>(name),'category': serializer.toJson<String>(category),'duration': serializer.toJson<String>(duration),'imageUrl': serializer.toJson<String>(imageUrl),'gradient': serializer.toJson<String>(gradient),'date': serializer.toJson<String>(date),'location': serializer.toJson<String>(location),'transport': serializer.toJson<String>(transport),'accommodation': serializer.toJson<String?>(accommodation),'pricingLabel': serializer.toJson<String>(pricingLabel),'pricingAmount': serializer.toJson<double>(pricingAmount),'pricingSavings': serializer.toJson<double?>(pricingSavings),'pricingSavingsText': serializer.toJson<String?>(pricingSavingsText),'currency': serializer.toJson<String>(currency),'genres': serializer.toJson<List<String>>(genres),'badgeTypes': serializer.toJson<List<String>>(badgeTypes),'badgeTexts': serializer.toJson<List<String>>(badgeTexts),'isFavorite': serializer.toJson<bool>(isFavorite),'section': serializer.toJson<String>(section),'sortOrder': serializer.toJson<int>(sortOrder),'isPublished': serializer.toJson<bool>(isPublished),'totalTicketsSold': serializer.toJson<int>(totalTicketsSold),'totalRevenue': serializer.toJson<double>(totalRevenue),'createdAt': serializer.toJson<DateTime?>(createdAt),'updatedAt': serializer.toJson<DateTime?>(updatedAt),'updatedByEmail': serializer.toJson<String?>(updatedByEmail),};}IsarEvent copyWith({int? isarId,String? eventId,String? name,String? category,String? duration,String? imageUrl,String? gradient,String? date,String? location,String? transport,Value<String?> accommodation = const Value.absent(),String? pricingLabel,double? pricingAmount,Value<double?> pricingSavings = const Value.absent(),Value<String?> pricingSavingsText = const Value.absent(),String? currency,List<String>? genres,List<String>? badgeTypes,List<String>? badgeTexts,bool? isFavorite,String? section,int? sortOrder,bool? isPublished,int? totalTicketsSold,double? totalRevenue,Value<DateTime?> createdAt = const Value.absent(),Value<DateTime?> updatedAt = const Value.absent(),Value<String?> updatedByEmail = const Value.absent()}) => IsarEvent(isarId: isarId ?? this.isarId,eventId: eventId ?? this.eventId,name: name ?? this.name,category: category ?? this.category,duration: duration ?? this.duration,imageUrl: imageUrl ?? this.imageUrl,gradient: gradient ?? this.gradient,date: date ?? this.date,location: location ?? this.location,transport: transport ?? this.transport,accommodation: accommodation.present ? accommodation.value : this.accommodation,pricingLabel: pricingLabel ?? this.pricingLabel,pricingAmount: pricingAmount ?? this.pricingAmount,pricingSavings: pricingSavings.present ? pricingSavings.value : this.pricingSavings,pricingSavingsText: pricingSavingsText.present ? pricingSavingsText.value : this.pricingSavingsText,currency: currency ?? this.currency,genres: genres ?? this.genres,badgeTypes: badgeTypes ?? this.badgeTypes,badgeTexts: badgeTexts ?? this.badgeTexts,isFavorite: isFavorite ?? this.isFavorite,section: section ?? this.section,sortOrder: sortOrder ?? this.sortOrder,isPublished: isPublished ?? this.isPublished,totalTicketsSold: totalTicketsSold ?? this.totalTicketsSold,totalRevenue: totalRevenue ?? this.totalRevenue,createdAt: createdAt.present ? createdAt.value : this.createdAt,updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,updatedByEmail: updatedByEmail.present ? updatedByEmail.value : this.updatedByEmail,);IsarEvent copyWithCompanion(IsarEventsCompanion data) {
return IsarEvent(
isarId: data.isarId.present ? data.isarId.value : this.isarId,eventId: data.eventId.present ? data.eventId.value : this.eventId,name: data.name.present ? data.name.value : this.name,category: data.category.present ? data.category.value : this.category,duration: data.duration.present ? data.duration.value : this.duration,imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,gradient: data.gradient.present ? data.gradient.value : this.gradient,date: data.date.present ? data.date.value : this.date,location: data.location.present ? data.location.value : this.location,transport: data.transport.present ? data.transport.value : this.transport,accommodation: data.accommodation.present ? data.accommodation.value : this.accommodation,pricingLabel: data.pricingLabel.present ? data.pricingLabel.value : this.pricingLabel,pricingAmount: data.pricingAmount.present ? data.pricingAmount.value : this.pricingAmount,pricingSavings: data.pricingSavings.present ? data.pricingSavings.value : this.pricingSavings,pricingSavingsText: data.pricingSavingsText.present ? data.pricingSavingsText.value : this.pricingSavingsText,currency: data.currency.present ? data.currency.value : this.currency,genres: data.genres.present ? data.genres.value : this.genres,badgeTypes: data.badgeTypes.present ? data.badgeTypes.value : this.badgeTypes,badgeTexts: data.badgeTexts.present ? data.badgeTexts.value : this.badgeTexts,isFavorite: data.isFavorite.present ? data.isFavorite.value : this.isFavorite,section: data.section.present ? data.section.value : this.section,sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,isPublished: data.isPublished.present ? data.isPublished.value : this.isPublished,totalTicketsSold: data.totalTicketsSold.present ? data.totalTicketsSold.value : this.totalTicketsSold,totalRevenue: data.totalRevenue.present ? data.totalRevenue.value : this.totalRevenue,createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,updatedByEmail: data.updatedByEmail.present ? data.updatedByEmail.value : this.updatedByEmail,);
}
@override
String toString() {return (StringBuffer('IsarEvent(')..write('isarId: $isarId, ')..write('eventId: $eventId, ')..write('name: $name, ')..write('category: $category, ')..write('duration: $duration, ')..write('imageUrl: $imageUrl, ')..write('gradient: $gradient, ')..write('date: $date, ')..write('location: $location, ')..write('transport: $transport, ')..write('accommodation: $accommodation, ')..write('pricingLabel: $pricingLabel, ')..write('pricingAmount: $pricingAmount, ')..write('pricingSavings: $pricingSavings, ')..write('pricingSavingsText: $pricingSavingsText, ')..write('currency: $currency, ')..write('genres: $genres, ')..write('badgeTypes: $badgeTypes, ')..write('badgeTexts: $badgeTexts, ')..write('isFavorite: $isFavorite, ')..write('section: $section, ')..write('sortOrder: $sortOrder, ')..write('isPublished: $isPublished, ')..write('totalTicketsSold: $totalTicketsSold, ')..write('totalRevenue: $totalRevenue, ')..write('createdAt: $createdAt, ')..write('updatedAt: $updatedAt, ')..write('updatedByEmail: $updatedByEmail')..write(')')).toString();}
@override
 int get hashCode => Object.hashAll([isarId, eventId, name, category, duration, imageUrl, gradient, date, location, transport, accommodation, pricingLabel, pricingAmount, pricingSavings, pricingSavingsText, currency, genres, badgeTypes, badgeTexts, isFavorite, section, sortOrder, isPublished, totalTicketsSold, totalRevenue, createdAt, updatedAt, updatedByEmail]);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarEvent && other.isarId == this.isarId && other.eventId == this.eventId && other.name == this.name && other.category == this.category && other.duration == this.duration && other.imageUrl == this.imageUrl && other.gradient == this.gradient && other.date == this.date && other.location == this.location && other.transport == this.transport && other.accommodation == this.accommodation && other.pricingLabel == this.pricingLabel && other.pricingAmount == this.pricingAmount && other.pricingSavings == this.pricingSavings && other.pricingSavingsText == this.pricingSavingsText && other.currency == this.currency && other.genres == this.genres && other.badgeTypes == this.badgeTypes && other.badgeTexts == this.badgeTexts && other.isFavorite == this.isFavorite && other.section == this.section && other.sortOrder == this.sortOrder && other.isPublished == this.isPublished && other.totalTicketsSold == this.totalTicketsSold && other.totalRevenue == this.totalRevenue && other.createdAt == this.createdAt && other.updatedAt == this.updatedAt && other.updatedByEmail == this.updatedByEmail);
}class IsarEventsCompanion extends UpdateCompanion<IsarEvent> {
final Value<int> isarId;
final Value<String> eventId;
final Value<String> name;
final Value<String> category;
final Value<String> duration;
final Value<String> imageUrl;
final Value<String> gradient;
final Value<String> date;
final Value<String> location;
final Value<String> transport;
final Value<String?> accommodation;
final Value<String> pricingLabel;
final Value<double> pricingAmount;
final Value<double?> pricingSavings;
final Value<String?> pricingSavingsText;
final Value<String> currency;
final Value<List<String>> genres;
final Value<List<String>> badgeTypes;
final Value<List<String>> badgeTexts;
final Value<bool> isFavorite;
final Value<String> section;
final Value<int> sortOrder;
final Value<bool> isPublished;
final Value<int> totalTicketsSold;
final Value<double> totalRevenue;
final Value<DateTime?> createdAt;
final Value<DateTime?> updatedAt;
final Value<String?> updatedByEmail;
const IsarEventsCompanion({this.isarId = const Value.absent(),this.eventId = const Value.absent(),this.name = const Value.absent(),this.category = const Value.absent(),this.duration = const Value.absent(),this.imageUrl = const Value.absent(),this.gradient = const Value.absent(),this.date = const Value.absent(),this.location = const Value.absent(),this.transport = const Value.absent(),this.accommodation = const Value.absent(),this.pricingLabel = const Value.absent(),this.pricingAmount = const Value.absent(),this.pricingSavings = const Value.absent(),this.pricingSavingsText = const Value.absent(),this.currency = const Value.absent(),this.genres = const Value.absent(),this.badgeTypes = const Value.absent(),this.badgeTexts = const Value.absent(),this.isFavorite = const Value.absent(),this.section = const Value.absent(),this.sortOrder = const Value.absent(),this.isPublished = const Value.absent(),this.totalTicketsSold = const Value.absent(),this.totalRevenue = const Value.absent(),this.createdAt = const Value.absent(),this.updatedAt = const Value.absent(),this.updatedByEmail = const Value.absent(),});
IsarEventsCompanion.insert({this.isarId = const Value.absent(),required String eventId,required String name,required String category,required String duration,required String imageUrl,required String gradient,required String date,required String location,required String transport,this.accommodation = const Value.absent(),required String pricingLabel,required double pricingAmount,this.pricingSavings = const Value.absent(),this.pricingSavingsText = const Value.absent(),this.currency = const Value.absent(),this.genres = const Value.absent(),this.badgeTypes = const Value.absent(),this.badgeTexts = const Value.absent(),this.isFavorite = const Value.absent(),required String section,this.sortOrder = const Value.absent(),this.isPublished = const Value.absent(),this.totalTicketsSold = const Value.absent(),this.totalRevenue = const Value.absent(),this.createdAt = const Value.absent(),this.updatedAt = const Value.absent(),this.updatedByEmail = const Value.absent(),}): eventId = Value(eventId), name = Value(name), category = Value(category), duration = Value(duration), imageUrl = Value(imageUrl), gradient = Value(gradient), date = Value(date), location = Value(location), transport = Value(transport), pricingLabel = Value(pricingLabel), pricingAmount = Value(pricingAmount), section = Value(section);
static Insertable<IsarEvent> custom({Expression<int>? isarId, 
Expression<String>? eventId, 
Expression<String>? name, 
Expression<String>? category, 
Expression<String>? duration, 
Expression<String>? imageUrl, 
Expression<String>? gradient, 
Expression<String>? date, 
Expression<String>? location, 
Expression<String>? transport, 
Expression<String>? accommodation, 
Expression<String>? pricingLabel, 
Expression<double>? pricingAmount, 
Expression<double>? pricingSavings, 
Expression<String>? pricingSavingsText, 
Expression<String>? currency, 
Expression<String>? genres, 
Expression<String>? badgeTypes, 
Expression<String>? badgeTexts, 
Expression<bool>? isFavorite, 
Expression<String>? section, 
Expression<int>? sortOrder, 
Expression<bool>? isPublished, 
Expression<int>? totalTicketsSold, 
Expression<double>? totalRevenue, 
Expression<DateTime>? createdAt, 
Expression<DateTime>? updatedAt, 
Expression<String>? updatedByEmail, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (eventId != null)'event_id': eventId,if (name != null)'name': name,if (category != null)'category': category,if (duration != null)'duration': duration,if (imageUrl != null)'image_url': imageUrl,if (gradient != null)'gradient': gradient,if (date != null)'date': date,if (location != null)'location': location,if (transport != null)'transport': transport,if (accommodation != null)'accommodation': accommodation,if (pricingLabel != null)'pricing_label': pricingLabel,if (pricingAmount != null)'pricing_amount': pricingAmount,if (pricingSavings != null)'pricing_savings': pricingSavings,if (pricingSavingsText != null)'pricing_savings_text': pricingSavingsText,if (currency != null)'currency': currency,if (genres != null)'genres': genres,if (badgeTypes != null)'badge_types': badgeTypes,if (badgeTexts != null)'badge_texts': badgeTexts,if (isFavorite != null)'is_favorite': isFavorite,if (section != null)'section': section,if (sortOrder != null)'sort_order': sortOrder,if (isPublished != null)'is_published': isPublished,if (totalTicketsSold != null)'total_tickets_sold': totalTicketsSold,if (totalRevenue != null)'total_revenue': totalRevenue,if (createdAt != null)'created_at': createdAt,if (updatedAt != null)'updated_at': updatedAt,if (updatedByEmail != null)'updated_by_email': updatedByEmail,});
}IsarEventsCompanion copyWith({Value<int>? isarId, Value<String>? eventId, Value<String>? name, Value<String>? category, Value<String>? duration, Value<String>? imageUrl, Value<String>? gradient, Value<String>? date, Value<String>? location, Value<String>? transport, Value<String?>? accommodation, Value<String>? pricingLabel, Value<double>? pricingAmount, Value<double?>? pricingSavings, Value<String?>? pricingSavingsText, Value<String>? currency, Value<List<String>>? genres, Value<List<String>>? badgeTypes, Value<List<String>>? badgeTexts, Value<bool>? isFavorite, Value<String>? section, Value<int>? sortOrder, Value<bool>? isPublished, Value<int>? totalTicketsSold, Value<double>? totalRevenue, Value<DateTime?>? createdAt, Value<DateTime?>? updatedAt, Value<String?>? updatedByEmail}) {
return IsarEventsCompanion(isarId: isarId ?? this.isarId,eventId: eventId ?? this.eventId,name: name ?? this.name,category: category ?? this.category,duration: duration ?? this.duration,imageUrl: imageUrl ?? this.imageUrl,gradient: gradient ?? this.gradient,date: date ?? this.date,location: location ?? this.location,transport: transport ?? this.transport,accommodation: accommodation ?? this.accommodation,pricingLabel: pricingLabel ?? this.pricingLabel,pricingAmount: pricingAmount ?? this.pricingAmount,pricingSavings: pricingSavings ?? this.pricingSavings,pricingSavingsText: pricingSavingsText ?? this.pricingSavingsText,currency: currency ?? this.currency,genres: genres ?? this.genres,badgeTypes: badgeTypes ?? this.badgeTypes,badgeTexts: badgeTexts ?? this.badgeTexts,isFavorite: isFavorite ?? this.isFavorite,section: section ?? this.section,sortOrder: sortOrder ?? this.sortOrder,isPublished: isPublished ?? this.isPublished,totalTicketsSold: totalTicketsSold ?? this.totalTicketsSold,totalRevenue: totalRevenue ?? this.totalRevenue,createdAt: createdAt ?? this.createdAt,updatedAt: updatedAt ?? this.updatedAt,updatedByEmail: updatedByEmail ?? this.updatedByEmail,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (eventId.present) {
map['event_id'] = Variable<String>(eventId.value);}
if (name.present) {
map['name'] = Variable<String>(name.value);}
if (category.present) {
map['category'] = Variable<String>(category.value);}
if (duration.present) {
map['duration'] = Variable<String>(duration.value);}
if (imageUrl.present) {
map['image_url'] = Variable<String>(imageUrl.value);}
if (gradient.present) {
map['gradient'] = Variable<String>(gradient.value);}
if (date.present) {
map['date'] = Variable<String>(date.value);}
if (location.present) {
map['location'] = Variable<String>(location.value);}
if (transport.present) {
map['transport'] = Variable<String>(transport.value);}
if (accommodation.present) {
map['accommodation'] = Variable<String>(accommodation.value);}
if (pricingLabel.present) {
map['pricing_label'] = Variable<String>(pricingLabel.value);}
if (pricingAmount.present) {
map['pricing_amount'] = Variable<double>(pricingAmount.value);}
if (pricingSavings.present) {
map['pricing_savings'] = Variable<double>(pricingSavings.value);}
if (pricingSavingsText.present) {
map['pricing_savings_text'] = Variable<String>(pricingSavingsText.value);}
if (currency.present) {
map['currency'] = Variable<String>(currency.value);}
if (genres.present) {
map['genres'] = Variable<String>($IsarEventsTable.$convertergenres.toSql(genres.value));}
if (badgeTypes.present) {
map['badge_types'] = Variable<String>($IsarEventsTable.$converterbadgeTypes.toSql(badgeTypes.value));}
if (badgeTexts.present) {
map['badge_texts'] = Variable<String>($IsarEventsTable.$converterbadgeTexts.toSql(badgeTexts.value));}
if (isFavorite.present) {
map['is_favorite'] = Variable<bool>(isFavorite.value);}
if (section.present) {
map['section'] = Variable<String>(section.value);}
if (sortOrder.present) {
map['sort_order'] = Variable<int>(sortOrder.value);}
if (isPublished.present) {
map['is_published'] = Variable<bool>(isPublished.value);}
if (totalTicketsSold.present) {
map['total_tickets_sold'] = Variable<int>(totalTicketsSold.value);}
if (totalRevenue.present) {
map['total_revenue'] = Variable<double>(totalRevenue.value);}
if (createdAt.present) {
map['created_at'] = Variable<DateTime>(createdAt.value);}
if (updatedAt.present) {
map['updated_at'] = Variable<DateTime>(updatedAt.value);}
if (updatedByEmail.present) {
map['updated_by_email'] = Variable<String>(updatedByEmail.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarEventsCompanion(')..write('isarId: $isarId, ')..write('eventId: $eventId, ')..write('name: $name, ')..write('category: $category, ')..write('duration: $duration, ')..write('imageUrl: $imageUrl, ')..write('gradient: $gradient, ')..write('date: $date, ')..write('location: $location, ')..write('transport: $transport, ')..write('accommodation: $accommodation, ')..write('pricingLabel: $pricingLabel, ')..write('pricingAmount: $pricingAmount, ')..write('pricingSavings: $pricingSavings, ')..write('pricingSavingsText: $pricingSavingsText, ')..write('currency: $currency, ')..write('genres: $genres, ')..write('badgeTypes: $badgeTypes, ')..write('badgeTexts: $badgeTexts, ')..write('isFavorite: $isFavorite, ')..write('section: $section, ')..write('sortOrder: $sortOrder, ')..write('isPublished: $isPublished, ')..write('totalTicketsSold: $totalTicketsSold, ')..write('totalRevenue: $totalRevenue, ')..write('createdAt: $createdAt, ')..write('updatedAt: $updatedAt, ')..write('updatedByEmail: $updatedByEmail')..write(')')).toString();}
}
class $IsarTicketsTable extends IsarTickets with TableInfo<$IsarTicketsTable, IsarTicket>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarTicketsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _ticketIdMeta = const VerificationMeta('ticketId');
@override
late final GeneratedColumn<String> ticketId = GeneratedColumn<String>('ticket_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _eventIdMeta = const VerificationMeta('eventId');
@override
late final GeneratedColumn<String> eventId = GeneratedColumn<String>('event_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventNameMeta = const VerificationMeta('eventName');
@override
late final GeneratedColumn<String> eventName = GeneratedColumn<String>('event_name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventDateMeta = const VerificationMeta('eventDate');
@override
late final GeneratedColumn<String> eventDate = GeneratedColumn<String>('event_date', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventLocationMeta = const VerificationMeta('eventLocation');
@override
late final GeneratedColumn<String> eventLocation = GeneratedColumn<String>('event_location', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventImageUrlMeta = const VerificationMeta('eventImageUrl');
@override
late final GeneratedColumn<String> eventImageUrl = GeneratedColumn<String>('event_image_url', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _priceMeta = const VerificationMeta('price');
@override
late final GeneratedColumn<double> price = GeneratedColumn<double>('price', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _ticketTypeMeta = const VerificationMeta('ticketType');
@override
late final GeneratedColumn<String> ticketType = GeneratedColumn<String>('ticket_type', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _statusMeta = const VerificationMeta('status');
@override
late final GeneratedColumn<String> status = GeneratedColumn<String>('status', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _purchaseDateMeta = const VerificationMeta('purchaseDate');
@override
late final GeneratedColumn<DateTime> purchaseDate = GeneratedColumn<DateTime>('purchase_date', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _qrCodeDataMeta = const VerificationMeta('qrCodeData');
@override
late final GeneratedColumn<String> qrCodeData = GeneratedColumn<String>('qr_code_data', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _seatInfoMeta = const VerificationMeta('seatInfo');
@override
late final GeneratedColumn<String> seatInfo = GeneratedColumn<String>('seat_info', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _chosenTransportLabelMeta = const VerificationMeta('chosenTransportLabel');
@override
late final GeneratedColumn<String> chosenTransportLabel = GeneratedColumn<String>('chosen_transport_label', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _chosenTransportCo2SavedKgMeta = const VerificationMeta('chosenTransportCo2SavedKg');
@override
late final GeneratedColumn<double> chosenTransportCo2SavedKg = GeneratedColumn<double>('chosen_transport_co2_saved_kg', aliasedName, true, type: DriftSqlType.double, requiredDuringInsert: false);
static const VerificationMeta _transferredToEmailMeta = const VerificationMeta('transferredToEmail');
@override
late final GeneratedColumn<String> transferredToEmail = GeneratedColumn<String>('transferred_to_email', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _transferredAtMeta = const VerificationMeta('transferredAt');
@override
late final GeneratedColumn<DateTime> transferredAt = GeneratedColumn<DateTime>('transferred_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _cancelledAtMeta = const VerificationMeta('cancelledAt');
@override
late final GeneratedColumn<DateTime> cancelledAt = GeneratedColumn<DateTime>('cancelled_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _refundAmountMeta = const VerificationMeta('refundAmount');
@override
late final GeneratedColumn<double> refundAmount = GeneratedColumn<double>('refund_amount', aliasedName, true, type: DriftSqlType.double, requiredDuringInsert: false);
static const VerificationMeta _eventDateParsedMeta = const VerificationMeta('eventDateParsed');
@override
late final GeneratedColumn<DateTime> eventDateParsed = GeneratedColumn<DateTime>('event_date_parsed', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _ownerEmailMeta = const VerificationMeta('ownerEmail');
@override
late final GeneratedColumn<String> ownerEmail = GeneratedColumn<String>('owner_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _orderIdMeta = const VerificationMeta('orderId');
@override
late final GeneratedColumn<String> orderId = GeneratedColumn<String>('order_id', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, ticketId, eventId, eventName, eventDate, eventLocation, eventImageUrl, price, ticketType, status, purchaseDate, qrCodeData, seatInfo, chosenTransportLabel, chosenTransportCo2SavedKg, transferredToEmail, transferredAt, cancelledAt, refundAmount, eventDateParsed, ownerEmail, orderId];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_tickets';
@override
VerificationContext validateIntegrity(Insertable<IsarTicket> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('ticket_id')) {
context.handle(_ticketIdMeta, ticketId.isAcceptableOrUnknown(data['ticket_id']!, _ticketIdMeta));} else if (isInserting) {
context.missing(_ticketIdMeta);
}
if (data.containsKey('event_id')) {
context.handle(_eventIdMeta, eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));} else if (isInserting) {
context.missing(_eventIdMeta);
}
if (data.containsKey('event_name')) {
context.handle(_eventNameMeta, eventName.isAcceptableOrUnknown(data['event_name']!, _eventNameMeta));} else if (isInserting) {
context.missing(_eventNameMeta);
}
if (data.containsKey('event_date')) {
context.handle(_eventDateMeta, eventDate.isAcceptableOrUnknown(data['event_date']!, _eventDateMeta));} else if (isInserting) {
context.missing(_eventDateMeta);
}
if (data.containsKey('event_location')) {
context.handle(_eventLocationMeta, eventLocation.isAcceptableOrUnknown(data['event_location']!, _eventLocationMeta));} else if (isInserting) {
context.missing(_eventLocationMeta);
}
if (data.containsKey('event_image_url')) {
context.handle(_eventImageUrlMeta, eventImageUrl.isAcceptableOrUnknown(data['event_image_url']!, _eventImageUrlMeta));}if (data.containsKey('price')) {
context.handle(_priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));} else if (isInserting) {
context.missing(_priceMeta);
}
if (data.containsKey('ticket_type')) {
context.handle(_ticketTypeMeta, ticketType.isAcceptableOrUnknown(data['ticket_type']!, _ticketTypeMeta));} else if (isInserting) {
context.missing(_ticketTypeMeta);
}
if (data.containsKey('status')) {
context.handle(_statusMeta, status.isAcceptableOrUnknown(data['status']!, _statusMeta));} else if (isInserting) {
context.missing(_statusMeta);
}
if (data.containsKey('purchase_date')) {
context.handle(_purchaseDateMeta, purchaseDate.isAcceptableOrUnknown(data['purchase_date']!, _purchaseDateMeta));} else if (isInserting) {
context.missing(_purchaseDateMeta);
}
if (data.containsKey('qr_code_data')) {
context.handle(_qrCodeDataMeta, qrCodeData.isAcceptableOrUnknown(data['qr_code_data']!, _qrCodeDataMeta));}if (data.containsKey('seat_info')) {
context.handle(_seatInfoMeta, seatInfo.isAcceptableOrUnknown(data['seat_info']!, _seatInfoMeta));}if (data.containsKey('chosen_transport_label')) {
context.handle(_chosenTransportLabelMeta, chosenTransportLabel.isAcceptableOrUnknown(data['chosen_transport_label']!, _chosenTransportLabelMeta));}if (data.containsKey('chosen_transport_co2_saved_kg')) {
context.handle(_chosenTransportCo2SavedKgMeta, chosenTransportCo2SavedKg.isAcceptableOrUnknown(data['chosen_transport_co2_saved_kg']!, _chosenTransportCo2SavedKgMeta));}if (data.containsKey('transferred_to_email')) {
context.handle(_transferredToEmailMeta, transferredToEmail.isAcceptableOrUnknown(data['transferred_to_email']!, _transferredToEmailMeta));}if (data.containsKey('transferred_at')) {
context.handle(_transferredAtMeta, transferredAt.isAcceptableOrUnknown(data['transferred_at']!, _transferredAtMeta));}if (data.containsKey('cancelled_at')) {
context.handle(_cancelledAtMeta, cancelledAt.isAcceptableOrUnknown(data['cancelled_at']!, _cancelledAtMeta));}if (data.containsKey('refund_amount')) {
context.handle(_refundAmountMeta, refundAmount.isAcceptableOrUnknown(data['refund_amount']!, _refundAmountMeta));}if (data.containsKey('event_date_parsed')) {
context.handle(_eventDateParsedMeta, eventDateParsed.isAcceptableOrUnknown(data['event_date_parsed']!, _eventDateParsedMeta));}if (data.containsKey('owner_email')) {
context.handle(_ownerEmailMeta, ownerEmail.isAcceptableOrUnknown(data['owner_email']!, _ownerEmailMeta));} else if (isInserting) {
context.missing(_ownerEmailMeta);
}
if (data.containsKey('order_id')) {
context.handle(_orderIdMeta, orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarTicket map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarTicket(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, ticketId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}ticket_id'])!, eventId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_id'])!, eventName: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_name'])!, eventDate: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_date'])!, eventLocation: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_location'])!, eventImageUrl: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_image_url']), price: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}price'])!, ticketType: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}ticket_type'])!, status: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}status'])!, purchaseDate: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}purchase_date'])!, qrCodeData: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}qr_code_data']), seatInfo: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}seat_info']), chosenTransportLabel: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}chosen_transport_label']), chosenTransportCo2SavedKg: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}chosen_transport_co2_saved_kg']), transferredToEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}transferred_to_email']), transferredAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}transferred_at']), cancelledAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}cancelled_at']), refundAmount: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}refund_amount']), eventDateParsed: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}event_date_parsed']), ownerEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}owner_email'])!, orderId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}order_id']), );
}
@override
$IsarTicketsTable createAlias(String alias) {
return $IsarTicketsTable(attachedDatabase, alias);}}class IsarTicket extends DataClass implements Insertable<IsarTicket> 
{
final int isarId;
final String ticketId;
final String eventId;
final String eventName;
final String eventDate;
final String eventLocation;
final String? eventImageUrl;
final double price;
final String ticketType;
final String status;
final DateTime purchaseDate;
final String? qrCodeData;
final String? seatInfo;
final String? chosenTransportLabel;
final double? chosenTransportCo2SavedKg;
final String? transferredToEmail;
final DateTime? transferredAt;
final DateTime? cancelledAt;
final double? refundAmount;
final DateTime? eventDateParsed;
final String ownerEmail;
final String? orderId;
const IsarTicket({required this.isarId, required this.ticketId, required this.eventId, required this.eventName, required this.eventDate, required this.eventLocation, this.eventImageUrl, required this.price, required this.ticketType, required this.status, required this.purchaseDate, this.qrCodeData, this.seatInfo, this.chosenTransportLabel, this.chosenTransportCo2SavedKg, this.transferredToEmail, this.transferredAt, this.cancelledAt, this.refundAmount, this.eventDateParsed, required this.ownerEmail, this.orderId});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['ticket_id'] = Variable<String>(ticketId);
map['event_id'] = Variable<String>(eventId);
map['event_name'] = Variable<String>(eventName);
map['event_date'] = Variable<String>(eventDate);
map['event_location'] = Variable<String>(eventLocation);
if (!nullToAbsent || eventImageUrl != null){map['event_image_url'] = Variable<String>(eventImageUrl);
}map['price'] = Variable<double>(price);
map['ticket_type'] = Variable<String>(ticketType);
map['status'] = Variable<String>(status);
map['purchase_date'] = Variable<DateTime>(purchaseDate);
if (!nullToAbsent || qrCodeData != null){map['qr_code_data'] = Variable<String>(qrCodeData);
}if (!nullToAbsent || seatInfo != null){map['seat_info'] = Variable<String>(seatInfo);
}if (!nullToAbsent || chosenTransportLabel != null){map['chosen_transport_label'] = Variable<String>(chosenTransportLabel);
}if (!nullToAbsent || chosenTransportCo2SavedKg != null){map['chosen_transport_co2_saved_kg'] = Variable<double>(chosenTransportCo2SavedKg);
}if (!nullToAbsent || transferredToEmail != null){map['transferred_to_email'] = Variable<String>(transferredToEmail);
}if (!nullToAbsent || transferredAt != null){map['transferred_at'] = Variable<DateTime>(transferredAt);
}if (!nullToAbsent || cancelledAt != null){map['cancelled_at'] = Variable<DateTime>(cancelledAt);
}if (!nullToAbsent || refundAmount != null){map['refund_amount'] = Variable<double>(refundAmount);
}if (!nullToAbsent || eventDateParsed != null){map['event_date_parsed'] = Variable<DateTime>(eventDateParsed);
}map['owner_email'] = Variable<String>(ownerEmail);
if (!nullToAbsent || orderId != null){map['order_id'] = Variable<String>(orderId);
}return map; 
}
IsarTicketsCompanion toCompanion(bool nullToAbsent) {
return IsarTicketsCompanion(isarId: Value(isarId),ticketId: Value(ticketId),eventId: Value(eventId),eventName: Value(eventName),eventDate: Value(eventDate),eventLocation: Value(eventLocation),eventImageUrl: eventImageUrl == null && nullToAbsent ? const Value.absent() : Value(eventImageUrl),price: Value(price),ticketType: Value(ticketType),status: Value(status),purchaseDate: Value(purchaseDate),qrCodeData: qrCodeData == null && nullToAbsent ? const Value.absent() : Value(qrCodeData),seatInfo: seatInfo == null && nullToAbsent ? const Value.absent() : Value(seatInfo),chosenTransportLabel: chosenTransportLabel == null && nullToAbsent ? const Value.absent() : Value(chosenTransportLabel),chosenTransportCo2SavedKg: chosenTransportCo2SavedKg == null && nullToAbsent ? const Value.absent() : Value(chosenTransportCo2SavedKg),transferredToEmail: transferredToEmail == null && nullToAbsent ? const Value.absent() : Value(transferredToEmail),transferredAt: transferredAt == null && nullToAbsent ? const Value.absent() : Value(transferredAt),cancelledAt: cancelledAt == null && nullToAbsent ? const Value.absent() : Value(cancelledAt),refundAmount: refundAmount == null && nullToAbsent ? const Value.absent() : Value(refundAmount),eventDateParsed: eventDateParsed == null && nullToAbsent ? const Value.absent() : Value(eventDateParsed),ownerEmail: Value(ownerEmail),orderId: orderId == null && nullToAbsent ? const Value.absent() : Value(orderId),);
}
factory IsarTicket.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarTicket(isarId: serializer.fromJson<int>(json['isarId']),ticketId: serializer.fromJson<String>(json['ticketId']),eventId: serializer.fromJson<String>(json['eventId']),eventName: serializer.fromJson<String>(json['eventName']),eventDate: serializer.fromJson<String>(json['eventDate']),eventLocation: serializer.fromJson<String>(json['eventLocation']),eventImageUrl: serializer.fromJson<String?>(json['eventImageUrl']),price: serializer.fromJson<double>(json['price']),ticketType: serializer.fromJson<String>(json['ticketType']),status: serializer.fromJson<String>(json['status']),purchaseDate: serializer.fromJson<DateTime>(json['purchaseDate']),qrCodeData: serializer.fromJson<String?>(json['qrCodeData']),seatInfo: serializer.fromJson<String?>(json['seatInfo']),chosenTransportLabel: serializer.fromJson<String?>(json['chosenTransportLabel']),chosenTransportCo2SavedKg: serializer.fromJson<double?>(json['chosenTransportCo2SavedKg']),transferredToEmail: serializer.fromJson<String?>(json['transferredToEmail']),transferredAt: serializer.fromJson<DateTime?>(json['transferredAt']),cancelledAt: serializer.fromJson<DateTime?>(json['cancelledAt']),refundAmount: serializer.fromJson<double?>(json['refundAmount']),eventDateParsed: serializer.fromJson<DateTime?>(json['eventDateParsed']),ownerEmail: serializer.fromJson<String>(json['ownerEmail']),orderId: serializer.fromJson<String?>(json['orderId']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'ticketId': serializer.toJson<String>(ticketId),'eventId': serializer.toJson<String>(eventId),'eventName': serializer.toJson<String>(eventName),'eventDate': serializer.toJson<String>(eventDate),'eventLocation': serializer.toJson<String>(eventLocation),'eventImageUrl': serializer.toJson<String?>(eventImageUrl),'price': serializer.toJson<double>(price),'ticketType': serializer.toJson<String>(ticketType),'status': serializer.toJson<String>(status),'purchaseDate': serializer.toJson<DateTime>(purchaseDate),'qrCodeData': serializer.toJson<String?>(qrCodeData),'seatInfo': serializer.toJson<String?>(seatInfo),'chosenTransportLabel': serializer.toJson<String?>(chosenTransportLabel),'chosenTransportCo2SavedKg': serializer.toJson<double?>(chosenTransportCo2SavedKg),'transferredToEmail': serializer.toJson<String?>(transferredToEmail),'transferredAt': serializer.toJson<DateTime?>(transferredAt),'cancelledAt': serializer.toJson<DateTime?>(cancelledAt),'refundAmount': serializer.toJson<double?>(refundAmount),'eventDateParsed': serializer.toJson<DateTime?>(eventDateParsed),'ownerEmail': serializer.toJson<String>(ownerEmail),'orderId': serializer.toJson<String?>(orderId),};}IsarTicket copyWith({int? isarId,String? ticketId,String? eventId,String? eventName,String? eventDate,String? eventLocation,Value<String?> eventImageUrl = const Value.absent(),double? price,String? ticketType,String? status,DateTime? purchaseDate,Value<String?> qrCodeData = const Value.absent(),Value<String?> seatInfo = const Value.absent(),Value<String?> chosenTransportLabel = const Value.absent(),Value<double?> chosenTransportCo2SavedKg = const Value.absent(),Value<String?> transferredToEmail = const Value.absent(),Value<DateTime?> transferredAt = const Value.absent(),Value<DateTime?> cancelledAt = const Value.absent(),Value<double?> refundAmount = const Value.absent(),Value<DateTime?> eventDateParsed = const Value.absent(),String? ownerEmail,Value<String?> orderId = const Value.absent()}) => IsarTicket(isarId: isarId ?? this.isarId,ticketId: ticketId ?? this.ticketId,eventId: eventId ?? this.eventId,eventName: eventName ?? this.eventName,eventDate: eventDate ?? this.eventDate,eventLocation: eventLocation ?? this.eventLocation,eventImageUrl: eventImageUrl.present ? eventImageUrl.value : this.eventImageUrl,price: price ?? this.price,ticketType: ticketType ?? this.ticketType,status: status ?? this.status,purchaseDate: purchaseDate ?? this.purchaseDate,qrCodeData: qrCodeData.present ? qrCodeData.value : this.qrCodeData,seatInfo: seatInfo.present ? seatInfo.value : this.seatInfo,chosenTransportLabel: chosenTransportLabel.present ? chosenTransportLabel.value : this.chosenTransportLabel,chosenTransportCo2SavedKg: chosenTransportCo2SavedKg.present ? chosenTransportCo2SavedKg.value : this.chosenTransportCo2SavedKg,transferredToEmail: transferredToEmail.present ? transferredToEmail.value : this.transferredToEmail,transferredAt: transferredAt.present ? transferredAt.value : this.transferredAt,cancelledAt: cancelledAt.present ? cancelledAt.value : this.cancelledAt,refundAmount: refundAmount.present ? refundAmount.value : this.refundAmount,eventDateParsed: eventDateParsed.present ? eventDateParsed.value : this.eventDateParsed,ownerEmail: ownerEmail ?? this.ownerEmail,orderId: orderId.present ? orderId.value : this.orderId,);IsarTicket copyWithCompanion(IsarTicketsCompanion data) {
return IsarTicket(
isarId: data.isarId.present ? data.isarId.value : this.isarId,ticketId: data.ticketId.present ? data.ticketId.value : this.ticketId,eventId: data.eventId.present ? data.eventId.value : this.eventId,eventName: data.eventName.present ? data.eventName.value : this.eventName,eventDate: data.eventDate.present ? data.eventDate.value : this.eventDate,eventLocation: data.eventLocation.present ? data.eventLocation.value : this.eventLocation,eventImageUrl: data.eventImageUrl.present ? data.eventImageUrl.value : this.eventImageUrl,price: data.price.present ? data.price.value : this.price,ticketType: data.ticketType.present ? data.ticketType.value : this.ticketType,status: data.status.present ? data.status.value : this.status,purchaseDate: data.purchaseDate.present ? data.purchaseDate.value : this.purchaseDate,qrCodeData: data.qrCodeData.present ? data.qrCodeData.value : this.qrCodeData,seatInfo: data.seatInfo.present ? data.seatInfo.value : this.seatInfo,chosenTransportLabel: data.chosenTransportLabel.present ? data.chosenTransportLabel.value : this.chosenTransportLabel,chosenTransportCo2SavedKg: data.chosenTransportCo2SavedKg.present ? data.chosenTransportCo2SavedKg.value : this.chosenTransportCo2SavedKg,transferredToEmail: data.transferredToEmail.present ? data.transferredToEmail.value : this.transferredToEmail,transferredAt: data.transferredAt.present ? data.transferredAt.value : this.transferredAt,cancelledAt: data.cancelledAt.present ? data.cancelledAt.value : this.cancelledAt,refundAmount: data.refundAmount.present ? data.refundAmount.value : this.refundAmount,eventDateParsed: data.eventDateParsed.present ? data.eventDateParsed.value : this.eventDateParsed,ownerEmail: data.ownerEmail.present ? data.ownerEmail.value : this.ownerEmail,orderId: data.orderId.present ? data.orderId.value : this.orderId,);
}
@override
String toString() {return (StringBuffer('IsarTicket(')..write('isarId: $isarId, ')..write('ticketId: $ticketId, ')..write('eventId: $eventId, ')..write('eventName: $eventName, ')..write('eventDate: $eventDate, ')..write('eventLocation: $eventLocation, ')..write('eventImageUrl: $eventImageUrl, ')..write('price: $price, ')..write('ticketType: $ticketType, ')..write('status: $status, ')..write('purchaseDate: $purchaseDate, ')..write('qrCodeData: $qrCodeData, ')..write('seatInfo: $seatInfo, ')..write('chosenTransportLabel: $chosenTransportLabel, ')..write('chosenTransportCo2SavedKg: $chosenTransportCo2SavedKg, ')..write('transferredToEmail: $transferredToEmail, ')..write('transferredAt: $transferredAt, ')..write('cancelledAt: $cancelledAt, ')..write('refundAmount: $refundAmount, ')..write('eventDateParsed: $eventDateParsed, ')..write('ownerEmail: $ownerEmail, ')..write('orderId: $orderId')..write(')')).toString();}
@override
 int get hashCode => Object.hashAll([isarId, ticketId, eventId, eventName, eventDate, eventLocation, eventImageUrl, price, ticketType, status, purchaseDate, qrCodeData, seatInfo, chosenTransportLabel, chosenTransportCo2SavedKg, transferredToEmail, transferredAt, cancelledAt, refundAmount, eventDateParsed, ownerEmail, orderId]);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarTicket && other.isarId == this.isarId && other.ticketId == this.ticketId && other.eventId == this.eventId && other.eventName == this.eventName && other.eventDate == this.eventDate && other.eventLocation == this.eventLocation && other.eventImageUrl == this.eventImageUrl && other.price == this.price && other.ticketType == this.ticketType && other.status == this.status && other.purchaseDate == this.purchaseDate && other.qrCodeData == this.qrCodeData && other.seatInfo == this.seatInfo && other.chosenTransportLabel == this.chosenTransportLabel && other.chosenTransportCo2SavedKg == this.chosenTransportCo2SavedKg && other.transferredToEmail == this.transferredToEmail && other.transferredAt == this.transferredAt && other.cancelledAt == this.cancelledAt && other.refundAmount == this.refundAmount && other.eventDateParsed == this.eventDateParsed && other.ownerEmail == this.ownerEmail && other.orderId == this.orderId);
}class IsarTicketsCompanion extends UpdateCompanion<IsarTicket> {
final Value<int> isarId;
final Value<String> ticketId;
final Value<String> eventId;
final Value<String> eventName;
final Value<String> eventDate;
final Value<String> eventLocation;
final Value<String?> eventImageUrl;
final Value<double> price;
final Value<String> ticketType;
final Value<String> status;
final Value<DateTime> purchaseDate;
final Value<String?> qrCodeData;
final Value<String?> seatInfo;
final Value<String?> chosenTransportLabel;
final Value<double?> chosenTransportCo2SavedKg;
final Value<String?> transferredToEmail;
final Value<DateTime?> transferredAt;
final Value<DateTime?> cancelledAt;
final Value<double?> refundAmount;
final Value<DateTime?> eventDateParsed;
final Value<String> ownerEmail;
final Value<String?> orderId;
const IsarTicketsCompanion({this.isarId = const Value.absent(),this.ticketId = const Value.absent(),this.eventId = const Value.absent(),this.eventName = const Value.absent(),this.eventDate = const Value.absent(),this.eventLocation = const Value.absent(),this.eventImageUrl = const Value.absent(),this.price = const Value.absent(),this.ticketType = const Value.absent(),this.status = const Value.absent(),this.purchaseDate = const Value.absent(),this.qrCodeData = const Value.absent(),this.seatInfo = const Value.absent(),this.chosenTransportLabel = const Value.absent(),this.chosenTransportCo2SavedKg = const Value.absent(),this.transferredToEmail = const Value.absent(),this.transferredAt = const Value.absent(),this.cancelledAt = const Value.absent(),this.refundAmount = const Value.absent(),this.eventDateParsed = const Value.absent(),this.ownerEmail = const Value.absent(),this.orderId = const Value.absent(),});
IsarTicketsCompanion.insert({this.isarId = const Value.absent(),required String ticketId,required String eventId,required String eventName,required String eventDate,required String eventLocation,this.eventImageUrl = const Value.absent(),required double price,required String ticketType,required String status,required DateTime purchaseDate,this.qrCodeData = const Value.absent(),this.seatInfo = const Value.absent(),this.chosenTransportLabel = const Value.absent(),this.chosenTransportCo2SavedKg = const Value.absent(),this.transferredToEmail = const Value.absent(),this.transferredAt = const Value.absent(),this.cancelledAt = const Value.absent(),this.refundAmount = const Value.absent(),this.eventDateParsed = const Value.absent(),required String ownerEmail,this.orderId = const Value.absent(),}): ticketId = Value(ticketId), eventId = Value(eventId), eventName = Value(eventName), eventDate = Value(eventDate), eventLocation = Value(eventLocation), price = Value(price), ticketType = Value(ticketType), status = Value(status), purchaseDate = Value(purchaseDate), ownerEmail = Value(ownerEmail);
static Insertable<IsarTicket> custom({Expression<int>? isarId, 
Expression<String>? ticketId, 
Expression<String>? eventId, 
Expression<String>? eventName, 
Expression<String>? eventDate, 
Expression<String>? eventLocation, 
Expression<String>? eventImageUrl, 
Expression<double>? price, 
Expression<String>? ticketType, 
Expression<String>? status, 
Expression<DateTime>? purchaseDate, 
Expression<String>? qrCodeData, 
Expression<String>? seatInfo, 
Expression<String>? chosenTransportLabel, 
Expression<double>? chosenTransportCo2SavedKg, 
Expression<String>? transferredToEmail, 
Expression<DateTime>? transferredAt, 
Expression<DateTime>? cancelledAt, 
Expression<double>? refundAmount, 
Expression<DateTime>? eventDateParsed, 
Expression<String>? ownerEmail, 
Expression<String>? orderId, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (ticketId != null)'ticket_id': ticketId,if (eventId != null)'event_id': eventId,if (eventName != null)'event_name': eventName,if (eventDate != null)'event_date': eventDate,if (eventLocation != null)'event_location': eventLocation,if (eventImageUrl != null)'event_image_url': eventImageUrl,if (price != null)'price': price,if (ticketType != null)'ticket_type': ticketType,if (status != null)'status': status,if (purchaseDate != null)'purchase_date': purchaseDate,if (qrCodeData != null)'qr_code_data': qrCodeData,if (seatInfo != null)'seat_info': seatInfo,if (chosenTransportLabel != null)'chosen_transport_label': chosenTransportLabel,if (chosenTransportCo2SavedKg != null)'chosen_transport_co2_saved_kg': chosenTransportCo2SavedKg,if (transferredToEmail != null)'transferred_to_email': transferredToEmail,if (transferredAt != null)'transferred_at': transferredAt,if (cancelledAt != null)'cancelled_at': cancelledAt,if (refundAmount != null)'refund_amount': refundAmount,if (eventDateParsed != null)'event_date_parsed': eventDateParsed,if (ownerEmail != null)'owner_email': ownerEmail,if (orderId != null)'order_id': orderId,});
}IsarTicketsCompanion copyWith({Value<int>? isarId, Value<String>? ticketId, Value<String>? eventId, Value<String>? eventName, Value<String>? eventDate, Value<String>? eventLocation, Value<String?>? eventImageUrl, Value<double>? price, Value<String>? ticketType, Value<String>? status, Value<DateTime>? purchaseDate, Value<String?>? qrCodeData, Value<String?>? seatInfo, Value<String?>? chosenTransportLabel, Value<double?>? chosenTransportCo2SavedKg, Value<String?>? transferredToEmail, Value<DateTime?>? transferredAt, Value<DateTime?>? cancelledAt, Value<double?>? refundAmount, Value<DateTime?>? eventDateParsed, Value<String>? ownerEmail, Value<String?>? orderId}) {
return IsarTicketsCompanion(isarId: isarId ?? this.isarId,ticketId: ticketId ?? this.ticketId,eventId: eventId ?? this.eventId,eventName: eventName ?? this.eventName,eventDate: eventDate ?? this.eventDate,eventLocation: eventLocation ?? this.eventLocation,eventImageUrl: eventImageUrl ?? this.eventImageUrl,price: price ?? this.price,ticketType: ticketType ?? this.ticketType,status: status ?? this.status,purchaseDate: purchaseDate ?? this.purchaseDate,qrCodeData: qrCodeData ?? this.qrCodeData,seatInfo: seatInfo ?? this.seatInfo,chosenTransportLabel: chosenTransportLabel ?? this.chosenTransportLabel,chosenTransportCo2SavedKg: chosenTransportCo2SavedKg ?? this.chosenTransportCo2SavedKg,transferredToEmail: transferredToEmail ?? this.transferredToEmail,transferredAt: transferredAt ?? this.transferredAt,cancelledAt: cancelledAt ?? this.cancelledAt,refundAmount: refundAmount ?? this.refundAmount,eventDateParsed: eventDateParsed ?? this.eventDateParsed,ownerEmail: ownerEmail ?? this.ownerEmail,orderId: orderId ?? this.orderId,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (ticketId.present) {
map['ticket_id'] = Variable<String>(ticketId.value);}
if (eventId.present) {
map['event_id'] = Variable<String>(eventId.value);}
if (eventName.present) {
map['event_name'] = Variable<String>(eventName.value);}
if (eventDate.present) {
map['event_date'] = Variable<String>(eventDate.value);}
if (eventLocation.present) {
map['event_location'] = Variable<String>(eventLocation.value);}
if (eventImageUrl.present) {
map['event_image_url'] = Variable<String>(eventImageUrl.value);}
if (price.present) {
map['price'] = Variable<double>(price.value);}
if (ticketType.present) {
map['ticket_type'] = Variable<String>(ticketType.value);}
if (status.present) {
map['status'] = Variable<String>(status.value);}
if (purchaseDate.present) {
map['purchase_date'] = Variable<DateTime>(purchaseDate.value);}
if (qrCodeData.present) {
map['qr_code_data'] = Variable<String>(qrCodeData.value);}
if (seatInfo.present) {
map['seat_info'] = Variable<String>(seatInfo.value);}
if (chosenTransportLabel.present) {
map['chosen_transport_label'] = Variable<String>(chosenTransportLabel.value);}
if (chosenTransportCo2SavedKg.present) {
map['chosen_transport_co2_saved_kg'] = Variable<double>(chosenTransportCo2SavedKg.value);}
if (transferredToEmail.present) {
map['transferred_to_email'] = Variable<String>(transferredToEmail.value);}
if (transferredAt.present) {
map['transferred_at'] = Variable<DateTime>(transferredAt.value);}
if (cancelledAt.present) {
map['cancelled_at'] = Variable<DateTime>(cancelledAt.value);}
if (refundAmount.present) {
map['refund_amount'] = Variable<double>(refundAmount.value);}
if (eventDateParsed.present) {
map['event_date_parsed'] = Variable<DateTime>(eventDateParsed.value);}
if (ownerEmail.present) {
map['owner_email'] = Variable<String>(ownerEmail.value);}
if (orderId.present) {
map['order_id'] = Variable<String>(orderId.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarTicketsCompanion(')..write('isarId: $isarId, ')..write('ticketId: $ticketId, ')..write('eventId: $eventId, ')..write('eventName: $eventName, ')..write('eventDate: $eventDate, ')..write('eventLocation: $eventLocation, ')..write('eventImageUrl: $eventImageUrl, ')..write('price: $price, ')..write('ticketType: $ticketType, ')..write('status: $status, ')..write('purchaseDate: $purchaseDate, ')..write('qrCodeData: $qrCodeData, ')..write('seatInfo: $seatInfo, ')..write('chosenTransportLabel: $chosenTransportLabel, ')..write('chosenTransportCo2SavedKg: $chosenTransportCo2SavedKg, ')..write('transferredToEmail: $transferredToEmail, ')..write('transferredAt: $transferredAt, ')..write('cancelledAt: $cancelledAt, ')..write('refundAmount: $refundAmount, ')..write('eventDateParsed: $eventDateParsed, ')..write('ownerEmail: $ownerEmail, ')..write('orderId: $orderId')..write(')')).toString();}
}
class $IsarCartItemsTable extends IsarCartItems with TableInfo<$IsarCartItemsTable, IsarCartItem>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarCartItemsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _ownerEmailMeta = const VerificationMeta('ownerEmail');
@override
late final GeneratedColumn<String> ownerEmail = GeneratedColumn<String>('owner_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventIdMeta = const VerificationMeta('eventId');
@override
late final GeneratedColumn<String> eventId = GeneratedColumn<String>('event_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventNameMeta = const VerificationMeta('eventName');
@override
late final GeneratedColumn<String> eventName = GeneratedColumn<String>('event_name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventDateMeta = const VerificationMeta('eventDate');
@override
late final GeneratedColumn<String> eventDate = GeneratedColumn<String>('event_date', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventLocationMeta = const VerificationMeta('eventLocation');
@override
late final GeneratedColumn<String> eventLocation = GeneratedColumn<String>('event_location', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventImageUrlMeta = const VerificationMeta('eventImageUrl');
@override
late final GeneratedColumn<String> eventImageUrl = GeneratedColumn<String>('event_image_url', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _unitPriceMeta = const VerificationMeta('unitPrice');
@override
late final GeneratedColumn<double> unitPrice = GeneratedColumn<double>('unit_price', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _quantityMeta = const VerificationMeta('quantity');
@override
late final GeneratedColumn<int> quantity = GeneratedColumn<int>('quantity', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
static const VerificationMeta _ticketTypeMeta = const VerificationMeta('ticketType');
@override
late final GeneratedColumn<String> ticketType = GeneratedColumn<String>('ticket_type', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _transportOptionMeta = const VerificationMeta('transportOption');
@override
late final GeneratedColumn<String> transportOption = GeneratedColumn<String>('transport_option', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _transportPriceMeta = const VerificationMeta('transportPrice');
@override
late final GeneratedColumn<double> transportPrice = GeneratedColumn<double>('transport_price', aliasedName, true, type: DriftSqlType.double, requiredDuringInsert: false);
static const VerificationMeta _accommodationOptionMeta = const VerificationMeta('accommodationOption');
@override
late final GeneratedColumn<String> accommodationOption = GeneratedColumn<String>('accommodation_option', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _accommodationPriceMeta = const VerificationMeta('accommodationPrice');
@override
late final GeneratedColumn<double> accommodationPrice = GeneratedColumn<double>('accommodation_price', aliasedName, true, type: DriftSqlType.double, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, ownerEmail, eventId, eventName, eventDate, eventLocation, eventImageUrl, unitPrice, quantity, ticketType, transportOption, transportPrice, accommodationOption, accommodationPrice];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_cart_items';
@override
VerificationContext validateIntegrity(Insertable<IsarCartItem> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('owner_email')) {
context.handle(_ownerEmailMeta, ownerEmail.isAcceptableOrUnknown(data['owner_email']!, _ownerEmailMeta));} else if (isInserting) {
context.missing(_ownerEmailMeta);
}
if (data.containsKey('event_id')) {
context.handle(_eventIdMeta, eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));} else if (isInserting) {
context.missing(_eventIdMeta);
}
if (data.containsKey('event_name')) {
context.handle(_eventNameMeta, eventName.isAcceptableOrUnknown(data['event_name']!, _eventNameMeta));} else if (isInserting) {
context.missing(_eventNameMeta);
}
if (data.containsKey('event_date')) {
context.handle(_eventDateMeta, eventDate.isAcceptableOrUnknown(data['event_date']!, _eventDateMeta));} else if (isInserting) {
context.missing(_eventDateMeta);
}
if (data.containsKey('event_location')) {
context.handle(_eventLocationMeta, eventLocation.isAcceptableOrUnknown(data['event_location']!, _eventLocationMeta));} else if (isInserting) {
context.missing(_eventLocationMeta);
}
if (data.containsKey('event_image_url')) {
context.handle(_eventImageUrlMeta, eventImageUrl.isAcceptableOrUnknown(data['event_image_url']!, _eventImageUrlMeta));}if (data.containsKey('unit_price')) {
context.handle(_unitPriceMeta, unitPrice.isAcceptableOrUnknown(data['unit_price']!, _unitPriceMeta));} else if (isInserting) {
context.missing(_unitPriceMeta);
}
if (data.containsKey('quantity')) {
context.handle(_quantityMeta, quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));} else if (isInserting) {
context.missing(_quantityMeta);
}
if (data.containsKey('ticket_type')) {
context.handle(_ticketTypeMeta, ticketType.isAcceptableOrUnknown(data['ticket_type']!, _ticketTypeMeta));} else if (isInserting) {
context.missing(_ticketTypeMeta);
}
if (data.containsKey('transport_option')) {
context.handle(_transportOptionMeta, transportOption.isAcceptableOrUnknown(data['transport_option']!, _transportOptionMeta));}if (data.containsKey('transport_price')) {
context.handle(_transportPriceMeta, transportPrice.isAcceptableOrUnknown(data['transport_price']!, _transportPriceMeta));}if (data.containsKey('accommodation_option')) {
context.handle(_accommodationOptionMeta, accommodationOption.isAcceptableOrUnknown(data['accommodation_option']!, _accommodationOptionMeta));}if (data.containsKey('accommodation_price')) {
context.handle(_accommodationPriceMeta, accommodationPrice.isAcceptableOrUnknown(data['accommodation_price']!, _accommodationPriceMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarCartItem map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarCartItem(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, ownerEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}owner_email'])!, eventId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_id'])!, eventName: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_name'])!, eventDate: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_date'])!, eventLocation: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_location'])!, eventImageUrl: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_image_url']), unitPrice: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}unit_price'])!, quantity: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}quantity'])!, ticketType: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}ticket_type'])!, transportOption: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}transport_option']), transportPrice: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}transport_price']), accommodationOption: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}accommodation_option']), accommodationPrice: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}accommodation_price']), );
}
@override
$IsarCartItemsTable createAlias(String alias) {
return $IsarCartItemsTable(attachedDatabase, alias);}}class IsarCartItem extends DataClass implements Insertable<IsarCartItem> 
{
final int isarId;
final String ownerEmail;
final String eventId;
final String eventName;
final String eventDate;
final String eventLocation;
final String? eventImageUrl;
final double unitPrice;
final int quantity;
final String ticketType;
final String? transportOption;
final double? transportPrice;
final String? accommodationOption;
final double? accommodationPrice;
const IsarCartItem({required this.isarId, required this.ownerEmail, required this.eventId, required this.eventName, required this.eventDate, required this.eventLocation, this.eventImageUrl, required this.unitPrice, required this.quantity, required this.ticketType, this.transportOption, this.transportPrice, this.accommodationOption, this.accommodationPrice});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['owner_email'] = Variable<String>(ownerEmail);
map['event_id'] = Variable<String>(eventId);
map['event_name'] = Variable<String>(eventName);
map['event_date'] = Variable<String>(eventDate);
map['event_location'] = Variable<String>(eventLocation);
if (!nullToAbsent || eventImageUrl != null){map['event_image_url'] = Variable<String>(eventImageUrl);
}map['unit_price'] = Variable<double>(unitPrice);
map['quantity'] = Variable<int>(quantity);
map['ticket_type'] = Variable<String>(ticketType);
if (!nullToAbsent || transportOption != null){map['transport_option'] = Variable<String>(transportOption);
}if (!nullToAbsent || transportPrice != null){map['transport_price'] = Variable<double>(transportPrice);
}if (!nullToAbsent || accommodationOption != null){map['accommodation_option'] = Variable<String>(accommodationOption);
}if (!nullToAbsent || accommodationPrice != null){map['accommodation_price'] = Variable<double>(accommodationPrice);
}return map; 
}
IsarCartItemsCompanion toCompanion(bool nullToAbsent) {
return IsarCartItemsCompanion(isarId: Value(isarId),ownerEmail: Value(ownerEmail),eventId: Value(eventId),eventName: Value(eventName),eventDate: Value(eventDate),eventLocation: Value(eventLocation),eventImageUrl: eventImageUrl == null && nullToAbsent ? const Value.absent() : Value(eventImageUrl),unitPrice: Value(unitPrice),quantity: Value(quantity),ticketType: Value(ticketType),transportOption: transportOption == null && nullToAbsent ? const Value.absent() : Value(transportOption),transportPrice: transportPrice == null && nullToAbsent ? const Value.absent() : Value(transportPrice),accommodationOption: accommodationOption == null && nullToAbsent ? const Value.absent() : Value(accommodationOption),accommodationPrice: accommodationPrice == null && nullToAbsent ? const Value.absent() : Value(accommodationPrice),);
}
factory IsarCartItem.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarCartItem(isarId: serializer.fromJson<int>(json['isarId']),ownerEmail: serializer.fromJson<String>(json['ownerEmail']),eventId: serializer.fromJson<String>(json['eventId']),eventName: serializer.fromJson<String>(json['eventName']),eventDate: serializer.fromJson<String>(json['eventDate']),eventLocation: serializer.fromJson<String>(json['eventLocation']),eventImageUrl: serializer.fromJson<String?>(json['eventImageUrl']),unitPrice: serializer.fromJson<double>(json['unitPrice']),quantity: serializer.fromJson<int>(json['quantity']),ticketType: serializer.fromJson<String>(json['ticketType']),transportOption: serializer.fromJson<String?>(json['transportOption']),transportPrice: serializer.fromJson<double?>(json['transportPrice']),accommodationOption: serializer.fromJson<String?>(json['accommodationOption']),accommodationPrice: serializer.fromJson<double?>(json['accommodationPrice']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'ownerEmail': serializer.toJson<String>(ownerEmail),'eventId': serializer.toJson<String>(eventId),'eventName': serializer.toJson<String>(eventName),'eventDate': serializer.toJson<String>(eventDate),'eventLocation': serializer.toJson<String>(eventLocation),'eventImageUrl': serializer.toJson<String?>(eventImageUrl),'unitPrice': serializer.toJson<double>(unitPrice),'quantity': serializer.toJson<int>(quantity),'ticketType': serializer.toJson<String>(ticketType),'transportOption': serializer.toJson<String?>(transportOption),'transportPrice': serializer.toJson<double?>(transportPrice),'accommodationOption': serializer.toJson<String?>(accommodationOption),'accommodationPrice': serializer.toJson<double?>(accommodationPrice),};}IsarCartItem copyWith({int? isarId,String? ownerEmail,String? eventId,String? eventName,String? eventDate,String? eventLocation,Value<String?> eventImageUrl = const Value.absent(),double? unitPrice,int? quantity,String? ticketType,Value<String?> transportOption = const Value.absent(),Value<double?> transportPrice = const Value.absent(),Value<String?> accommodationOption = const Value.absent(),Value<double?> accommodationPrice = const Value.absent()}) => IsarCartItem(isarId: isarId ?? this.isarId,ownerEmail: ownerEmail ?? this.ownerEmail,eventId: eventId ?? this.eventId,eventName: eventName ?? this.eventName,eventDate: eventDate ?? this.eventDate,eventLocation: eventLocation ?? this.eventLocation,eventImageUrl: eventImageUrl.present ? eventImageUrl.value : this.eventImageUrl,unitPrice: unitPrice ?? this.unitPrice,quantity: quantity ?? this.quantity,ticketType: ticketType ?? this.ticketType,transportOption: transportOption.present ? transportOption.value : this.transportOption,transportPrice: transportPrice.present ? transportPrice.value : this.transportPrice,accommodationOption: accommodationOption.present ? accommodationOption.value : this.accommodationOption,accommodationPrice: accommodationPrice.present ? accommodationPrice.value : this.accommodationPrice,);IsarCartItem copyWithCompanion(IsarCartItemsCompanion data) {
return IsarCartItem(
isarId: data.isarId.present ? data.isarId.value : this.isarId,ownerEmail: data.ownerEmail.present ? data.ownerEmail.value : this.ownerEmail,eventId: data.eventId.present ? data.eventId.value : this.eventId,eventName: data.eventName.present ? data.eventName.value : this.eventName,eventDate: data.eventDate.present ? data.eventDate.value : this.eventDate,eventLocation: data.eventLocation.present ? data.eventLocation.value : this.eventLocation,eventImageUrl: data.eventImageUrl.present ? data.eventImageUrl.value : this.eventImageUrl,unitPrice: data.unitPrice.present ? data.unitPrice.value : this.unitPrice,quantity: data.quantity.present ? data.quantity.value : this.quantity,ticketType: data.ticketType.present ? data.ticketType.value : this.ticketType,transportOption: data.transportOption.present ? data.transportOption.value : this.transportOption,transportPrice: data.transportPrice.present ? data.transportPrice.value : this.transportPrice,accommodationOption: data.accommodationOption.present ? data.accommodationOption.value : this.accommodationOption,accommodationPrice: data.accommodationPrice.present ? data.accommodationPrice.value : this.accommodationPrice,);
}
@override
String toString() {return (StringBuffer('IsarCartItem(')..write('isarId: $isarId, ')..write('ownerEmail: $ownerEmail, ')..write('eventId: $eventId, ')..write('eventName: $eventName, ')..write('eventDate: $eventDate, ')..write('eventLocation: $eventLocation, ')..write('eventImageUrl: $eventImageUrl, ')..write('unitPrice: $unitPrice, ')..write('quantity: $quantity, ')..write('ticketType: $ticketType, ')..write('transportOption: $transportOption, ')..write('transportPrice: $transportPrice, ')..write('accommodationOption: $accommodationOption, ')..write('accommodationPrice: $accommodationPrice')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, ownerEmail, eventId, eventName, eventDate, eventLocation, eventImageUrl, unitPrice, quantity, ticketType, transportOption, transportPrice, accommodationOption, accommodationPrice);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarCartItem && other.isarId == this.isarId && other.ownerEmail == this.ownerEmail && other.eventId == this.eventId && other.eventName == this.eventName && other.eventDate == this.eventDate && other.eventLocation == this.eventLocation && other.eventImageUrl == this.eventImageUrl && other.unitPrice == this.unitPrice && other.quantity == this.quantity && other.ticketType == this.ticketType && other.transportOption == this.transportOption && other.transportPrice == this.transportPrice && other.accommodationOption == this.accommodationOption && other.accommodationPrice == this.accommodationPrice);
}class IsarCartItemsCompanion extends UpdateCompanion<IsarCartItem> {
final Value<int> isarId;
final Value<String> ownerEmail;
final Value<String> eventId;
final Value<String> eventName;
final Value<String> eventDate;
final Value<String> eventLocation;
final Value<String?> eventImageUrl;
final Value<double> unitPrice;
final Value<int> quantity;
final Value<String> ticketType;
final Value<String?> transportOption;
final Value<double?> transportPrice;
final Value<String?> accommodationOption;
final Value<double?> accommodationPrice;
const IsarCartItemsCompanion({this.isarId = const Value.absent(),this.ownerEmail = const Value.absent(),this.eventId = const Value.absent(),this.eventName = const Value.absent(),this.eventDate = const Value.absent(),this.eventLocation = const Value.absent(),this.eventImageUrl = const Value.absent(),this.unitPrice = const Value.absent(),this.quantity = const Value.absent(),this.ticketType = const Value.absent(),this.transportOption = const Value.absent(),this.transportPrice = const Value.absent(),this.accommodationOption = const Value.absent(),this.accommodationPrice = const Value.absent(),});
IsarCartItemsCompanion.insert({this.isarId = const Value.absent(),required String ownerEmail,required String eventId,required String eventName,required String eventDate,required String eventLocation,this.eventImageUrl = const Value.absent(),required double unitPrice,required int quantity,required String ticketType,this.transportOption = const Value.absent(),this.transportPrice = const Value.absent(),this.accommodationOption = const Value.absent(),this.accommodationPrice = const Value.absent(),}): ownerEmail = Value(ownerEmail), eventId = Value(eventId), eventName = Value(eventName), eventDate = Value(eventDate), eventLocation = Value(eventLocation), unitPrice = Value(unitPrice), quantity = Value(quantity), ticketType = Value(ticketType);
static Insertable<IsarCartItem> custom({Expression<int>? isarId, 
Expression<String>? ownerEmail, 
Expression<String>? eventId, 
Expression<String>? eventName, 
Expression<String>? eventDate, 
Expression<String>? eventLocation, 
Expression<String>? eventImageUrl, 
Expression<double>? unitPrice, 
Expression<int>? quantity, 
Expression<String>? ticketType, 
Expression<String>? transportOption, 
Expression<double>? transportPrice, 
Expression<String>? accommodationOption, 
Expression<double>? accommodationPrice, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (ownerEmail != null)'owner_email': ownerEmail,if (eventId != null)'event_id': eventId,if (eventName != null)'event_name': eventName,if (eventDate != null)'event_date': eventDate,if (eventLocation != null)'event_location': eventLocation,if (eventImageUrl != null)'event_image_url': eventImageUrl,if (unitPrice != null)'unit_price': unitPrice,if (quantity != null)'quantity': quantity,if (ticketType != null)'ticket_type': ticketType,if (transportOption != null)'transport_option': transportOption,if (transportPrice != null)'transport_price': transportPrice,if (accommodationOption != null)'accommodation_option': accommodationOption,if (accommodationPrice != null)'accommodation_price': accommodationPrice,});
}IsarCartItemsCompanion copyWith({Value<int>? isarId, Value<String>? ownerEmail, Value<String>? eventId, Value<String>? eventName, Value<String>? eventDate, Value<String>? eventLocation, Value<String?>? eventImageUrl, Value<double>? unitPrice, Value<int>? quantity, Value<String>? ticketType, Value<String?>? transportOption, Value<double?>? transportPrice, Value<String?>? accommodationOption, Value<double?>? accommodationPrice}) {
return IsarCartItemsCompanion(isarId: isarId ?? this.isarId,ownerEmail: ownerEmail ?? this.ownerEmail,eventId: eventId ?? this.eventId,eventName: eventName ?? this.eventName,eventDate: eventDate ?? this.eventDate,eventLocation: eventLocation ?? this.eventLocation,eventImageUrl: eventImageUrl ?? this.eventImageUrl,unitPrice: unitPrice ?? this.unitPrice,quantity: quantity ?? this.quantity,ticketType: ticketType ?? this.ticketType,transportOption: transportOption ?? this.transportOption,transportPrice: transportPrice ?? this.transportPrice,accommodationOption: accommodationOption ?? this.accommodationOption,accommodationPrice: accommodationPrice ?? this.accommodationPrice,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (ownerEmail.present) {
map['owner_email'] = Variable<String>(ownerEmail.value);}
if (eventId.present) {
map['event_id'] = Variable<String>(eventId.value);}
if (eventName.present) {
map['event_name'] = Variable<String>(eventName.value);}
if (eventDate.present) {
map['event_date'] = Variable<String>(eventDate.value);}
if (eventLocation.present) {
map['event_location'] = Variable<String>(eventLocation.value);}
if (eventImageUrl.present) {
map['event_image_url'] = Variable<String>(eventImageUrl.value);}
if (unitPrice.present) {
map['unit_price'] = Variable<double>(unitPrice.value);}
if (quantity.present) {
map['quantity'] = Variable<int>(quantity.value);}
if (ticketType.present) {
map['ticket_type'] = Variable<String>(ticketType.value);}
if (transportOption.present) {
map['transport_option'] = Variable<String>(transportOption.value);}
if (transportPrice.present) {
map['transport_price'] = Variable<double>(transportPrice.value);}
if (accommodationOption.present) {
map['accommodation_option'] = Variable<String>(accommodationOption.value);}
if (accommodationPrice.present) {
map['accommodation_price'] = Variable<double>(accommodationPrice.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarCartItemsCompanion(')..write('isarId: $isarId, ')..write('ownerEmail: $ownerEmail, ')..write('eventId: $eventId, ')..write('eventName: $eventName, ')..write('eventDate: $eventDate, ')..write('eventLocation: $eventLocation, ')..write('eventImageUrl: $eventImageUrl, ')..write('unitPrice: $unitPrice, ')..write('quantity: $quantity, ')..write('ticketType: $ticketType, ')..write('transportOption: $transportOption, ')..write('transportPrice: $transportPrice, ')..write('accommodationOption: $accommodationOption, ')..write('accommodationPrice: $accommodationPrice')..write(')')).toString();}
}
class $IsarUserProfilesTable extends IsarUserProfiles with TableInfo<$IsarUserProfilesTable, IsarUserProfile>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarUserProfilesTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _emailMeta = const VerificationMeta('email');
@override
late final GeneratedColumn<String> email = GeneratedColumn<String>('email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _nameMeta = const VerificationMeta('name');
@override
late final GeneratedColumn<String> name = GeneratedColumn<String>('name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _passwordHashMeta = const VerificationMeta('passwordHash');
@override
late final GeneratedColumn<String> passwordHash = GeneratedColumn<String>('password_hash', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant(''));
static const VerificationMeta _avatarUrlMeta = const VerificationMeta('avatarUrl');
@override
late final GeneratedColumn<String> avatarUrl = GeneratedColumn<String>('avatar_url', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
@override
late final GeneratedColumn<String> phone = GeneratedColumn<String>('phone', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _bioMeta = const VerificationMeta('bio');
@override
late final GeneratedColumn<String> bio = GeneratedColumn<String>('bio', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _memberSinceMeta = const VerificationMeta('memberSince');
@override
late final GeneratedColumn<int> memberSince = GeneratedColumn<int>('member_since', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
static const VerificationMeta _genresMeta = const VerificationMeta('genres');
@override
late final GeneratedColumnWithTypeConverter<List<String>, String> genres = GeneratedColumn<String>('genres', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('')).withConverter<List<String>>($IsarUserProfilesTable.$convertergenres);
static const VerificationMeta _budgetMaxMeta = const VerificationMeta('budgetMax');
@override
late final GeneratedColumn<double> budgetMax = GeneratedColumn<double>('budget_max', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: false, defaultValue: const Constant(300));
static const VerificationMeta _locationNameMeta = const VerificationMeta('locationName');
@override
late final GeneratedColumn<String> locationName = GeneratedColumn<String>('location_name', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant(''));
static const VerificationMeta _languageMeta = const VerificationMeta('language');
@override
late final GeneratedColumn<String> language = GeneratedColumn<String>('language', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('fr'));
static const VerificationMeta _darkModeMeta = const VerificationMeta('darkMode');
@override
late final GeneratedColumn<bool> darkMode = GeneratedColumn<bool>('dark_mode', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("dark_mode" IN (0, 1))'), defaultValue: const Constant(false));
static const VerificationMeta _notificationsEnabledMeta = const VerificationMeta('notificationsEnabled');
@override
late final GeneratedColumn<bool> notificationsEnabled = GeneratedColumn<bool>('notifications_enabled', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("notifications_enabled" IN (0, 1))'), defaultValue: const Constant(true));
static const VerificationMeta _emailNotificationsEnabledMeta = const VerificationMeta('emailNotificationsEnabled');
@override
late final GeneratedColumn<bool> emailNotificationsEnabled = GeneratedColumn<bool>('email_notifications_enabled', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("email_notifications_enabled" IN (0, 1))'), defaultValue: const Constant(true));
static const VerificationMeta _socialNotificationsEnabledMeta = const VerificationMeta('socialNotificationsEnabled');
@override
late final GeneratedColumn<bool> socialNotificationsEnabled = GeneratedColumn<bool>('social_notifications_enabled', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("social_notifications_enabled" IN (0, 1))'), defaultValue: const Constant(false));
static const VerificationMeta _ecoModeMeta = const VerificationMeta('ecoMode');
@override
late final GeneratedColumn<bool> ecoMode = GeneratedColumn<bool>('eco_mode', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("eco_mode" IN (0, 1))'), defaultValue: const Constant(true));
static const VerificationMeta _showCarbonFootprintMeta = const VerificationMeta('showCarbonFootprint');
@override
late final GeneratedColumn<bool> showCarbonFootprint = GeneratedColumn<bool>('show_carbon_footprint', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("show_carbon_footprint" IN (0, 1))'), defaultValue: const Constant(true));
static const VerificationMeta _isOnboardedMeta = const VerificationMeta('isOnboarded');
@override
late final GeneratedColumn<bool> isOnboarded = GeneratedColumn<bool>('is_onboarded', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_onboarded" IN (0, 1))'), defaultValue: const Constant(false));
static const VerificationMeta _eventsBookedMeta = const VerificationMeta('eventsBooked');
@override
late final GeneratedColumn<int> eventsBooked = GeneratedColumn<int>('events_booked', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _co2SavedKgMeta = const VerificationMeta('co2SavedKg');
@override
late final GeneratedColumn<double> co2SavedKg = GeneratedColumn<double>('co2_saved_kg', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _moneySavedEurMeta = const VerificationMeta('moneySavedEur');
@override
late final GeneratedColumn<double> moneySavedEur = GeneratedColumn<double>('money_saved_eur', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _percentileMeta = const VerificationMeta('percentile');
@override
late final GeneratedColumn<int> percentile = GeneratedColumn<int>('percentile', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(50));
static const VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
@override
late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>('created_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _lastLoginAtMeta = const VerificationMeta('lastLoginAt');
@override
late final GeneratedColumn<DateTime> lastLoginAt = GeneratedColumn<DateTime>('last_login_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _roleMeta = const VerificationMeta('role');
@override
late final GeneratedColumn<String> role = GeneratedColumn<String>('role', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('user'));
static const VerificationMeta _isSuspendedMeta = const VerificationMeta('isSuspended');
@override
late final GeneratedColumn<bool> isSuspended = GeneratedColumn<bool>('is_suspended', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_suspended" IN (0, 1))'), defaultValue: const Constant(false));
static const VerificationMeta _suspendedReasonMeta = const VerificationMeta('suspendedReason');
@override
late final GeneratedColumn<String> suspendedReason = GeneratedColumn<String>('suspended_reason', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _suspendedAtMeta = const VerificationMeta('suspendedAt');
@override
late final GeneratedColumn<DateTime> suspendedAt = GeneratedColumn<DateTime>('suspended_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, email, name, passwordHash, avatarUrl, phone, bio, memberSince, genres, budgetMax, locationName, language, darkMode, notificationsEnabled, emailNotificationsEnabled, socialNotificationsEnabled, ecoMode, showCarbonFootprint, isOnboarded, eventsBooked, co2SavedKg, moneySavedEur, percentile, createdAt, lastLoginAt, role, isSuspended, suspendedReason, suspendedAt];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_user_profiles';
@override
VerificationContext validateIntegrity(Insertable<IsarUserProfile> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('email')) {
context.handle(_emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));} else if (isInserting) {
context.missing(_emailMeta);
}
if (data.containsKey('name')) {
context.handle(_nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));} else if (isInserting) {
context.missing(_nameMeta);
}
if (data.containsKey('password_hash')) {
context.handle(_passwordHashMeta, passwordHash.isAcceptableOrUnknown(data['password_hash']!, _passwordHashMeta));}if (data.containsKey('avatar_url')) {
context.handle(_avatarUrlMeta, avatarUrl.isAcceptableOrUnknown(data['avatar_url']!, _avatarUrlMeta));}if (data.containsKey('phone')) {
context.handle(_phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));}if (data.containsKey('bio')) {
context.handle(_bioMeta, bio.isAcceptableOrUnknown(data['bio']!, _bioMeta));}if (data.containsKey('member_since')) {
context.handle(_memberSinceMeta, memberSince.isAcceptableOrUnknown(data['member_since']!, _memberSinceMeta));} else if (isInserting) {
context.missing(_memberSinceMeta);
}
context.handle(_genresMeta, const VerificationResult.success());if (data.containsKey('budget_max')) {
context.handle(_budgetMaxMeta, budgetMax.isAcceptableOrUnknown(data['budget_max']!, _budgetMaxMeta));}if (data.containsKey('location_name')) {
context.handle(_locationNameMeta, locationName.isAcceptableOrUnknown(data['location_name']!, _locationNameMeta));}if (data.containsKey('language')) {
context.handle(_languageMeta, language.isAcceptableOrUnknown(data['language']!, _languageMeta));}if (data.containsKey('dark_mode')) {
context.handle(_darkModeMeta, darkMode.isAcceptableOrUnknown(data['dark_mode']!, _darkModeMeta));}if (data.containsKey('notifications_enabled')) {
context.handle(_notificationsEnabledMeta, notificationsEnabled.isAcceptableOrUnknown(data['notifications_enabled']!, _notificationsEnabledMeta));}if (data.containsKey('email_notifications_enabled')) {
context.handle(_emailNotificationsEnabledMeta, emailNotificationsEnabled.isAcceptableOrUnknown(data['email_notifications_enabled']!, _emailNotificationsEnabledMeta));}if (data.containsKey('social_notifications_enabled')) {
context.handle(_socialNotificationsEnabledMeta, socialNotificationsEnabled.isAcceptableOrUnknown(data['social_notifications_enabled']!, _socialNotificationsEnabledMeta));}if (data.containsKey('eco_mode')) {
context.handle(_ecoModeMeta, ecoMode.isAcceptableOrUnknown(data['eco_mode']!, _ecoModeMeta));}if (data.containsKey('show_carbon_footprint')) {
context.handle(_showCarbonFootprintMeta, showCarbonFootprint.isAcceptableOrUnknown(data['show_carbon_footprint']!, _showCarbonFootprintMeta));}if (data.containsKey('is_onboarded')) {
context.handle(_isOnboardedMeta, isOnboarded.isAcceptableOrUnknown(data['is_onboarded']!, _isOnboardedMeta));}if (data.containsKey('events_booked')) {
context.handle(_eventsBookedMeta, eventsBooked.isAcceptableOrUnknown(data['events_booked']!, _eventsBookedMeta));}if (data.containsKey('co2_saved_kg')) {
context.handle(_co2SavedKgMeta, co2SavedKg.isAcceptableOrUnknown(data['co2_saved_kg']!, _co2SavedKgMeta));}if (data.containsKey('money_saved_eur')) {
context.handle(_moneySavedEurMeta, moneySavedEur.isAcceptableOrUnknown(data['money_saved_eur']!, _moneySavedEurMeta));}if (data.containsKey('percentile')) {
context.handle(_percentileMeta, percentile.isAcceptableOrUnknown(data['percentile']!, _percentileMeta));}if (data.containsKey('created_at')) {
context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));} else if (isInserting) {
context.missing(_createdAtMeta);
}
if (data.containsKey('last_login_at')) {
context.handle(_lastLoginAtMeta, lastLoginAt.isAcceptableOrUnknown(data['last_login_at']!, _lastLoginAtMeta));}if (data.containsKey('role')) {
context.handle(_roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));}if (data.containsKey('is_suspended')) {
context.handle(_isSuspendedMeta, isSuspended.isAcceptableOrUnknown(data['is_suspended']!, _isSuspendedMeta));}if (data.containsKey('suspended_reason')) {
context.handle(_suspendedReasonMeta, suspendedReason.isAcceptableOrUnknown(data['suspended_reason']!, _suspendedReasonMeta));}if (data.containsKey('suspended_at')) {
context.handle(_suspendedAtMeta, suspendedAt.isAcceptableOrUnknown(data['suspended_at']!, _suspendedAtMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarUserProfile map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarUserProfile(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, email: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}email'])!, name: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}name'])!, passwordHash: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}password_hash'])!, avatarUrl: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}avatar_url']), phone: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}phone']), bio: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}bio']), memberSince: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}member_since'])!, genres: $IsarUserProfilesTable.$convertergenres.fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}genres'])!), budgetMax: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}budget_max'])!, locationName: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}location_name'])!, language: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}language'])!, darkMode: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}dark_mode'])!, notificationsEnabled: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}notifications_enabled'])!, emailNotificationsEnabled: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}email_notifications_enabled'])!, socialNotificationsEnabled: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}social_notifications_enabled'])!, ecoMode: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}eco_mode'])!, showCarbonFootprint: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}show_carbon_footprint'])!, isOnboarded: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_onboarded'])!, eventsBooked: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}events_booked'])!, co2SavedKg: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}co2_saved_kg'])!, moneySavedEur: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}money_saved_eur'])!, percentile: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}percentile'])!, createdAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!, lastLoginAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}last_login_at']), role: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}role'])!, isSuspended: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_suspended'])!, suspendedReason: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}suspended_reason']), suspendedAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}suspended_at']), );
}
@override
$IsarUserProfilesTable createAlias(String alias) {
return $IsarUserProfilesTable(attachedDatabase, alias);}static TypeConverter<List<String>,String> $convertergenres = _stringList;}class IsarUserProfile extends DataClass implements Insertable<IsarUserProfile> 
{
final int isarId;
final String email;
final String name;
final String passwordHash;
final String? avatarUrl;
final String? phone;
final String? bio;
final int memberSince;
final List<String> genres;
final double budgetMax;
final String locationName;
final String language;
final bool darkMode;
final bool notificationsEnabled;
final bool emailNotificationsEnabled;
final bool socialNotificationsEnabled;
final bool ecoMode;
final bool showCarbonFootprint;
final bool isOnboarded;
final int eventsBooked;
final double co2SavedKg;
final double moneySavedEur;
final int percentile;
final DateTime createdAt;
final DateTime? lastLoginAt;
final String role;
final bool isSuspended;
final String? suspendedReason;
final DateTime? suspendedAt;
const IsarUserProfile({required this.isarId, required this.email, required this.name, required this.passwordHash, this.avatarUrl, this.phone, this.bio, required this.memberSince, required this.genres, required this.budgetMax, required this.locationName, required this.language, required this.darkMode, required this.notificationsEnabled, required this.emailNotificationsEnabled, required this.socialNotificationsEnabled, required this.ecoMode, required this.showCarbonFootprint, required this.isOnboarded, required this.eventsBooked, required this.co2SavedKg, required this.moneySavedEur, required this.percentile, required this.createdAt, this.lastLoginAt, required this.role, required this.isSuspended, this.suspendedReason, this.suspendedAt});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['email'] = Variable<String>(email);
map['name'] = Variable<String>(name);
map['password_hash'] = Variable<String>(passwordHash);
if (!nullToAbsent || avatarUrl != null){map['avatar_url'] = Variable<String>(avatarUrl);
}if (!nullToAbsent || phone != null){map['phone'] = Variable<String>(phone);
}if (!nullToAbsent || bio != null){map['bio'] = Variable<String>(bio);
}map['member_since'] = Variable<int>(memberSince);
{map['genres'] = Variable<String>($IsarUserProfilesTable.$convertergenres.toSql(genres));
}map['budget_max'] = Variable<double>(budgetMax);
map['location_name'] = Variable<String>(locationName);
map['language'] = Variable<String>(language);
map['dark_mode'] = Variable<bool>(darkMode);
map['notifications_enabled'] = Variable<bool>(notificationsEnabled);
map['email_notifications_enabled'] = Variable<bool>(emailNotificationsEnabled);
map['social_notifications_enabled'] = Variable<bool>(socialNotificationsEnabled);
map['eco_mode'] = Variable<bool>(ecoMode);
map['show_carbon_footprint'] = Variable<bool>(showCarbonFootprint);
map['is_onboarded'] = Variable<bool>(isOnboarded);
map['events_booked'] = Variable<int>(eventsBooked);
map['co2_saved_kg'] = Variable<double>(co2SavedKg);
map['money_saved_eur'] = Variable<double>(moneySavedEur);
map['percentile'] = Variable<int>(percentile);
map['created_at'] = Variable<DateTime>(createdAt);
if (!nullToAbsent || lastLoginAt != null){map['last_login_at'] = Variable<DateTime>(lastLoginAt);
}map['role'] = Variable<String>(role);
map['is_suspended'] = Variable<bool>(isSuspended);
if (!nullToAbsent || suspendedReason != null){map['suspended_reason'] = Variable<String>(suspendedReason);
}if (!nullToAbsent || suspendedAt != null){map['suspended_at'] = Variable<DateTime>(suspendedAt);
}return map; 
}
IsarUserProfilesCompanion toCompanion(bool nullToAbsent) {
return IsarUserProfilesCompanion(isarId: Value(isarId),email: Value(email),name: Value(name),passwordHash: Value(passwordHash),avatarUrl: avatarUrl == null && nullToAbsent ? const Value.absent() : Value(avatarUrl),phone: phone == null && nullToAbsent ? const Value.absent() : Value(phone),bio: bio == null && nullToAbsent ? const Value.absent() : Value(bio),memberSince: Value(memberSince),genres: Value(genres),budgetMax: Value(budgetMax),locationName: Value(locationName),language: Value(language),darkMode: Value(darkMode),notificationsEnabled: Value(notificationsEnabled),emailNotificationsEnabled: Value(emailNotificationsEnabled),socialNotificationsEnabled: Value(socialNotificationsEnabled),ecoMode: Value(ecoMode),showCarbonFootprint: Value(showCarbonFootprint),isOnboarded: Value(isOnboarded),eventsBooked: Value(eventsBooked),co2SavedKg: Value(co2SavedKg),moneySavedEur: Value(moneySavedEur),percentile: Value(percentile),createdAt: Value(createdAt),lastLoginAt: lastLoginAt == null && nullToAbsent ? const Value.absent() : Value(lastLoginAt),role: Value(role),isSuspended: Value(isSuspended),suspendedReason: suspendedReason == null && nullToAbsent ? const Value.absent() : Value(suspendedReason),suspendedAt: suspendedAt == null && nullToAbsent ? const Value.absent() : Value(suspendedAt),);
}
factory IsarUserProfile.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarUserProfile(isarId: serializer.fromJson<int>(json['isarId']),email: serializer.fromJson<String>(json['email']),name: serializer.fromJson<String>(json['name']),passwordHash: serializer.fromJson<String>(json['passwordHash']),avatarUrl: serializer.fromJson<String?>(json['avatarUrl']),phone: serializer.fromJson<String?>(json['phone']),bio: serializer.fromJson<String?>(json['bio']),memberSince: serializer.fromJson<int>(json['memberSince']),genres: serializer.fromJson<List<String>>(json['genres']),budgetMax: serializer.fromJson<double>(json['budgetMax']),locationName: serializer.fromJson<String>(json['locationName']),language: serializer.fromJson<String>(json['language']),darkMode: serializer.fromJson<bool>(json['darkMode']),notificationsEnabled: serializer.fromJson<bool>(json['notificationsEnabled']),emailNotificationsEnabled: serializer.fromJson<bool>(json['emailNotificationsEnabled']),socialNotificationsEnabled: serializer.fromJson<bool>(json['socialNotificationsEnabled']),ecoMode: serializer.fromJson<bool>(json['ecoMode']),showCarbonFootprint: serializer.fromJson<bool>(json['showCarbonFootprint']),isOnboarded: serializer.fromJson<bool>(json['isOnboarded']),eventsBooked: serializer.fromJson<int>(json['eventsBooked']),co2SavedKg: serializer.fromJson<double>(json['co2SavedKg']),moneySavedEur: serializer.fromJson<double>(json['moneySavedEur']),percentile: serializer.fromJson<int>(json['percentile']),createdAt: serializer.fromJson<DateTime>(json['createdAt']),lastLoginAt: serializer.fromJson<DateTime?>(json['lastLoginAt']),role: serializer.fromJson<String>(json['role']),isSuspended: serializer.fromJson<bool>(json['isSuspended']),suspendedReason: serializer.fromJson<String?>(json['suspendedReason']),suspendedAt: serializer.fromJson<DateTime?>(json['suspendedAt']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'email': serializer.toJson<String>(email),'name': serializer.toJson<String>(name),'passwordHash': serializer.toJson<String>(passwordHash),'avatarUrl': serializer.toJson<String?>(avatarUrl),'phone': serializer.toJson<String?>(phone),'bio': serializer.toJson<String?>(bio),'memberSince': serializer.toJson<int>(memberSince),'genres': serializer.toJson<List<String>>(genres),'budgetMax': serializer.toJson<double>(budgetMax),'locationName': serializer.toJson<String>(locationName),'language': serializer.toJson<String>(language),'darkMode': serializer.toJson<bool>(darkMode),'notificationsEnabled': serializer.toJson<bool>(notificationsEnabled),'emailNotificationsEnabled': serializer.toJson<bool>(emailNotificationsEnabled),'socialNotificationsEnabled': serializer.toJson<bool>(socialNotificationsEnabled),'ecoMode': serializer.toJson<bool>(ecoMode),'showCarbonFootprint': serializer.toJson<bool>(showCarbonFootprint),'isOnboarded': serializer.toJson<bool>(isOnboarded),'eventsBooked': serializer.toJson<int>(eventsBooked),'co2SavedKg': serializer.toJson<double>(co2SavedKg),'moneySavedEur': serializer.toJson<double>(moneySavedEur),'percentile': serializer.toJson<int>(percentile),'createdAt': serializer.toJson<DateTime>(createdAt),'lastLoginAt': serializer.toJson<DateTime?>(lastLoginAt),'role': serializer.toJson<String>(role),'isSuspended': serializer.toJson<bool>(isSuspended),'suspendedReason': serializer.toJson<String?>(suspendedReason),'suspendedAt': serializer.toJson<DateTime?>(suspendedAt),};}IsarUserProfile copyWith({int? isarId,String? email,String? name,String? passwordHash,Value<String?> avatarUrl = const Value.absent(),Value<String?> phone = const Value.absent(),Value<String?> bio = const Value.absent(),int? memberSince,List<String>? genres,double? budgetMax,String? locationName,String? language,bool? darkMode,bool? notificationsEnabled,bool? emailNotificationsEnabled,bool? socialNotificationsEnabled,bool? ecoMode,bool? showCarbonFootprint,bool? isOnboarded,int? eventsBooked,double? co2SavedKg,double? moneySavedEur,int? percentile,DateTime? createdAt,Value<DateTime?> lastLoginAt = const Value.absent(),String? role,bool? isSuspended,Value<String?> suspendedReason = const Value.absent(),Value<DateTime?> suspendedAt = const Value.absent()}) => IsarUserProfile(isarId: isarId ?? this.isarId,email: email ?? this.email,name: name ?? this.name,passwordHash: passwordHash ?? this.passwordHash,avatarUrl: avatarUrl.present ? avatarUrl.value : this.avatarUrl,phone: phone.present ? phone.value : this.phone,bio: bio.present ? bio.value : this.bio,memberSince: memberSince ?? this.memberSince,genres: genres ?? this.genres,budgetMax: budgetMax ?? this.budgetMax,locationName: locationName ?? this.locationName,language: language ?? this.language,darkMode: darkMode ?? this.darkMode,notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,emailNotificationsEnabled: emailNotificationsEnabled ?? this.emailNotificationsEnabled,socialNotificationsEnabled: socialNotificationsEnabled ?? this.socialNotificationsEnabled,ecoMode: ecoMode ?? this.ecoMode,showCarbonFootprint: showCarbonFootprint ?? this.showCarbonFootprint,isOnboarded: isOnboarded ?? this.isOnboarded,eventsBooked: eventsBooked ?? this.eventsBooked,co2SavedKg: co2SavedKg ?? this.co2SavedKg,moneySavedEur: moneySavedEur ?? this.moneySavedEur,percentile: percentile ?? this.percentile,createdAt: createdAt ?? this.createdAt,lastLoginAt: lastLoginAt.present ? lastLoginAt.value : this.lastLoginAt,role: role ?? this.role,isSuspended: isSuspended ?? this.isSuspended,suspendedReason: suspendedReason.present ? suspendedReason.value : this.suspendedReason,suspendedAt: suspendedAt.present ? suspendedAt.value : this.suspendedAt,);IsarUserProfile copyWithCompanion(IsarUserProfilesCompanion data) {
return IsarUserProfile(
isarId: data.isarId.present ? data.isarId.value : this.isarId,email: data.email.present ? data.email.value : this.email,name: data.name.present ? data.name.value : this.name,passwordHash: data.passwordHash.present ? data.passwordHash.value : this.passwordHash,avatarUrl: data.avatarUrl.present ? data.avatarUrl.value : this.avatarUrl,phone: data.phone.present ? data.phone.value : this.phone,bio: data.bio.present ? data.bio.value : this.bio,memberSince: data.memberSince.present ? data.memberSince.value : this.memberSince,genres: data.genres.present ? data.genres.value : this.genres,budgetMax: data.budgetMax.present ? data.budgetMax.value : this.budgetMax,locationName: data.locationName.present ? data.locationName.value : this.locationName,language: data.language.present ? data.language.value : this.language,darkMode: data.darkMode.present ? data.darkMode.value : this.darkMode,notificationsEnabled: data.notificationsEnabled.present ? data.notificationsEnabled.value : this.notificationsEnabled,emailNotificationsEnabled: data.emailNotificationsEnabled.present ? data.emailNotificationsEnabled.value : this.emailNotificationsEnabled,socialNotificationsEnabled: data.socialNotificationsEnabled.present ? data.socialNotificationsEnabled.value : this.socialNotificationsEnabled,ecoMode: data.ecoMode.present ? data.ecoMode.value : this.ecoMode,showCarbonFootprint: data.showCarbonFootprint.present ? data.showCarbonFootprint.value : this.showCarbonFootprint,isOnboarded: data.isOnboarded.present ? data.isOnboarded.value : this.isOnboarded,eventsBooked: data.eventsBooked.present ? data.eventsBooked.value : this.eventsBooked,co2SavedKg: data.co2SavedKg.present ? data.co2SavedKg.value : this.co2SavedKg,moneySavedEur: data.moneySavedEur.present ? data.moneySavedEur.value : this.moneySavedEur,percentile: data.percentile.present ? data.percentile.value : this.percentile,createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,lastLoginAt: data.lastLoginAt.present ? data.lastLoginAt.value : this.lastLoginAt,role: data.role.present ? data.role.value : this.role,isSuspended: data.isSuspended.present ? data.isSuspended.value : this.isSuspended,suspendedReason: data.suspendedReason.present ? data.suspendedReason.value : this.suspendedReason,suspendedAt: data.suspendedAt.present ? data.suspendedAt.value : this.suspendedAt,);
}
@override
String toString() {return (StringBuffer('IsarUserProfile(')..write('isarId: $isarId, ')..write('email: $email, ')..write('name: $name, ')..write('passwordHash: $passwordHash, ')..write('avatarUrl: $avatarUrl, ')..write('phone: $phone, ')..write('bio: $bio, ')..write('memberSince: $memberSince, ')..write('genres: $genres, ')..write('budgetMax: $budgetMax, ')..write('locationName: $locationName, ')..write('language: $language, ')..write('darkMode: $darkMode, ')..write('notificationsEnabled: $notificationsEnabled, ')..write('emailNotificationsEnabled: $emailNotificationsEnabled, ')..write('socialNotificationsEnabled: $socialNotificationsEnabled, ')..write('ecoMode: $ecoMode, ')..write('showCarbonFootprint: $showCarbonFootprint, ')..write('isOnboarded: $isOnboarded, ')..write('eventsBooked: $eventsBooked, ')..write('co2SavedKg: $co2SavedKg, ')..write('moneySavedEur: $moneySavedEur, ')..write('percentile: $percentile, ')..write('createdAt: $createdAt, ')..write('lastLoginAt: $lastLoginAt, ')..write('role: $role, ')..write('isSuspended: $isSuspended, ')..write('suspendedReason: $suspendedReason, ')..write('suspendedAt: $suspendedAt')..write(')')).toString();}
@override
 int get hashCode => Object.hashAll([isarId, email, name, passwordHash, avatarUrl, phone, bio, memberSince, genres, budgetMax, locationName, language, darkMode, notificationsEnabled, emailNotificationsEnabled, socialNotificationsEnabled, ecoMode, showCarbonFootprint, isOnboarded, eventsBooked, co2SavedKg, moneySavedEur, percentile, createdAt, lastLoginAt, role, isSuspended, suspendedReason, suspendedAt]);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarUserProfile && other.isarId == this.isarId && other.email == this.email && other.name == this.name && other.passwordHash == this.passwordHash && other.avatarUrl == this.avatarUrl && other.phone == this.phone && other.bio == this.bio && other.memberSince == this.memberSince && other.genres == this.genres && other.budgetMax == this.budgetMax && other.locationName == this.locationName && other.language == this.language && other.darkMode == this.darkMode && other.notificationsEnabled == this.notificationsEnabled && other.emailNotificationsEnabled == this.emailNotificationsEnabled && other.socialNotificationsEnabled == this.socialNotificationsEnabled && other.ecoMode == this.ecoMode && other.showCarbonFootprint == this.showCarbonFootprint && other.isOnboarded == this.isOnboarded && other.eventsBooked == this.eventsBooked && other.co2SavedKg == this.co2SavedKg && other.moneySavedEur == this.moneySavedEur && other.percentile == this.percentile && other.createdAt == this.createdAt && other.lastLoginAt == this.lastLoginAt && other.role == this.role && other.isSuspended == this.isSuspended && other.suspendedReason == this.suspendedReason && other.suspendedAt == this.suspendedAt);
}class IsarUserProfilesCompanion extends UpdateCompanion<IsarUserProfile> {
final Value<int> isarId;
final Value<String> email;
final Value<String> name;
final Value<String> passwordHash;
final Value<String?> avatarUrl;
final Value<String?> phone;
final Value<String?> bio;
final Value<int> memberSince;
final Value<List<String>> genres;
final Value<double> budgetMax;
final Value<String> locationName;
final Value<String> language;
final Value<bool> darkMode;
final Value<bool> notificationsEnabled;
final Value<bool> emailNotificationsEnabled;
final Value<bool> socialNotificationsEnabled;
final Value<bool> ecoMode;
final Value<bool> showCarbonFootprint;
final Value<bool> isOnboarded;
final Value<int> eventsBooked;
final Value<double> co2SavedKg;
final Value<double> moneySavedEur;
final Value<int> percentile;
final Value<DateTime> createdAt;
final Value<DateTime?> lastLoginAt;
final Value<String> role;
final Value<bool> isSuspended;
final Value<String?> suspendedReason;
final Value<DateTime?> suspendedAt;
const IsarUserProfilesCompanion({this.isarId = const Value.absent(),this.email = const Value.absent(),this.name = const Value.absent(),this.passwordHash = const Value.absent(),this.avatarUrl = const Value.absent(),this.phone = const Value.absent(),this.bio = const Value.absent(),this.memberSince = const Value.absent(),this.genres = const Value.absent(),this.budgetMax = const Value.absent(),this.locationName = const Value.absent(),this.language = const Value.absent(),this.darkMode = const Value.absent(),this.notificationsEnabled = const Value.absent(),this.emailNotificationsEnabled = const Value.absent(),this.socialNotificationsEnabled = const Value.absent(),this.ecoMode = const Value.absent(),this.showCarbonFootprint = const Value.absent(),this.isOnboarded = const Value.absent(),this.eventsBooked = const Value.absent(),this.co2SavedKg = const Value.absent(),this.moneySavedEur = const Value.absent(),this.percentile = const Value.absent(),this.createdAt = const Value.absent(),this.lastLoginAt = const Value.absent(),this.role = const Value.absent(),this.isSuspended = const Value.absent(),this.suspendedReason = const Value.absent(),this.suspendedAt = const Value.absent(),});
IsarUserProfilesCompanion.insert({this.isarId = const Value.absent(),required String email,required String name,this.passwordHash = const Value.absent(),this.avatarUrl = const Value.absent(),this.phone = const Value.absent(),this.bio = const Value.absent(),required int memberSince,this.genres = const Value.absent(),this.budgetMax = const Value.absent(),this.locationName = const Value.absent(),this.language = const Value.absent(),this.darkMode = const Value.absent(),this.notificationsEnabled = const Value.absent(),this.emailNotificationsEnabled = const Value.absent(),this.socialNotificationsEnabled = const Value.absent(),this.ecoMode = const Value.absent(),this.showCarbonFootprint = const Value.absent(),this.isOnboarded = const Value.absent(),this.eventsBooked = const Value.absent(),this.co2SavedKg = const Value.absent(),this.moneySavedEur = const Value.absent(),this.percentile = const Value.absent(),required DateTime createdAt,this.lastLoginAt = const Value.absent(),this.role = const Value.absent(),this.isSuspended = const Value.absent(),this.suspendedReason = const Value.absent(),this.suspendedAt = const Value.absent(),}): email = Value(email), name = Value(name), memberSince = Value(memberSince), createdAt = Value(createdAt);
static Insertable<IsarUserProfile> custom({Expression<int>? isarId, 
Expression<String>? email, 
Expression<String>? name, 
Expression<String>? passwordHash, 
Expression<String>? avatarUrl, 
Expression<String>? phone, 
Expression<String>? bio, 
Expression<int>? memberSince, 
Expression<String>? genres, 
Expression<double>? budgetMax, 
Expression<String>? locationName, 
Expression<String>? language, 
Expression<bool>? darkMode, 
Expression<bool>? notificationsEnabled, 
Expression<bool>? emailNotificationsEnabled, 
Expression<bool>? socialNotificationsEnabled, 
Expression<bool>? ecoMode, 
Expression<bool>? showCarbonFootprint, 
Expression<bool>? isOnboarded, 
Expression<int>? eventsBooked, 
Expression<double>? co2SavedKg, 
Expression<double>? moneySavedEur, 
Expression<int>? percentile, 
Expression<DateTime>? createdAt, 
Expression<DateTime>? lastLoginAt, 
Expression<String>? role, 
Expression<bool>? isSuspended, 
Expression<String>? suspendedReason, 
Expression<DateTime>? suspendedAt, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (email != null)'email': email,if (name != null)'name': name,if (passwordHash != null)'password_hash': passwordHash,if (avatarUrl != null)'avatar_url': avatarUrl,if (phone != null)'phone': phone,if (bio != null)'bio': bio,if (memberSince != null)'member_since': memberSince,if (genres != null)'genres': genres,if (budgetMax != null)'budget_max': budgetMax,if (locationName != null)'location_name': locationName,if (language != null)'language': language,if (darkMode != null)'dark_mode': darkMode,if (notificationsEnabled != null)'notifications_enabled': notificationsEnabled,if (emailNotificationsEnabled != null)'email_notifications_enabled': emailNotificationsEnabled,if (socialNotificationsEnabled != null)'social_notifications_enabled': socialNotificationsEnabled,if (ecoMode != null)'eco_mode': ecoMode,if (showCarbonFootprint != null)'show_carbon_footprint': showCarbonFootprint,if (isOnboarded != null)'is_onboarded': isOnboarded,if (eventsBooked != null)'events_booked': eventsBooked,if (co2SavedKg != null)'co2_saved_kg': co2SavedKg,if (moneySavedEur != null)'money_saved_eur': moneySavedEur,if (percentile != null)'percentile': percentile,if (createdAt != null)'created_at': createdAt,if (lastLoginAt != null)'last_login_at': lastLoginAt,if (role != null)'role': role,if (isSuspended != null)'is_suspended': isSuspended,if (suspendedReason != null)'suspended_reason': suspendedReason,if (suspendedAt != null)'suspended_at': suspendedAt,});
}IsarUserProfilesCompanion copyWith({Value<int>? isarId, Value<String>? email, Value<String>? name, Value<String>? passwordHash, Value<String?>? avatarUrl, Value<String?>? phone, Value<String?>? bio, Value<int>? memberSince, Value<List<String>>? genres, Value<double>? budgetMax, Value<String>? locationName, Value<String>? language, Value<bool>? darkMode, Value<bool>? notificationsEnabled, Value<bool>? emailNotificationsEnabled, Value<bool>? socialNotificationsEnabled, Value<bool>? ecoMode, Value<bool>? showCarbonFootprint, Value<bool>? isOnboarded, Value<int>? eventsBooked, Value<double>? co2SavedKg, Value<double>? moneySavedEur, Value<int>? percentile, Value<DateTime>? createdAt, Value<DateTime?>? lastLoginAt, Value<String>? role, Value<bool>? isSuspended, Value<String?>? suspendedReason, Value<DateTime?>? suspendedAt}) {
return IsarUserProfilesCompanion(isarId: isarId ?? this.isarId,email: email ?? this.email,name: name ?? this.name,passwordHash: passwordHash ?? this.passwordHash,avatarUrl: avatarUrl ?? this.avatarUrl,phone: phone ?? this.phone,bio: bio ?? this.bio,memberSince: memberSince ?? this.memberSince,genres: genres ?? this.genres,budgetMax: budgetMax ?? this.budgetMax,locationName: locationName ?? this.locationName,language: language ?? this.language,darkMode: darkMode ?? this.darkMode,notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,emailNotificationsEnabled: emailNotificationsEnabled ?? this.emailNotificationsEnabled,socialNotificationsEnabled: socialNotificationsEnabled ?? this.socialNotificationsEnabled,ecoMode: ecoMode ?? this.ecoMode,showCarbonFootprint: showCarbonFootprint ?? this.showCarbonFootprint,isOnboarded: isOnboarded ?? this.isOnboarded,eventsBooked: eventsBooked ?? this.eventsBooked,co2SavedKg: co2SavedKg ?? this.co2SavedKg,moneySavedEur: moneySavedEur ?? this.moneySavedEur,percentile: percentile ?? this.percentile,createdAt: createdAt ?? this.createdAt,lastLoginAt: lastLoginAt ?? this.lastLoginAt,role: role ?? this.role,isSuspended: isSuspended ?? this.isSuspended,suspendedReason: suspendedReason ?? this.suspendedReason,suspendedAt: suspendedAt ?? this.suspendedAt,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (email.present) {
map['email'] = Variable<String>(email.value);}
if (name.present) {
map['name'] = Variable<String>(name.value);}
if (passwordHash.present) {
map['password_hash'] = Variable<String>(passwordHash.value);}
if (avatarUrl.present) {
map['avatar_url'] = Variable<String>(avatarUrl.value);}
if (phone.present) {
map['phone'] = Variable<String>(phone.value);}
if (bio.present) {
map['bio'] = Variable<String>(bio.value);}
if (memberSince.present) {
map['member_since'] = Variable<int>(memberSince.value);}
if (genres.present) {
map['genres'] = Variable<String>($IsarUserProfilesTable.$convertergenres.toSql(genres.value));}
if (budgetMax.present) {
map['budget_max'] = Variable<double>(budgetMax.value);}
if (locationName.present) {
map['location_name'] = Variable<String>(locationName.value);}
if (language.present) {
map['language'] = Variable<String>(language.value);}
if (darkMode.present) {
map['dark_mode'] = Variable<bool>(darkMode.value);}
if (notificationsEnabled.present) {
map['notifications_enabled'] = Variable<bool>(notificationsEnabled.value);}
if (emailNotificationsEnabled.present) {
map['email_notifications_enabled'] = Variable<bool>(emailNotificationsEnabled.value);}
if (socialNotificationsEnabled.present) {
map['social_notifications_enabled'] = Variable<bool>(socialNotificationsEnabled.value);}
if (ecoMode.present) {
map['eco_mode'] = Variable<bool>(ecoMode.value);}
if (showCarbonFootprint.present) {
map['show_carbon_footprint'] = Variable<bool>(showCarbonFootprint.value);}
if (isOnboarded.present) {
map['is_onboarded'] = Variable<bool>(isOnboarded.value);}
if (eventsBooked.present) {
map['events_booked'] = Variable<int>(eventsBooked.value);}
if (co2SavedKg.present) {
map['co2_saved_kg'] = Variable<double>(co2SavedKg.value);}
if (moneySavedEur.present) {
map['money_saved_eur'] = Variable<double>(moneySavedEur.value);}
if (percentile.present) {
map['percentile'] = Variable<int>(percentile.value);}
if (createdAt.present) {
map['created_at'] = Variable<DateTime>(createdAt.value);}
if (lastLoginAt.present) {
map['last_login_at'] = Variable<DateTime>(lastLoginAt.value);}
if (role.present) {
map['role'] = Variable<String>(role.value);}
if (isSuspended.present) {
map['is_suspended'] = Variable<bool>(isSuspended.value);}
if (suspendedReason.present) {
map['suspended_reason'] = Variable<String>(suspendedReason.value);}
if (suspendedAt.present) {
map['suspended_at'] = Variable<DateTime>(suspendedAt.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarUserProfilesCompanion(')..write('isarId: $isarId, ')..write('email: $email, ')..write('name: $name, ')..write('passwordHash: $passwordHash, ')..write('avatarUrl: $avatarUrl, ')..write('phone: $phone, ')..write('bio: $bio, ')..write('memberSince: $memberSince, ')..write('genres: $genres, ')..write('budgetMax: $budgetMax, ')..write('locationName: $locationName, ')..write('language: $language, ')..write('darkMode: $darkMode, ')..write('notificationsEnabled: $notificationsEnabled, ')..write('emailNotificationsEnabled: $emailNotificationsEnabled, ')..write('socialNotificationsEnabled: $socialNotificationsEnabled, ')..write('ecoMode: $ecoMode, ')..write('showCarbonFootprint: $showCarbonFootprint, ')..write('isOnboarded: $isOnboarded, ')..write('eventsBooked: $eventsBooked, ')..write('co2SavedKg: $co2SavedKg, ')..write('moneySavedEur: $moneySavedEur, ')..write('percentile: $percentile, ')..write('createdAt: $createdAt, ')..write('lastLoginAt: $lastLoginAt, ')..write('role: $role, ')..write('isSuspended: $isSuspended, ')..write('suspendedReason: $suspendedReason, ')..write('suspendedAt: $suspendedAt')..write(')')).toString();}
}
class $IsarAuthSessionsTable extends IsarAuthSessions with TableInfo<$IsarAuthSessionsTable, IsarAuthSession>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarAuthSessionsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _keyMeta = const VerificationMeta('key');
@override
late final GeneratedColumn<String> key = GeneratedColumn<String>('key', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _activeEmailMeta = const VerificationMeta('activeEmail');
@override
late final GeneratedColumn<String> activeEmail = GeneratedColumn<String>('active_email', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _loggedInAtMeta = const VerificationMeta('loggedInAt');
@override
late final GeneratedColumn<DateTime> loggedInAt = GeneratedColumn<DateTime>('logged_in_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, key, activeEmail, loggedInAt];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_auth_sessions';
@override
VerificationContext validateIntegrity(Insertable<IsarAuthSession> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('key')) {
context.handle(_keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));} else if (isInserting) {
context.missing(_keyMeta);
}
if (data.containsKey('active_email')) {
context.handle(_activeEmailMeta, activeEmail.isAcceptableOrUnknown(data['active_email']!, _activeEmailMeta));}if (data.containsKey('logged_in_at')) {
context.handle(_loggedInAtMeta, loggedInAt.isAcceptableOrUnknown(data['logged_in_at']!, _loggedInAtMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarAuthSession map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarAuthSession(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, key: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}key'])!, activeEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}active_email']), loggedInAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}logged_in_at']), );
}
@override
$IsarAuthSessionsTable createAlias(String alias) {
return $IsarAuthSessionsTable(attachedDatabase, alias);}}class IsarAuthSession extends DataClass implements Insertable<IsarAuthSession> 
{
final int isarId;
final String key;
final String? activeEmail;
final DateTime? loggedInAt;
const IsarAuthSession({required this.isarId, required this.key, this.activeEmail, this.loggedInAt});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['key'] = Variable<String>(key);
if (!nullToAbsent || activeEmail != null){map['active_email'] = Variable<String>(activeEmail);
}if (!nullToAbsent || loggedInAt != null){map['logged_in_at'] = Variable<DateTime>(loggedInAt);
}return map; 
}
IsarAuthSessionsCompanion toCompanion(bool nullToAbsent) {
return IsarAuthSessionsCompanion(isarId: Value(isarId),key: Value(key),activeEmail: activeEmail == null && nullToAbsent ? const Value.absent() : Value(activeEmail),loggedInAt: loggedInAt == null && nullToAbsent ? const Value.absent() : Value(loggedInAt),);
}
factory IsarAuthSession.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarAuthSession(isarId: serializer.fromJson<int>(json['isarId']),key: serializer.fromJson<String>(json['key']),activeEmail: serializer.fromJson<String?>(json['activeEmail']),loggedInAt: serializer.fromJson<DateTime?>(json['loggedInAt']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'key': serializer.toJson<String>(key),'activeEmail': serializer.toJson<String?>(activeEmail),'loggedInAt': serializer.toJson<DateTime?>(loggedInAt),};}IsarAuthSession copyWith({int? isarId,String? key,Value<String?> activeEmail = const Value.absent(),Value<DateTime?> loggedInAt = const Value.absent()}) => IsarAuthSession(isarId: isarId ?? this.isarId,key: key ?? this.key,activeEmail: activeEmail.present ? activeEmail.value : this.activeEmail,loggedInAt: loggedInAt.present ? loggedInAt.value : this.loggedInAt,);IsarAuthSession copyWithCompanion(IsarAuthSessionsCompanion data) {
return IsarAuthSession(
isarId: data.isarId.present ? data.isarId.value : this.isarId,key: data.key.present ? data.key.value : this.key,activeEmail: data.activeEmail.present ? data.activeEmail.value : this.activeEmail,loggedInAt: data.loggedInAt.present ? data.loggedInAt.value : this.loggedInAt,);
}
@override
String toString() {return (StringBuffer('IsarAuthSession(')..write('isarId: $isarId, ')..write('key: $key, ')..write('activeEmail: $activeEmail, ')..write('loggedInAt: $loggedInAt')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, key, activeEmail, loggedInAt);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarAuthSession && other.isarId == this.isarId && other.key == this.key && other.activeEmail == this.activeEmail && other.loggedInAt == this.loggedInAt);
}class IsarAuthSessionsCompanion extends UpdateCompanion<IsarAuthSession> {
final Value<int> isarId;
final Value<String> key;
final Value<String?> activeEmail;
final Value<DateTime?> loggedInAt;
const IsarAuthSessionsCompanion({this.isarId = const Value.absent(),this.key = const Value.absent(),this.activeEmail = const Value.absent(),this.loggedInAt = const Value.absent(),});
IsarAuthSessionsCompanion.insert({this.isarId = const Value.absent(),required String key,this.activeEmail = const Value.absent(),this.loggedInAt = const Value.absent(),}): key = Value(key);
static Insertable<IsarAuthSession> custom({Expression<int>? isarId, 
Expression<String>? key, 
Expression<String>? activeEmail, 
Expression<DateTime>? loggedInAt, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (key != null)'key': key,if (activeEmail != null)'active_email': activeEmail,if (loggedInAt != null)'logged_in_at': loggedInAt,});
}IsarAuthSessionsCompanion copyWith({Value<int>? isarId, Value<String>? key, Value<String?>? activeEmail, Value<DateTime?>? loggedInAt}) {
return IsarAuthSessionsCompanion(isarId: isarId ?? this.isarId,key: key ?? this.key,activeEmail: activeEmail ?? this.activeEmail,loggedInAt: loggedInAt ?? this.loggedInAt,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (key.present) {
map['key'] = Variable<String>(key.value);}
if (activeEmail.present) {
map['active_email'] = Variable<String>(activeEmail.value);}
if (loggedInAt.present) {
map['logged_in_at'] = Variable<DateTime>(loggedInAt.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarAuthSessionsCompanion(')..write('isarId: $isarId, ')..write('key: $key, ')..write('activeEmail: $activeEmail, ')..write('loggedInAt: $loggedInAt')..write(')')).toString();}
}
class $IsarFavoritesTable extends IsarFavorites with TableInfo<$IsarFavoritesTable, IsarFavorite>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarFavoritesTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _userEmailMeta = const VerificationMeta('userEmail');
@override
late final GeneratedColumn<String> userEmail = GeneratedColumn<String>('user_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _eventIdMeta = const VerificationMeta('eventId');
@override
late final GeneratedColumn<String> eventId = GeneratedColumn<String>('event_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _addedAtMeta = const VerificationMeta('addedAt');
@override
late final GeneratedColumn<DateTime> addedAt = GeneratedColumn<DateTime>('added_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
@override
List<GeneratedColumn> get $columns => [isarId, userEmail, eventId, addedAt];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_favorites';
@override
VerificationContext validateIntegrity(Insertable<IsarFavorite> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('user_email')) {
context.handle(_userEmailMeta, userEmail.isAcceptableOrUnknown(data['user_email']!, _userEmailMeta));} else if (isInserting) {
context.missing(_userEmailMeta);
}
if (data.containsKey('event_id')) {
context.handle(_eventIdMeta, eventId.isAcceptableOrUnknown(data['event_id']!, _eventIdMeta));} else if (isInserting) {
context.missing(_eventIdMeta);
}
if (data.containsKey('added_at')) {
context.handle(_addedAtMeta, addedAt.isAcceptableOrUnknown(data['added_at']!, _addedAtMeta));} else if (isInserting) {
context.missing(_addedAtMeta);
}
return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarFavorite map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarFavorite(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, userEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}user_email'])!, eventId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}event_id'])!, addedAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}added_at'])!, );
}
@override
$IsarFavoritesTable createAlias(String alias) {
return $IsarFavoritesTable(attachedDatabase, alias);}}class IsarFavorite extends DataClass implements Insertable<IsarFavorite> 
{
final int isarId;
final String userEmail;
final String eventId;
final DateTime addedAt;
const IsarFavorite({required this.isarId, required this.userEmail, required this.eventId, required this.addedAt});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['user_email'] = Variable<String>(userEmail);
map['event_id'] = Variable<String>(eventId);
map['added_at'] = Variable<DateTime>(addedAt);
return map; 
}
IsarFavoritesCompanion toCompanion(bool nullToAbsent) {
return IsarFavoritesCompanion(isarId: Value(isarId),userEmail: Value(userEmail),eventId: Value(eventId),addedAt: Value(addedAt),);
}
factory IsarFavorite.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarFavorite(isarId: serializer.fromJson<int>(json['isarId']),userEmail: serializer.fromJson<String>(json['userEmail']),eventId: serializer.fromJson<String>(json['eventId']),addedAt: serializer.fromJson<DateTime>(json['addedAt']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'userEmail': serializer.toJson<String>(userEmail),'eventId': serializer.toJson<String>(eventId),'addedAt': serializer.toJson<DateTime>(addedAt),};}IsarFavorite copyWith({int? isarId,String? userEmail,String? eventId,DateTime? addedAt}) => IsarFavorite(isarId: isarId ?? this.isarId,userEmail: userEmail ?? this.userEmail,eventId: eventId ?? this.eventId,addedAt: addedAt ?? this.addedAt,);IsarFavorite copyWithCompanion(IsarFavoritesCompanion data) {
return IsarFavorite(
isarId: data.isarId.present ? data.isarId.value : this.isarId,userEmail: data.userEmail.present ? data.userEmail.value : this.userEmail,eventId: data.eventId.present ? data.eventId.value : this.eventId,addedAt: data.addedAt.present ? data.addedAt.value : this.addedAt,);
}
@override
String toString() {return (StringBuffer('IsarFavorite(')..write('isarId: $isarId, ')..write('userEmail: $userEmail, ')..write('eventId: $eventId, ')..write('addedAt: $addedAt')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, userEmail, eventId, addedAt);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarFavorite && other.isarId == this.isarId && other.userEmail == this.userEmail && other.eventId == this.eventId && other.addedAt == this.addedAt);
}class IsarFavoritesCompanion extends UpdateCompanion<IsarFavorite> {
final Value<int> isarId;
final Value<String> userEmail;
final Value<String> eventId;
final Value<DateTime> addedAt;
const IsarFavoritesCompanion({this.isarId = const Value.absent(),this.userEmail = const Value.absent(),this.eventId = const Value.absent(),this.addedAt = const Value.absent(),});
IsarFavoritesCompanion.insert({this.isarId = const Value.absent(),required String userEmail,required String eventId,required DateTime addedAt,}): userEmail = Value(userEmail), eventId = Value(eventId), addedAt = Value(addedAt);
static Insertable<IsarFavorite> custom({Expression<int>? isarId, 
Expression<String>? userEmail, 
Expression<String>? eventId, 
Expression<DateTime>? addedAt, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (userEmail != null)'user_email': userEmail,if (eventId != null)'event_id': eventId,if (addedAt != null)'added_at': addedAt,});
}IsarFavoritesCompanion copyWith({Value<int>? isarId, Value<String>? userEmail, Value<String>? eventId, Value<DateTime>? addedAt}) {
return IsarFavoritesCompanion(isarId: isarId ?? this.isarId,userEmail: userEmail ?? this.userEmail,eventId: eventId ?? this.eventId,addedAt: addedAt ?? this.addedAt,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (userEmail.present) {
map['user_email'] = Variable<String>(userEmail.value);}
if (eventId.present) {
map['event_id'] = Variable<String>(eventId.value);}
if (addedAt.present) {
map['added_at'] = Variable<DateTime>(addedAt.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarFavoritesCompanion(')..write('isarId: $isarId, ')..write('userEmail: $userEmail, ')..write('eventId: $eventId, ')..write('addedAt: $addedAt')..write(')')).toString();}
}
class $IsarOrdersTable extends IsarOrders with TableInfo<$IsarOrdersTable, IsarOrder>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarOrdersTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _orderIdMeta = const VerificationMeta('orderId');
@override
late final GeneratedColumn<String> orderId = GeneratedColumn<String>('order_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _customerEmailMeta = const VerificationMeta('customerEmail');
@override
late final GeneratedColumn<String> customerEmail = GeneratedColumn<String>('customer_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _placedAtMeta = const VerificationMeta('placedAt');
@override
late final GeneratedColumn<DateTime> placedAt = GeneratedColumn<DateTime>('placed_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _subtotalMeta = const VerificationMeta('subtotal');
@override
late final GeneratedColumn<double> subtotal = GeneratedColumn<double>('subtotal', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _discountMeta = const VerificationMeta('discount');
@override
late final GeneratedColumn<double> discount = GeneratedColumn<double>('discount', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _serviceFeeMeta = const VerificationMeta('serviceFee');
@override
late final GeneratedColumn<double> serviceFee = GeneratedColumn<double>('service_fee', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _taxMeta = const VerificationMeta('tax');
@override
late final GeneratedColumn<double> tax = GeneratedColumn<double>('tax', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _totalMeta = const VerificationMeta('total');
@override
late final GeneratedColumn<double> total = GeneratedColumn<double>('total', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _currencyMeta = const VerificationMeta('currency');
@override
late final GeneratedColumn<String> currency = GeneratedColumn<String>('currency', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _promoCodeMeta = const VerificationMeta('promoCode');
@override
late final GeneratedColumn<String> promoCode = GeneratedColumn<String>('promo_code', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _paymentMethodMeta = const VerificationMeta('paymentMethod');
@override
late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>('payment_method', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _paymentBrandMeta = const VerificationMeta('paymentBrand');
@override
late final GeneratedColumn<String> paymentBrand = GeneratedColumn<String>('payment_brand', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _paymentLast4Meta = const VerificationMeta('paymentLast4');
@override
late final GeneratedColumn<String> paymentLast4 = GeneratedColumn<String>('payment_last4', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _statusMeta = const VerificationMeta('status');
@override
late final GeneratedColumn<String> status = GeneratedColumn<String>('status', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _itemCountMeta = const VerificationMeta('itemCount');
@override
late final GeneratedColumn<int> itemCount = GeneratedColumn<int>('item_count', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
static const VerificationMeta _ticketIdsMeta = const VerificationMeta('ticketIds');
@override
late final GeneratedColumnWithTypeConverter<List<String>, String> ticketIds = GeneratedColumn<String>('ticket_ids', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('')).withConverter<List<String>>($IsarOrdersTable.$converterticketIds);
static const VerificationMeta _failureReasonMeta = const VerificationMeta('failureReason');
@override
late final GeneratedColumn<String> failureReason = GeneratedColumn<String>('failure_reason', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _refundReasonMeta = const VerificationMeta('refundReason');
@override
late final GeneratedColumn<String> refundReason = GeneratedColumn<String>('refund_reason', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _refundedAtMeta = const VerificationMeta('refundedAt');
@override
late final GeneratedColumn<DateTime> refundedAt = GeneratedColumn<DateTime>('refunded_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _refundAmountMeta = const VerificationMeta('refundAmount');
@override
late final GeneratedColumn<double> refundAmount = GeneratedColumn<double>('refund_amount', aliasedName, true, type: DriftSqlType.double, requiredDuringInsert: false);
static const VerificationMeta _refundedByEmailMeta = const VerificationMeta('refundedByEmail');
@override
late final GeneratedColumn<String> refundedByEmail = GeneratedColumn<String>('refunded_by_email', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, orderId, customerEmail, placedAt, subtotal, discount, serviceFee, tax, total, currency, promoCode, paymentMethod, paymentBrand, paymentLast4, status, itemCount, ticketIds, failureReason, refundReason, refundedAt, refundAmount, refundedByEmail];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_orders';
@override
VerificationContext validateIntegrity(Insertable<IsarOrder> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('order_id')) {
context.handle(_orderIdMeta, orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));} else if (isInserting) {
context.missing(_orderIdMeta);
}
if (data.containsKey('customer_email')) {
context.handle(_customerEmailMeta, customerEmail.isAcceptableOrUnknown(data['customer_email']!, _customerEmailMeta));} else if (isInserting) {
context.missing(_customerEmailMeta);
}
if (data.containsKey('placed_at')) {
context.handle(_placedAtMeta, placedAt.isAcceptableOrUnknown(data['placed_at']!, _placedAtMeta));} else if (isInserting) {
context.missing(_placedAtMeta);
}
if (data.containsKey('subtotal')) {
context.handle(_subtotalMeta, subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta));} else if (isInserting) {
context.missing(_subtotalMeta);
}
if (data.containsKey('discount')) {
context.handle(_discountMeta, discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));} else if (isInserting) {
context.missing(_discountMeta);
}
if (data.containsKey('service_fee')) {
context.handle(_serviceFeeMeta, serviceFee.isAcceptableOrUnknown(data['service_fee']!, _serviceFeeMeta));} else if (isInserting) {
context.missing(_serviceFeeMeta);
}
if (data.containsKey('tax')) {
context.handle(_taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));} else if (isInserting) {
context.missing(_taxMeta);
}
if (data.containsKey('total')) {
context.handle(_totalMeta, total.isAcceptableOrUnknown(data['total']!, _totalMeta));} else if (isInserting) {
context.missing(_totalMeta);
}
if (data.containsKey('currency')) {
context.handle(_currencyMeta, currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));} else if (isInserting) {
context.missing(_currencyMeta);
}
if (data.containsKey('promo_code')) {
context.handle(_promoCodeMeta, promoCode.isAcceptableOrUnknown(data['promo_code']!, _promoCodeMeta));}if (data.containsKey('payment_method')) {
context.handle(_paymentMethodMeta, paymentMethod.isAcceptableOrUnknown(data['payment_method']!, _paymentMethodMeta));} else if (isInserting) {
context.missing(_paymentMethodMeta);
}
if (data.containsKey('payment_brand')) {
context.handle(_paymentBrandMeta, paymentBrand.isAcceptableOrUnknown(data['payment_brand']!, _paymentBrandMeta));} else if (isInserting) {
context.missing(_paymentBrandMeta);
}
if (data.containsKey('payment_last4')) {
context.handle(_paymentLast4Meta, paymentLast4.isAcceptableOrUnknown(data['payment_last4']!, _paymentLast4Meta));}if (data.containsKey('status')) {
context.handle(_statusMeta, status.isAcceptableOrUnknown(data['status']!, _statusMeta));} else if (isInserting) {
context.missing(_statusMeta);
}
if (data.containsKey('item_count')) {
context.handle(_itemCountMeta, itemCount.isAcceptableOrUnknown(data['item_count']!, _itemCountMeta));} else if (isInserting) {
context.missing(_itemCountMeta);
}
context.handle(_ticketIdsMeta, const VerificationResult.success());if (data.containsKey('failure_reason')) {
context.handle(_failureReasonMeta, failureReason.isAcceptableOrUnknown(data['failure_reason']!, _failureReasonMeta));}if (data.containsKey('refund_reason')) {
context.handle(_refundReasonMeta, refundReason.isAcceptableOrUnknown(data['refund_reason']!, _refundReasonMeta));}if (data.containsKey('refunded_at')) {
context.handle(_refundedAtMeta, refundedAt.isAcceptableOrUnknown(data['refunded_at']!, _refundedAtMeta));}if (data.containsKey('refund_amount')) {
context.handle(_refundAmountMeta, refundAmount.isAcceptableOrUnknown(data['refund_amount']!, _refundAmountMeta));}if (data.containsKey('refunded_by_email')) {
context.handle(_refundedByEmailMeta, refundedByEmail.isAcceptableOrUnknown(data['refunded_by_email']!, _refundedByEmailMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarOrder map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarOrder(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, orderId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}order_id'])!, customerEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}customer_email'])!, placedAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}placed_at'])!, subtotal: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}subtotal'])!, discount: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}discount'])!, serviceFee: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}service_fee'])!, tax: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}tax'])!, total: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}total'])!, currency: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}currency'])!, promoCode: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}promo_code']), paymentMethod: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}payment_method'])!, paymentBrand: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}payment_brand'])!, paymentLast4: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}payment_last4']), status: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}status'])!, itemCount: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}item_count'])!, ticketIds: $IsarOrdersTable.$converterticketIds.fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}ticket_ids'])!), failureReason: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}failure_reason']), refundReason: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}refund_reason']), refundedAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}refunded_at']), refundAmount: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}refund_amount']), refundedByEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}refunded_by_email']), );
}
@override
$IsarOrdersTable createAlias(String alias) {
return $IsarOrdersTable(attachedDatabase, alias);}static TypeConverter<List<String>,String> $converterticketIds = _stringList;}class IsarOrder extends DataClass implements Insertable<IsarOrder> 
{
final int isarId;
final String orderId;
final String customerEmail;
final DateTime placedAt;
final double subtotal;
final double discount;
final double serviceFee;
final double tax;
final double total;
final String currency;
final String? promoCode;
final String paymentMethod;
final String paymentBrand;
final String? paymentLast4;
final String status;
final int itemCount;
final List<String> ticketIds;
final String? failureReason;
final String? refundReason;
final DateTime? refundedAt;
final double? refundAmount;
final String? refundedByEmail;
const IsarOrder({required this.isarId, required this.orderId, required this.customerEmail, required this.placedAt, required this.subtotal, required this.discount, required this.serviceFee, required this.tax, required this.total, required this.currency, this.promoCode, required this.paymentMethod, required this.paymentBrand, this.paymentLast4, required this.status, required this.itemCount, required this.ticketIds, this.failureReason, this.refundReason, this.refundedAt, this.refundAmount, this.refundedByEmail});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['order_id'] = Variable<String>(orderId);
map['customer_email'] = Variable<String>(customerEmail);
map['placed_at'] = Variable<DateTime>(placedAt);
map['subtotal'] = Variable<double>(subtotal);
map['discount'] = Variable<double>(discount);
map['service_fee'] = Variable<double>(serviceFee);
map['tax'] = Variable<double>(tax);
map['total'] = Variable<double>(total);
map['currency'] = Variable<String>(currency);
if (!nullToAbsent || promoCode != null){map['promo_code'] = Variable<String>(promoCode);
}map['payment_method'] = Variable<String>(paymentMethod);
map['payment_brand'] = Variable<String>(paymentBrand);
if (!nullToAbsent || paymentLast4 != null){map['payment_last4'] = Variable<String>(paymentLast4);
}map['status'] = Variable<String>(status);
map['item_count'] = Variable<int>(itemCount);
{map['ticket_ids'] = Variable<String>($IsarOrdersTable.$converterticketIds.toSql(ticketIds));
}if (!nullToAbsent || failureReason != null){map['failure_reason'] = Variable<String>(failureReason);
}if (!nullToAbsent || refundReason != null){map['refund_reason'] = Variable<String>(refundReason);
}if (!nullToAbsent || refundedAt != null){map['refunded_at'] = Variable<DateTime>(refundedAt);
}if (!nullToAbsent || refundAmount != null){map['refund_amount'] = Variable<double>(refundAmount);
}if (!nullToAbsent || refundedByEmail != null){map['refunded_by_email'] = Variable<String>(refundedByEmail);
}return map; 
}
IsarOrdersCompanion toCompanion(bool nullToAbsent) {
return IsarOrdersCompanion(isarId: Value(isarId),orderId: Value(orderId),customerEmail: Value(customerEmail),placedAt: Value(placedAt),subtotal: Value(subtotal),discount: Value(discount),serviceFee: Value(serviceFee),tax: Value(tax),total: Value(total),currency: Value(currency),promoCode: promoCode == null && nullToAbsent ? const Value.absent() : Value(promoCode),paymentMethod: Value(paymentMethod),paymentBrand: Value(paymentBrand),paymentLast4: paymentLast4 == null && nullToAbsent ? const Value.absent() : Value(paymentLast4),status: Value(status),itemCount: Value(itemCount),ticketIds: Value(ticketIds),failureReason: failureReason == null && nullToAbsent ? const Value.absent() : Value(failureReason),refundReason: refundReason == null && nullToAbsent ? const Value.absent() : Value(refundReason),refundedAt: refundedAt == null && nullToAbsent ? const Value.absent() : Value(refundedAt),refundAmount: refundAmount == null && nullToAbsent ? const Value.absent() : Value(refundAmount),refundedByEmail: refundedByEmail == null && nullToAbsent ? const Value.absent() : Value(refundedByEmail),);
}
factory IsarOrder.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarOrder(isarId: serializer.fromJson<int>(json['isarId']),orderId: serializer.fromJson<String>(json['orderId']),customerEmail: serializer.fromJson<String>(json['customerEmail']),placedAt: serializer.fromJson<DateTime>(json['placedAt']),subtotal: serializer.fromJson<double>(json['subtotal']),discount: serializer.fromJson<double>(json['discount']),serviceFee: serializer.fromJson<double>(json['serviceFee']),tax: serializer.fromJson<double>(json['tax']),total: serializer.fromJson<double>(json['total']),currency: serializer.fromJson<String>(json['currency']),promoCode: serializer.fromJson<String?>(json['promoCode']),paymentMethod: serializer.fromJson<String>(json['paymentMethod']),paymentBrand: serializer.fromJson<String>(json['paymentBrand']),paymentLast4: serializer.fromJson<String?>(json['paymentLast4']),status: serializer.fromJson<String>(json['status']),itemCount: serializer.fromJson<int>(json['itemCount']),ticketIds: serializer.fromJson<List<String>>(json['ticketIds']),failureReason: serializer.fromJson<String?>(json['failureReason']),refundReason: serializer.fromJson<String?>(json['refundReason']),refundedAt: serializer.fromJson<DateTime?>(json['refundedAt']),refundAmount: serializer.fromJson<double?>(json['refundAmount']),refundedByEmail: serializer.fromJson<String?>(json['refundedByEmail']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'orderId': serializer.toJson<String>(orderId),'customerEmail': serializer.toJson<String>(customerEmail),'placedAt': serializer.toJson<DateTime>(placedAt),'subtotal': serializer.toJson<double>(subtotal),'discount': serializer.toJson<double>(discount),'serviceFee': serializer.toJson<double>(serviceFee),'tax': serializer.toJson<double>(tax),'total': serializer.toJson<double>(total),'currency': serializer.toJson<String>(currency),'promoCode': serializer.toJson<String?>(promoCode),'paymentMethod': serializer.toJson<String>(paymentMethod),'paymentBrand': serializer.toJson<String>(paymentBrand),'paymentLast4': serializer.toJson<String?>(paymentLast4),'status': serializer.toJson<String>(status),'itemCount': serializer.toJson<int>(itemCount),'ticketIds': serializer.toJson<List<String>>(ticketIds),'failureReason': serializer.toJson<String?>(failureReason),'refundReason': serializer.toJson<String?>(refundReason),'refundedAt': serializer.toJson<DateTime?>(refundedAt),'refundAmount': serializer.toJson<double?>(refundAmount),'refundedByEmail': serializer.toJson<String?>(refundedByEmail),};}IsarOrder copyWith({int? isarId,String? orderId,String? customerEmail,DateTime? placedAt,double? subtotal,double? discount,double? serviceFee,double? tax,double? total,String? currency,Value<String?> promoCode = const Value.absent(),String? paymentMethod,String? paymentBrand,Value<String?> paymentLast4 = const Value.absent(),String? status,int? itemCount,List<String>? ticketIds,Value<String?> failureReason = const Value.absent(),Value<String?> refundReason = const Value.absent(),Value<DateTime?> refundedAt = const Value.absent(),Value<double?> refundAmount = const Value.absent(),Value<String?> refundedByEmail = const Value.absent()}) => IsarOrder(isarId: isarId ?? this.isarId,orderId: orderId ?? this.orderId,customerEmail: customerEmail ?? this.customerEmail,placedAt: placedAt ?? this.placedAt,subtotal: subtotal ?? this.subtotal,discount: discount ?? this.discount,serviceFee: serviceFee ?? this.serviceFee,tax: tax ?? this.tax,total: total ?? this.total,currency: currency ?? this.currency,promoCode: promoCode.present ? promoCode.value : this.promoCode,paymentMethod: paymentMethod ?? this.paymentMethod,paymentBrand: paymentBrand ?? this.paymentBrand,paymentLast4: paymentLast4.present ? paymentLast4.value : this.paymentLast4,status: status ?? this.status,itemCount: itemCount ?? this.itemCount,ticketIds: ticketIds ?? this.ticketIds,failureReason: failureReason.present ? failureReason.value : this.failureReason,refundReason: refundReason.present ? refundReason.value : this.refundReason,refundedAt: refundedAt.present ? refundedAt.value : this.refundedAt,refundAmount: refundAmount.present ? refundAmount.value : this.refundAmount,refundedByEmail: refundedByEmail.present ? refundedByEmail.value : this.refundedByEmail,);IsarOrder copyWithCompanion(IsarOrdersCompanion data) {
return IsarOrder(
isarId: data.isarId.present ? data.isarId.value : this.isarId,orderId: data.orderId.present ? data.orderId.value : this.orderId,customerEmail: data.customerEmail.present ? data.customerEmail.value : this.customerEmail,placedAt: data.placedAt.present ? data.placedAt.value : this.placedAt,subtotal: data.subtotal.present ? data.subtotal.value : this.subtotal,discount: data.discount.present ? data.discount.value : this.discount,serviceFee: data.serviceFee.present ? data.serviceFee.value : this.serviceFee,tax: data.tax.present ? data.tax.value : this.tax,total: data.total.present ? data.total.value : this.total,currency: data.currency.present ? data.currency.value : this.currency,promoCode: data.promoCode.present ? data.promoCode.value : this.promoCode,paymentMethod: data.paymentMethod.present ? data.paymentMethod.value : this.paymentMethod,paymentBrand: data.paymentBrand.present ? data.paymentBrand.value : this.paymentBrand,paymentLast4: data.paymentLast4.present ? data.paymentLast4.value : this.paymentLast4,status: data.status.present ? data.status.value : this.status,itemCount: data.itemCount.present ? data.itemCount.value : this.itemCount,ticketIds: data.ticketIds.present ? data.ticketIds.value : this.ticketIds,failureReason: data.failureReason.present ? data.failureReason.value : this.failureReason,refundReason: data.refundReason.present ? data.refundReason.value : this.refundReason,refundedAt: data.refundedAt.present ? data.refundedAt.value : this.refundedAt,refundAmount: data.refundAmount.present ? data.refundAmount.value : this.refundAmount,refundedByEmail: data.refundedByEmail.present ? data.refundedByEmail.value : this.refundedByEmail,);
}
@override
String toString() {return (StringBuffer('IsarOrder(')..write('isarId: $isarId, ')..write('orderId: $orderId, ')..write('customerEmail: $customerEmail, ')..write('placedAt: $placedAt, ')..write('subtotal: $subtotal, ')..write('discount: $discount, ')..write('serviceFee: $serviceFee, ')..write('tax: $tax, ')..write('total: $total, ')..write('currency: $currency, ')..write('promoCode: $promoCode, ')..write('paymentMethod: $paymentMethod, ')..write('paymentBrand: $paymentBrand, ')..write('paymentLast4: $paymentLast4, ')..write('status: $status, ')..write('itemCount: $itemCount, ')..write('ticketIds: $ticketIds, ')..write('failureReason: $failureReason, ')..write('refundReason: $refundReason, ')..write('refundedAt: $refundedAt, ')..write('refundAmount: $refundAmount, ')..write('refundedByEmail: $refundedByEmail')..write(')')).toString();}
@override
 int get hashCode => Object.hashAll([isarId, orderId, customerEmail, placedAt, subtotal, discount, serviceFee, tax, total, currency, promoCode, paymentMethod, paymentBrand, paymentLast4, status, itemCount, ticketIds, failureReason, refundReason, refundedAt, refundAmount, refundedByEmail]);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarOrder && other.isarId == this.isarId && other.orderId == this.orderId && other.customerEmail == this.customerEmail && other.placedAt == this.placedAt && other.subtotal == this.subtotal && other.discount == this.discount && other.serviceFee == this.serviceFee && other.tax == this.tax && other.total == this.total && other.currency == this.currency && other.promoCode == this.promoCode && other.paymentMethod == this.paymentMethod && other.paymentBrand == this.paymentBrand && other.paymentLast4 == this.paymentLast4 && other.status == this.status && other.itemCount == this.itemCount && other.ticketIds == this.ticketIds && other.failureReason == this.failureReason && other.refundReason == this.refundReason && other.refundedAt == this.refundedAt && other.refundAmount == this.refundAmount && other.refundedByEmail == this.refundedByEmail);
}class IsarOrdersCompanion extends UpdateCompanion<IsarOrder> {
final Value<int> isarId;
final Value<String> orderId;
final Value<String> customerEmail;
final Value<DateTime> placedAt;
final Value<double> subtotal;
final Value<double> discount;
final Value<double> serviceFee;
final Value<double> tax;
final Value<double> total;
final Value<String> currency;
final Value<String?> promoCode;
final Value<String> paymentMethod;
final Value<String> paymentBrand;
final Value<String?> paymentLast4;
final Value<String> status;
final Value<int> itemCount;
final Value<List<String>> ticketIds;
final Value<String?> failureReason;
final Value<String?> refundReason;
final Value<DateTime?> refundedAt;
final Value<double?> refundAmount;
final Value<String?> refundedByEmail;
const IsarOrdersCompanion({this.isarId = const Value.absent(),this.orderId = const Value.absent(),this.customerEmail = const Value.absent(),this.placedAt = const Value.absent(),this.subtotal = const Value.absent(),this.discount = const Value.absent(),this.serviceFee = const Value.absent(),this.tax = const Value.absent(),this.total = const Value.absent(),this.currency = const Value.absent(),this.promoCode = const Value.absent(),this.paymentMethod = const Value.absent(),this.paymentBrand = const Value.absent(),this.paymentLast4 = const Value.absent(),this.status = const Value.absent(),this.itemCount = const Value.absent(),this.ticketIds = const Value.absent(),this.failureReason = const Value.absent(),this.refundReason = const Value.absent(),this.refundedAt = const Value.absent(),this.refundAmount = const Value.absent(),this.refundedByEmail = const Value.absent(),});
IsarOrdersCompanion.insert({this.isarId = const Value.absent(),required String orderId,required String customerEmail,required DateTime placedAt,required double subtotal,required double discount,required double serviceFee,required double tax,required double total,required String currency,this.promoCode = const Value.absent(),required String paymentMethod,required String paymentBrand,this.paymentLast4 = const Value.absent(),required String status,required int itemCount,this.ticketIds = const Value.absent(),this.failureReason = const Value.absent(),this.refundReason = const Value.absent(),this.refundedAt = const Value.absent(),this.refundAmount = const Value.absent(),this.refundedByEmail = const Value.absent(),}): orderId = Value(orderId), customerEmail = Value(customerEmail), placedAt = Value(placedAt), subtotal = Value(subtotal), discount = Value(discount), serviceFee = Value(serviceFee), tax = Value(tax), total = Value(total), currency = Value(currency), paymentMethod = Value(paymentMethod), paymentBrand = Value(paymentBrand), status = Value(status), itemCount = Value(itemCount);
static Insertable<IsarOrder> custom({Expression<int>? isarId, 
Expression<String>? orderId, 
Expression<String>? customerEmail, 
Expression<DateTime>? placedAt, 
Expression<double>? subtotal, 
Expression<double>? discount, 
Expression<double>? serviceFee, 
Expression<double>? tax, 
Expression<double>? total, 
Expression<String>? currency, 
Expression<String>? promoCode, 
Expression<String>? paymentMethod, 
Expression<String>? paymentBrand, 
Expression<String>? paymentLast4, 
Expression<String>? status, 
Expression<int>? itemCount, 
Expression<String>? ticketIds, 
Expression<String>? failureReason, 
Expression<String>? refundReason, 
Expression<DateTime>? refundedAt, 
Expression<double>? refundAmount, 
Expression<String>? refundedByEmail, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (orderId != null)'order_id': orderId,if (customerEmail != null)'customer_email': customerEmail,if (placedAt != null)'placed_at': placedAt,if (subtotal != null)'subtotal': subtotal,if (discount != null)'discount': discount,if (serviceFee != null)'service_fee': serviceFee,if (tax != null)'tax': tax,if (total != null)'total': total,if (currency != null)'currency': currency,if (promoCode != null)'promo_code': promoCode,if (paymentMethod != null)'payment_method': paymentMethod,if (paymentBrand != null)'payment_brand': paymentBrand,if (paymentLast4 != null)'payment_last4': paymentLast4,if (status != null)'status': status,if (itemCount != null)'item_count': itemCount,if (ticketIds != null)'ticket_ids': ticketIds,if (failureReason != null)'failure_reason': failureReason,if (refundReason != null)'refund_reason': refundReason,if (refundedAt != null)'refunded_at': refundedAt,if (refundAmount != null)'refund_amount': refundAmount,if (refundedByEmail != null)'refunded_by_email': refundedByEmail,});
}IsarOrdersCompanion copyWith({Value<int>? isarId, Value<String>? orderId, Value<String>? customerEmail, Value<DateTime>? placedAt, Value<double>? subtotal, Value<double>? discount, Value<double>? serviceFee, Value<double>? tax, Value<double>? total, Value<String>? currency, Value<String?>? promoCode, Value<String>? paymentMethod, Value<String>? paymentBrand, Value<String?>? paymentLast4, Value<String>? status, Value<int>? itemCount, Value<List<String>>? ticketIds, Value<String?>? failureReason, Value<String?>? refundReason, Value<DateTime?>? refundedAt, Value<double?>? refundAmount, Value<String?>? refundedByEmail}) {
return IsarOrdersCompanion(isarId: isarId ?? this.isarId,orderId: orderId ?? this.orderId,customerEmail: customerEmail ?? this.customerEmail,placedAt: placedAt ?? this.placedAt,subtotal: subtotal ?? this.subtotal,discount: discount ?? this.discount,serviceFee: serviceFee ?? this.serviceFee,tax: tax ?? this.tax,total: total ?? this.total,currency: currency ?? this.currency,promoCode: promoCode ?? this.promoCode,paymentMethod: paymentMethod ?? this.paymentMethod,paymentBrand: paymentBrand ?? this.paymentBrand,paymentLast4: paymentLast4 ?? this.paymentLast4,status: status ?? this.status,itemCount: itemCount ?? this.itemCount,ticketIds: ticketIds ?? this.ticketIds,failureReason: failureReason ?? this.failureReason,refundReason: refundReason ?? this.refundReason,refundedAt: refundedAt ?? this.refundedAt,refundAmount: refundAmount ?? this.refundAmount,refundedByEmail: refundedByEmail ?? this.refundedByEmail,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (orderId.present) {
map['order_id'] = Variable<String>(orderId.value);}
if (customerEmail.present) {
map['customer_email'] = Variable<String>(customerEmail.value);}
if (placedAt.present) {
map['placed_at'] = Variable<DateTime>(placedAt.value);}
if (subtotal.present) {
map['subtotal'] = Variable<double>(subtotal.value);}
if (discount.present) {
map['discount'] = Variable<double>(discount.value);}
if (serviceFee.present) {
map['service_fee'] = Variable<double>(serviceFee.value);}
if (tax.present) {
map['tax'] = Variable<double>(tax.value);}
if (total.present) {
map['total'] = Variable<double>(total.value);}
if (currency.present) {
map['currency'] = Variable<String>(currency.value);}
if (promoCode.present) {
map['promo_code'] = Variable<String>(promoCode.value);}
if (paymentMethod.present) {
map['payment_method'] = Variable<String>(paymentMethod.value);}
if (paymentBrand.present) {
map['payment_brand'] = Variable<String>(paymentBrand.value);}
if (paymentLast4.present) {
map['payment_last4'] = Variable<String>(paymentLast4.value);}
if (status.present) {
map['status'] = Variable<String>(status.value);}
if (itemCount.present) {
map['item_count'] = Variable<int>(itemCount.value);}
if (ticketIds.present) {
map['ticket_ids'] = Variable<String>($IsarOrdersTable.$converterticketIds.toSql(ticketIds.value));}
if (failureReason.present) {
map['failure_reason'] = Variable<String>(failureReason.value);}
if (refundReason.present) {
map['refund_reason'] = Variable<String>(refundReason.value);}
if (refundedAt.present) {
map['refunded_at'] = Variable<DateTime>(refundedAt.value);}
if (refundAmount.present) {
map['refund_amount'] = Variable<double>(refundAmount.value);}
if (refundedByEmail.present) {
map['refunded_by_email'] = Variable<String>(refundedByEmail.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarOrdersCompanion(')..write('isarId: $isarId, ')..write('orderId: $orderId, ')..write('customerEmail: $customerEmail, ')..write('placedAt: $placedAt, ')..write('subtotal: $subtotal, ')..write('discount: $discount, ')..write('serviceFee: $serviceFee, ')..write('tax: $tax, ')..write('total: $total, ')..write('currency: $currency, ')..write('promoCode: $promoCode, ')..write('paymentMethod: $paymentMethod, ')..write('paymentBrand: $paymentBrand, ')..write('paymentLast4: $paymentLast4, ')..write('status: $status, ')..write('itemCount: $itemCount, ')..write('ticketIds: $ticketIds, ')..write('failureReason: $failureReason, ')..write('refundReason: $refundReason, ')..write('refundedAt: $refundedAt, ')..write('refundAmount: $refundAmount, ')..write('refundedByEmail: $refundedByEmail')..write(')')).toString();}
}
class $IsarAppSettingsTableTable extends IsarAppSettingsTable with TableInfo<$IsarAppSettingsTableTable, IsarAppSettings>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarAppSettingsTableTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _keyMeta = const VerificationMeta('key');
@override
late final GeneratedColumn<String> key = GeneratedColumn<String>('key', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _taxRateMeta = const VerificationMeta('taxRate');
@override
late final GeneratedColumn<double> taxRate = GeneratedColumn<double>('tax_rate', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _serviceFeeRateMeta = const VerificationMeta('serviceFeeRate');
@override
late final GeneratedColumn<double> serviceFeeRate = GeneratedColumn<double>('service_fee_rate', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _supportEmailMeta = const VerificationMeta('supportEmail');
@override
late final GeneratedColumn<String> supportEmail = GeneratedColumn<String>('support_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _maintenanceModeMeta = const VerificationMeta('maintenanceMode');
@override
late final GeneratedColumn<bool> maintenanceMode = GeneratedColumn<bool>('maintenance_mode', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("maintenance_mode" IN (0, 1))'));
static const VerificationMeta _maintenanceMessageMeta = const VerificationMeta('maintenanceMessage');
@override
late final GeneratedColumn<String> maintenanceMessage = GeneratedColumn<String>('maintenance_message', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _featuredEventIdsMeta = const VerificationMeta('featuredEventIds');
@override
late final GeneratedColumnWithTypeConverter<List<String>, String> featuredEventIds = GeneratedColumn<String>('featured_event_ids', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: false, defaultValue: const Constant('')).withConverter<List<String>>($IsarAppSettingsTableTable.$converterfeaturedEventIds);
static const VerificationMeta _maxTicketsPerOrderMeta = const VerificationMeta('maxTicketsPerOrder');
@override
late final GeneratedColumn<int> maxTicketsPerOrder = GeneratedColumn<int>('max_tickets_per_order', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
static const VerificationMeta _currencyCodeMeta = const VerificationMeta('currencyCode');
@override
late final GeneratedColumn<String> currencyCode = GeneratedColumn<String>('currency_code', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _currencySymbolMeta = const VerificationMeta('currencySymbol');
@override
late final GeneratedColumn<String> currencySymbol = GeneratedColumn<String>('currency_symbol', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
@override
late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>('updated_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _updatedByEmailMeta = const VerificationMeta('updatedByEmail');
@override
late final GeneratedColumn<String> updatedByEmail = GeneratedColumn<String>('updated_by_email', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _stripePublishableKeyMeta = const VerificationMeta('stripePublishableKey');
@override
late final GeneratedColumn<String> stripePublishableKey = GeneratedColumn<String>('stripe_publishable_key', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _paymentSimulationMeta = const VerificationMeta('paymentSimulation');
@override
late final GeneratedColumn<bool> paymentSimulation = GeneratedColumn<bool>('payment_simulation', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("payment_simulation" IN (0, 1))'), defaultValue: const Constant(true));
@override
List<GeneratedColumn> get $columns => [isarId, key, taxRate, serviceFeeRate, supportEmail, maintenanceMode, maintenanceMessage, featuredEventIds, maxTicketsPerOrder, currencyCode, currencySymbol, updatedAt, updatedByEmail, stripePublishableKey, paymentSimulation];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_app_settings_table';
@override
VerificationContext validateIntegrity(Insertable<IsarAppSettings> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('key')) {
context.handle(_keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));} else if (isInserting) {
context.missing(_keyMeta);
}
if (data.containsKey('tax_rate')) {
context.handle(_taxRateMeta, taxRate.isAcceptableOrUnknown(data['tax_rate']!, _taxRateMeta));} else if (isInserting) {
context.missing(_taxRateMeta);
}
if (data.containsKey('service_fee_rate')) {
context.handle(_serviceFeeRateMeta, serviceFeeRate.isAcceptableOrUnknown(data['service_fee_rate']!, _serviceFeeRateMeta));} else if (isInserting) {
context.missing(_serviceFeeRateMeta);
}
if (data.containsKey('support_email')) {
context.handle(_supportEmailMeta, supportEmail.isAcceptableOrUnknown(data['support_email']!, _supportEmailMeta));} else if (isInserting) {
context.missing(_supportEmailMeta);
}
if (data.containsKey('maintenance_mode')) {
context.handle(_maintenanceModeMeta, maintenanceMode.isAcceptableOrUnknown(data['maintenance_mode']!, _maintenanceModeMeta));} else if (isInserting) {
context.missing(_maintenanceModeMeta);
}
if (data.containsKey('maintenance_message')) {
context.handle(_maintenanceMessageMeta, maintenanceMessage.isAcceptableOrUnknown(data['maintenance_message']!, _maintenanceMessageMeta));} else if (isInserting) {
context.missing(_maintenanceMessageMeta);
}
context.handle(_featuredEventIdsMeta, const VerificationResult.success());if (data.containsKey('max_tickets_per_order')) {
context.handle(_maxTicketsPerOrderMeta, maxTicketsPerOrder.isAcceptableOrUnknown(data['max_tickets_per_order']!, _maxTicketsPerOrderMeta));} else if (isInserting) {
context.missing(_maxTicketsPerOrderMeta);
}
if (data.containsKey('currency_code')) {
context.handle(_currencyCodeMeta, currencyCode.isAcceptableOrUnknown(data['currency_code']!, _currencyCodeMeta));} else if (isInserting) {
context.missing(_currencyCodeMeta);
}
if (data.containsKey('currency_symbol')) {
context.handle(_currencySymbolMeta, currencySymbol.isAcceptableOrUnknown(data['currency_symbol']!, _currencySymbolMeta));} else if (isInserting) {
context.missing(_currencySymbolMeta);
}
if (data.containsKey('updated_at')) {
context.handle(_updatedAtMeta, updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));} else if (isInserting) {
context.missing(_updatedAtMeta);
}
if (data.containsKey('updated_by_email')) {
context.handle(_updatedByEmailMeta, updatedByEmail.isAcceptableOrUnknown(data['updated_by_email']!, _updatedByEmailMeta));}if (data.containsKey('stripe_publishable_key')) {
context.handle(_stripePublishableKeyMeta, stripePublishableKey.isAcceptableOrUnknown(data['stripe_publishable_key']!, _stripePublishableKeyMeta));}if (data.containsKey('payment_simulation')) {
context.handle(_paymentSimulationMeta, paymentSimulation.isAcceptableOrUnknown(data['payment_simulation']!, _paymentSimulationMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarAppSettings map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarAppSettings(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, key: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}key'])!, taxRate: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}tax_rate'])!, serviceFeeRate: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}service_fee_rate'])!, supportEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}support_email'])!, maintenanceMode: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}maintenance_mode'])!, maintenanceMessage: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}maintenance_message'])!, featuredEventIds: $IsarAppSettingsTableTable.$converterfeaturedEventIds.fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}featured_event_ids'])!), maxTicketsPerOrder: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}max_tickets_per_order'])!, currencyCode: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}currency_code'])!, currencySymbol: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}currency_symbol'])!, updatedAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!, updatedByEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}updated_by_email']), stripePublishableKey: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}stripe_publishable_key']), paymentSimulation: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}payment_simulation'])!, );
}
@override
$IsarAppSettingsTableTable createAlias(String alias) {
return $IsarAppSettingsTableTable(attachedDatabase, alias);}static TypeConverter<List<String>,String> $converterfeaturedEventIds = _stringList;}class IsarAppSettings extends DataClass implements Insertable<IsarAppSettings> 
{
final int isarId;
final String key;
final double taxRate;
final double serviceFeeRate;
final String supportEmail;
final bool maintenanceMode;
final String maintenanceMessage;
final List<String> featuredEventIds;
final int maxTicketsPerOrder;
final String currencyCode;
final String currencySymbol;
final DateTime updatedAt;
final String? updatedByEmail;
final String? stripePublishableKey;
final bool paymentSimulation;
const IsarAppSettings({required this.isarId, required this.key, required this.taxRate, required this.serviceFeeRate, required this.supportEmail, required this.maintenanceMode, required this.maintenanceMessage, required this.featuredEventIds, required this.maxTicketsPerOrder, required this.currencyCode, required this.currencySymbol, required this.updatedAt, this.updatedByEmail, this.stripePublishableKey, required this.paymentSimulation});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['key'] = Variable<String>(key);
map['tax_rate'] = Variable<double>(taxRate);
map['service_fee_rate'] = Variable<double>(serviceFeeRate);
map['support_email'] = Variable<String>(supportEmail);
map['maintenance_mode'] = Variable<bool>(maintenanceMode);
map['maintenance_message'] = Variable<String>(maintenanceMessage);
{map['featured_event_ids'] = Variable<String>($IsarAppSettingsTableTable.$converterfeaturedEventIds.toSql(featuredEventIds));
}map['max_tickets_per_order'] = Variable<int>(maxTicketsPerOrder);
map['currency_code'] = Variable<String>(currencyCode);
map['currency_symbol'] = Variable<String>(currencySymbol);
map['updated_at'] = Variable<DateTime>(updatedAt);
if (!nullToAbsent || updatedByEmail != null){map['updated_by_email'] = Variable<String>(updatedByEmail);
}if (!nullToAbsent || stripePublishableKey != null){map['stripe_publishable_key'] = Variable<String>(stripePublishableKey);
}map['payment_simulation'] = Variable<bool>(paymentSimulation);
return map; 
}
IsarAppSettingsTableCompanion toCompanion(bool nullToAbsent) {
return IsarAppSettingsTableCompanion(isarId: Value(isarId),key: Value(key),taxRate: Value(taxRate),serviceFeeRate: Value(serviceFeeRate),supportEmail: Value(supportEmail),maintenanceMode: Value(maintenanceMode),maintenanceMessage: Value(maintenanceMessage),featuredEventIds: Value(featuredEventIds),maxTicketsPerOrder: Value(maxTicketsPerOrder),currencyCode: Value(currencyCode),currencySymbol: Value(currencySymbol),updatedAt: Value(updatedAt),updatedByEmail: updatedByEmail == null && nullToAbsent ? const Value.absent() : Value(updatedByEmail),stripePublishableKey: stripePublishableKey == null && nullToAbsent ? const Value.absent() : Value(stripePublishableKey),paymentSimulation: Value(paymentSimulation),);
}
factory IsarAppSettings.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarAppSettings(isarId: serializer.fromJson<int>(json['isarId']),key: serializer.fromJson<String>(json['key']),taxRate: serializer.fromJson<double>(json['taxRate']),serviceFeeRate: serializer.fromJson<double>(json['serviceFeeRate']),supportEmail: serializer.fromJson<String>(json['supportEmail']),maintenanceMode: serializer.fromJson<bool>(json['maintenanceMode']),maintenanceMessage: serializer.fromJson<String>(json['maintenanceMessage']),featuredEventIds: serializer.fromJson<List<String>>(json['featuredEventIds']),maxTicketsPerOrder: serializer.fromJson<int>(json['maxTicketsPerOrder']),currencyCode: serializer.fromJson<String>(json['currencyCode']),currencySymbol: serializer.fromJson<String>(json['currencySymbol']),updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),updatedByEmail: serializer.fromJson<String?>(json['updatedByEmail']),stripePublishableKey: serializer.fromJson<String?>(json['stripePublishableKey']),paymentSimulation: serializer.fromJson<bool>(json['paymentSimulation']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'key': serializer.toJson<String>(key),'taxRate': serializer.toJson<double>(taxRate),'serviceFeeRate': serializer.toJson<double>(serviceFeeRate),'supportEmail': serializer.toJson<String>(supportEmail),'maintenanceMode': serializer.toJson<bool>(maintenanceMode),'maintenanceMessage': serializer.toJson<String>(maintenanceMessage),'featuredEventIds': serializer.toJson<List<String>>(featuredEventIds),'maxTicketsPerOrder': serializer.toJson<int>(maxTicketsPerOrder),'currencyCode': serializer.toJson<String>(currencyCode),'currencySymbol': serializer.toJson<String>(currencySymbol),'updatedAt': serializer.toJson<DateTime>(updatedAt),'updatedByEmail': serializer.toJson<String?>(updatedByEmail),'stripePublishableKey': serializer.toJson<String?>(stripePublishableKey),'paymentSimulation': serializer.toJson<bool>(paymentSimulation),};}IsarAppSettings copyWith({int? isarId,String? key,double? taxRate,double? serviceFeeRate,String? supportEmail,bool? maintenanceMode,String? maintenanceMessage,List<String>? featuredEventIds,int? maxTicketsPerOrder,String? currencyCode,String? currencySymbol,DateTime? updatedAt,Value<String?> updatedByEmail = const Value.absent(),Value<String?> stripePublishableKey = const Value.absent(),bool? paymentSimulation}) => IsarAppSettings(isarId: isarId ?? this.isarId,key: key ?? this.key,taxRate: taxRate ?? this.taxRate,serviceFeeRate: serviceFeeRate ?? this.serviceFeeRate,supportEmail: supportEmail ?? this.supportEmail,maintenanceMode: maintenanceMode ?? this.maintenanceMode,maintenanceMessage: maintenanceMessage ?? this.maintenanceMessage,featuredEventIds: featuredEventIds ?? this.featuredEventIds,maxTicketsPerOrder: maxTicketsPerOrder ?? this.maxTicketsPerOrder,currencyCode: currencyCode ?? this.currencyCode,currencySymbol: currencySymbol ?? this.currencySymbol,updatedAt: updatedAt ?? this.updatedAt,updatedByEmail: updatedByEmail.present ? updatedByEmail.value : this.updatedByEmail,stripePublishableKey: stripePublishableKey.present ? stripePublishableKey.value : this.stripePublishableKey,paymentSimulation: paymentSimulation ?? this.paymentSimulation,);IsarAppSettings copyWithCompanion(IsarAppSettingsTableCompanion data) {
return IsarAppSettings(
isarId: data.isarId.present ? data.isarId.value : this.isarId,key: data.key.present ? data.key.value : this.key,taxRate: data.taxRate.present ? data.taxRate.value : this.taxRate,serviceFeeRate: data.serviceFeeRate.present ? data.serviceFeeRate.value : this.serviceFeeRate,supportEmail: data.supportEmail.present ? data.supportEmail.value : this.supportEmail,maintenanceMode: data.maintenanceMode.present ? data.maintenanceMode.value : this.maintenanceMode,maintenanceMessage: data.maintenanceMessage.present ? data.maintenanceMessage.value : this.maintenanceMessage,featuredEventIds: data.featuredEventIds.present ? data.featuredEventIds.value : this.featuredEventIds,maxTicketsPerOrder: data.maxTicketsPerOrder.present ? data.maxTicketsPerOrder.value : this.maxTicketsPerOrder,currencyCode: data.currencyCode.present ? data.currencyCode.value : this.currencyCode,currencySymbol: data.currencySymbol.present ? data.currencySymbol.value : this.currencySymbol,updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,updatedByEmail: data.updatedByEmail.present ? data.updatedByEmail.value : this.updatedByEmail,stripePublishableKey: data.stripePublishableKey.present ? data.stripePublishableKey.value : this.stripePublishableKey,paymentSimulation: data.paymentSimulation.present ? data.paymentSimulation.value : this.paymentSimulation,);
}
@override
String toString() {return (StringBuffer('IsarAppSettings(')..write('isarId: $isarId, ')..write('key: $key, ')..write('taxRate: $taxRate, ')..write('serviceFeeRate: $serviceFeeRate, ')..write('supportEmail: $supportEmail, ')..write('maintenanceMode: $maintenanceMode, ')..write('maintenanceMessage: $maintenanceMessage, ')..write('featuredEventIds: $featuredEventIds, ')..write('maxTicketsPerOrder: $maxTicketsPerOrder, ')..write('currencyCode: $currencyCode, ')..write('currencySymbol: $currencySymbol, ')..write('updatedAt: $updatedAt, ')..write('updatedByEmail: $updatedByEmail, ')..write('stripePublishableKey: $stripePublishableKey, ')..write('paymentSimulation: $paymentSimulation')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, key, taxRate, serviceFeeRate, supportEmail, maintenanceMode, maintenanceMessage, featuredEventIds, maxTicketsPerOrder, currencyCode, currencySymbol, updatedAt, updatedByEmail, stripePublishableKey, paymentSimulation);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarAppSettings && other.isarId == this.isarId && other.key == this.key && other.taxRate == this.taxRate && other.serviceFeeRate == this.serviceFeeRate && other.supportEmail == this.supportEmail && other.maintenanceMode == this.maintenanceMode && other.maintenanceMessage == this.maintenanceMessage && other.featuredEventIds == this.featuredEventIds && other.maxTicketsPerOrder == this.maxTicketsPerOrder && other.currencyCode == this.currencyCode && other.currencySymbol == this.currencySymbol && other.updatedAt == this.updatedAt && other.updatedByEmail == this.updatedByEmail && other.stripePublishableKey == this.stripePublishableKey && other.paymentSimulation == this.paymentSimulation);
}class IsarAppSettingsTableCompanion extends UpdateCompanion<IsarAppSettings> {
final Value<int> isarId;
final Value<String> key;
final Value<double> taxRate;
final Value<double> serviceFeeRate;
final Value<String> supportEmail;
final Value<bool> maintenanceMode;
final Value<String> maintenanceMessage;
final Value<List<String>> featuredEventIds;
final Value<int> maxTicketsPerOrder;
final Value<String> currencyCode;
final Value<String> currencySymbol;
final Value<DateTime> updatedAt;
final Value<String?> updatedByEmail;
final Value<String?> stripePublishableKey;
final Value<bool> paymentSimulation;
const IsarAppSettingsTableCompanion({this.isarId = const Value.absent(),this.key = const Value.absent(),this.taxRate = const Value.absent(),this.serviceFeeRate = const Value.absent(),this.supportEmail = const Value.absent(),this.maintenanceMode = const Value.absent(),this.maintenanceMessage = const Value.absent(),this.featuredEventIds = const Value.absent(),this.maxTicketsPerOrder = const Value.absent(),this.currencyCode = const Value.absent(),this.currencySymbol = const Value.absent(),this.updatedAt = const Value.absent(),this.updatedByEmail = const Value.absent(),this.stripePublishableKey = const Value.absent(),this.paymentSimulation = const Value.absent(),});
IsarAppSettingsTableCompanion.insert({this.isarId = const Value.absent(),required String key,required double taxRate,required double serviceFeeRate,required String supportEmail,required bool maintenanceMode,required String maintenanceMessage,this.featuredEventIds = const Value.absent(),required int maxTicketsPerOrder,required String currencyCode,required String currencySymbol,required DateTime updatedAt,this.updatedByEmail = const Value.absent(),this.stripePublishableKey = const Value.absent(),this.paymentSimulation = const Value.absent(),}): key = Value(key), taxRate = Value(taxRate), serviceFeeRate = Value(serviceFeeRate), supportEmail = Value(supportEmail), maintenanceMode = Value(maintenanceMode), maintenanceMessage = Value(maintenanceMessage), maxTicketsPerOrder = Value(maxTicketsPerOrder), currencyCode = Value(currencyCode), currencySymbol = Value(currencySymbol), updatedAt = Value(updatedAt);
static Insertable<IsarAppSettings> custom({Expression<int>? isarId, 
Expression<String>? key, 
Expression<double>? taxRate, 
Expression<double>? serviceFeeRate, 
Expression<String>? supportEmail, 
Expression<bool>? maintenanceMode, 
Expression<String>? maintenanceMessage, 
Expression<String>? featuredEventIds, 
Expression<int>? maxTicketsPerOrder, 
Expression<String>? currencyCode, 
Expression<String>? currencySymbol, 
Expression<DateTime>? updatedAt, 
Expression<String>? updatedByEmail, 
Expression<String>? stripePublishableKey, 
Expression<bool>? paymentSimulation, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (key != null)'key': key,if (taxRate != null)'tax_rate': taxRate,if (serviceFeeRate != null)'service_fee_rate': serviceFeeRate,if (supportEmail != null)'support_email': supportEmail,if (maintenanceMode != null)'maintenance_mode': maintenanceMode,if (maintenanceMessage != null)'maintenance_message': maintenanceMessage,if (featuredEventIds != null)'featured_event_ids': featuredEventIds,if (maxTicketsPerOrder != null)'max_tickets_per_order': maxTicketsPerOrder,if (currencyCode != null)'currency_code': currencyCode,if (currencySymbol != null)'currency_symbol': currencySymbol,if (updatedAt != null)'updated_at': updatedAt,if (updatedByEmail != null)'updated_by_email': updatedByEmail,if (stripePublishableKey != null)'stripe_publishable_key': stripePublishableKey,if (paymentSimulation != null)'payment_simulation': paymentSimulation,});
}IsarAppSettingsTableCompanion copyWith({Value<int>? isarId, Value<String>? key, Value<double>? taxRate, Value<double>? serviceFeeRate, Value<String>? supportEmail, Value<bool>? maintenanceMode, Value<String>? maintenanceMessage, Value<List<String>>? featuredEventIds, Value<int>? maxTicketsPerOrder, Value<String>? currencyCode, Value<String>? currencySymbol, Value<DateTime>? updatedAt, Value<String?>? updatedByEmail, Value<String?>? stripePublishableKey, Value<bool>? paymentSimulation}) {
return IsarAppSettingsTableCompanion(isarId: isarId ?? this.isarId,key: key ?? this.key,taxRate: taxRate ?? this.taxRate,serviceFeeRate: serviceFeeRate ?? this.serviceFeeRate,supportEmail: supportEmail ?? this.supportEmail,maintenanceMode: maintenanceMode ?? this.maintenanceMode,maintenanceMessage: maintenanceMessage ?? this.maintenanceMessage,featuredEventIds: featuredEventIds ?? this.featuredEventIds,maxTicketsPerOrder: maxTicketsPerOrder ?? this.maxTicketsPerOrder,currencyCode: currencyCode ?? this.currencyCode,currencySymbol: currencySymbol ?? this.currencySymbol,updatedAt: updatedAt ?? this.updatedAt,updatedByEmail: updatedByEmail ?? this.updatedByEmail,stripePublishableKey: stripePublishableKey ?? this.stripePublishableKey,paymentSimulation: paymentSimulation ?? this.paymentSimulation,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (key.present) {
map['key'] = Variable<String>(key.value);}
if (taxRate.present) {
map['tax_rate'] = Variable<double>(taxRate.value);}
if (serviceFeeRate.present) {
map['service_fee_rate'] = Variable<double>(serviceFeeRate.value);}
if (supportEmail.present) {
map['support_email'] = Variable<String>(supportEmail.value);}
if (maintenanceMode.present) {
map['maintenance_mode'] = Variable<bool>(maintenanceMode.value);}
if (maintenanceMessage.present) {
map['maintenance_message'] = Variable<String>(maintenanceMessage.value);}
if (featuredEventIds.present) {
map['featured_event_ids'] = Variable<String>($IsarAppSettingsTableTable.$converterfeaturedEventIds.toSql(featuredEventIds.value));}
if (maxTicketsPerOrder.present) {
map['max_tickets_per_order'] = Variable<int>(maxTicketsPerOrder.value);}
if (currencyCode.present) {
map['currency_code'] = Variable<String>(currencyCode.value);}
if (currencySymbol.present) {
map['currency_symbol'] = Variable<String>(currencySymbol.value);}
if (updatedAt.present) {
map['updated_at'] = Variable<DateTime>(updatedAt.value);}
if (updatedByEmail.present) {
map['updated_by_email'] = Variable<String>(updatedByEmail.value);}
if (stripePublishableKey.present) {
map['stripe_publishable_key'] = Variable<String>(stripePublishableKey.value);}
if (paymentSimulation.present) {
map['payment_simulation'] = Variable<bool>(paymentSimulation.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarAppSettingsTableCompanion(')..write('isarId: $isarId, ')..write('key: $key, ')..write('taxRate: $taxRate, ')..write('serviceFeeRate: $serviceFeeRate, ')..write('supportEmail: $supportEmail, ')..write('maintenanceMode: $maintenanceMode, ')..write('maintenanceMessage: $maintenanceMessage, ')..write('featuredEventIds: $featuredEventIds, ')..write('maxTicketsPerOrder: $maxTicketsPerOrder, ')..write('currencyCode: $currencyCode, ')..write('currencySymbol: $currencySymbol, ')..write('updatedAt: $updatedAt, ')..write('updatedByEmail: $updatedByEmail, ')..write('stripePublishableKey: $stripePublishableKey, ')..write('paymentSimulation: $paymentSimulation')..write(')')).toString();}
}
class $IsarPromoCodesTable extends IsarPromoCodes with TableInfo<$IsarPromoCodesTable, IsarPromoCode>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarPromoCodesTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _codeMeta = const VerificationMeta('code');
@override
late final GeneratedColumn<String> code = GeneratedColumn<String>('code', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _labelMeta = const VerificationMeta('label');
@override
late final GeneratedColumn<String> label = GeneratedColumn<String>('label', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _emojiMeta = const VerificationMeta('emoji');
@override
late final GeneratedColumn<String> emoji = GeneratedColumn<String>('emoji', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _discountTypeMeta = const VerificationMeta('discountType');
@override
late final GeneratedColumn<String> discountType = GeneratedColumn<String>('discount_type', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _discountValueMeta = const VerificationMeta('discountValue');
@override
late final GeneratedColumn<double> discountValue = GeneratedColumn<double>('discount_value', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _minSubtotalMeta = const VerificationMeta('minSubtotal');
@override
late final GeneratedColumn<double> minSubtotal = GeneratedColumn<double>('min_subtotal', aliasedName, false, type: DriftSqlType.double, requiredDuringInsert: true);
static const VerificationMeta _expiresAtMeta = const VerificationMeta('expiresAt');
@override
late final GeneratedColumn<DateTime> expiresAt = GeneratedColumn<DateTime>('expires_at', aliasedName, true, type: DriftSqlType.dateTime, requiredDuringInsert: false);
static const VerificationMeta _maxUsesMeta = const VerificationMeta('maxUses');
@override
late final GeneratedColumn<int> maxUses = GeneratedColumn<int>('max_uses', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
static const VerificationMeta _usedCountMeta = const VerificationMeta('usedCount');
@override
late final GeneratedColumn<int> usedCount = GeneratedColumn<int>('used_count', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: false, defaultValue: const Constant(0));
static const VerificationMeta _isActiveMeta = const VerificationMeta('isActive');
@override
late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>('is_active', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_active" IN (0, 1))'), defaultValue: const Constant(true));
static const VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
@override
late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>('created_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _createdByEmailMeta = const VerificationMeta('createdByEmail');
@override
late final GeneratedColumn<String> createdByEmail = GeneratedColumn<String>('created_by_email', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, code, label, emoji, discountType, discountValue, minSubtotal, expiresAt, maxUses, usedCount, isActive, createdAt, createdByEmail];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_promo_codes';
@override
VerificationContext validateIntegrity(Insertable<IsarPromoCode> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('code')) {
context.handle(_codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));} else if (isInserting) {
context.missing(_codeMeta);
}
if (data.containsKey('label')) {
context.handle(_labelMeta, label.isAcceptableOrUnknown(data['label']!, _labelMeta));} else if (isInserting) {
context.missing(_labelMeta);
}
if (data.containsKey('emoji')) {
context.handle(_emojiMeta, emoji.isAcceptableOrUnknown(data['emoji']!, _emojiMeta));} else if (isInserting) {
context.missing(_emojiMeta);
}
if (data.containsKey('discount_type')) {
context.handle(_discountTypeMeta, discountType.isAcceptableOrUnknown(data['discount_type']!, _discountTypeMeta));} else if (isInserting) {
context.missing(_discountTypeMeta);
}
if (data.containsKey('discount_value')) {
context.handle(_discountValueMeta, discountValue.isAcceptableOrUnknown(data['discount_value']!, _discountValueMeta));} else if (isInserting) {
context.missing(_discountValueMeta);
}
if (data.containsKey('min_subtotal')) {
context.handle(_minSubtotalMeta, minSubtotal.isAcceptableOrUnknown(data['min_subtotal']!, _minSubtotalMeta));} else if (isInserting) {
context.missing(_minSubtotalMeta);
}
if (data.containsKey('expires_at')) {
context.handle(_expiresAtMeta, expiresAt.isAcceptableOrUnknown(data['expires_at']!, _expiresAtMeta));}if (data.containsKey('max_uses')) {
context.handle(_maxUsesMeta, maxUses.isAcceptableOrUnknown(data['max_uses']!, _maxUsesMeta));} else if (isInserting) {
context.missing(_maxUsesMeta);
}
if (data.containsKey('used_count')) {
context.handle(_usedCountMeta, usedCount.isAcceptableOrUnknown(data['used_count']!, _usedCountMeta));}if (data.containsKey('is_active')) {
context.handle(_isActiveMeta, isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta));}if (data.containsKey('created_at')) {
context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));} else if (isInserting) {
context.missing(_createdAtMeta);
}
if (data.containsKey('created_by_email')) {
context.handle(_createdByEmailMeta, createdByEmail.isAcceptableOrUnknown(data['created_by_email']!, _createdByEmailMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarPromoCode map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarPromoCode(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, code: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}code'])!, label: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}label'])!, emoji: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}emoji'])!, discountType: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}discount_type'])!, discountValue: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}discount_value'])!, minSubtotal: attachedDatabase.typeMapping.read(DriftSqlType.double, data['${effectivePrefix}min_subtotal'])!, expiresAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}expires_at']), maxUses: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}max_uses'])!, usedCount: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}used_count'])!, isActive: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_active'])!, createdAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!, createdByEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}created_by_email']), );
}
@override
$IsarPromoCodesTable createAlias(String alias) {
return $IsarPromoCodesTable(attachedDatabase, alias);}}class IsarPromoCode extends DataClass implements Insertable<IsarPromoCode> 
{
final int isarId;
final String code;
final String label;
final String emoji;
final String discountType;
final double discountValue;
final double minSubtotal;
final DateTime? expiresAt;
final int maxUses;
final int usedCount;
final bool isActive;
final DateTime createdAt;
final String? createdByEmail;
const IsarPromoCode({required this.isarId, required this.code, required this.label, required this.emoji, required this.discountType, required this.discountValue, required this.minSubtotal, this.expiresAt, required this.maxUses, required this.usedCount, required this.isActive, required this.createdAt, this.createdByEmail});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['code'] = Variable<String>(code);
map['label'] = Variable<String>(label);
map['emoji'] = Variable<String>(emoji);
map['discount_type'] = Variable<String>(discountType);
map['discount_value'] = Variable<double>(discountValue);
map['min_subtotal'] = Variable<double>(minSubtotal);
if (!nullToAbsent || expiresAt != null){map['expires_at'] = Variable<DateTime>(expiresAt);
}map['max_uses'] = Variable<int>(maxUses);
map['used_count'] = Variable<int>(usedCount);
map['is_active'] = Variable<bool>(isActive);
map['created_at'] = Variable<DateTime>(createdAt);
if (!nullToAbsent || createdByEmail != null){map['created_by_email'] = Variable<String>(createdByEmail);
}return map; 
}
IsarPromoCodesCompanion toCompanion(bool nullToAbsent) {
return IsarPromoCodesCompanion(isarId: Value(isarId),code: Value(code),label: Value(label),emoji: Value(emoji),discountType: Value(discountType),discountValue: Value(discountValue),minSubtotal: Value(minSubtotal),expiresAt: expiresAt == null && nullToAbsent ? const Value.absent() : Value(expiresAt),maxUses: Value(maxUses),usedCount: Value(usedCount),isActive: Value(isActive),createdAt: Value(createdAt),createdByEmail: createdByEmail == null && nullToAbsent ? const Value.absent() : Value(createdByEmail),);
}
factory IsarPromoCode.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarPromoCode(isarId: serializer.fromJson<int>(json['isarId']),code: serializer.fromJson<String>(json['code']),label: serializer.fromJson<String>(json['label']),emoji: serializer.fromJson<String>(json['emoji']),discountType: serializer.fromJson<String>(json['discountType']),discountValue: serializer.fromJson<double>(json['discountValue']),minSubtotal: serializer.fromJson<double>(json['minSubtotal']),expiresAt: serializer.fromJson<DateTime?>(json['expiresAt']),maxUses: serializer.fromJson<int>(json['maxUses']),usedCount: serializer.fromJson<int>(json['usedCount']),isActive: serializer.fromJson<bool>(json['isActive']),createdAt: serializer.fromJson<DateTime>(json['createdAt']),createdByEmail: serializer.fromJson<String?>(json['createdByEmail']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'code': serializer.toJson<String>(code),'label': serializer.toJson<String>(label),'emoji': serializer.toJson<String>(emoji),'discountType': serializer.toJson<String>(discountType),'discountValue': serializer.toJson<double>(discountValue),'minSubtotal': serializer.toJson<double>(minSubtotal),'expiresAt': serializer.toJson<DateTime?>(expiresAt),'maxUses': serializer.toJson<int>(maxUses),'usedCount': serializer.toJson<int>(usedCount),'isActive': serializer.toJson<bool>(isActive),'createdAt': serializer.toJson<DateTime>(createdAt),'createdByEmail': serializer.toJson<String?>(createdByEmail),};}IsarPromoCode copyWith({int? isarId,String? code,String? label,String? emoji,String? discountType,double? discountValue,double? minSubtotal,Value<DateTime?> expiresAt = const Value.absent(),int? maxUses,int? usedCount,bool? isActive,DateTime? createdAt,Value<String?> createdByEmail = const Value.absent()}) => IsarPromoCode(isarId: isarId ?? this.isarId,code: code ?? this.code,label: label ?? this.label,emoji: emoji ?? this.emoji,discountType: discountType ?? this.discountType,discountValue: discountValue ?? this.discountValue,minSubtotal: minSubtotal ?? this.minSubtotal,expiresAt: expiresAt.present ? expiresAt.value : this.expiresAt,maxUses: maxUses ?? this.maxUses,usedCount: usedCount ?? this.usedCount,isActive: isActive ?? this.isActive,createdAt: createdAt ?? this.createdAt,createdByEmail: createdByEmail.present ? createdByEmail.value : this.createdByEmail,);IsarPromoCode copyWithCompanion(IsarPromoCodesCompanion data) {
return IsarPromoCode(
isarId: data.isarId.present ? data.isarId.value : this.isarId,code: data.code.present ? data.code.value : this.code,label: data.label.present ? data.label.value : this.label,emoji: data.emoji.present ? data.emoji.value : this.emoji,discountType: data.discountType.present ? data.discountType.value : this.discountType,discountValue: data.discountValue.present ? data.discountValue.value : this.discountValue,minSubtotal: data.minSubtotal.present ? data.minSubtotal.value : this.minSubtotal,expiresAt: data.expiresAt.present ? data.expiresAt.value : this.expiresAt,maxUses: data.maxUses.present ? data.maxUses.value : this.maxUses,usedCount: data.usedCount.present ? data.usedCount.value : this.usedCount,isActive: data.isActive.present ? data.isActive.value : this.isActive,createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,createdByEmail: data.createdByEmail.present ? data.createdByEmail.value : this.createdByEmail,);
}
@override
String toString() {return (StringBuffer('IsarPromoCode(')..write('isarId: $isarId, ')..write('code: $code, ')..write('label: $label, ')..write('emoji: $emoji, ')..write('discountType: $discountType, ')..write('discountValue: $discountValue, ')..write('minSubtotal: $minSubtotal, ')..write('expiresAt: $expiresAt, ')..write('maxUses: $maxUses, ')..write('usedCount: $usedCount, ')..write('isActive: $isActive, ')..write('createdAt: $createdAt, ')..write('createdByEmail: $createdByEmail')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, code, label, emoji, discountType, discountValue, minSubtotal, expiresAt, maxUses, usedCount, isActive, createdAt, createdByEmail);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarPromoCode && other.isarId == this.isarId && other.code == this.code && other.label == this.label && other.emoji == this.emoji && other.discountType == this.discountType && other.discountValue == this.discountValue && other.minSubtotal == this.minSubtotal && other.expiresAt == this.expiresAt && other.maxUses == this.maxUses && other.usedCount == this.usedCount && other.isActive == this.isActive && other.createdAt == this.createdAt && other.createdByEmail == this.createdByEmail);
}class IsarPromoCodesCompanion extends UpdateCompanion<IsarPromoCode> {
final Value<int> isarId;
final Value<String> code;
final Value<String> label;
final Value<String> emoji;
final Value<String> discountType;
final Value<double> discountValue;
final Value<double> minSubtotal;
final Value<DateTime?> expiresAt;
final Value<int> maxUses;
final Value<int> usedCount;
final Value<bool> isActive;
final Value<DateTime> createdAt;
final Value<String?> createdByEmail;
const IsarPromoCodesCompanion({this.isarId = const Value.absent(),this.code = const Value.absent(),this.label = const Value.absent(),this.emoji = const Value.absent(),this.discountType = const Value.absent(),this.discountValue = const Value.absent(),this.minSubtotal = const Value.absent(),this.expiresAt = const Value.absent(),this.maxUses = const Value.absent(),this.usedCount = const Value.absent(),this.isActive = const Value.absent(),this.createdAt = const Value.absent(),this.createdByEmail = const Value.absent(),});
IsarPromoCodesCompanion.insert({this.isarId = const Value.absent(),required String code,required String label,required String emoji,required String discountType,required double discountValue,required double minSubtotal,this.expiresAt = const Value.absent(),required int maxUses,this.usedCount = const Value.absent(),this.isActive = const Value.absent(),required DateTime createdAt,this.createdByEmail = const Value.absent(),}): code = Value(code), label = Value(label), emoji = Value(emoji), discountType = Value(discountType), discountValue = Value(discountValue), minSubtotal = Value(minSubtotal), maxUses = Value(maxUses), createdAt = Value(createdAt);
static Insertable<IsarPromoCode> custom({Expression<int>? isarId, 
Expression<String>? code, 
Expression<String>? label, 
Expression<String>? emoji, 
Expression<String>? discountType, 
Expression<double>? discountValue, 
Expression<double>? minSubtotal, 
Expression<DateTime>? expiresAt, 
Expression<int>? maxUses, 
Expression<int>? usedCount, 
Expression<bool>? isActive, 
Expression<DateTime>? createdAt, 
Expression<String>? createdByEmail, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (code != null)'code': code,if (label != null)'label': label,if (emoji != null)'emoji': emoji,if (discountType != null)'discount_type': discountType,if (discountValue != null)'discount_value': discountValue,if (minSubtotal != null)'min_subtotal': minSubtotal,if (expiresAt != null)'expires_at': expiresAt,if (maxUses != null)'max_uses': maxUses,if (usedCount != null)'used_count': usedCount,if (isActive != null)'is_active': isActive,if (createdAt != null)'created_at': createdAt,if (createdByEmail != null)'created_by_email': createdByEmail,});
}IsarPromoCodesCompanion copyWith({Value<int>? isarId, Value<String>? code, Value<String>? label, Value<String>? emoji, Value<String>? discountType, Value<double>? discountValue, Value<double>? minSubtotal, Value<DateTime?>? expiresAt, Value<int>? maxUses, Value<int>? usedCount, Value<bool>? isActive, Value<DateTime>? createdAt, Value<String?>? createdByEmail}) {
return IsarPromoCodesCompanion(isarId: isarId ?? this.isarId,code: code ?? this.code,label: label ?? this.label,emoji: emoji ?? this.emoji,discountType: discountType ?? this.discountType,discountValue: discountValue ?? this.discountValue,minSubtotal: minSubtotal ?? this.minSubtotal,expiresAt: expiresAt ?? this.expiresAt,maxUses: maxUses ?? this.maxUses,usedCount: usedCount ?? this.usedCount,isActive: isActive ?? this.isActive,createdAt: createdAt ?? this.createdAt,createdByEmail: createdByEmail ?? this.createdByEmail,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (code.present) {
map['code'] = Variable<String>(code.value);}
if (label.present) {
map['label'] = Variable<String>(label.value);}
if (emoji.present) {
map['emoji'] = Variable<String>(emoji.value);}
if (discountType.present) {
map['discount_type'] = Variable<String>(discountType.value);}
if (discountValue.present) {
map['discount_value'] = Variable<double>(discountValue.value);}
if (minSubtotal.present) {
map['min_subtotal'] = Variable<double>(minSubtotal.value);}
if (expiresAt.present) {
map['expires_at'] = Variable<DateTime>(expiresAt.value);}
if (maxUses.present) {
map['max_uses'] = Variable<int>(maxUses.value);}
if (usedCount.present) {
map['used_count'] = Variable<int>(usedCount.value);}
if (isActive.present) {
map['is_active'] = Variable<bool>(isActive.value);}
if (createdAt.present) {
map['created_at'] = Variable<DateTime>(createdAt.value);}
if (createdByEmail.present) {
map['created_by_email'] = Variable<String>(createdByEmail.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarPromoCodesCompanion(')..write('isarId: $isarId, ')..write('code: $code, ')..write('label: $label, ')..write('emoji: $emoji, ')..write('discountType: $discountType, ')..write('discountValue: $discountValue, ')..write('minSubtotal: $minSubtotal, ')..write('expiresAt: $expiresAt, ')..write('maxUses: $maxUses, ')..write('usedCount: $usedCount, ')..write('isActive: $isActive, ')..write('createdAt: $createdAt, ')..write('createdByEmail: $createdByEmail')..write(')')).toString();}
}
class $IsarPaymentMethodsTable extends IsarPaymentMethods with TableInfo<$IsarPaymentMethodsTable, IsarPaymentMethod>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarPaymentMethodsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _methodIdMeta = const VerificationMeta('methodId');
@override
late final GeneratedColumn<String> methodId = GeneratedColumn<String>('method_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _ownerEmailMeta = const VerificationMeta('ownerEmail');
@override
late final GeneratedColumn<String> ownerEmail = GeneratedColumn<String>('owner_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _brandMeta = const VerificationMeta('brand');
@override
late final GeneratedColumn<String> brand = GeneratedColumn<String>('brand', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _last4Meta = const VerificationMeta('last4');
@override
late final GeneratedColumn<String> last4 = GeneratedColumn<String>('last4', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _holderMeta = const VerificationMeta('holder');
@override
late final GeneratedColumn<String> holder = GeneratedColumn<String>('holder', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _expiryMeta = const VerificationMeta('expiry');
@override
late final GeneratedColumn<String> expiry = GeneratedColumn<String>('expiry', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _isDefaultMeta = const VerificationMeta('isDefault');
@override
late final GeneratedColumn<bool> isDefault = GeneratedColumn<bool>('is_default', aliasedName, false, type: DriftSqlType.bool, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('CHECK ("is_default" IN (0, 1))'), defaultValue: const Constant(false));
static const VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
@override
late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>('created_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
@override
List<GeneratedColumn> get $columns => [isarId, methodId, ownerEmail, brand, last4, holder, expiry, isDefault, createdAt];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_payment_methods';
@override
VerificationContext validateIntegrity(Insertable<IsarPaymentMethod> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('method_id')) {
context.handle(_methodIdMeta, methodId.isAcceptableOrUnknown(data['method_id']!, _methodIdMeta));} else if (isInserting) {
context.missing(_methodIdMeta);
}
if (data.containsKey('owner_email')) {
context.handle(_ownerEmailMeta, ownerEmail.isAcceptableOrUnknown(data['owner_email']!, _ownerEmailMeta));} else if (isInserting) {
context.missing(_ownerEmailMeta);
}
if (data.containsKey('brand')) {
context.handle(_brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));} else if (isInserting) {
context.missing(_brandMeta);
}
if (data.containsKey('last4')) {
context.handle(_last4Meta, last4.isAcceptableOrUnknown(data['last4']!, _last4Meta));} else if (isInserting) {
context.missing(_last4Meta);
}
if (data.containsKey('holder')) {
context.handle(_holderMeta, holder.isAcceptableOrUnknown(data['holder']!, _holderMeta));} else if (isInserting) {
context.missing(_holderMeta);
}
if (data.containsKey('expiry')) {
context.handle(_expiryMeta, expiry.isAcceptableOrUnknown(data['expiry']!, _expiryMeta));} else if (isInserting) {
context.missing(_expiryMeta);
}
if (data.containsKey('is_default')) {
context.handle(_isDefaultMeta, isDefault.isAcceptableOrUnknown(data['is_default']!, _isDefaultMeta));}if (data.containsKey('created_at')) {
context.handle(_createdAtMeta, createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));} else if (isInserting) {
context.missing(_createdAtMeta);
}
return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarPaymentMethod map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarPaymentMethod(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, methodId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}method_id'])!, ownerEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}owner_email'])!, brand: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}brand'])!, last4: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}last4'])!, holder: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}holder'])!, expiry: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}expiry'])!, isDefault: attachedDatabase.typeMapping.read(DriftSqlType.bool, data['${effectivePrefix}is_default'])!, createdAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!, );
}
@override
$IsarPaymentMethodsTable createAlias(String alias) {
return $IsarPaymentMethodsTable(attachedDatabase, alias);}}class IsarPaymentMethod extends DataClass implements Insertable<IsarPaymentMethod> 
{
final int isarId;
final String methodId;
final String ownerEmail;
final String brand;
final String last4;
final String holder;
final String expiry;
final bool isDefault;
final DateTime createdAt;
const IsarPaymentMethod({required this.isarId, required this.methodId, required this.ownerEmail, required this.brand, required this.last4, required this.holder, required this.expiry, required this.isDefault, required this.createdAt});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['method_id'] = Variable<String>(methodId);
map['owner_email'] = Variable<String>(ownerEmail);
map['brand'] = Variable<String>(brand);
map['last4'] = Variable<String>(last4);
map['holder'] = Variable<String>(holder);
map['expiry'] = Variable<String>(expiry);
map['is_default'] = Variable<bool>(isDefault);
map['created_at'] = Variable<DateTime>(createdAt);
return map; 
}
IsarPaymentMethodsCompanion toCompanion(bool nullToAbsent) {
return IsarPaymentMethodsCompanion(isarId: Value(isarId),methodId: Value(methodId),ownerEmail: Value(ownerEmail),brand: Value(brand),last4: Value(last4),holder: Value(holder),expiry: Value(expiry),isDefault: Value(isDefault),createdAt: Value(createdAt),);
}
factory IsarPaymentMethod.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarPaymentMethod(isarId: serializer.fromJson<int>(json['isarId']),methodId: serializer.fromJson<String>(json['methodId']),ownerEmail: serializer.fromJson<String>(json['ownerEmail']),brand: serializer.fromJson<String>(json['brand']),last4: serializer.fromJson<String>(json['last4']),holder: serializer.fromJson<String>(json['holder']),expiry: serializer.fromJson<String>(json['expiry']),isDefault: serializer.fromJson<bool>(json['isDefault']),createdAt: serializer.fromJson<DateTime>(json['createdAt']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'methodId': serializer.toJson<String>(methodId),'ownerEmail': serializer.toJson<String>(ownerEmail),'brand': serializer.toJson<String>(brand),'last4': serializer.toJson<String>(last4),'holder': serializer.toJson<String>(holder),'expiry': serializer.toJson<String>(expiry),'isDefault': serializer.toJson<bool>(isDefault),'createdAt': serializer.toJson<DateTime>(createdAt),};}IsarPaymentMethod copyWith({int? isarId,String? methodId,String? ownerEmail,String? brand,String? last4,String? holder,String? expiry,bool? isDefault,DateTime? createdAt}) => IsarPaymentMethod(isarId: isarId ?? this.isarId,methodId: methodId ?? this.methodId,ownerEmail: ownerEmail ?? this.ownerEmail,brand: brand ?? this.brand,last4: last4 ?? this.last4,holder: holder ?? this.holder,expiry: expiry ?? this.expiry,isDefault: isDefault ?? this.isDefault,createdAt: createdAt ?? this.createdAt,);IsarPaymentMethod copyWithCompanion(IsarPaymentMethodsCompanion data) {
return IsarPaymentMethod(
isarId: data.isarId.present ? data.isarId.value : this.isarId,methodId: data.methodId.present ? data.methodId.value : this.methodId,ownerEmail: data.ownerEmail.present ? data.ownerEmail.value : this.ownerEmail,brand: data.brand.present ? data.brand.value : this.brand,last4: data.last4.present ? data.last4.value : this.last4,holder: data.holder.present ? data.holder.value : this.holder,expiry: data.expiry.present ? data.expiry.value : this.expiry,isDefault: data.isDefault.present ? data.isDefault.value : this.isDefault,createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,);
}
@override
String toString() {return (StringBuffer('IsarPaymentMethod(')..write('isarId: $isarId, ')..write('methodId: $methodId, ')..write('ownerEmail: $ownerEmail, ')..write('brand: $brand, ')..write('last4: $last4, ')..write('holder: $holder, ')..write('expiry: $expiry, ')..write('isDefault: $isDefault, ')..write('createdAt: $createdAt')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, methodId, ownerEmail, brand, last4, holder, expiry, isDefault, createdAt);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarPaymentMethod && other.isarId == this.isarId && other.methodId == this.methodId && other.ownerEmail == this.ownerEmail && other.brand == this.brand && other.last4 == this.last4 && other.holder == this.holder && other.expiry == this.expiry && other.isDefault == this.isDefault && other.createdAt == this.createdAt);
}class IsarPaymentMethodsCompanion extends UpdateCompanion<IsarPaymentMethod> {
final Value<int> isarId;
final Value<String> methodId;
final Value<String> ownerEmail;
final Value<String> brand;
final Value<String> last4;
final Value<String> holder;
final Value<String> expiry;
final Value<bool> isDefault;
final Value<DateTime> createdAt;
const IsarPaymentMethodsCompanion({this.isarId = const Value.absent(),this.methodId = const Value.absent(),this.ownerEmail = const Value.absent(),this.brand = const Value.absent(),this.last4 = const Value.absent(),this.holder = const Value.absent(),this.expiry = const Value.absent(),this.isDefault = const Value.absent(),this.createdAt = const Value.absent(),});
IsarPaymentMethodsCompanion.insert({this.isarId = const Value.absent(),required String methodId,required String ownerEmail,required String brand,required String last4,required String holder,required String expiry,this.isDefault = const Value.absent(),required DateTime createdAt,}): methodId = Value(methodId), ownerEmail = Value(ownerEmail), brand = Value(brand), last4 = Value(last4), holder = Value(holder), expiry = Value(expiry), createdAt = Value(createdAt);
static Insertable<IsarPaymentMethod> custom({Expression<int>? isarId, 
Expression<String>? methodId, 
Expression<String>? ownerEmail, 
Expression<String>? brand, 
Expression<String>? last4, 
Expression<String>? holder, 
Expression<String>? expiry, 
Expression<bool>? isDefault, 
Expression<DateTime>? createdAt, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (methodId != null)'method_id': methodId,if (ownerEmail != null)'owner_email': ownerEmail,if (brand != null)'brand': brand,if (last4 != null)'last4': last4,if (holder != null)'holder': holder,if (expiry != null)'expiry': expiry,if (isDefault != null)'is_default': isDefault,if (createdAt != null)'created_at': createdAt,});
}IsarPaymentMethodsCompanion copyWith({Value<int>? isarId, Value<String>? methodId, Value<String>? ownerEmail, Value<String>? brand, Value<String>? last4, Value<String>? holder, Value<String>? expiry, Value<bool>? isDefault, Value<DateTime>? createdAt}) {
return IsarPaymentMethodsCompanion(isarId: isarId ?? this.isarId,methodId: methodId ?? this.methodId,ownerEmail: ownerEmail ?? this.ownerEmail,brand: brand ?? this.brand,last4: last4 ?? this.last4,holder: holder ?? this.holder,expiry: expiry ?? this.expiry,isDefault: isDefault ?? this.isDefault,createdAt: createdAt ?? this.createdAt,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (methodId.present) {
map['method_id'] = Variable<String>(methodId.value);}
if (ownerEmail.present) {
map['owner_email'] = Variable<String>(ownerEmail.value);}
if (brand.present) {
map['brand'] = Variable<String>(brand.value);}
if (last4.present) {
map['last4'] = Variable<String>(last4.value);}
if (holder.present) {
map['holder'] = Variable<String>(holder.value);}
if (expiry.present) {
map['expiry'] = Variable<String>(expiry.value);}
if (isDefault.present) {
map['is_default'] = Variable<bool>(isDefault.value);}
if (createdAt.present) {
map['created_at'] = Variable<DateTime>(createdAt.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarPaymentMethodsCompanion(')..write('isarId: $isarId, ')..write('methodId: $methodId, ')..write('ownerEmail: $ownerEmail, ')..write('brand: $brand, ')..write('last4: $last4, ')..write('holder: $holder, ')..write('expiry: $expiry, ')..write('isDefault: $isDefault, ')..write('createdAt: $createdAt')..write(')')).toString();}
}
class $IsarAdminActionsTable extends IsarAdminActions with TableInfo<$IsarAdminActionsTable, IsarAdminAction>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarAdminActionsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _actorEmailMeta = const VerificationMeta('actorEmail');
@override
late final GeneratedColumn<String> actorEmail = GeneratedColumn<String>('actor_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _actorRoleMeta = const VerificationMeta('actorRole');
@override
late final GeneratedColumn<String> actorRole = GeneratedColumn<String>('actor_role', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _actionMeta = const VerificationMeta('action');
@override
late final GeneratedColumn<String> action = GeneratedColumn<String>('action', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _entityTypeMeta = const VerificationMeta('entityType');
@override
late final GeneratedColumn<String> entityType = GeneratedColumn<String>('entity_type', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _entityIdMeta = const VerificationMeta('entityId');
@override
late final GeneratedColumn<String> entityId = GeneratedColumn<String>('entity_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _atMeta = const VerificationMeta('at');
@override
late final GeneratedColumn<DateTime> at = GeneratedColumn<DateTime>('at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _detailsMeta = const VerificationMeta('details');
@override
late final GeneratedColumn<String> details = GeneratedColumn<String>('details', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
@override
List<GeneratedColumn> get $columns => [isarId, actorEmail, actorRole, action, entityType, entityId, at, details];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_admin_actions';
@override
VerificationContext validateIntegrity(Insertable<IsarAdminAction> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('actor_email')) {
context.handle(_actorEmailMeta, actorEmail.isAcceptableOrUnknown(data['actor_email']!, _actorEmailMeta));} else if (isInserting) {
context.missing(_actorEmailMeta);
}
if (data.containsKey('actor_role')) {
context.handle(_actorRoleMeta, actorRole.isAcceptableOrUnknown(data['actor_role']!, _actorRoleMeta));} else if (isInserting) {
context.missing(_actorRoleMeta);
}
if (data.containsKey('action')) {
context.handle(_actionMeta, action.isAcceptableOrUnknown(data['action']!, _actionMeta));} else if (isInserting) {
context.missing(_actionMeta);
}
if (data.containsKey('entity_type')) {
context.handle(_entityTypeMeta, entityType.isAcceptableOrUnknown(data['entity_type']!, _entityTypeMeta));} else if (isInserting) {
context.missing(_entityTypeMeta);
}
if (data.containsKey('entity_id')) {
context.handle(_entityIdMeta, entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta));} else if (isInserting) {
context.missing(_entityIdMeta);
}
if (data.containsKey('at')) {
context.handle(_atMeta, at.isAcceptableOrUnknown(data['at']!, _atMeta));} else if (isInserting) {
context.missing(_atMeta);
}
if (data.containsKey('details')) {
context.handle(_detailsMeta, details.isAcceptableOrUnknown(data['details']!, _detailsMeta));}return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarAdminAction map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarAdminAction(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, actorEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}actor_email'])!, actorRole: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}actor_role'])!, action: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}action'])!, entityType: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}entity_type'])!, entityId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}entity_id'])!, at: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}at'])!, details: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}details']), );
}
@override
$IsarAdminActionsTable createAlias(String alias) {
return $IsarAdminActionsTable(attachedDatabase, alias);}}class IsarAdminAction extends DataClass implements Insertable<IsarAdminAction> 
{
final int isarId;
final String actorEmail;
final String actorRole;
final String action;
final String entityType;
final String entityId;
final DateTime at;
final String? details;
const IsarAdminAction({required this.isarId, required this.actorEmail, required this.actorRole, required this.action, required this.entityType, required this.entityId, required this.at, this.details});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['actor_email'] = Variable<String>(actorEmail);
map['actor_role'] = Variable<String>(actorRole);
map['action'] = Variable<String>(action);
map['entity_type'] = Variable<String>(entityType);
map['entity_id'] = Variable<String>(entityId);
map['at'] = Variable<DateTime>(at);
if (!nullToAbsent || details != null){map['details'] = Variable<String>(details);
}return map; 
}
IsarAdminActionsCompanion toCompanion(bool nullToAbsent) {
return IsarAdminActionsCompanion(isarId: Value(isarId),actorEmail: Value(actorEmail),actorRole: Value(actorRole),action: Value(action),entityType: Value(entityType),entityId: Value(entityId),at: Value(at),details: details == null && nullToAbsent ? const Value.absent() : Value(details),);
}
factory IsarAdminAction.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarAdminAction(isarId: serializer.fromJson<int>(json['isarId']),actorEmail: serializer.fromJson<String>(json['actorEmail']),actorRole: serializer.fromJson<String>(json['actorRole']),action: serializer.fromJson<String>(json['action']),entityType: serializer.fromJson<String>(json['entityType']),entityId: serializer.fromJson<String>(json['entityId']),at: serializer.fromJson<DateTime>(json['at']),details: serializer.fromJson<String?>(json['details']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'actorEmail': serializer.toJson<String>(actorEmail),'actorRole': serializer.toJson<String>(actorRole),'action': serializer.toJson<String>(action),'entityType': serializer.toJson<String>(entityType),'entityId': serializer.toJson<String>(entityId),'at': serializer.toJson<DateTime>(at),'details': serializer.toJson<String?>(details),};}IsarAdminAction copyWith({int? isarId,String? actorEmail,String? actorRole,String? action,String? entityType,String? entityId,DateTime? at,Value<String?> details = const Value.absent()}) => IsarAdminAction(isarId: isarId ?? this.isarId,actorEmail: actorEmail ?? this.actorEmail,actorRole: actorRole ?? this.actorRole,action: action ?? this.action,entityType: entityType ?? this.entityType,entityId: entityId ?? this.entityId,at: at ?? this.at,details: details.present ? details.value : this.details,);IsarAdminAction copyWithCompanion(IsarAdminActionsCompanion data) {
return IsarAdminAction(
isarId: data.isarId.present ? data.isarId.value : this.isarId,actorEmail: data.actorEmail.present ? data.actorEmail.value : this.actorEmail,actorRole: data.actorRole.present ? data.actorRole.value : this.actorRole,action: data.action.present ? data.action.value : this.action,entityType: data.entityType.present ? data.entityType.value : this.entityType,entityId: data.entityId.present ? data.entityId.value : this.entityId,at: data.at.present ? data.at.value : this.at,details: data.details.present ? data.details.value : this.details,);
}
@override
String toString() {return (StringBuffer('IsarAdminAction(')..write('isarId: $isarId, ')..write('actorEmail: $actorEmail, ')..write('actorRole: $actorRole, ')..write('action: $action, ')..write('entityType: $entityType, ')..write('entityId: $entityId, ')..write('at: $at, ')..write('details: $details')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, actorEmail, actorRole, action, entityType, entityId, at, details);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarAdminAction && other.isarId == this.isarId && other.actorEmail == this.actorEmail && other.actorRole == this.actorRole && other.action == this.action && other.entityType == this.entityType && other.entityId == this.entityId && other.at == this.at && other.details == this.details);
}class IsarAdminActionsCompanion extends UpdateCompanion<IsarAdminAction> {
final Value<int> isarId;
final Value<String> actorEmail;
final Value<String> actorRole;
final Value<String> action;
final Value<String> entityType;
final Value<String> entityId;
final Value<DateTime> at;
final Value<String?> details;
const IsarAdminActionsCompanion({this.isarId = const Value.absent(),this.actorEmail = const Value.absent(),this.actorRole = const Value.absent(),this.action = const Value.absent(),this.entityType = const Value.absent(),this.entityId = const Value.absent(),this.at = const Value.absent(),this.details = const Value.absent(),});
IsarAdminActionsCompanion.insert({this.isarId = const Value.absent(),required String actorEmail,required String actorRole,required String action,required String entityType,required String entityId,required DateTime at,this.details = const Value.absent(),}): actorEmail = Value(actorEmail), actorRole = Value(actorRole), action = Value(action), entityType = Value(entityType), entityId = Value(entityId), at = Value(at);
static Insertable<IsarAdminAction> custom({Expression<int>? isarId, 
Expression<String>? actorEmail, 
Expression<String>? actorRole, 
Expression<String>? action, 
Expression<String>? entityType, 
Expression<String>? entityId, 
Expression<DateTime>? at, 
Expression<String>? details, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (actorEmail != null)'actor_email': actorEmail,if (actorRole != null)'actor_role': actorRole,if (action != null)'action': action,if (entityType != null)'entity_type': entityType,if (entityId != null)'entity_id': entityId,if (at != null)'at': at,if (details != null)'details': details,});
}IsarAdminActionsCompanion copyWith({Value<int>? isarId, Value<String>? actorEmail, Value<String>? actorRole, Value<String>? action, Value<String>? entityType, Value<String>? entityId, Value<DateTime>? at, Value<String?>? details}) {
return IsarAdminActionsCompanion(isarId: isarId ?? this.isarId,actorEmail: actorEmail ?? this.actorEmail,actorRole: actorRole ?? this.actorRole,action: action ?? this.action,entityType: entityType ?? this.entityType,entityId: entityId ?? this.entityId,at: at ?? this.at,details: details ?? this.details,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (actorEmail.present) {
map['actor_email'] = Variable<String>(actorEmail.value);}
if (actorRole.present) {
map['actor_role'] = Variable<String>(actorRole.value);}
if (action.present) {
map['action'] = Variable<String>(action.value);}
if (entityType.present) {
map['entity_type'] = Variable<String>(entityType.value);}
if (entityId.present) {
map['entity_id'] = Variable<String>(entityId.value);}
if (at.present) {
map['at'] = Variable<DateTime>(at.value);}
if (details.present) {
map['details'] = Variable<String>(details.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarAdminActionsCompanion(')..write('isarId: $isarId, ')..write('actorEmail: $actorEmail, ')..write('actorRole: $actorRole, ')..write('action: $action, ')..write('entityType: $entityType, ')..write('entityId: $entityId, ')..write('at: $at, ')..write('details: $details')..write(')')).toString();}
}
class $IsarBroadcastNotificationsTable extends IsarBroadcastNotifications with TableInfo<$IsarBroadcastNotificationsTable, IsarBroadcastNotification>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$IsarBroadcastNotificationsTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _isarIdMeta = const VerificationMeta('isarId');
@override
late final GeneratedColumn<int> isarId = GeneratedColumn<int>('isar_id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _broadcastIdMeta = const VerificationMeta('broadcastId');
@override
late final GeneratedColumn<String> broadcastId = GeneratedColumn<String>('broadcast_id', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true, defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
static const VerificationMeta _titleMeta = const VerificationMeta('title');
@override
late final GeneratedColumn<String> title = GeneratedColumn<String>('title', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _bodyMeta = const VerificationMeta('body');
@override
late final GeneratedColumn<String> body = GeneratedColumn<String>('body', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _categoryMeta = const VerificationMeta('category');
@override
late final GeneratedColumn<String> category = GeneratedColumn<String>('category', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _actionRouteMeta = const VerificationMeta('actionRoute');
@override
late final GeneratedColumn<String> actionRoute = GeneratedColumn<String>('action_route', aliasedName, true, type: DriftSqlType.string, requiredDuringInsert: false);
static const VerificationMeta _audienceMeta = const VerificationMeta('audience');
@override
late final GeneratedColumn<String> audience = GeneratedColumn<String>('audience', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _sentAtMeta = const VerificationMeta('sentAt');
@override
late final GeneratedColumn<DateTime> sentAt = GeneratedColumn<DateTime>('sent_at', aliasedName, false, type: DriftSqlType.dateTime, requiredDuringInsert: true);
static const VerificationMeta _sentByEmailMeta = const VerificationMeta('sentByEmail');
@override
late final GeneratedColumn<String> sentByEmail = GeneratedColumn<String>('sent_by_email', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
@override
List<GeneratedColumn> get $columns => [isarId, broadcastId, title, body, category, actionRoute, audience, sentAt, sentByEmail];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'isar_broadcast_notifications';
@override
VerificationContext validateIntegrity(Insertable<IsarBroadcastNotification> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('isar_id')) {
context.handle(_isarIdMeta, isarId.isAcceptableOrUnknown(data['isar_id']!, _isarIdMeta));}if (data.containsKey('broadcast_id')) {
context.handle(_broadcastIdMeta, broadcastId.isAcceptableOrUnknown(data['broadcast_id']!, _broadcastIdMeta));} else if (isInserting) {
context.missing(_broadcastIdMeta);
}
if (data.containsKey('title')) {
context.handle(_titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));} else if (isInserting) {
context.missing(_titleMeta);
}
if (data.containsKey('body')) {
context.handle(_bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));} else if (isInserting) {
context.missing(_bodyMeta);
}
if (data.containsKey('category')) {
context.handle(_categoryMeta, category.isAcceptableOrUnknown(data['category']!, _categoryMeta));} else if (isInserting) {
context.missing(_categoryMeta);
}
if (data.containsKey('action_route')) {
context.handle(_actionRouteMeta, actionRoute.isAcceptableOrUnknown(data['action_route']!, _actionRouteMeta));}if (data.containsKey('audience')) {
context.handle(_audienceMeta, audience.isAcceptableOrUnknown(data['audience']!, _audienceMeta));} else if (isInserting) {
context.missing(_audienceMeta);
}
if (data.containsKey('sent_at')) {
context.handle(_sentAtMeta, sentAt.isAcceptableOrUnknown(data['sent_at']!, _sentAtMeta));} else if (isInserting) {
context.missing(_sentAtMeta);
}
if (data.containsKey('sent_by_email')) {
context.handle(_sentByEmailMeta, sentByEmail.isAcceptableOrUnknown(data['sent_by_email']!, _sentByEmailMeta));} else if (isInserting) {
context.missing(_sentByEmailMeta);
}
return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {isarId};
@override IsarBroadcastNotification map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return IsarBroadcastNotification(isarId: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}isar_id'])!, broadcastId: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}broadcast_id'])!, title: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}title'])!, body: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}body'])!, category: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}category'])!, actionRoute: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}action_route']), audience: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}audience'])!, sentAt: attachedDatabase.typeMapping.read(DriftSqlType.dateTime, data['${effectivePrefix}sent_at'])!, sentByEmail: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}sent_by_email'])!, );
}
@override
$IsarBroadcastNotificationsTable createAlias(String alias) {
return $IsarBroadcastNotificationsTable(attachedDatabase, alias);}}class IsarBroadcastNotification extends DataClass implements Insertable<IsarBroadcastNotification> 
{
final int isarId;
final String broadcastId;
final String title;
final String body;
final String category;
final String? actionRoute;
final String audience;
final DateTime sentAt;
final String sentByEmail;
const IsarBroadcastNotification({required this.isarId, required this.broadcastId, required this.title, required this.body, required this.category, this.actionRoute, required this.audience, required this.sentAt, required this.sentByEmail});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['isar_id'] = Variable<int>(isarId);
map['broadcast_id'] = Variable<String>(broadcastId);
map['title'] = Variable<String>(title);
map['body'] = Variable<String>(body);
map['category'] = Variable<String>(category);
if (!nullToAbsent || actionRoute != null){map['action_route'] = Variable<String>(actionRoute);
}map['audience'] = Variable<String>(audience);
map['sent_at'] = Variable<DateTime>(sentAt);
map['sent_by_email'] = Variable<String>(sentByEmail);
return map; 
}
IsarBroadcastNotificationsCompanion toCompanion(bool nullToAbsent) {
return IsarBroadcastNotificationsCompanion(isarId: Value(isarId),broadcastId: Value(broadcastId),title: Value(title),body: Value(body),category: Value(category),actionRoute: actionRoute == null && nullToAbsent ? const Value.absent() : Value(actionRoute),audience: Value(audience),sentAt: Value(sentAt),sentByEmail: Value(sentByEmail),);
}
factory IsarBroadcastNotification.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return IsarBroadcastNotification(isarId: serializer.fromJson<int>(json['isarId']),broadcastId: serializer.fromJson<String>(json['broadcastId']),title: serializer.fromJson<String>(json['title']),body: serializer.fromJson<String>(json['body']),category: serializer.fromJson<String>(json['category']),actionRoute: serializer.fromJson<String?>(json['actionRoute']),audience: serializer.fromJson<String>(json['audience']),sentAt: serializer.fromJson<DateTime>(json['sentAt']),sentByEmail: serializer.fromJson<String>(json['sentByEmail']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'isarId': serializer.toJson<int>(isarId),'broadcastId': serializer.toJson<String>(broadcastId),'title': serializer.toJson<String>(title),'body': serializer.toJson<String>(body),'category': serializer.toJson<String>(category),'actionRoute': serializer.toJson<String?>(actionRoute),'audience': serializer.toJson<String>(audience),'sentAt': serializer.toJson<DateTime>(sentAt),'sentByEmail': serializer.toJson<String>(sentByEmail),};}IsarBroadcastNotification copyWith({int? isarId,String? broadcastId,String? title,String? body,String? category,Value<String?> actionRoute = const Value.absent(),String? audience,DateTime? sentAt,String? sentByEmail}) => IsarBroadcastNotification(isarId: isarId ?? this.isarId,broadcastId: broadcastId ?? this.broadcastId,title: title ?? this.title,body: body ?? this.body,category: category ?? this.category,actionRoute: actionRoute.present ? actionRoute.value : this.actionRoute,audience: audience ?? this.audience,sentAt: sentAt ?? this.sentAt,sentByEmail: sentByEmail ?? this.sentByEmail,);IsarBroadcastNotification copyWithCompanion(IsarBroadcastNotificationsCompanion data) {
return IsarBroadcastNotification(
isarId: data.isarId.present ? data.isarId.value : this.isarId,broadcastId: data.broadcastId.present ? data.broadcastId.value : this.broadcastId,title: data.title.present ? data.title.value : this.title,body: data.body.present ? data.body.value : this.body,category: data.category.present ? data.category.value : this.category,actionRoute: data.actionRoute.present ? data.actionRoute.value : this.actionRoute,audience: data.audience.present ? data.audience.value : this.audience,sentAt: data.sentAt.present ? data.sentAt.value : this.sentAt,sentByEmail: data.sentByEmail.present ? data.sentByEmail.value : this.sentByEmail,);
}
@override
String toString() {return (StringBuffer('IsarBroadcastNotification(')..write('isarId: $isarId, ')..write('broadcastId: $broadcastId, ')..write('title: $title, ')..write('body: $body, ')..write('category: $category, ')..write('actionRoute: $actionRoute, ')..write('audience: $audience, ')..write('sentAt: $sentAt, ')..write('sentByEmail: $sentByEmail')..write(')')).toString();}
@override
 int get hashCode => Object.hash(isarId, broadcastId, title, body, category, actionRoute, audience, sentAt, sentByEmail);@override
bool operator ==(Object other) => identical(this, other) || (other is IsarBroadcastNotification && other.isarId == this.isarId && other.broadcastId == this.broadcastId && other.title == this.title && other.body == this.body && other.category == this.category && other.actionRoute == this.actionRoute && other.audience == this.audience && other.sentAt == this.sentAt && other.sentByEmail == this.sentByEmail);
}class IsarBroadcastNotificationsCompanion extends UpdateCompanion<IsarBroadcastNotification> {
final Value<int> isarId;
final Value<String> broadcastId;
final Value<String> title;
final Value<String> body;
final Value<String> category;
final Value<String?> actionRoute;
final Value<String> audience;
final Value<DateTime> sentAt;
final Value<String> sentByEmail;
const IsarBroadcastNotificationsCompanion({this.isarId = const Value.absent(),this.broadcastId = const Value.absent(),this.title = const Value.absent(),this.body = const Value.absent(),this.category = const Value.absent(),this.actionRoute = const Value.absent(),this.audience = const Value.absent(),this.sentAt = const Value.absent(),this.sentByEmail = const Value.absent(),});
IsarBroadcastNotificationsCompanion.insert({this.isarId = const Value.absent(),required String broadcastId,required String title,required String body,required String category,this.actionRoute = const Value.absent(),required String audience,required DateTime sentAt,required String sentByEmail,}): broadcastId = Value(broadcastId), title = Value(title), body = Value(body), category = Value(category), audience = Value(audience), sentAt = Value(sentAt), sentByEmail = Value(sentByEmail);
static Insertable<IsarBroadcastNotification> custom({Expression<int>? isarId, 
Expression<String>? broadcastId, 
Expression<String>? title, 
Expression<String>? body, 
Expression<String>? category, 
Expression<String>? actionRoute, 
Expression<String>? audience, 
Expression<DateTime>? sentAt, 
Expression<String>? sentByEmail, 
}) {
return RawValuesInsertable({if (isarId != null)'isar_id': isarId,if (broadcastId != null)'broadcast_id': broadcastId,if (title != null)'title': title,if (body != null)'body': body,if (category != null)'category': category,if (actionRoute != null)'action_route': actionRoute,if (audience != null)'audience': audience,if (sentAt != null)'sent_at': sentAt,if (sentByEmail != null)'sent_by_email': sentByEmail,});
}IsarBroadcastNotificationsCompanion copyWith({Value<int>? isarId, Value<String>? broadcastId, Value<String>? title, Value<String>? body, Value<String>? category, Value<String?>? actionRoute, Value<String>? audience, Value<DateTime>? sentAt, Value<String>? sentByEmail}) {
return IsarBroadcastNotificationsCompanion(isarId: isarId ?? this.isarId,broadcastId: broadcastId ?? this.broadcastId,title: title ?? this.title,body: body ?? this.body,category: category ?? this.category,actionRoute: actionRoute ?? this.actionRoute,audience: audience ?? this.audience,sentAt: sentAt ?? this.sentAt,sentByEmail: sentByEmail ?? this.sentByEmail,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (isarId.present) {
map['isar_id'] = Variable<int>(isarId.value);}
if (broadcastId.present) {
map['broadcast_id'] = Variable<String>(broadcastId.value);}
if (title.present) {
map['title'] = Variable<String>(title.value);}
if (body.present) {
map['body'] = Variable<String>(body.value);}
if (category.present) {
map['category'] = Variable<String>(category.value);}
if (actionRoute.present) {
map['action_route'] = Variable<String>(actionRoute.value);}
if (audience.present) {
map['audience'] = Variable<String>(audience.value);}
if (sentAt.present) {
map['sent_at'] = Variable<DateTime>(sentAt.value);}
if (sentByEmail.present) {
map['sent_by_email'] = Variable<String>(sentByEmail.value);}
return map; 
}
@override
String toString() {return (StringBuffer('IsarBroadcastNotificationsCompanion(')..write('isarId: $isarId, ')..write('broadcastId: $broadcastId, ')..write('title: $title, ')..write('body: $body, ')..write('category: $category, ')..write('actionRoute: $actionRoute, ')..write('audience: $audience, ')..write('sentAt: $sentAt, ')..write('sentByEmail: $sentByEmail')..write(')')).toString();}
}
abstract class _$AppDatabase extends GeneratedDatabase{
_$AppDatabase(QueryExecutor e): super(e);
$AppDatabaseManager get managers => $AppDatabaseManager(this);
late final $IsarEventsTable isarEvents = $IsarEventsTable(this);
late final $IsarTicketsTable isarTickets = $IsarTicketsTable(this);
late final $IsarCartItemsTable isarCartItems = $IsarCartItemsTable(this);
late final $IsarUserProfilesTable isarUserProfiles = $IsarUserProfilesTable(this);
late final $IsarAuthSessionsTable isarAuthSessions = $IsarAuthSessionsTable(this);
late final $IsarFavoritesTable isarFavorites = $IsarFavoritesTable(this);
late final $IsarOrdersTable isarOrders = $IsarOrdersTable(this);
late final $IsarAppSettingsTableTable isarAppSettingsTable = $IsarAppSettingsTableTable(this);
late final $IsarPromoCodesTable isarPromoCodes = $IsarPromoCodesTable(this);
late final $IsarPaymentMethodsTable isarPaymentMethods = $IsarPaymentMethodsTable(this);
late final $IsarAdminActionsTable isarAdminActions = $IsarAdminActionsTable(this);
late final $IsarBroadcastNotificationsTable isarBroadcastNotifications = $IsarBroadcastNotificationsTable(this);
@override
Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
@override
List<DatabaseSchemaEntity> get allSchemaEntities => [isarEvents, isarTickets, isarCartItems, isarUserProfiles, isarAuthSessions, isarFavorites, isarOrders, isarAppSettingsTable, isarPromoCodes, isarPaymentMethods, isarAdminActions, isarBroadcastNotifications];
}
typedef $$IsarEventsTableCreateCompanionBuilder = IsarEventsCompanion Function({Value<int> isarId,required String eventId,required String name,required String category,required String duration,required String imageUrl,required String gradient,required String date,required String location,required String transport,Value<String?> accommodation,required String pricingLabel,required double pricingAmount,Value<double?> pricingSavings,Value<String?> pricingSavingsText,Value<String> currency,Value<List<String>> genres,Value<List<String>> badgeTypes,Value<List<String>> badgeTexts,Value<bool> isFavorite,required String section,Value<int> sortOrder,Value<bool> isPublished,Value<int> totalTicketsSold,Value<double> totalRevenue,Value<DateTime?> createdAt,Value<DateTime?> updatedAt,Value<String?> updatedByEmail,});
typedef $$IsarEventsTableUpdateCompanionBuilder = IsarEventsCompanion Function({Value<int> isarId,Value<String> eventId,Value<String> name,Value<String> category,Value<String> duration,Value<String> imageUrl,Value<String> gradient,Value<String> date,Value<String> location,Value<String> transport,Value<String?> accommodation,Value<String> pricingLabel,Value<double> pricingAmount,Value<double?> pricingSavings,Value<String?> pricingSavingsText,Value<String> currency,Value<List<String>> genres,Value<List<String>> badgeTypes,Value<List<String>> badgeTexts,Value<bool> isFavorite,Value<String> section,Value<int> sortOrder,Value<bool> isPublished,Value<int> totalTicketsSold,Value<double> totalRevenue,Value<DateTime?> createdAt,Value<DateTime?> updatedAt,Value<String?> updatedByEmail,});
class $$IsarEventsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarEventsTable> {
        $$IsarEventsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get name => $composableBuilder(
      column: $table.name,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get category => $composableBuilder(
      column: $table.category,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get duration => $composableBuilder(
      column: $table.duration,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get gradient => $composableBuilder(
      column: $table.gradient,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get date => $composableBuilder(
      column: $table.date,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get location => $composableBuilder(
      column: $table.location,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get transport => $composableBuilder(
      column: $table.transport,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get accommodation => $composableBuilder(
      column: $table.accommodation,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get pricingLabel => $composableBuilder(
      column: $table.pricingLabel,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get pricingAmount => $composableBuilder(
      column: $table.pricingAmount,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get pricingSavings => $composableBuilder(
      column: $table.pricingSavings,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get pricingSavingsText => $composableBuilder(
      column: $table.pricingSavingsText,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get currency => $composableBuilder(
      column: $table.currency,
      builder: (column) => 
      ColumnFilters(column));
      
          ColumnWithTypeConverterFilters<List<String>,List<String>,String> get genres => $composableBuilder(
      column: $table.genres,
      builder: (column) => 
      ColumnWithTypeConverterFilters(column));
      
          ColumnWithTypeConverterFilters<List<String>,List<String>,String> get badgeTypes => $composableBuilder(
      column: $table.badgeTypes,
      builder: (column) => 
      ColumnWithTypeConverterFilters(column));
      
          ColumnWithTypeConverterFilters<List<String>,List<String>,String> get badgeTexts => $composableBuilder(
      column: $table.badgeTexts,
      builder: (column) => 
      ColumnWithTypeConverterFilters(column));
      
ColumnFilters<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get section => $composableBuilder(
      column: $table.section,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get isPublished => $composableBuilder(
      column: $table.isPublished,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get totalTicketsSold => $composableBuilder(
      column: $table.totalTicketsSold,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get totalRevenue => $composableBuilder(
      column: $table.totalRevenue,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get updatedByEmail => $composableBuilder(
      column: $table.updatedByEmail,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarEventsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarEventsTable> {
        $$IsarEventsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get duration => $composableBuilder(
      column: $table.duration,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get gradient => $composableBuilder(
      column: $table.gradient,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get date => $composableBuilder(
      column: $table.date,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get location => $composableBuilder(
      column: $table.location,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get transport => $composableBuilder(
      column: $table.transport,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get accommodation => $composableBuilder(
      column: $table.accommodation,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get pricingLabel => $composableBuilder(
      column: $table.pricingLabel,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get pricingAmount => $composableBuilder(
      column: $table.pricingAmount,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get pricingSavings => $composableBuilder(
      column: $table.pricingSavings,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get pricingSavingsText => $composableBuilder(
      column: $table.pricingSavingsText,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get currency => $composableBuilder(
      column: $table.currency,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get genres => $composableBuilder(
      column: $table.genres,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get badgeTypes => $composableBuilder(
      column: $table.badgeTypes,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get badgeTexts => $composableBuilder(
      column: $table.badgeTexts,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get section => $composableBuilder(
      column: $table.section,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get isPublished => $composableBuilder(
      column: $table.isPublished,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get totalTicketsSold => $composableBuilder(
      column: $table.totalTicketsSold,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get totalRevenue => $composableBuilder(
      column: $table.totalRevenue,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get updatedByEmail => $composableBuilder(
      column: $table.updatedByEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarEventsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarEventsTable> {
        $$IsarEventsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => column);
      
GeneratedColumn<String> get name => $composableBuilder(
      column: $table.name,
      builder: (column) => column);
      
GeneratedColumn<String> get category => $composableBuilder(
      column: $table.category,
      builder: (column) => column);
      
GeneratedColumn<String> get duration => $composableBuilder(
      column: $table.duration,
      builder: (column) => column);
      
GeneratedColumn<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl,
      builder: (column) => column);
      
GeneratedColumn<String> get gradient => $composableBuilder(
      column: $table.gradient,
      builder: (column) => column);
      
GeneratedColumn<String> get date => $composableBuilder(
      column: $table.date,
      builder: (column) => column);
      
GeneratedColumn<String> get location => $composableBuilder(
      column: $table.location,
      builder: (column) => column);
      
GeneratedColumn<String> get transport => $composableBuilder(
      column: $table.transport,
      builder: (column) => column);
      
GeneratedColumn<String> get accommodation => $composableBuilder(
      column: $table.accommodation,
      builder: (column) => column);
      
GeneratedColumn<String> get pricingLabel => $composableBuilder(
      column: $table.pricingLabel,
      builder: (column) => column);
      
GeneratedColumn<double> get pricingAmount => $composableBuilder(
      column: $table.pricingAmount,
      builder: (column) => column);
      
GeneratedColumn<double> get pricingSavings => $composableBuilder(
      column: $table.pricingSavings,
      builder: (column) => column);
      
GeneratedColumn<String> get pricingSavingsText => $composableBuilder(
      column: $table.pricingSavingsText,
      builder: (column) => column);
      
GeneratedColumn<String> get currency => $composableBuilder(
      column: $table.currency,
      builder: (column) => column);
      
          GeneratedColumnWithTypeConverter<List<String>,String> get genres => $composableBuilder(
      column: $table.genres,
      builder: (column) => column);
      
          GeneratedColumnWithTypeConverter<List<String>,String> get badgeTypes => $composableBuilder(
      column: $table.badgeTypes,
      builder: (column) => column);
      
          GeneratedColumnWithTypeConverter<List<String>,String> get badgeTexts => $composableBuilder(
      column: $table.badgeTexts,
      builder: (column) => column);
      
GeneratedColumn<bool> get isFavorite => $composableBuilder(
      column: $table.isFavorite,
      builder: (column) => column);
      
GeneratedColumn<String> get section => $composableBuilder(
      column: $table.section,
      builder: (column) => column);
      
GeneratedColumn<int> get sortOrder => $composableBuilder(
      column: $table.sortOrder,
      builder: (column) => column);
      
GeneratedColumn<bool> get isPublished => $composableBuilder(
      column: $table.isPublished,
      builder: (column) => column);
      
GeneratedColumn<int> get totalTicketsSold => $composableBuilder(
      column: $table.totalTicketsSold,
      builder: (column) => column);
      
GeneratedColumn<double> get totalRevenue => $composableBuilder(
      column: $table.totalRevenue,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => column);
      
GeneratedColumn<String> get updatedByEmail => $composableBuilder(
      column: $table.updatedByEmail,
      builder: (column) => column);
      
        }
      class $$IsarEventsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarEventsTable,
    IsarEvent,
    $$IsarEventsTableFilterComposer,
    $$IsarEventsTableOrderingComposer,
    $$IsarEventsTableAnnotationComposer,
    $$IsarEventsTableCreateCompanionBuilder,
    $$IsarEventsTableUpdateCompanionBuilder,
    (IsarEvent,BaseReferences<_$AppDatabase,$IsarEventsTable,IsarEvent>),
    IsarEvent,
    PrefetchHooks Function()
    > {
    $$IsarEventsTableTableManager(_$AppDatabase db, $IsarEventsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarEventsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarEventsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarEventsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> eventId = const Value.absent(),Value<String> name = const Value.absent(),Value<String> category = const Value.absent(),Value<String> duration = const Value.absent(),Value<String> imageUrl = const Value.absent(),Value<String> gradient = const Value.absent(),Value<String> date = const Value.absent(),Value<String> location = const Value.absent(),Value<String> transport = const Value.absent(),Value<String?> accommodation = const Value.absent(),Value<String> pricingLabel = const Value.absent(),Value<double> pricingAmount = const Value.absent(),Value<double?> pricingSavings = const Value.absent(),Value<String?> pricingSavingsText = const Value.absent(),Value<String> currency = const Value.absent(),Value<List<String>> genres = const Value.absent(),Value<List<String>> badgeTypes = const Value.absent(),Value<List<String>> badgeTexts = const Value.absent(),Value<bool> isFavorite = const Value.absent(),Value<String> section = const Value.absent(),Value<int> sortOrder = const Value.absent(),Value<bool> isPublished = const Value.absent(),Value<int> totalTicketsSold = const Value.absent(),Value<double> totalRevenue = const Value.absent(),Value<DateTime?> createdAt = const Value.absent(),Value<DateTime?> updatedAt = const Value.absent(),Value<String?> updatedByEmail = const Value.absent(),})=> IsarEventsCompanion(isarId: isarId,eventId: eventId,name: name,category: category,duration: duration,imageUrl: imageUrl,gradient: gradient,date: date,location: location,transport: transport,accommodation: accommodation,pricingLabel: pricingLabel,pricingAmount: pricingAmount,pricingSavings: pricingSavings,pricingSavingsText: pricingSavingsText,currency: currency,genres: genres,badgeTypes: badgeTypes,badgeTexts: badgeTexts,isFavorite: isFavorite,section: section,sortOrder: sortOrder,isPublished: isPublished,totalTicketsSold: totalTicketsSold,totalRevenue: totalRevenue,createdAt: createdAt,updatedAt: updatedAt,updatedByEmail: updatedByEmail,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String eventId,required String name,required String category,required String duration,required String imageUrl,required String gradient,required String date,required String location,required String transport,Value<String?> accommodation = const Value.absent(),required String pricingLabel,required double pricingAmount,Value<double?> pricingSavings = const Value.absent(),Value<String?> pricingSavingsText = const Value.absent(),Value<String> currency = const Value.absent(),Value<List<String>> genres = const Value.absent(),Value<List<String>> badgeTypes = const Value.absent(),Value<List<String>> badgeTexts = const Value.absent(),Value<bool> isFavorite = const Value.absent(),required String section,Value<int> sortOrder = const Value.absent(),Value<bool> isPublished = const Value.absent(),Value<int> totalTicketsSold = const Value.absent(),Value<double> totalRevenue = const Value.absent(),Value<DateTime?> createdAt = const Value.absent(),Value<DateTime?> updatedAt = const Value.absent(),Value<String?> updatedByEmail = const Value.absent(),})=> IsarEventsCompanion.insert(isarId: isarId,eventId: eventId,name: name,category: category,duration: duration,imageUrl: imageUrl,gradient: gradient,date: date,location: location,transport: transport,accommodation: accommodation,pricingLabel: pricingLabel,pricingAmount: pricingAmount,pricingSavings: pricingSavings,pricingSavingsText: pricingSavingsText,currency: currency,genres: genres,badgeTypes: badgeTypes,badgeTexts: badgeTexts,isFavorite: isFavorite,section: section,sortOrder: sortOrder,isPublished: isPublished,totalTicketsSold: totalTicketsSold,totalRevenue: totalRevenue,createdAt: createdAt,updatedAt: updatedAt,updatedByEmail: updatedByEmail,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarEventsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarEventsTable,
    IsarEvent,
    $$IsarEventsTableFilterComposer,
    $$IsarEventsTableOrderingComposer,
    $$IsarEventsTableAnnotationComposer,
    $$IsarEventsTableCreateCompanionBuilder,
    $$IsarEventsTableUpdateCompanionBuilder,
    (IsarEvent,BaseReferences<_$AppDatabase,$IsarEventsTable,IsarEvent>),
    IsarEvent,
    PrefetchHooks Function()
    >;typedef $$IsarTicketsTableCreateCompanionBuilder = IsarTicketsCompanion Function({Value<int> isarId,required String ticketId,required String eventId,required String eventName,required String eventDate,required String eventLocation,Value<String?> eventImageUrl,required double price,required String ticketType,required String status,required DateTime purchaseDate,Value<String?> qrCodeData,Value<String?> seatInfo,Value<String?> chosenTransportLabel,Value<double?> chosenTransportCo2SavedKg,Value<String?> transferredToEmail,Value<DateTime?> transferredAt,Value<DateTime?> cancelledAt,Value<double?> refundAmount,Value<DateTime?> eventDateParsed,required String ownerEmail,Value<String?> orderId,});
typedef $$IsarTicketsTableUpdateCompanionBuilder = IsarTicketsCompanion Function({Value<int> isarId,Value<String> ticketId,Value<String> eventId,Value<String> eventName,Value<String> eventDate,Value<String> eventLocation,Value<String?> eventImageUrl,Value<double> price,Value<String> ticketType,Value<String> status,Value<DateTime> purchaseDate,Value<String?> qrCodeData,Value<String?> seatInfo,Value<String?> chosenTransportLabel,Value<double?> chosenTransportCo2SavedKg,Value<String?> transferredToEmail,Value<DateTime?> transferredAt,Value<DateTime?> cancelledAt,Value<double?> refundAmount,Value<DateTime?> eventDateParsed,Value<String> ownerEmail,Value<String?> orderId,});
class $$IsarTicketsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarTicketsTable> {
        $$IsarTicketsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get ticketId => $composableBuilder(
      column: $table.ticketId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventName => $composableBuilder(
      column: $table.eventName,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventDate => $composableBuilder(
      column: $table.eventDate,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventLocation => $composableBuilder(
      column: $table.eventLocation,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventImageUrl => $composableBuilder(
      column: $table.eventImageUrl,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get price => $composableBuilder(
      column: $table.price,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get ticketType => $composableBuilder(
      column: $table.ticketType,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get status => $composableBuilder(
      column: $table.status,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get purchaseDate => $composableBuilder(
      column: $table.purchaseDate,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get qrCodeData => $composableBuilder(
      column: $table.qrCodeData,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get seatInfo => $composableBuilder(
      column: $table.seatInfo,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get chosenTransportLabel => $composableBuilder(
      column: $table.chosenTransportLabel,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get chosenTransportCo2SavedKg => $composableBuilder(
      column: $table.chosenTransportCo2SavedKg,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get transferredToEmail => $composableBuilder(
      column: $table.transferredToEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get transferredAt => $composableBuilder(
      column: $table.transferredAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get cancelledAt => $composableBuilder(
      column: $table.cancelledAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get refundAmount => $composableBuilder(
      column: $table.refundAmount,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get eventDateParsed => $composableBuilder(
      column: $table.eventDateParsed,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get orderId => $composableBuilder(
      column: $table.orderId,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarTicketsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarTicketsTable> {
        $$IsarTicketsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ticketId => $composableBuilder(
      column: $table.ticketId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventName => $composableBuilder(
      column: $table.eventName,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventDate => $composableBuilder(
      column: $table.eventDate,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventLocation => $composableBuilder(
      column: $table.eventLocation,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventImageUrl => $composableBuilder(
      column: $table.eventImageUrl,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ticketType => $composableBuilder(
      column: $table.ticketType,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get purchaseDate => $composableBuilder(
      column: $table.purchaseDate,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get qrCodeData => $composableBuilder(
      column: $table.qrCodeData,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get seatInfo => $composableBuilder(
      column: $table.seatInfo,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get chosenTransportLabel => $composableBuilder(
      column: $table.chosenTransportLabel,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get chosenTransportCo2SavedKg => $composableBuilder(
      column: $table.chosenTransportCo2SavedKg,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get transferredToEmail => $composableBuilder(
      column: $table.transferredToEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get transferredAt => $composableBuilder(
      column: $table.transferredAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get cancelledAt => $composableBuilder(
      column: $table.cancelledAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get refundAmount => $composableBuilder(
      column: $table.refundAmount,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get eventDateParsed => $composableBuilder(
      column: $table.eventDateParsed,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get orderId => $composableBuilder(
      column: $table.orderId,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarTicketsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarTicketsTable> {
        $$IsarTicketsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get ticketId => $composableBuilder(
      column: $table.ticketId,
      builder: (column) => column);
      
GeneratedColumn<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => column);
      
GeneratedColumn<String> get eventName => $composableBuilder(
      column: $table.eventName,
      builder: (column) => column);
      
GeneratedColumn<String> get eventDate => $composableBuilder(
      column: $table.eventDate,
      builder: (column) => column);
      
GeneratedColumn<String> get eventLocation => $composableBuilder(
      column: $table.eventLocation,
      builder: (column) => column);
      
GeneratedColumn<String> get eventImageUrl => $composableBuilder(
      column: $table.eventImageUrl,
      builder: (column) => column);
      
GeneratedColumn<double> get price => $composableBuilder(
      column: $table.price,
      builder: (column) => column);
      
GeneratedColumn<String> get ticketType => $composableBuilder(
      column: $table.ticketType,
      builder: (column) => column);
      
GeneratedColumn<String> get status => $composableBuilder(
      column: $table.status,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get purchaseDate => $composableBuilder(
      column: $table.purchaseDate,
      builder: (column) => column);
      
GeneratedColumn<String> get qrCodeData => $composableBuilder(
      column: $table.qrCodeData,
      builder: (column) => column);
      
GeneratedColumn<String> get seatInfo => $composableBuilder(
      column: $table.seatInfo,
      builder: (column) => column);
      
GeneratedColumn<String> get chosenTransportLabel => $composableBuilder(
      column: $table.chosenTransportLabel,
      builder: (column) => column);
      
GeneratedColumn<double> get chosenTransportCo2SavedKg => $composableBuilder(
      column: $table.chosenTransportCo2SavedKg,
      builder: (column) => column);
      
GeneratedColumn<String> get transferredToEmail => $composableBuilder(
      column: $table.transferredToEmail,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get transferredAt => $composableBuilder(
      column: $table.transferredAt,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get cancelledAt => $composableBuilder(
      column: $table.cancelledAt,
      builder: (column) => column);
      
GeneratedColumn<double> get refundAmount => $composableBuilder(
      column: $table.refundAmount,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get eventDateParsed => $composableBuilder(
      column: $table.eventDateParsed,
      builder: (column) => column);
      
GeneratedColumn<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => column);
      
GeneratedColumn<String> get orderId => $composableBuilder(
      column: $table.orderId,
      builder: (column) => column);
      
        }
      class $$IsarTicketsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarTicketsTable,
    IsarTicket,
    $$IsarTicketsTableFilterComposer,
    $$IsarTicketsTableOrderingComposer,
    $$IsarTicketsTableAnnotationComposer,
    $$IsarTicketsTableCreateCompanionBuilder,
    $$IsarTicketsTableUpdateCompanionBuilder,
    (IsarTicket,BaseReferences<_$AppDatabase,$IsarTicketsTable,IsarTicket>),
    IsarTicket,
    PrefetchHooks Function()
    > {
    $$IsarTicketsTableTableManager(_$AppDatabase db, $IsarTicketsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarTicketsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarTicketsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarTicketsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> ticketId = const Value.absent(),Value<String> eventId = const Value.absent(),Value<String> eventName = const Value.absent(),Value<String> eventDate = const Value.absent(),Value<String> eventLocation = const Value.absent(),Value<String?> eventImageUrl = const Value.absent(),Value<double> price = const Value.absent(),Value<String> ticketType = const Value.absent(),Value<String> status = const Value.absent(),Value<DateTime> purchaseDate = const Value.absent(),Value<String?> qrCodeData = const Value.absent(),Value<String?> seatInfo = const Value.absent(),Value<String?> chosenTransportLabel = const Value.absent(),Value<double?> chosenTransportCo2SavedKg = const Value.absent(),Value<String?> transferredToEmail = const Value.absent(),Value<DateTime?> transferredAt = const Value.absent(),Value<DateTime?> cancelledAt = const Value.absent(),Value<double?> refundAmount = const Value.absent(),Value<DateTime?> eventDateParsed = const Value.absent(),Value<String> ownerEmail = const Value.absent(),Value<String?> orderId = const Value.absent(),})=> IsarTicketsCompanion(isarId: isarId,ticketId: ticketId,eventId: eventId,eventName: eventName,eventDate: eventDate,eventLocation: eventLocation,eventImageUrl: eventImageUrl,price: price,ticketType: ticketType,status: status,purchaseDate: purchaseDate,qrCodeData: qrCodeData,seatInfo: seatInfo,chosenTransportLabel: chosenTransportLabel,chosenTransportCo2SavedKg: chosenTransportCo2SavedKg,transferredToEmail: transferredToEmail,transferredAt: transferredAt,cancelledAt: cancelledAt,refundAmount: refundAmount,eventDateParsed: eventDateParsed,ownerEmail: ownerEmail,orderId: orderId,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String ticketId,required String eventId,required String eventName,required String eventDate,required String eventLocation,Value<String?> eventImageUrl = const Value.absent(),required double price,required String ticketType,required String status,required DateTime purchaseDate,Value<String?> qrCodeData = const Value.absent(),Value<String?> seatInfo = const Value.absent(),Value<String?> chosenTransportLabel = const Value.absent(),Value<double?> chosenTransportCo2SavedKg = const Value.absent(),Value<String?> transferredToEmail = const Value.absent(),Value<DateTime?> transferredAt = const Value.absent(),Value<DateTime?> cancelledAt = const Value.absent(),Value<double?> refundAmount = const Value.absent(),Value<DateTime?> eventDateParsed = const Value.absent(),required String ownerEmail,Value<String?> orderId = const Value.absent(),})=> IsarTicketsCompanion.insert(isarId: isarId,ticketId: ticketId,eventId: eventId,eventName: eventName,eventDate: eventDate,eventLocation: eventLocation,eventImageUrl: eventImageUrl,price: price,ticketType: ticketType,status: status,purchaseDate: purchaseDate,qrCodeData: qrCodeData,seatInfo: seatInfo,chosenTransportLabel: chosenTransportLabel,chosenTransportCo2SavedKg: chosenTransportCo2SavedKg,transferredToEmail: transferredToEmail,transferredAt: transferredAt,cancelledAt: cancelledAt,refundAmount: refundAmount,eventDateParsed: eventDateParsed,ownerEmail: ownerEmail,orderId: orderId,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarTicketsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarTicketsTable,
    IsarTicket,
    $$IsarTicketsTableFilterComposer,
    $$IsarTicketsTableOrderingComposer,
    $$IsarTicketsTableAnnotationComposer,
    $$IsarTicketsTableCreateCompanionBuilder,
    $$IsarTicketsTableUpdateCompanionBuilder,
    (IsarTicket,BaseReferences<_$AppDatabase,$IsarTicketsTable,IsarTicket>),
    IsarTicket,
    PrefetchHooks Function()
    >;typedef $$IsarCartItemsTableCreateCompanionBuilder = IsarCartItemsCompanion Function({Value<int> isarId,required String ownerEmail,required String eventId,required String eventName,required String eventDate,required String eventLocation,Value<String?> eventImageUrl,required double unitPrice,required int quantity,required String ticketType,Value<String?> transportOption,Value<double?> transportPrice,Value<String?> accommodationOption,Value<double?> accommodationPrice,});
typedef $$IsarCartItemsTableUpdateCompanionBuilder = IsarCartItemsCompanion Function({Value<int> isarId,Value<String> ownerEmail,Value<String> eventId,Value<String> eventName,Value<String> eventDate,Value<String> eventLocation,Value<String?> eventImageUrl,Value<double> unitPrice,Value<int> quantity,Value<String> ticketType,Value<String?> transportOption,Value<double?> transportPrice,Value<String?> accommodationOption,Value<double?> accommodationPrice,});
class $$IsarCartItemsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarCartItemsTable> {
        $$IsarCartItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventName => $composableBuilder(
      column: $table.eventName,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventDate => $composableBuilder(
      column: $table.eventDate,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventLocation => $composableBuilder(
      column: $table.eventLocation,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventImageUrl => $composableBuilder(
      column: $table.eventImageUrl,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get quantity => $composableBuilder(
      column: $table.quantity,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get ticketType => $composableBuilder(
      column: $table.ticketType,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get transportOption => $composableBuilder(
      column: $table.transportOption,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get transportPrice => $composableBuilder(
      column: $table.transportPrice,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get accommodationOption => $composableBuilder(
      column: $table.accommodationOption,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get accommodationPrice => $composableBuilder(
      column: $table.accommodationPrice,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarCartItemsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarCartItemsTable> {
        $$IsarCartItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventName => $composableBuilder(
      column: $table.eventName,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventDate => $composableBuilder(
      column: $table.eventDate,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventLocation => $composableBuilder(
      column: $table.eventLocation,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventImageUrl => $composableBuilder(
      column: $table.eventImageUrl,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get quantity => $composableBuilder(
      column: $table.quantity,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ticketType => $composableBuilder(
      column: $table.ticketType,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get transportOption => $composableBuilder(
      column: $table.transportOption,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get transportPrice => $composableBuilder(
      column: $table.transportPrice,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get accommodationOption => $composableBuilder(
      column: $table.accommodationOption,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get accommodationPrice => $composableBuilder(
      column: $table.accommodationPrice,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarCartItemsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarCartItemsTable> {
        $$IsarCartItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => column);
      
GeneratedColumn<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => column);
      
GeneratedColumn<String> get eventName => $composableBuilder(
      column: $table.eventName,
      builder: (column) => column);
      
GeneratedColumn<String> get eventDate => $composableBuilder(
      column: $table.eventDate,
      builder: (column) => column);
      
GeneratedColumn<String> get eventLocation => $composableBuilder(
      column: $table.eventLocation,
      builder: (column) => column);
      
GeneratedColumn<String> get eventImageUrl => $composableBuilder(
      column: $table.eventImageUrl,
      builder: (column) => column);
      
GeneratedColumn<double> get unitPrice => $composableBuilder(
      column: $table.unitPrice,
      builder: (column) => column);
      
GeneratedColumn<int> get quantity => $composableBuilder(
      column: $table.quantity,
      builder: (column) => column);
      
GeneratedColumn<String> get ticketType => $composableBuilder(
      column: $table.ticketType,
      builder: (column) => column);
      
GeneratedColumn<String> get transportOption => $composableBuilder(
      column: $table.transportOption,
      builder: (column) => column);
      
GeneratedColumn<double> get transportPrice => $composableBuilder(
      column: $table.transportPrice,
      builder: (column) => column);
      
GeneratedColumn<String> get accommodationOption => $composableBuilder(
      column: $table.accommodationOption,
      builder: (column) => column);
      
GeneratedColumn<double> get accommodationPrice => $composableBuilder(
      column: $table.accommodationPrice,
      builder: (column) => column);
      
        }
      class $$IsarCartItemsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarCartItemsTable,
    IsarCartItem,
    $$IsarCartItemsTableFilterComposer,
    $$IsarCartItemsTableOrderingComposer,
    $$IsarCartItemsTableAnnotationComposer,
    $$IsarCartItemsTableCreateCompanionBuilder,
    $$IsarCartItemsTableUpdateCompanionBuilder,
    (IsarCartItem,BaseReferences<_$AppDatabase,$IsarCartItemsTable,IsarCartItem>),
    IsarCartItem,
    PrefetchHooks Function()
    > {
    $$IsarCartItemsTableTableManager(_$AppDatabase db, $IsarCartItemsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarCartItemsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarCartItemsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarCartItemsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> ownerEmail = const Value.absent(),Value<String> eventId = const Value.absent(),Value<String> eventName = const Value.absent(),Value<String> eventDate = const Value.absent(),Value<String> eventLocation = const Value.absent(),Value<String?> eventImageUrl = const Value.absent(),Value<double> unitPrice = const Value.absent(),Value<int> quantity = const Value.absent(),Value<String> ticketType = const Value.absent(),Value<String?> transportOption = const Value.absent(),Value<double?> transportPrice = const Value.absent(),Value<String?> accommodationOption = const Value.absent(),Value<double?> accommodationPrice = const Value.absent(),})=> IsarCartItemsCompanion(isarId: isarId,ownerEmail: ownerEmail,eventId: eventId,eventName: eventName,eventDate: eventDate,eventLocation: eventLocation,eventImageUrl: eventImageUrl,unitPrice: unitPrice,quantity: quantity,ticketType: ticketType,transportOption: transportOption,transportPrice: transportPrice,accommodationOption: accommodationOption,accommodationPrice: accommodationPrice,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String ownerEmail,required String eventId,required String eventName,required String eventDate,required String eventLocation,Value<String?> eventImageUrl = const Value.absent(),required double unitPrice,required int quantity,required String ticketType,Value<String?> transportOption = const Value.absent(),Value<double?> transportPrice = const Value.absent(),Value<String?> accommodationOption = const Value.absent(),Value<double?> accommodationPrice = const Value.absent(),})=> IsarCartItemsCompanion.insert(isarId: isarId,ownerEmail: ownerEmail,eventId: eventId,eventName: eventName,eventDate: eventDate,eventLocation: eventLocation,eventImageUrl: eventImageUrl,unitPrice: unitPrice,quantity: quantity,ticketType: ticketType,transportOption: transportOption,transportPrice: transportPrice,accommodationOption: accommodationOption,accommodationPrice: accommodationPrice,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarCartItemsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarCartItemsTable,
    IsarCartItem,
    $$IsarCartItemsTableFilterComposer,
    $$IsarCartItemsTableOrderingComposer,
    $$IsarCartItemsTableAnnotationComposer,
    $$IsarCartItemsTableCreateCompanionBuilder,
    $$IsarCartItemsTableUpdateCompanionBuilder,
    (IsarCartItem,BaseReferences<_$AppDatabase,$IsarCartItemsTable,IsarCartItem>),
    IsarCartItem,
    PrefetchHooks Function()
    >;typedef $$IsarUserProfilesTableCreateCompanionBuilder = IsarUserProfilesCompanion Function({Value<int> isarId,required String email,required String name,Value<String> passwordHash,Value<String?> avatarUrl,Value<String?> phone,Value<String?> bio,required int memberSince,Value<List<String>> genres,Value<double> budgetMax,Value<String> locationName,Value<String> language,Value<bool> darkMode,Value<bool> notificationsEnabled,Value<bool> emailNotificationsEnabled,Value<bool> socialNotificationsEnabled,Value<bool> ecoMode,Value<bool> showCarbonFootprint,Value<bool> isOnboarded,Value<int> eventsBooked,Value<double> co2SavedKg,Value<double> moneySavedEur,Value<int> percentile,required DateTime createdAt,Value<DateTime?> lastLoginAt,Value<String> role,Value<bool> isSuspended,Value<String?> suspendedReason,Value<DateTime?> suspendedAt,});
typedef $$IsarUserProfilesTableUpdateCompanionBuilder = IsarUserProfilesCompanion Function({Value<int> isarId,Value<String> email,Value<String> name,Value<String> passwordHash,Value<String?> avatarUrl,Value<String?> phone,Value<String?> bio,Value<int> memberSince,Value<List<String>> genres,Value<double> budgetMax,Value<String> locationName,Value<String> language,Value<bool> darkMode,Value<bool> notificationsEnabled,Value<bool> emailNotificationsEnabled,Value<bool> socialNotificationsEnabled,Value<bool> ecoMode,Value<bool> showCarbonFootprint,Value<bool> isOnboarded,Value<int> eventsBooked,Value<double> co2SavedKg,Value<double> moneySavedEur,Value<int> percentile,Value<DateTime> createdAt,Value<DateTime?> lastLoginAt,Value<String> role,Value<bool> isSuspended,Value<String?> suspendedReason,Value<DateTime?> suspendedAt,});
class $$IsarUserProfilesTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarUserProfilesTable> {
        $$IsarUserProfilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get email => $composableBuilder(
      column: $table.email,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get name => $composableBuilder(
      column: $table.name,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get bio => $composableBuilder(
      column: $table.bio,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get memberSince => $composableBuilder(
      column: $table.memberSince,
      builder: (column) => 
      ColumnFilters(column));
      
          ColumnWithTypeConverterFilters<List<String>,List<String>,String> get genres => $composableBuilder(
      column: $table.genres,
      builder: (column) => 
      ColumnWithTypeConverterFilters(column));
      
ColumnFilters<double> get budgetMax => $composableBuilder(
      column: $table.budgetMax,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get locationName => $composableBuilder(
      column: $table.locationName,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get language => $composableBuilder(
      column: $table.language,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get darkMode => $composableBuilder(
      column: $table.darkMode,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get notificationsEnabled => $composableBuilder(
      column: $table.notificationsEnabled,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get emailNotificationsEnabled => $composableBuilder(
      column: $table.emailNotificationsEnabled,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get socialNotificationsEnabled => $composableBuilder(
      column: $table.socialNotificationsEnabled,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get ecoMode => $composableBuilder(
      column: $table.ecoMode,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get showCarbonFootprint => $composableBuilder(
      column: $table.showCarbonFootprint,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get isOnboarded => $composableBuilder(
      column: $table.isOnboarded,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get eventsBooked => $composableBuilder(
      column: $table.eventsBooked,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get co2SavedKg => $composableBuilder(
      column: $table.co2SavedKg,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get moneySavedEur => $composableBuilder(
      column: $table.moneySavedEur,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get percentile => $composableBuilder(
      column: $table.percentile,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get lastLoginAt => $composableBuilder(
      column: $table.lastLoginAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get role => $composableBuilder(
      column: $table.role,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get isSuspended => $composableBuilder(
      column: $table.isSuspended,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get suspendedReason => $composableBuilder(
      column: $table.suspendedReason,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get suspendedAt => $composableBuilder(
      column: $table.suspendedAt,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarUserProfilesTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarUserProfilesTable> {
        $$IsarUserProfilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get bio => $composableBuilder(
      column: $table.bio,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get memberSince => $composableBuilder(
      column: $table.memberSince,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get genres => $composableBuilder(
      column: $table.genres,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get budgetMax => $composableBuilder(
      column: $table.budgetMax,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get locationName => $composableBuilder(
      column: $table.locationName,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get language => $composableBuilder(
      column: $table.language,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get darkMode => $composableBuilder(
      column: $table.darkMode,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get notificationsEnabled => $composableBuilder(
      column: $table.notificationsEnabled,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get emailNotificationsEnabled => $composableBuilder(
      column: $table.emailNotificationsEnabled,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get socialNotificationsEnabled => $composableBuilder(
      column: $table.socialNotificationsEnabled,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get ecoMode => $composableBuilder(
      column: $table.ecoMode,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get showCarbonFootprint => $composableBuilder(
      column: $table.showCarbonFootprint,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get isOnboarded => $composableBuilder(
      column: $table.isOnboarded,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get eventsBooked => $composableBuilder(
      column: $table.eventsBooked,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get co2SavedKg => $composableBuilder(
      column: $table.co2SavedKg,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get moneySavedEur => $composableBuilder(
      column: $table.moneySavedEur,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get percentile => $composableBuilder(
      column: $table.percentile,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get lastLoginAt => $composableBuilder(
      column: $table.lastLoginAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get role => $composableBuilder(
      column: $table.role,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get isSuspended => $composableBuilder(
      column: $table.isSuspended,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get suspendedReason => $composableBuilder(
      column: $table.suspendedReason,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get suspendedAt => $composableBuilder(
      column: $table.suspendedAt,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarUserProfilesTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarUserProfilesTable> {
        $$IsarUserProfilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get email => $composableBuilder(
      column: $table.email,
      builder: (column) => column);
      
GeneratedColumn<String> get name => $composableBuilder(
      column: $table.name,
      builder: (column) => column);
      
GeneratedColumn<String> get passwordHash => $composableBuilder(
      column: $table.passwordHash,
      builder: (column) => column);
      
GeneratedColumn<String> get avatarUrl => $composableBuilder(
      column: $table.avatarUrl,
      builder: (column) => column);
      
GeneratedColumn<String> get phone => $composableBuilder(
      column: $table.phone,
      builder: (column) => column);
      
GeneratedColumn<String> get bio => $composableBuilder(
      column: $table.bio,
      builder: (column) => column);
      
GeneratedColumn<int> get memberSince => $composableBuilder(
      column: $table.memberSince,
      builder: (column) => column);
      
          GeneratedColumnWithTypeConverter<List<String>,String> get genres => $composableBuilder(
      column: $table.genres,
      builder: (column) => column);
      
GeneratedColumn<double> get budgetMax => $composableBuilder(
      column: $table.budgetMax,
      builder: (column) => column);
      
GeneratedColumn<String> get locationName => $composableBuilder(
      column: $table.locationName,
      builder: (column) => column);
      
GeneratedColumn<String> get language => $composableBuilder(
      column: $table.language,
      builder: (column) => column);
      
GeneratedColumn<bool> get darkMode => $composableBuilder(
      column: $table.darkMode,
      builder: (column) => column);
      
GeneratedColumn<bool> get notificationsEnabled => $composableBuilder(
      column: $table.notificationsEnabled,
      builder: (column) => column);
      
GeneratedColumn<bool> get emailNotificationsEnabled => $composableBuilder(
      column: $table.emailNotificationsEnabled,
      builder: (column) => column);
      
GeneratedColumn<bool> get socialNotificationsEnabled => $composableBuilder(
      column: $table.socialNotificationsEnabled,
      builder: (column) => column);
      
GeneratedColumn<bool> get ecoMode => $composableBuilder(
      column: $table.ecoMode,
      builder: (column) => column);
      
GeneratedColumn<bool> get showCarbonFootprint => $composableBuilder(
      column: $table.showCarbonFootprint,
      builder: (column) => column);
      
GeneratedColumn<bool> get isOnboarded => $composableBuilder(
      column: $table.isOnboarded,
      builder: (column) => column);
      
GeneratedColumn<int> get eventsBooked => $composableBuilder(
      column: $table.eventsBooked,
      builder: (column) => column);
      
GeneratedColumn<double> get co2SavedKg => $composableBuilder(
      column: $table.co2SavedKg,
      builder: (column) => column);
      
GeneratedColumn<double> get moneySavedEur => $composableBuilder(
      column: $table.moneySavedEur,
      builder: (column) => column);
      
GeneratedColumn<int> get percentile => $composableBuilder(
      column: $table.percentile,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get lastLoginAt => $composableBuilder(
      column: $table.lastLoginAt,
      builder: (column) => column);
      
GeneratedColumn<String> get role => $composableBuilder(
      column: $table.role,
      builder: (column) => column);
      
GeneratedColumn<bool> get isSuspended => $composableBuilder(
      column: $table.isSuspended,
      builder: (column) => column);
      
GeneratedColumn<String> get suspendedReason => $composableBuilder(
      column: $table.suspendedReason,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get suspendedAt => $composableBuilder(
      column: $table.suspendedAt,
      builder: (column) => column);
      
        }
      class $$IsarUserProfilesTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarUserProfilesTable,
    IsarUserProfile,
    $$IsarUserProfilesTableFilterComposer,
    $$IsarUserProfilesTableOrderingComposer,
    $$IsarUserProfilesTableAnnotationComposer,
    $$IsarUserProfilesTableCreateCompanionBuilder,
    $$IsarUserProfilesTableUpdateCompanionBuilder,
    (IsarUserProfile,BaseReferences<_$AppDatabase,$IsarUserProfilesTable,IsarUserProfile>),
    IsarUserProfile,
    PrefetchHooks Function()
    > {
    $$IsarUserProfilesTableTableManager(_$AppDatabase db, $IsarUserProfilesTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarUserProfilesTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarUserProfilesTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarUserProfilesTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> email = const Value.absent(),Value<String> name = const Value.absent(),Value<String> passwordHash = const Value.absent(),Value<String?> avatarUrl = const Value.absent(),Value<String?> phone = const Value.absent(),Value<String?> bio = const Value.absent(),Value<int> memberSince = const Value.absent(),Value<List<String>> genres = const Value.absent(),Value<double> budgetMax = const Value.absent(),Value<String> locationName = const Value.absent(),Value<String> language = const Value.absent(),Value<bool> darkMode = const Value.absent(),Value<bool> notificationsEnabled = const Value.absent(),Value<bool> emailNotificationsEnabled = const Value.absent(),Value<bool> socialNotificationsEnabled = const Value.absent(),Value<bool> ecoMode = const Value.absent(),Value<bool> showCarbonFootprint = const Value.absent(),Value<bool> isOnboarded = const Value.absent(),Value<int> eventsBooked = const Value.absent(),Value<double> co2SavedKg = const Value.absent(),Value<double> moneySavedEur = const Value.absent(),Value<int> percentile = const Value.absent(),Value<DateTime> createdAt = const Value.absent(),Value<DateTime?> lastLoginAt = const Value.absent(),Value<String> role = const Value.absent(),Value<bool> isSuspended = const Value.absent(),Value<String?> suspendedReason = const Value.absent(),Value<DateTime?> suspendedAt = const Value.absent(),})=> IsarUserProfilesCompanion(isarId: isarId,email: email,name: name,passwordHash: passwordHash,avatarUrl: avatarUrl,phone: phone,bio: bio,memberSince: memberSince,genres: genres,budgetMax: budgetMax,locationName: locationName,language: language,darkMode: darkMode,notificationsEnabled: notificationsEnabled,emailNotificationsEnabled: emailNotificationsEnabled,socialNotificationsEnabled: socialNotificationsEnabled,ecoMode: ecoMode,showCarbonFootprint: showCarbonFootprint,isOnboarded: isOnboarded,eventsBooked: eventsBooked,co2SavedKg: co2SavedKg,moneySavedEur: moneySavedEur,percentile: percentile,createdAt: createdAt,lastLoginAt: lastLoginAt,role: role,isSuspended: isSuspended,suspendedReason: suspendedReason,suspendedAt: suspendedAt,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String email,required String name,Value<String> passwordHash = const Value.absent(),Value<String?> avatarUrl = const Value.absent(),Value<String?> phone = const Value.absent(),Value<String?> bio = const Value.absent(),required int memberSince,Value<List<String>> genres = const Value.absent(),Value<double> budgetMax = const Value.absent(),Value<String> locationName = const Value.absent(),Value<String> language = const Value.absent(),Value<bool> darkMode = const Value.absent(),Value<bool> notificationsEnabled = const Value.absent(),Value<bool> emailNotificationsEnabled = const Value.absent(),Value<bool> socialNotificationsEnabled = const Value.absent(),Value<bool> ecoMode = const Value.absent(),Value<bool> showCarbonFootprint = const Value.absent(),Value<bool> isOnboarded = const Value.absent(),Value<int> eventsBooked = const Value.absent(),Value<double> co2SavedKg = const Value.absent(),Value<double> moneySavedEur = const Value.absent(),Value<int> percentile = const Value.absent(),required DateTime createdAt,Value<DateTime?> lastLoginAt = const Value.absent(),Value<String> role = const Value.absent(),Value<bool> isSuspended = const Value.absent(),Value<String?> suspendedReason = const Value.absent(),Value<DateTime?> suspendedAt = const Value.absent(),})=> IsarUserProfilesCompanion.insert(isarId: isarId,email: email,name: name,passwordHash: passwordHash,avatarUrl: avatarUrl,phone: phone,bio: bio,memberSince: memberSince,genres: genres,budgetMax: budgetMax,locationName: locationName,language: language,darkMode: darkMode,notificationsEnabled: notificationsEnabled,emailNotificationsEnabled: emailNotificationsEnabled,socialNotificationsEnabled: socialNotificationsEnabled,ecoMode: ecoMode,showCarbonFootprint: showCarbonFootprint,isOnboarded: isOnboarded,eventsBooked: eventsBooked,co2SavedKg: co2SavedKg,moneySavedEur: moneySavedEur,percentile: percentile,createdAt: createdAt,lastLoginAt: lastLoginAt,role: role,isSuspended: isSuspended,suspendedReason: suspendedReason,suspendedAt: suspendedAt,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarUserProfilesTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarUserProfilesTable,
    IsarUserProfile,
    $$IsarUserProfilesTableFilterComposer,
    $$IsarUserProfilesTableOrderingComposer,
    $$IsarUserProfilesTableAnnotationComposer,
    $$IsarUserProfilesTableCreateCompanionBuilder,
    $$IsarUserProfilesTableUpdateCompanionBuilder,
    (IsarUserProfile,BaseReferences<_$AppDatabase,$IsarUserProfilesTable,IsarUserProfile>),
    IsarUserProfile,
    PrefetchHooks Function()
    >;typedef $$IsarAuthSessionsTableCreateCompanionBuilder = IsarAuthSessionsCompanion Function({Value<int> isarId,required String key,Value<String?> activeEmail,Value<DateTime?> loggedInAt,});
typedef $$IsarAuthSessionsTableUpdateCompanionBuilder = IsarAuthSessionsCompanion Function({Value<int> isarId,Value<String> key,Value<String?> activeEmail,Value<DateTime?> loggedInAt,});
class $$IsarAuthSessionsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarAuthSessionsTable> {
        $$IsarAuthSessionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get key => $composableBuilder(
      column: $table.key,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get activeEmail => $composableBuilder(
      column: $table.activeEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get loggedInAt => $composableBuilder(
      column: $table.loggedInAt,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarAuthSessionsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarAuthSessionsTable> {
        $$IsarAuthSessionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get activeEmail => $composableBuilder(
      column: $table.activeEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get loggedInAt => $composableBuilder(
      column: $table.loggedInAt,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarAuthSessionsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarAuthSessionsTable> {
        $$IsarAuthSessionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get key => $composableBuilder(
      column: $table.key,
      builder: (column) => column);
      
GeneratedColumn<String> get activeEmail => $composableBuilder(
      column: $table.activeEmail,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get loggedInAt => $composableBuilder(
      column: $table.loggedInAt,
      builder: (column) => column);
      
        }
      class $$IsarAuthSessionsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarAuthSessionsTable,
    IsarAuthSession,
    $$IsarAuthSessionsTableFilterComposer,
    $$IsarAuthSessionsTableOrderingComposer,
    $$IsarAuthSessionsTableAnnotationComposer,
    $$IsarAuthSessionsTableCreateCompanionBuilder,
    $$IsarAuthSessionsTableUpdateCompanionBuilder,
    (IsarAuthSession,BaseReferences<_$AppDatabase,$IsarAuthSessionsTable,IsarAuthSession>),
    IsarAuthSession,
    PrefetchHooks Function()
    > {
    $$IsarAuthSessionsTableTableManager(_$AppDatabase db, $IsarAuthSessionsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarAuthSessionsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarAuthSessionsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarAuthSessionsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> key = const Value.absent(),Value<String?> activeEmail = const Value.absent(),Value<DateTime?> loggedInAt = const Value.absent(),})=> IsarAuthSessionsCompanion(isarId: isarId,key: key,activeEmail: activeEmail,loggedInAt: loggedInAt,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String key,Value<String?> activeEmail = const Value.absent(),Value<DateTime?> loggedInAt = const Value.absent(),})=> IsarAuthSessionsCompanion.insert(isarId: isarId,key: key,activeEmail: activeEmail,loggedInAt: loggedInAt,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarAuthSessionsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarAuthSessionsTable,
    IsarAuthSession,
    $$IsarAuthSessionsTableFilterComposer,
    $$IsarAuthSessionsTableOrderingComposer,
    $$IsarAuthSessionsTableAnnotationComposer,
    $$IsarAuthSessionsTableCreateCompanionBuilder,
    $$IsarAuthSessionsTableUpdateCompanionBuilder,
    (IsarAuthSession,BaseReferences<_$AppDatabase,$IsarAuthSessionsTable,IsarAuthSession>),
    IsarAuthSession,
    PrefetchHooks Function()
    >;typedef $$IsarFavoritesTableCreateCompanionBuilder = IsarFavoritesCompanion Function({Value<int> isarId,required String userEmail,required String eventId,required DateTime addedAt,});
typedef $$IsarFavoritesTableUpdateCompanionBuilder = IsarFavoritesCompanion Function({Value<int> isarId,Value<String> userEmail,Value<String> eventId,Value<DateTime> addedAt,});
class $$IsarFavoritesTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarFavoritesTable> {
        $$IsarFavoritesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get userEmail => $composableBuilder(
      column: $table.userEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarFavoritesTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarFavoritesTable> {
        $$IsarFavoritesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get userEmail => $composableBuilder(
      column: $table.userEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarFavoritesTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarFavoritesTable> {
        $$IsarFavoritesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get userEmail => $composableBuilder(
      column: $table.userEmail,
      builder: (column) => column);
      
GeneratedColumn<String> get eventId => $composableBuilder(
      column: $table.eventId,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get addedAt => $composableBuilder(
      column: $table.addedAt,
      builder: (column) => column);
      
        }
      class $$IsarFavoritesTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarFavoritesTable,
    IsarFavorite,
    $$IsarFavoritesTableFilterComposer,
    $$IsarFavoritesTableOrderingComposer,
    $$IsarFavoritesTableAnnotationComposer,
    $$IsarFavoritesTableCreateCompanionBuilder,
    $$IsarFavoritesTableUpdateCompanionBuilder,
    (IsarFavorite,BaseReferences<_$AppDatabase,$IsarFavoritesTable,IsarFavorite>),
    IsarFavorite,
    PrefetchHooks Function()
    > {
    $$IsarFavoritesTableTableManager(_$AppDatabase db, $IsarFavoritesTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarFavoritesTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarFavoritesTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarFavoritesTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> userEmail = const Value.absent(),Value<String> eventId = const Value.absent(),Value<DateTime> addedAt = const Value.absent(),})=> IsarFavoritesCompanion(isarId: isarId,userEmail: userEmail,eventId: eventId,addedAt: addedAt,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String userEmail,required String eventId,required DateTime addedAt,})=> IsarFavoritesCompanion.insert(isarId: isarId,userEmail: userEmail,eventId: eventId,addedAt: addedAt,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarFavoritesTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarFavoritesTable,
    IsarFavorite,
    $$IsarFavoritesTableFilterComposer,
    $$IsarFavoritesTableOrderingComposer,
    $$IsarFavoritesTableAnnotationComposer,
    $$IsarFavoritesTableCreateCompanionBuilder,
    $$IsarFavoritesTableUpdateCompanionBuilder,
    (IsarFavorite,BaseReferences<_$AppDatabase,$IsarFavoritesTable,IsarFavorite>),
    IsarFavorite,
    PrefetchHooks Function()
    >;typedef $$IsarOrdersTableCreateCompanionBuilder = IsarOrdersCompanion Function({Value<int> isarId,required String orderId,required String customerEmail,required DateTime placedAt,required double subtotal,required double discount,required double serviceFee,required double tax,required double total,required String currency,Value<String?> promoCode,required String paymentMethod,required String paymentBrand,Value<String?> paymentLast4,required String status,required int itemCount,Value<List<String>> ticketIds,Value<String?> failureReason,Value<String?> refundReason,Value<DateTime?> refundedAt,Value<double?> refundAmount,Value<String?> refundedByEmail,});
typedef $$IsarOrdersTableUpdateCompanionBuilder = IsarOrdersCompanion Function({Value<int> isarId,Value<String> orderId,Value<String> customerEmail,Value<DateTime> placedAt,Value<double> subtotal,Value<double> discount,Value<double> serviceFee,Value<double> tax,Value<double> total,Value<String> currency,Value<String?> promoCode,Value<String> paymentMethod,Value<String> paymentBrand,Value<String?> paymentLast4,Value<String> status,Value<int> itemCount,Value<List<String>> ticketIds,Value<String?> failureReason,Value<String?> refundReason,Value<DateTime?> refundedAt,Value<double?> refundAmount,Value<String?> refundedByEmail,});
class $$IsarOrdersTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarOrdersTable> {
        $$IsarOrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get orderId => $composableBuilder(
      column: $table.orderId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get customerEmail => $composableBuilder(
      column: $table.customerEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get placedAt => $composableBuilder(
      column: $table.placedAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get subtotal => $composableBuilder(
      column: $table.subtotal,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get discount => $composableBuilder(
      column: $table.discount,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get serviceFee => $composableBuilder(
      column: $table.serviceFee,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get tax => $composableBuilder(
      column: $table.tax,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get total => $composableBuilder(
      column: $table.total,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get currency => $composableBuilder(
      column: $table.currency,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get promoCode => $composableBuilder(
      column: $table.promoCode,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get paymentBrand => $composableBuilder(
      column: $table.paymentBrand,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get paymentLast4 => $composableBuilder(
      column: $table.paymentLast4,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get status => $composableBuilder(
      column: $table.status,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get itemCount => $composableBuilder(
      column: $table.itemCount,
      builder: (column) => 
      ColumnFilters(column));
      
          ColumnWithTypeConverterFilters<List<String>,List<String>,String> get ticketIds => $composableBuilder(
      column: $table.ticketIds,
      builder: (column) => 
      ColumnWithTypeConverterFilters(column));
      
ColumnFilters<String> get failureReason => $composableBuilder(
      column: $table.failureReason,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get refundReason => $composableBuilder(
      column: $table.refundReason,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get refundedAt => $composableBuilder(
      column: $table.refundedAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get refundAmount => $composableBuilder(
      column: $table.refundAmount,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get refundedByEmail => $composableBuilder(
      column: $table.refundedByEmail,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarOrdersTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarOrdersTable> {
        $$IsarOrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get orderId => $composableBuilder(
      column: $table.orderId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get customerEmail => $composableBuilder(
      column: $table.customerEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get placedAt => $composableBuilder(
      column: $table.placedAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get subtotal => $composableBuilder(
      column: $table.subtotal,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get discount => $composableBuilder(
      column: $table.discount,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get serviceFee => $composableBuilder(
      column: $table.serviceFee,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get tax => $composableBuilder(
      column: $table.tax,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get total => $composableBuilder(
      column: $table.total,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get currency => $composableBuilder(
      column: $table.currency,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get promoCode => $composableBuilder(
      column: $table.promoCode,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get paymentBrand => $composableBuilder(
      column: $table.paymentBrand,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get paymentLast4 => $composableBuilder(
      column: $table.paymentLast4,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get itemCount => $composableBuilder(
      column: $table.itemCount,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ticketIds => $composableBuilder(
      column: $table.ticketIds,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get failureReason => $composableBuilder(
      column: $table.failureReason,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get refundReason => $composableBuilder(
      column: $table.refundReason,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get refundedAt => $composableBuilder(
      column: $table.refundedAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get refundAmount => $composableBuilder(
      column: $table.refundAmount,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get refundedByEmail => $composableBuilder(
      column: $table.refundedByEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarOrdersTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarOrdersTable> {
        $$IsarOrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get orderId => $composableBuilder(
      column: $table.orderId,
      builder: (column) => column);
      
GeneratedColumn<String> get customerEmail => $composableBuilder(
      column: $table.customerEmail,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get placedAt => $composableBuilder(
      column: $table.placedAt,
      builder: (column) => column);
      
GeneratedColumn<double> get subtotal => $composableBuilder(
      column: $table.subtotal,
      builder: (column) => column);
      
GeneratedColumn<double> get discount => $composableBuilder(
      column: $table.discount,
      builder: (column) => column);
      
GeneratedColumn<double> get serviceFee => $composableBuilder(
      column: $table.serviceFee,
      builder: (column) => column);
      
GeneratedColumn<double> get tax => $composableBuilder(
      column: $table.tax,
      builder: (column) => column);
      
GeneratedColumn<double> get total => $composableBuilder(
      column: $table.total,
      builder: (column) => column);
      
GeneratedColumn<String> get currency => $composableBuilder(
      column: $table.currency,
      builder: (column) => column);
      
GeneratedColumn<String> get promoCode => $composableBuilder(
      column: $table.promoCode,
      builder: (column) => column);
      
GeneratedColumn<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => column);
      
GeneratedColumn<String> get paymentBrand => $composableBuilder(
      column: $table.paymentBrand,
      builder: (column) => column);
      
GeneratedColumn<String> get paymentLast4 => $composableBuilder(
      column: $table.paymentLast4,
      builder: (column) => column);
      
GeneratedColumn<String> get status => $composableBuilder(
      column: $table.status,
      builder: (column) => column);
      
GeneratedColumn<int> get itemCount => $composableBuilder(
      column: $table.itemCount,
      builder: (column) => column);
      
          GeneratedColumnWithTypeConverter<List<String>,String> get ticketIds => $composableBuilder(
      column: $table.ticketIds,
      builder: (column) => column);
      
GeneratedColumn<String> get failureReason => $composableBuilder(
      column: $table.failureReason,
      builder: (column) => column);
      
GeneratedColumn<String> get refundReason => $composableBuilder(
      column: $table.refundReason,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get refundedAt => $composableBuilder(
      column: $table.refundedAt,
      builder: (column) => column);
      
GeneratedColumn<double> get refundAmount => $composableBuilder(
      column: $table.refundAmount,
      builder: (column) => column);
      
GeneratedColumn<String> get refundedByEmail => $composableBuilder(
      column: $table.refundedByEmail,
      builder: (column) => column);
      
        }
      class $$IsarOrdersTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarOrdersTable,
    IsarOrder,
    $$IsarOrdersTableFilterComposer,
    $$IsarOrdersTableOrderingComposer,
    $$IsarOrdersTableAnnotationComposer,
    $$IsarOrdersTableCreateCompanionBuilder,
    $$IsarOrdersTableUpdateCompanionBuilder,
    (IsarOrder,BaseReferences<_$AppDatabase,$IsarOrdersTable,IsarOrder>),
    IsarOrder,
    PrefetchHooks Function()
    > {
    $$IsarOrdersTableTableManager(_$AppDatabase db, $IsarOrdersTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarOrdersTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarOrdersTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarOrdersTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> orderId = const Value.absent(),Value<String> customerEmail = const Value.absent(),Value<DateTime> placedAt = const Value.absent(),Value<double> subtotal = const Value.absent(),Value<double> discount = const Value.absent(),Value<double> serviceFee = const Value.absent(),Value<double> tax = const Value.absent(),Value<double> total = const Value.absent(),Value<String> currency = const Value.absent(),Value<String?> promoCode = const Value.absent(),Value<String> paymentMethod = const Value.absent(),Value<String> paymentBrand = const Value.absent(),Value<String?> paymentLast4 = const Value.absent(),Value<String> status = const Value.absent(),Value<int> itemCount = const Value.absent(),Value<List<String>> ticketIds = const Value.absent(),Value<String?> failureReason = const Value.absent(),Value<String?> refundReason = const Value.absent(),Value<DateTime?> refundedAt = const Value.absent(),Value<double?> refundAmount = const Value.absent(),Value<String?> refundedByEmail = const Value.absent(),})=> IsarOrdersCompanion(isarId: isarId,orderId: orderId,customerEmail: customerEmail,placedAt: placedAt,subtotal: subtotal,discount: discount,serviceFee: serviceFee,tax: tax,total: total,currency: currency,promoCode: promoCode,paymentMethod: paymentMethod,paymentBrand: paymentBrand,paymentLast4: paymentLast4,status: status,itemCount: itemCount,ticketIds: ticketIds,failureReason: failureReason,refundReason: refundReason,refundedAt: refundedAt,refundAmount: refundAmount,refundedByEmail: refundedByEmail,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String orderId,required String customerEmail,required DateTime placedAt,required double subtotal,required double discount,required double serviceFee,required double tax,required double total,required String currency,Value<String?> promoCode = const Value.absent(),required String paymentMethod,required String paymentBrand,Value<String?> paymentLast4 = const Value.absent(),required String status,required int itemCount,Value<List<String>> ticketIds = const Value.absent(),Value<String?> failureReason = const Value.absent(),Value<String?> refundReason = const Value.absent(),Value<DateTime?> refundedAt = const Value.absent(),Value<double?> refundAmount = const Value.absent(),Value<String?> refundedByEmail = const Value.absent(),})=> IsarOrdersCompanion.insert(isarId: isarId,orderId: orderId,customerEmail: customerEmail,placedAt: placedAt,subtotal: subtotal,discount: discount,serviceFee: serviceFee,tax: tax,total: total,currency: currency,promoCode: promoCode,paymentMethod: paymentMethod,paymentBrand: paymentBrand,paymentLast4: paymentLast4,status: status,itemCount: itemCount,ticketIds: ticketIds,failureReason: failureReason,refundReason: refundReason,refundedAt: refundedAt,refundAmount: refundAmount,refundedByEmail: refundedByEmail,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarOrdersTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarOrdersTable,
    IsarOrder,
    $$IsarOrdersTableFilterComposer,
    $$IsarOrdersTableOrderingComposer,
    $$IsarOrdersTableAnnotationComposer,
    $$IsarOrdersTableCreateCompanionBuilder,
    $$IsarOrdersTableUpdateCompanionBuilder,
    (IsarOrder,BaseReferences<_$AppDatabase,$IsarOrdersTable,IsarOrder>),
    IsarOrder,
    PrefetchHooks Function()
    >;typedef $$IsarAppSettingsTableTableCreateCompanionBuilder = IsarAppSettingsTableCompanion Function({Value<int> isarId,required String key,required double taxRate,required double serviceFeeRate,required String supportEmail,required bool maintenanceMode,required String maintenanceMessage,Value<List<String>> featuredEventIds,required int maxTicketsPerOrder,required String currencyCode,required String currencySymbol,required DateTime updatedAt,Value<String?> updatedByEmail,Value<String?> stripePublishableKey,Value<bool> paymentSimulation,});
typedef $$IsarAppSettingsTableTableUpdateCompanionBuilder = IsarAppSettingsTableCompanion Function({Value<int> isarId,Value<String> key,Value<double> taxRate,Value<double> serviceFeeRate,Value<String> supportEmail,Value<bool> maintenanceMode,Value<String> maintenanceMessage,Value<List<String>> featuredEventIds,Value<int> maxTicketsPerOrder,Value<String> currencyCode,Value<String> currencySymbol,Value<DateTime> updatedAt,Value<String?> updatedByEmail,Value<String?> stripePublishableKey,Value<bool> paymentSimulation,});
class $$IsarAppSettingsTableTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarAppSettingsTableTable> {
        $$IsarAppSettingsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get key => $composableBuilder(
      column: $table.key,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get taxRate => $composableBuilder(
      column: $table.taxRate,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get serviceFeeRate => $composableBuilder(
      column: $table.serviceFeeRate,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get supportEmail => $composableBuilder(
      column: $table.supportEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get maintenanceMode => $composableBuilder(
      column: $table.maintenanceMode,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get maintenanceMessage => $composableBuilder(
      column: $table.maintenanceMessage,
      builder: (column) => 
      ColumnFilters(column));
      
          ColumnWithTypeConverterFilters<List<String>,List<String>,String> get featuredEventIds => $composableBuilder(
      column: $table.featuredEventIds,
      builder: (column) => 
      ColumnWithTypeConverterFilters(column));
      
ColumnFilters<int> get maxTicketsPerOrder => $composableBuilder(
      column: $table.maxTicketsPerOrder,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get currencySymbol => $composableBuilder(
      column: $table.currencySymbol,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get updatedByEmail => $composableBuilder(
      column: $table.updatedByEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get stripePublishableKey => $composableBuilder(
      column: $table.stripePublishableKey,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get paymentSimulation => $composableBuilder(
      column: $table.paymentSimulation,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarAppSettingsTableTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarAppSettingsTableTable> {
        $$IsarAppSettingsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get key => $composableBuilder(
      column: $table.key,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get taxRate => $composableBuilder(
      column: $table.taxRate,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get serviceFeeRate => $composableBuilder(
      column: $table.serviceFeeRate,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get supportEmail => $composableBuilder(
      column: $table.supportEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get maintenanceMode => $composableBuilder(
      column: $table.maintenanceMode,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get maintenanceMessage => $composableBuilder(
      column: $table.maintenanceMessage,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get featuredEventIds => $composableBuilder(
      column: $table.featuredEventIds,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get maxTicketsPerOrder => $composableBuilder(
      column: $table.maxTicketsPerOrder,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get currencySymbol => $composableBuilder(
      column: $table.currencySymbol,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get updatedByEmail => $composableBuilder(
      column: $table.updatedByEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get stripePublishableKey => $composableBuilder(
      column: $table.stripePublishableKey,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get paymentSimulation => $composableBuilder(
      column: $table.paymentSimulation,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarAppSettingsTableTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarAppSettingsTableTable> {
        $$IsarAppSettingsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get key => $composableBuilder(
      column: $table.key,
      builder: (column) => column);
      
GeneratedColumn<double> get taxRate => $composableBuilder(
      column: $table.taxRate,
      builder: (column) => column);
      
GeneratedColumn<double> get serviceFeeRate => $composableBuilder(
      column: $table.serviceFeeRate,
      builder: (column) => column);
      
GeneratedColumn<String> get supportEmail => $composableBuilder(
      column: $table.supportEmail,
      builder: (column) => column);
      
GeneratedColumn<bool> get maintenanceMode => $composableBuilder(
      column: $table.maintenanceMode,
      builder: (column) => column);
      
GeneratedColumn<String> get maintenanceMessage => $composableBuilder(
      column: $table.maintenanceMessage,
      builder: (column) => column);
      
          GeneratedColumnWithTypeConverter<List<String>,String> get featuredEventIds => $composableBuilder(
      column: $table.featuredEventIds,
      builder: (column) => column);
      
GeneratedColumn<int> get maxTicketsPerOrder => $composableBuilder(
      column: $table.maxTicketsPerOrder,
      builder: (column) => column);
      
GeneratedColumn<String> get currencyCode => $composableBuilder(
      column: $table.currencyCode,
      builder: (column) => column);
      
GeneratedColumn<String> get currencySymbol => $composableBuilder(
      column: $table.currencySymbol,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt,
      builder: (column) => column);
      
GeneratedColumn<String> get updatedByEmail => $composableBuilder(
      column: $table.updatedByEmail,
      builder: (column) => column);
      
GeneratedColumn<String> get stripePublishableKey => $composableBuilder(
      column: $table.stripePublishableKey,
      builder: (column) => column);
      
GeneratedColumn<bool> get paymentSimulation => $composableBuilder(
      column: $table.paymentSimulation,
      builder: (column) => column);
      
        }
      class $$IsarAppSettingsTableTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarAppSettingsTableTable,
    IsarAppSettings,
    $$IsarAppSettingsTableTableFilterComposer,
    $$IsarAppSettingsTableTableOrderingComposer,
    $$IsarAppSettingsTableTableAnnotationComposer,
    $$IsarAppSettingsTableTableCreateCompanionBuilder,
    $$IsarAppSettingsTableTableUpdateCompanionBuilder,
    (IsarAppSettings,BaseReferences<_$AppDatabase,$IsarAppSettingsTableTable,IsarAppSettings>),
    IsarAppSettings,
    PrefetchHooks Function()
    > {
    $$IsarAppSettingsTableTableTableManager(_$AppDatabase db, $IsarAppSettingsTableTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarAppSettingsTableTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarAppSettingsTableTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarAppSettingsTableTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> key = const Value.absent(),Value<double> taxRate = const Value.absent(),Value<double> serviceFeeRate = const Value.absent(),Value<String> supportEmail = const Value.absent(),Value<bool> maintenanceMode = const Value.absent(),Value<String> maintenanceMessage = const Value.absent(),Value<List<String>> featuredEventIds = const Value.absent(),Value<int> maxTicketsPerOrder = const Value.absent(),Value<String> currencyCode = const Value.absent(),Value<String> currencySymbol = const Value.absent(),Value<DateTime> updatedAt = const Value.absent(),Value<String?> updatedByEmail = const Value.absent(),Value<String?> stripePublishableKey = const Value.absent(),Value<bool> paymentSimulation = const Value.absent(),})=> IsarAppSettingsTableCompanion(isarId: isarId,key: key,taxRate: taxRate,serviceFeeRate: serviceFeeRate,supportEmail: supportEmail,maintenanceMode: maintenanceMode,maintenanceMessage: maintenanceMessage,featuredEventIds: featuredEventIds,maxTicketsPerOrder: maxTicketsPerOrder,currencyCode: currencyCode,currencySymbol: currencySymbol,updatedAt: updatedAt,updatedByEmail: updatedByEmail,stripePublishableKey: stripePublishableKey,paymentSimulation: paymentSimulation,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String key,required double taxRate,required double serviceFeeRate,required String supportEmail,required bool maintenanceMode,required String maintenanceMessage,Value<List<String>> featuredEventIds = const Value.absent(),required int maxTicketsPerOrder,required String currencyCode,required String currencySymbol,required DateTime updatedAt,Value<String?> updatedByEmail = const Value.absent(),Value<String?> stripePublishableKey = const Value.absent(),Value<bool> paymentSimulation = const Value.absent(),})=> IsarAppSettingsTableCompanion.insert(isarId: isarId,key: key,taxRate: taxRate,serviceFeeRate: serviceFeeRate,supportEmail: supportEmail,maintenanceMode: maintenanceMode,maintenanceMessage: maintenanceMessage,featuredEventIds: featuredEventIds,maxTicketsPerOrder: maxTicketsPerOrder,currencyCode: currencyCode,currencySymbol: currencySymbol,updatedAt: updatedAt,updatedByEmail: updatedByEmail,stripePublishableKey: stripePublishableKey,paymentSimulation: paymentSimulation,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarAppSettingsTableTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarAppSettingsTableTable,
    IsarAppSettings,
    $$IsarAppSettingsTableTableFilterComposer,
    $$IsarAppSettingsTableTableOrderingComposer,
    $$IsarAppSettingsTableTableAnnotationComposer,
    $$IsarAppSettingsTableTableCreateCompanionBuilder,
    $$IsarAppSettingsTableTableUpdateCompanionBuilder,
    (IsarAppSettings,BaseReferences<_$AppDatabase,$IsarAppSettingsTableTable,IsarAppSettings>),
    IsarAppSettings,
    PrefetchHooks Function()
    >;typedef $$IsarPromoCodesTableCreateCompanionBuilder = IsarPromoCodesCompanion Function({Value<int> isarId,required String code,required String label,required String emoji,required String discountType,required double discountValue,required double minSubtotal,Value<DateTime?> expiresAt,required int maxUses,Value<int> usedCount,Value<bool> isActive,required DateTime createdAt,Value<String?> createdByEmail,});
typedef $$IsarPromoCodesTableUpdateCompanionBuilder = IsarPromoCodesCompanion Function({Value<int> isarId,Value<String> code,Value<String> label,Value<String> emoji,Value<String> discountType,Value<double> discountValue,Value<double> minSubtotal,Value<DateTime?> expiresAt,Value<int> maxUses,Value<int> usedCount,Value<bool> isActive,Value<DateTime> createdAt,Value<String?> createdByEmail,});
class $$IsarPromoCodesTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarPromoCodesTable> {
        $$IsarPromoCodesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get code => $composableBuilder(
      column: $table.code,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get label => $composableBuilder(
      column: $table.label,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get emoji => $composableBuilder(
      column: $table.emoji,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get discountType => $composableBuilder(
      column: $table.discountType,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get discountValue => $composableBuilder(
      column: $table.discountValue,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<double> get minSubtotal => $composableBuilder(
      column: $table.minSubtotal,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get maxUses => $composableBuilder(
      column: $table.maxUses,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get usedCount => $composableBuilder(
      column: $table.usedCount,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get isActive => $composableBuilder(
      column: $table.isActive,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get createdByEmail => $composableBuilder(
      column: $table.createdByEmail,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarPromoCodesTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarPromoCodesTable> {
        $$IsarPromoCodesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get code => $composableBuilder(
      column: $table.code,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get label => $composableBuilder(
      column: $table.label,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get emoji => $composableBuilder(
      column: $table.emoji,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get discountType => $composableBuilder(
      column: $table.discountType,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get discountValue => $composableBuilder(
      column: $table.discountValue,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<double> get minSubtotal => $composableBuilder(
      column: $table.minSubtotal,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get maxUses => $composableBuilder(
      column: $table.maxUses,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get usedCount => $composableBuilder(
      column: $table.usedCount,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get isActive => $composableBuilder(
      column: $table.isActive,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get createdByEmail => $composableBuilder(
      column: $table.createdByEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarPromoCodesTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarPromoCodesTable> {
        $$IsarPromoCodesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get code => $composableBuilder(
      column: $table.code,
      builder: (column) => column);
      
GeneratedColumn<String> get label => $composableBuilder(
      column: $table.label,
      builder: (column) => column);
      
GeneratedColumn<String> get emoji => $composableBuilder(
      column: $table.emoji,
      builder: (column) => column);
      
GeneratedColumn<String> get discountType => $composableBuilder(
      column: $table.discountType,
      builder: (column) => column);
      
GeneratedColumn<double> get discountValue => $composableBuilder(
      column: $table.discountValue,
      builder: (column) => column);
      
GeneratedColumn<double> get minSubtotal => $composableBuilder(
      column: $table.minSubtotal,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get expiresAt => $composableBuilder(
      column: $table.expiresAt,
      builder: (column) => column);
      
GeneratedColumn<int> get maxUses => $composableBuilder(
      column: $table.maxUses,
      builder: (column) => column);
      
GeneratedColumn<int> get usedCount => $composableBuilder(
      column: $table.usedCount,
      builder: (column) => column);
      
GeneratedColumn<bool> get isActive => $composableBuilder(
      column: $table.isActive,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => column);
      
GeneratedColumn<String> get createdByEmail => $composableBuilder(
      column: $table.createdByEmail,
      builder: (column) => column);
      
        }
      class $$IsarPromoCodesTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarPromoCodesTable,
    IsarPromoCode,
    $$IsarPromoCodesTableFilterComposer,
    $$IsarPromoCodesTableOrderingComposer,
    $$IsarPromoCodesTableAnnotationComposer,
    $$IsarPromoCodesTableCreateCompanionBuilder,
    $$IsarPromoCodesTableUpdateCompanionBuilder,
    (IsarPromoCode,BaseReferences<_$AppDatabase,$IsarPromoCodesTable,IsarPromoCode>),
    IsarPromoCode,
    PrefetchHooks Function()
    > {
    $$IsarPromoCodesTableTableManager(_$AppDatabase db, $IsarPromoCodesTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarPromoCodesTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarPromoCodesTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarPromoCodesTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> code = const Value.absent(),Value<String> label = const Value.absent(),Value<String> emoji = const Value.absent(),Value<String> discountType = const Value.absent(),Value<double> discountValue = const Value.absent(),Value<double> minSubtotal = const Value.absent(),Value<DateTime?> expiresAt = const Value.absent(),Value<int> maxUses = const Value.absent(),Value<int> usedCount = const Value.absent(),Value<bool> isActive = const Value.absent(),Value<DateTime> createdAt = const Value.absent(),Value<String?> createdByEmail = const Value.absent(),})=> IsarPromoCodesCompanion(isarId: isarId,code: code,label: label,emoji: emoji,discountType: discountType,discountValue: discountValue,minSubtotal: minSubtotal,expiresAt: expiresAt,maxUses: maxUses,usedCount: usedCount,isActive: isActive,createdAt: createdAt,createdByEmail: createdByEmail,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String code,required String label,required String emoji,required String discountType,required double discountValue,required double minSubtotal,Value<DateTime?> expiresAt = const Value.absent(),required int maxUses,Value<int> usedCount = const Value.absent(),Value<bool> isActive = const Value.absent(),required DateTime createdAt,Value<String?> createdByEmail = const Value.absent(),})=> IsarPromoCodesCompanion.insert(isarId: isarId,code: code,label: label,emoji: emoji,discountType: discountType,discountValue: discountValue,minSubtotal: minSubtotal,expiresAt: expiresAt,maxUses: maxUses,usedCount: usedCount,isActive: isActive,createdAt: createdAt,createdByEmail: createdByEmail,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarPromoCodesTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarPromoCodesTable,
    IsarPromoCode,
    $$IsarPromoCodesTableFilterComposer,
    $$IsarPromoCodesTableOrderingComposer,
    $$IsarPromoCodesTableAnnotationComposer,
    $$IsarPromoCodesTableCreateCompanionBuilder,
    $$IsarPromoCodesTableUpdateCompanionBuilder,
    (IsarPromoCode,BaseReferences<_$AppDatabase,$IsarPromoCodesTable,IsarPromoCode>),
    IsarPromoCode,
    PrefetchHooks Function()
    >;typedef $$IsarPaymentMethodsTableCreateCompanionBuilder = IsarPaymentMethodsCompanion Function({Value<int> isarId,required String methodId,required String ownerEmail,required String brand,required String last4,required String holder,required String expiry,Value<bool> isDefault,required DateTime createdAt,});
typedef $$IsarPaymentMethodsTableUpdateCompanionBuilder = IsarPaymentMethodsCompanion Function({Value<int> isarId,Value<String> methodId,Value<String> ownerEmail,Value<String> brand,Value<String> last4,Value<String> holder,Value<String> expiry,Value<bool> isDefault,Value<DateTime> createdAt,});
class $$IsarPaymentMethodsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarPaymentMethodsTable> {
        $$IsarPaymentMethodsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get methodId => $composableBuilder(
      column: $table.methodId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get brand => $composableBuilder(
      column: $table.brand,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get last4 => $composableBuilder(
      column: $table.last4,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get holder => $composableBuilder(
      column: $table.holder,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get expiry => $composableBuilder(
      column: $table.expiry,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<bool> get isDefault => $composableBuilder(
      column: $table.isDefault,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarPaymentMethodsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarPaymentMethodsTable> {
        $$IsarPaymentMethodsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get methodId => $composableBuilder(
      column: $table.methodId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get brand => $composableBuilder(
      column: $table.brand,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get last4 => $composableBuilder(
      column: $table.last4,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get holder => $composableBuilder(
      column: $table.holder,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get expiry => $composableBuilder(
      column: $table.expiry,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<bool> get isDefault => $composableBuilder(
      column: $table.isDefault,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarPaymentMethodsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarPaymentMethodsTable> {
        $$IsarPaymentMethodsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get methodId => $composableBuilder(
      column: $table.methodId,
      builder: (column) => column);
      
GeneratedColumn<String> get ownerEmail => $composableBuilder(
      column: $table.ownerEmail,
      builder: (column) => column);
      
GeneratedColumn<String> get brand => $composableBuilder(
      column: $table.brand,
      builder: (column) => column);
      
GeneratedColumn<String> get last4 => $composableBuilder(
      column: $table.last4,
      builder: (column) => column);
      
GeneratedColumn<String> get holder => $composableBuilder(
      column: $table.holder,
      builder: (column) => column);
      
GeneratedColumn<String> get expiry => $composableBuilder(
      column: $table.expiry,
      builder: (column) => column);
      
GeneratedColumn<bool> get isDefault => $composableBuilder(
      column: $table.isDefault,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt,
      builder: (column) => column);
      
        }
      class $$IsarPaymentMethodsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarPaymentMethodsTable,
    IsarPaymentMethod,
    $$IsarPaymentMethodsTableFilterComposer,
    $$IsarPaymentMethodsTableOrderingComposer,
    $$IsarPaymentMethodsTableAnnotationComposer,
    $$IsarPaymentMethodsTableCreateCompanionBuilder,
    $$IsarPaymentMethodsTableUpdateCompanionBuilder,
    (IsarPaymentMethod,BaseReferences<_$AppDatabase,$IsarPaymentMethodsTable,IsarPaymentMethod>),
    IsarPaymentMethod,
    PrefetchHooks Function()
    > {
    $$IsarPaymentMethodsTableTableManager(_$AppDatabase db, $IsarPaymentMethodsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarPaymentMethodsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarPaymentMethodsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarPaymentMethodsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> methodId = const Value.absent(),Value<String> ownerEmail = const Value.absent(),Value<String> brand = const Value.absent(),Value<String> last4 = const Value.absent(),Value<String> holder = const Value.absent(),Value<String> expiry = const Value.absent(),Value<bool> isDefault = const Value.absent(),Value<DateTime> createdAt = const Value.absent(),})=> IsarPaymentMethodsCompanion(isarId: isarId,methodId: methodId,ownerEmail: ownerEmail,brand: brand,last4: last4,holder: holder,expiry: expiry,isDefault: isDefault,createdAt: createdAt,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String methodId,required String ownerEmail,required String brand,required String last4,required String holder,required String expiry,Value<bool> isDefault = const Value.absent(),required DateTime createdAt,})=> IsarPaymentMethodsCompanion.insert(isarId: isarId,methodId: methodId,ownerEmail: ownerEmail,brand: brand,last4: last4,holder: holder,expiry: expiry,isDefault: isDefault,createdAt: createdAt,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarPaymentMethodsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarPaymentMethodsTable,
    IsarPaymentMethod,
    $$IsarPaymentMethodsTableFilterComposer,
    $$IsarPaymentMethodsTableOrderingComposer,
    $$IsarPaymentMethodsTableAnnotationComposer,
    $$IsarPaymentMethodsTableCreateCompanionBuilder,
    $$IsarPaymentMethodsTableUpdateCompanionBuilder,
    (IsarPaymentMethod,BaseReferences<_$AppDatabase,$IsarPaymentMethodsTable,IsarPaymentMethod>),
    IsarPaymentMethod,
    PrefetchHooks Function()
    >;typedef $$IsarAdminActionsTableCreateCompanionBuilder = IsarAdminActionsCompanion Function({Value<int> isarId,required String actorEmail,required String actorRole,required String action,required String entityType,required String entityId,required DateTime at,Value<String?> details,});
typedef $$IsarAdminActionsTableUpdateCompanionBuilder = IsarAdminActionsCompanion Function({Value<int> isarId,Value<String> actorEmail,Value<String> actorRole,Value<String> action,Value<String> entityType,Value<String> entityId,Value<DateTime> at,Value<String?> details,});
class $$IsarAdminActionsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarAdminActionsTable> {
        $$IsarAdminActionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get actorEmail => $composableBuilder(
      column: $table.actorEmail,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get actorRole => $composableBuilder(
      column: $table.actorRole,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get action => $composableBuilder(
      column: $table.action,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get entityType => $composableBuilder(
      column: $table.entityType,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get entityId => $composableBuilder(
      column: $table.entityId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get at => $composableBuilder(
      column: $table.at,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get details => $composableBuilder(
      column: $table.details,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarAdminActionsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarAdminActionsTable> {
        $$IsarAdminActionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get actorEmail => $composableBuilder(
      column: $table.actorEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get actorRole => $composableBuilder(
      column: $table.actorRole,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get action => $composableBuilder(
      column: $table.action,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get entityType => $composableBuilder(
      column: $table.entityType,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get entityId => $composableBuilder(
      column: $table.entityId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get at => $composableBuilder(
      column: $table.at,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get details => $composableBuilder(
      column: $table.details,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarAdminActionsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarAdminActionsTable> {
        $$IsarAdminActionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get actorEmail => $composableBuilder(
      column: $table.actorEmail,
      builder: (column) => column);
      
GeneratedColumn<String> get actorRole => $composableBuilder(
      column: $table.actorRole,
      builder: (column) => column);
      
GeneratedColumn<String> get action => $composableBuilder(
      column: $table.action,
      builder: (column) => column);
      
GeneratedColumn<String> get entityType => $composableBuilder(
      column: $table.entityType,
      builder: (column) => column);
      
GeneratedColumn<String> get entityId => $composableBuilder(
      column: $table.entityId,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get at => $composableBuilder(
      column: $table.at,
      builder: (column) => column);
      
GeneratedColumn<String> get details => $composableBuilder(
      column: $table.details,
      builder: (column) => column);
      
        }
      class $$IsarAdminActionsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarAdminActionsTable,
    IsarAdminAction,
    $$IsarAdminActionsTableFilterComposer,
    $$IsarAdminActionsTableOrderingComposer,
    $$IsarAdminActionsTableAnnotationComposer,
    $$IsarAdminActionsTableCreateCompanionBuilder,
    $$IsarAdminActionsTableUpdateCompanionBuilder,
    (IsarAdminAction,BaseReferences<_$AppDatabase,$IsarAdminActionsTable,IsarAdminAction>),
    IsarAdminAction,
    PrefetchHooks Function()
    > {
    $$IsarAdminActionsTableTableManager(_$AppDatabase db, $IsarAdminActionsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarAdminActionsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarAdminActionsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarAdminActionsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> actorEmail = const Value.absent(),Value<String> actorRole = const Value.absent(),Value<String> action = const Value.absent(),Value<String> entityType = const Value.absent(),Value<String> entityId = const Value.absent(),Value<DateTime> at = const Value.absent(),Value<String?> details = const Value.absent(),})=> IsarAdminActionsCompanion(isarId: isarId,actorEmail: actorEmail,actorRole: actorRole,action: action,entityType: entityType,entityId: entityId,at: at,details: details,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String actorEmail,required String actorRole,required String action,required String entityType,required String entityId,required DateTime at,Value<String?> details = const Value.absent(),})=> IsarAdminActionsCompanion.insert(isarId: isarId,actorEmail: actorEmail,actorRole: actorRole,action: action,entityType: entityType,entityId: entityId,at: at,details: details,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarAdminActionsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarAdminActionsTable,
    IsarAdminAction,
    $$IsarAdminActionsTableFilterComposer,
    $$IsarAdminActionsTableOrderingComposer,
    $$IsarAdminActionsTableAnnotationComposer,
    $$IsarAdminActionsTableCreateCompanionBuilder,
    $$IsarAdminActionsTableUpdateCompanionBuilder,
    (IsarAdminAction,BaseReferences<_$AppDatabase,$IsarAdminActionsTable,IsarAdminAction>),
    IsarAdminAction,
    PrefetchHooks Function()
    >;typedef $$IsarBroadcastNotificationsTableCreateCompanionBuilder = IsarBroadcastNotificationsCompanion Function({Value<int> isarId,required String broadcastId,required String title,required String body,required String category,Value<String?> actionRoute,required String audience,required DateTime sentAt,required String sentByEmail,});
typedef $$IsarBroadcastNotificationsTableUpdateCompanionBuilder = IsarBroadcastNotificationsCompanion Function({Value<int> isarId,Value<String> broadcastId,Value<String> title,Value<String> body,Value<String> category,Value<String?> actionRoute,Value<String> audience,Value<DateTime> sentAt,Value<String> sentByEmail,});
class $$IsarBroadcastNotificationsTableFilterComposer extends Composer<
        _$AppDatabase,
        $IsarBroadcastNotificationsTable> {
        $$IsarBroadcastNotificationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get broadcastId => $composableBuilder(
      column: $table.broadcastId,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get title => $composableBuilder(
      column: $table.title,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get body => $composableBuilder(
      column: $table.body,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get category => $composableBuilder(
      column: $table.category,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get actionRoute => $composableBuilder(
      column: $table.actionRoute,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get audience => $composableBuilder(
      column: $table.audience,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<DateTime> get sentAt => $composableBuilder(
      column: $table.sentAt,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get sentByEmail => $composableBuilder(
      column: $table.sentByEmail,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$IsarBroadcastNotificationsTableOrderingComposer extends Composer<
        _$AppDatabase,
        $IsarBroadcastNotificationsTable> {
        $$IsarBroadcastNotificationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get broadcastId => $composableBuilder(
      column: $table.broadcastId,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get body => $composableBuilder(
      column: $table.body,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get category => $composableBuilder(
      column: $table.category,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get actionRoute => $composableBuilder(
      column: $table.actionRoute,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get audience => $composableBuilder(
      column: $table.audience,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<DateTime> get sentAt => $composableBuilder(
      column: $table.sentAt,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get sentByEmail => $composableBuilder(
      column: $table.sentByEmail,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$IsarBroadcastNotificationsTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $IsarBroadcastNotificationsTable> {
        $$IsarBroadcastNotificationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get isarId => $composableBuilder(
      column: $table.isarId,
      builder: (column) => column);
      
GeneratedColumn<String> get broadcastId => $composableBuilder(
      column: $table.broadcastId,
      builder: (column) => column);
      
GeneratedColumn<String> get title => $composableBuilder(
      column: $table.title,
      builder: (column) => column);
      
GeneratedColumn<String> get body => $composableBuilder(
      column: $table.body,
      builder: (column) => column);
      
GeneratedColumn<String> get category => $composableBuilder(
      column: $table.category,
      builder: (column) => column);
      
GeneratedColumn<String> get actionRoute => $composableBuilder(
      column: $table.actionRoute,
      builder: (column) => column);
      
GeneratedColumn<String> get audience => $composableBuilder(
      column: $table.audience,
      builder: (column) => column);
      
GeneratedColumn<DateTime> get sentAt => $composableBuilder(
      column: $table.sentAt,
      builder: (column) => column);
      
GeneratedColumn<String> get sentByEmail => $composableBuilder(
      column: $table.sentByEmail,
      builder: (column) => column);
      
        }
      class $$IsarBroadcastNotificationsTableTableManager extends RootTableManager    <_$AppDatabase,
    $IsarBroadcastNotificationsTable,
    IsarBroadcastNotification,
    $$IsarBroadcastNotificationsTableFilterComposer,
    $$IsarBroadcastNotificationsTableOrderingComposer,
    $$IsarBroadcastNotificationsTableAnnotationComposer,
    $$IsarBroadcastNotificationsTableCreateCompanionBuilder,
    $$IsarBroadcastNotificationsTableUpdateCompanionBuilder,
    (IsarBroadcastNotification,BaseReferences<_$AppDatabase,$IsarBroadcastNotificationsTable,IsarBroadcastNotification>),
    IsarBroadcastNotification,
    PrefetchHooks Function()
    > {
    $$IsarBroadcastNotificationsTableTableManager(_$AppDatabase db, $IsarBroadcastNotificationsTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$IsarBroadcastNotificationsTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$IsarBroadcastNotificationsTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$IsarBroadcastNotificationsTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> isarId = const Value.absent(),Value<String> broadcastId = const Value.absent(),Value<String> title = const Value.absent(),Value<String> body = const Value.absent(),Value<String> category = const Value.absent(),Value<String?> actionRoute = const Value.absent(),Value<String> audience = const Value.absent(),Value<DateTime> sentAt = const Value.absent(),Value<String> sentByEmail = const Value.absent(),})=> IsarBroadcastNotificationsCompanion(isarId: isarId,broadcastId: broadcastId,title: title,body: body,category: category,actionRoute: actionRoute,audience: audience,sentAt: sentAt,sentByEmail: sentByEmail,),
        createCompanionCallback: ({Value<int> isarId = const Value.absent(),required String broadcastId,required String title,required String body,required String category,Value<String?> actionRoute = const Value.absent(),required String audience,required DateTime sentAt,required String sentByEmail,})=> IsarBroadcastNotificationsCompanion.insert(isarId: isarId,broadcastId: broadcastId,title: title,body: body,category: category,actionRoute: actionRoute,audience: audience,sentAt: sentAt,sentByEmail: sentByEmail,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$IsarBroadcastNotificationsTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $IsarBroadcastNotificationsTable,
    IsarBroadcastNotification,
    $$IsarBroadcastNotificationsTableFilterComposer,
    $$IsarBroadcastNotificationsTableOrderingComposer,
    $$IsarBroadcastNotificationsTableAnnotationComposer,
    $$IsarBroadcastNotificationsTableCreateCompanionBuilder,
    $$IsarBroadcastNotificationsTableUpdateCompanionBuilder,
    (IsarBroadcastNotification,BaseReferences<_$AppDatabase,$IsarBroadcastNotificationsTable,IsarBroadcastNotification>),
    IsarBroadcastNotification,
    PrefetchHooks Function()
    >;class $AppDatabaseManager {
final _$AppDatabase _db;
$AppDatabaseManager(this._db);
$$IsarEventsTableTableManager get isarEvents => $$IsarEventsTableTableManager(_db, _db.isarEvents);
$$IsarTicketsTableTableManager get isarTickets => $$IsarTicketsTableTableManager(_db, _db.isarTickets);
$$IsarCartItemsTableTableManager get isarCartItems => $$IsarCartItemsTableTableManager(_db, _db.isarCartItems);
$$IsarUserProfilesTableTableManager get isarUserProfiles => $$IsarUserProfilesTableTableManager(_db, _db.isarUserProfiles);
$$IsarAuthSessionsTableTableManager get isarAuthSessions => $$IsarAuthSessionsTableTableManager(_db, _db.isarAuthSessions);
$$IsarFavoritesTableTableManager get isarFavorites => $$IsarFavoritesTableTableManager(_db, _db.isarFavorites);
$$IsarOrdersTableTableManager get isarOrders => $$IsarOrdersTableTableManager(_db, _db.isarOrders);
$$IsarAppSettingsTableTableTableManager get isarAppSettingsTable => $$IsarAppSettingsTableTableTableManager(_db, _db.isarAppSettingsTable);
$$IsarPromoCodesTableTableManager get isarPromoCodes => $$IsarPromoCodesTableTableManager(_db, _db.isarPromoCodes);
$$IsarPaymentMethodsTableTableManager get isarPaymentMethods => $$IsarPaymentMethodsTableTableManager(_db, _db.isarPaymentMethods);
$$IsarAdminActionsTableTableManager get isarAdminActions => $$IsarAdminActionsTableTableManager(_db, _db.isarAdminActions);
$$IsarBroadcastNotificationsTableTableManager get isarBroadcastNotifications => $$IsarBroadcastNotificationsTableTableManager(_db, _db.isarBroadcastNotifications);
}
