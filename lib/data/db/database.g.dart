// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AmalsTable extends Amals with TableInfo<$AmalsTable, AmalRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AmalsTable(this.attachedDatabase, [this._alias]);
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
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 120,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  late final GeneratedColumnWithTypeConverter<Frequency, int> frequency =
      GeneratedColumn<int>(
        'frequency',
        aliasedName,
        false,
        type: DriftSqlType.int,
        requiredDuringInsert: true,
      ).withConverter<Frequency>($AmalsTable.$converterfrequency);
  static const VerificationMeta _targetMeta = const VerificationMeta('target');
  @override
  late final GeneratedColumn<int> target = GeneratedColumn<int>(
    'target',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(1),
  );
  static const VerificationMeta _weeklyDayMeta = const VerificationMeta(
    'weeklyDay',
  );
  @override
  late final GeneratedColumn<int> weeklyDay = GeneratedColumn<int>(
    'weekly_day',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _monthlyDateMeta = const VerificationMeta(
    'monthlyDate',
  );
  @override
  late final GeneratedColumn<int> monthlyDate = GeneratedColumn<int>(
    'monthly_date',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defaultCheckedMeta = const VerificationMeta(
    'defaultChecked',
  );
  @override
  late final GeneratedColumn<bool> defaultChecked = GeneratedColumn<bool>(
    'default_checked',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("default_checked" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _reminderTimeMeta = const VerificationMeta(
    'reminderTime',
  );
  @override
  late final GeneratedColumn<String> reminderTime = GeneratedColumn<String>(
    'reminder_time',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _isSeedMeta = const VerificationMeta('isSeed');
  @override
  late final GeneratedColumn<bool> isSeed = GeneratedColumn<bool>(
    'is_seed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_seed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryMeta = const VerificationMeta(
    'category',
  );
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
    'category',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _archivedAtMeta = const VerificationMeta(
    'archivedAt',
  );
  @override
  late final GeneratedColumn<DateTime> archivedAt = GeneratedColumn<DateTime>(
    'archived_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    frequency,
    target,
    weeklyDay,
    monthlyDate,
    defaultChecked,
    reminderTime,
    sortOrder,
    isSeed,
    icon,
    category,
    createdAt,
    archivedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'amals';
  @override
  VerificationContext validateIntegrity(
    Insertable<AmalRow> instance, {
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
    if (data.containsKey('target')) {
      context.handle(
        _targetMeta,
        target.isAcceptableOrUnknown(data['target']!, _targetMeta),
      );
    }
    if (data.containsKey('weekly_day')) {
      context.handle(
        _weeklyDayMeta,
        weeklyDay.isAcceptableOrUnknown(data['weekly_day']!, _weeklyDayMeta),
      );
    }
    if (data.containsKey('monthly_date')) {
      context.handle(
        _monthlyDateMeta,
        monthlyDate.isAcceptableOrUnknown(
          data['monthly_date']!,
          _monthlyDateMeta,
        ),
      );
    }
    if (data.containsKey('default_checked')) {
      context.handle(
        _defaultCheckedMeta,
        defaultChecked.isAcceptableOrUnknown(
          data['default_checked']!,
          _defaultCheckedMeta,
        ),
      );
    }
    if (data.containsKey('reminder_time')) {
      context.handle(
        _reminderTimeMeta,
        reminderTime.isAcceptableOrUnknown(
          data['reminder_time']!,
          _reminderTimeMeta,
        ),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('is_seed')) {
      context.handle(
        _isSeedMeta,
        isSeed.isAcceptableOrUnknown(data['is_seed']!, _isSeedMeta),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('category')) {
      context.handle(
        _categoryMeta,
        category.isAcceptableOrUnknown(data['category']!, _categoryMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('archived_at')) {
      context.handle(
        _archivedAtMeta,
        archivedAt.isAcceptableOrUnknown(data['archived_at']!, _archivedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AmalRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AmalRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      frequency: $AmalsTable.$converterfrequency.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}frequency'],
        )!,
      ),
      target: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}target'],
      )!,
      weeklyDay: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}weekly_day'],
      ),
      monthlyDate: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}monthly_date'],
      ),
      defaultChecked: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}default_checked'],
      )!,
      reminderTime: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}reminder_time'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      isSeed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_seed'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      category: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}category'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      archivedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}archived_at'],
      ),
    );
  }

  @override
  $AmalsTable createAlias(String alias) {
    return $AmalsTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Frequency, int, int> $converterfrequency =
      const EnumIndexConverter<Frequency>(Frequency.values);
}

class AmalRow extends DataClass implements Insertable<AmalRow> {
  final int id;
  final String title;
  final Frequency frequency;
  final int target;
  final int? weeklyDay;
  final int? monthlyDate;
  final bool defaultChecked;
  final String? reminderTime;
  final int sortOrder;
  final bool isSeed;
  final String? icon;
  final String? category;
  final DateTime createdAt;
  final DateTime? archivedAt;
  const AmalRow({
    required this.id,
    required this.title,
    required this.frequency,
    required this.target,
    this.weeklyDay,
    this.monthlyDate,
    required this.defaultChecked,
    this.reminderTime,
    required this.sortOrder,
    required this.isSeed,
    this.icon,
    this.category,
    required this.createdAt,
    this.archivedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    {
      map['frequency'] = Variable<int>(
        $AmalsTable.$converterfrequency.toSql(frequency),
      );
    }
    map['target'] = Variable<int>(target);
    if (!nullToAbsent || weeklyDay != null) {
      map['weekly_day'] = Variable<int>(weeklyDay);
    }
    if (!nullToAbsent || monthlyDate != null) {
      map['monthly_date'] = Variable<int>(monthlyDate);
    }
    map['default_checked'] = Variable<bool>(defaultChecked);
    if (!nullToAbsent || reminderTime != null) {
      map['reminder_time'] = Variable<String>(reminderTime);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    map['is_seed'] = Variable<bool>(isSeed);
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || archivedAt != null) {
      map['archived_at'] = Variable<DateTime>(archivedAt);
    }
    return map;
  }

  AmalsCompanion toCompanion(bool nullToAbsent) {
    return AmalsCompanion(
      id: Value(id),
      title: Value(title),
      frequency: Value(frequency),
      target: Value(target),
      weeklyDay: weeklyDay == null && nullToAbsent
          ? const Value.absent()
          : Value(weeklyDay),
      monthlyDate: monthlyDate == null && nullToAbsent
          ? const Value.absent()
          : Value(monthlyDate),
      defaultChecked: Value(defaultChecked),
      reminderTime: reminderTime == null && nullToAbsent
          ? const Value.absent()
          : Value(reminderTime),
      sortOrder: Value(sortOrder),
      isSeed: Value(isSeed),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      createdAt: Value(createdAt),
      archivedAt: archivedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(archivedAt),
    );
  }

  factory AmalRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AmalRow(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      frequency: $AmalsTable.$converterfrequency.fromJson(
        serializer.fromJson<int>(json['frequency']),
      ),
      target: serializer.fromJson<int>(json['target']),
      weeklyDay: serializer.fromJson<int?>(json['weeklyDay']),
      monthlyDate: serializer.fromJson<int?>(json['monthlyDate']),
      defaultChecked: serializer.fromJson<bool>(json['defaultChecked']),
      reminderTime: serializer.fromJson<String?>(json['reminderTime']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      isSeed: serializer.fromJson<bool>(json['isSeed']),
      icon: serializer.fromJson<String?>(json['icon']),
      category: serializer.fromJson<String?>(json['category']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      archivedAt: serializer.fromJson<DateTime?>(json['archivedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'frequency': serializer.toJson<int>(
        $AmalsTable.$converterfrequency.toJson(frequency),
      ),
      'target': serializer.toJson<int>(target),
      'weeklyDay': serializer.toJson<int?>(weeklyDay),
      'monthlyDate': serializer.toJson<int?>(monthlyDate),
      'defaultChecked': serializer.toJson<bool>(defaultChecked),
      'reminderTime': serializer.toJson<String?>(reminderTime),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'isSeed': serializer.toJson<bool>(isSeed),
      'icon': serializer.toJson<String?>(icon),
      'category': serializer.toJson<String?>(category),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'archivedAt': serializer.toJson<DateTime?>(archivedAt),
    };
  }

  AmalRow copyWith({
    int? id,
    String? title,
    Frequency? frequency,
    int? target,
    Value<int?> weeklyDay = const Value.absent(),
    Value<int?> monthlyDate = const Value.absent(),
    bool? defaultChecked,
    Value<String?> reminderTime = const Value.absent(),
    int? sortOrder,
    bool? isSeed,
    Value<String?> icon = const Value.absent(),
    Value<String?> category = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> archivedAt = const Value.absent(),
  }) => AmalRow(
    id: id ?? this.id,
    title: title ?? this.title,
    frequency: frequency ?? this.frequency,
    target: target ?? this.target,
    weeklyDay: weeklyDay.present ? weeklyDay.value : this.weeklyDay,
    monthlyDate: monthlyDate.present ? monthlyDate.value : this.monthlyDate,
    defaultChecked: defaultChecked ?? this.defaultChecked,
    reminderTime: reminderTime.present ? reminderTime.value : this.reminderTime,
    sortOrder: sortOrder ?? this.sortOrder,
    isSeed: isSeed ?? this.isSeed,
    icon: icon.present ? icon.value : this.icon,
    category: category.present ? category.value : this.category,
    createdAt: createdAt ?? this.createdAt,
    archivedAt: archivedAt.present ? archivedAt.value : this.archivedAt,
  );
  AmalRow copyWithCompanion(AmalsCompanion data) {
    return AmalRow(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      frequency: data.frequency.present ? data.frequency.value : this.frequency,
      target: data.target.present ? data.target.value : this.target,
      weeklyDay: data.weeklyDay.present ? data.weeklyDay.value : this.weeklyDay,
      monthlyDate: data.monthlyDate.present
          ? data.monthlyDate.value
          : this.monthlyDate,
      defaultChecked: data.defaultChecked.present
          ? data.defaultChecked.value
          : this.defaultChecked,
      reminderTime: data.reminderTime.present
          ? data.reminderTime.value
          : this.reminderTime,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      isSeed: data.isSeed.present ? data.isSeed.value : this.isSeed,
      icon: data.icon.present ? data.icon.value : this.icon,
      category: data.category.present ? data.category.value : this.category,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      archivedAt: data.archivedAt.present
          ? data.archivedAt.value
          : this.archivedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AmalRow(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('frequency: $frequency, ')
          ..write('target: $target, ')
          ..write('weeklyDay: $weeklyDay, ')
          ..write('monthlyDate: $monthlyDate, ')
          ..write('defaultChecked: $defaultChecked, ')
          ..write('reminderTime: $reminderTime, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isSeed: $isSeed, ')
          ..write('icon: $icon, ')
          ..write('category: $category, ')
          ..write('createdAt: $createdAt, ')
          ..write('archivedAt: $archivedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    frequency,
    target,
    weeklyDay,
    monthlyDate,
    defaultChecked,
    reminderTime,
    sortOrder,
    isSeed,
    icon,
    category,
    createdAt,
    archivedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AmalRow &&
          other.id == this.id &&
          other.title == this.title &&
          other.frequency == this.frequency &&
          other.target == this.target &&
          other.weeklyDay == this.weeklyDay &&
          other.monthlyDate == this.monthlyDate &&
          other.defaultChecked == this.defaultChecked &&
          other.reminderTime == this.reminderTime &&
          other.sortOrder == this.sortOrder &&
          other.isSeed == this.isSeed &&
          other.icon == this.icon &&
          other.category == this.category &&
          other.createdAt == this.createdAt &&
          other.archivedAt == this.archivedAt);
}

class AmalsCompanion extends UpdateCompanion<AmalRow> {
  final Value<int> id;
  final Value<String> title;
  final Value<Frequency> frequency;
  final Value<int> target;
  final Value<int?> weeklyDay;
  final Value<int?> monthlyDate;
  final Value<bool> defaultChecked;
  final Value<String?> reminderTime;
  final Value<int> sortOrder;
  final Value<bool> isSeed;
  final Value<String?> icon;
  final Value<String?> category;
  final Value<DateTime> createdAt;
  final Value<DateTime?> archivedAt;
  const AmalsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.frequency = const Value.absent(),
    this.target = const Value.absent(),
    this.weeklyDay = const Value.absent(),
    this.monthlyDate = const Value.absent(),
    this.defaultChecked = const Value.absent(),
    this.reminderTime = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.isSeed = const Value.absent(),
    this.icon = const Value.absent(),
    this.category = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.archivedAt = const Value.absent(),
  });
  AmalsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required Frequency frequency,
    this.target = const Value.absent(),
    this.weeklyDay = const Value.absent(),
    this.monthlyDate = const Value.absent(),
    this.defaultChecked = const Value.absent(),
    this.reminderTime = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.isSeed = const Value.absent(),
    this.icon = const Value.absent(),
    this.category = const Value.absent(),
    required DateTime createdAt,
    this.archivedAt = const Value.absent(),
  }) : title = Value(title),
       frequency = Value(frequency),
       createdAt = Value(createdAt);
  static Insertable<AmalRow> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? frequency,
    Expression<int>? target,
    Expression<int>? weeklyDay,
    Expression<int>? monthlyDate,
    Expression<bool>? defaultChecked,
    Expression<String>? reminderTime,
    Expression<int>? sortOrder,
    Expression<bool>? isSeed,
    Expression<String>? icon,
    Expression<String>? category,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? archivedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (frequency != null) 'frequency': frequency,
      if (target != null) 'target': target,
      if (weeklyDay != null) 'weekly_day': weeklyDay,
      if (monthlyDate != null) 'monthly_date': monthlyDate,
      if (defaultChecked != null) 'default_checked': defaultChecked,
      if (reminderTime != null) 'reminder_time': reminderTime,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (isSeed != null) 'is_seed': isSeed,
      if (icon != null) 'icon': icon,
      if (category != null) 'category': category,
      if (createdAt != null) 'created_at': createdAt,
      if (archivedAt != null) 'archived_at': archivedAt,
    });
  }

  AmalsCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<Frequency>? frequency,
    Value<int>? target,
    Value<int?>? weeklyDay,
    Value<int?>? monthlyDate,
    Value<bool>? defaultChecked,
    Value<String?>? reminderTime,
    Value<int>? sortOrder,
    Value<bool>? isSeed,
    Value<String?>? icon,
    Value<String?>? category,
    Value<DateTime>? createdAt,
    Value<DateTime?>? archivedAt,
  }) {
    return AmalsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      frequency: frequency ?? this.frequency,
      target: target ?? this.target,
      weeklyDay: weeklyDay ?? this.weeklyDay,
      monthlyDate: monthlyDate ?? this.monthlyDate,
      defaultChecked: defaultChecked ?? this.defaultChecked,
      reminderTime: reminderTime ?? this.reminderTime,
      sortOrder: sortOrder ?? this.sortOrder,
      isSeed: isSeed ?? this.isSeed,
      icon: icon ?? this.icon,
      category: category ?? this.category,
      createdAt: createdAt ?? this.createdAt,
      archivedAt: archivedAt ?? this.archivedAt,
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
    if (frequency.present) {
      map['frequency'] = Variable<int>(
        $AmalsTable.$converterfrequency.toSql(frequency.value),
      );
    }
    if (target.present) {
      map['target'] = Variable<int>(target.value);
    }
    if (weeklyDay.present) {
      map['weekly_day'] = Variable<int>(weeklyDay.value);
    }
    if (monthlyDate.present) {
      map['monthly_date'] = Variable<int>(monthlyDate.value);
    }
    if (defaultChecked.present) {
      map['default_checked'] = Variable<bool>(defaultChecked.value);
    }
    if (reminderTime.present) {
      map['reminder_time'] = Variable<String>(reminderTime.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (isSeed.present) {
      map['is_seed'] = Variable<bool>(isSeed.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (archivedAt.present) {
      map['archived_at'] = Variable<DateTime>(archivedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AmalsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('frequency: $frequency, ')
          ..write('target: $target, ')
          ..write('weeklyDay: $weeklyDay, ')
          ..write('monthlyDate: $monthlyDate, ')
          ..write('defaultChecked: $defaultChecked, ')
          ..write('reminderTime: $reminderTime, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('isSeed: $isSeed, ')
          ..write('icon: $icon, ')
          ..write('category: $category, ')
          ..write('createdAt: $createdAt, ')
          ..write('archivedAt: $archivedAt')
          ..write(')'))
        .toString();
  }
}

class $CompletionsTable extends Completions
    with TableInfo<$CompletionsTable, CompletionRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompletionsTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _amalIdMeta = const VerificationMeta('amalId');
  @override
  late final GeneratedColumn<int> amalId = GeneratedColumn<int>(
    'amal_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES amals (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _muhasabaDateMeta = const VerificationMeta(
    'muhasabaDate',
  );
  @override
  late final GeneratedColumn<DateTime> muhasabaDate = GeneratedColumn<DateTime>(
    'muhasaba_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _progressMeta = const VerificationMeta(
    'progress',
  );
  @override
  late final GeneratedColumn<int> progress = GeneratedColumn<int>(
    'progress',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    amalId,
    muhasabaDate,
    progress,
    note,
    completedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'completions';
  @override
  VerificationContext validateIntegrity(
    Insertable<CompletionRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('amal_id')) {
      context.handle(
        _amalIdMeta,
        amalId.isAcceptableOrUnknown(data['amal_id']!, _amalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_amalIdMeta);
    }
    if (data.containsKey('muhasaba_date')) {
      context.handle(
        _muhasabaDateMeta,
        muhasabaDate.isAcceptableOrUnknown(
          data['muhasaba_date']!,
          _muhasabaDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_muhasabaDateMeta);
    }
    if (data.containsKey('progress')) {
      context.handle(
        _progressMeta,
        progress.isAcceptableOrUnknown(data['progress']!, _progressMeta),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {amalId, muhasabaDate},
  ];
  @override
  CompletionRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompletionRow(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      amalId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amal_id'],
      )!,
      muhasabaDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}muhasaba_date'],
      )!,
      progress: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}progress'],
      )!,
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
    );
  }

  @override
  $CompletionsTable createAlias(String alias) {
    return $CompletionsTable(attachedDatabase, alias);
  }
}

class CompletionRow extends DataClass implements Insertable<CompletionRow> {
  final int id;
  final int amalId;
  final DateTime muhasabaDate;
  final int progress;
  final String? note;
  final DateTime? completedAt;
  const CompletionRow({
    required this.id,
    required this.amalId,
    required this.muhasabaDate,
    required this.progress,
    this.note,
    this.completedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['amal_id'] = Variable<int>(amalId);
    map['muhasaba_date'] = Variable<DateTime>(muhasabaDate);
    map['progress'] = Variable<int>(progress);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    return map;
  }

  CompletionsCompanion toCompanion(bool nullToAbsent) {
    return CompletionsCompanion(
      id: Value(id),
      amalId: Value(amalId),
      muhasabaDate: Value(muhasabaDate),
      progress: Value(progress),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
    );
  }

  factory CompletionRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompletionRow(
      id: serializer.fromJson<int>(json['id']),
      amalId: serializer.fromJson<int>(json['amalId']),
      muhasabaDate: serializer.fromJson<DateTime>(json['muhasabaDate']),
      progress: serializer.fromJson<int>(json['progress']),
      note: serializer.fromJson<String?>(json['note']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'amalId': serializer.toJson<int>(amalId),
      'muhasabaDate': serializer.toJson<DateTime>(muhasabaDate),
      'progress': serializer.toJson<int>(progress),
      'note': serializer.toJson<String?>(note),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
    };
  }

  CompletionRow copyWith({
    int? id,
    int? amalId,
    DateTime? muhasabaDate,
    int? progress,
    Value<String?> note = const Value.absent(),
    Value<DateTime?> completedAt = const Value.absent(),
  }) => CompletionRow(
    id: id ?? this.id,
    amalId: amalId ?? this.amalId,
    muhasabaDate: muhasabaDate ?? this.muhasabaDate,
    progress: progress ?? this.progress,
    note: note.present ? note.value : this.note,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
  );
  CompletionRow copyWithCompanion(CompletionsCompanion data) {
    return CompletionRow(
      id: data.id.present ? data.id.value : this.id,
      amalId: data.amalId.present ? data.amalId.value : this.amalId,
      muhasabaDate: data.muhasabaDate.present
          ? data.muhasabaDate.value
          : this.muhasabaDate,
      progress: data.progress.present ? data.progress.value : this.progress,
      note: data.note.present ? data.note.value : this.note,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CompletionRow(')
          ..write('id: $id, ')
          ..write('amalId: $amalId, ')
          ..write('muhasabaDate: $muhasabaDate, ')
          ..write('progress: $progress, ')
          ..write('note: $note, ')
          ..write('completedAt: $completedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, amalId, muhasabaDate, progress, note, completedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompletionRow &&
          other.id == this.id &&
          other.amalId == this.amalId &&
          other.muhasabaDate == this.muhasabaDate &&
          other.progress == this.progress &&
          other.note == this.note &&
          other.completedAt == this.completedAt);
}

class CompletionsCompanion extends UpdateCompanion<CompletionRow> {
  final Value<int> id;
  final Value<int> amalId;
  final Value<DateTime> muhasabaDate;
  final Value<int> progress;
  final Value<String?> note;
  final Value<DateTime?> completedAt;
  const CompletionsCompanion({
    this.id = const Value.absent(),
    this.amalId = const Value.absent(),
    this.muhasabaDate = const Value.absent(),
    this.progress = const Value.absent(),
    this.note = const Value.absent(),
    this.completedAt = const Value.absent(),
  });
  CompletionsCompanion.insert({
    this.id = const Value.absent(),
    required int amalId,
    required DateTime muhasabaDate,
    this.progress = const Value.absent(),
    this.note = const Value.absent(),
    this.completedAt = const Value.absent(),
  }) : amalId = Value(amalId),
       muhasabaDate = Value(muhasabaDate);
  static Insertable<CompletionRow> custom({
    Expression<int>? id,
    Expression<int>? amalId,
    Expression<DateTime>? muhasabaDate,
    Expression<int>? progress,
    Expression<String>? note,
    Expression<DateTime>? completedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (amalId != null) 'amal_id': amalId,
      if (muhasabaDate != null) 'muhasaba_date': muhasabaDate,
      if (progress != null) 'progress': progress,
      if (note != null) 'note': note,
      if (completedAt != null) 'completed_at': completedAt,
    });
  }

  CompletionsCompanion copyWith({
    Value<int>? id,
    Value<int>? amalId,
    Value<DateTime>? muhasabaDate,
    Value<int>? progress,
    Value<String?>? note,
    Value<DateTime?>? completedAt,
  }) {
    return CompletionsCompanion(
      id: id ?? this.id,
      amalId: amalId ?? this.amalId,
      muhasabaDate: muhasabaDate ?? this.muhasabaDate,
      progress: progress ?? this.progress,
      note: note ?? this.note,
      completedAt: completedAt ?? this.completedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (amalId.present) {
      map['amal_id'] = Variable<int>(amalId.value);
    }
    if (muhasabaDate.present) {
      map['muhasaba_date'] = Variable<DateTime>(muhasabaDate.value);
    }
    if (progress.present) {
      map['progress'] = Variable<int>(progress.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompletionsCompanion(')
          ..write('id: $id, ')
          ..write('amalId: $amalId, ')
          ..write('muhasabaDate: $muhasabaDate, ')
          ..write('progress: $progress, ')
          ..write('note: $note, ')
          ..write('completedAt: $completedAt')
          ..write(')'))
        .toString();
  }
}

class $HiddenDaysTable extends HiddenDays
    with TableInfo<$HiddenDaysTable, HiddenDayRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HiddenDaysTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _amalIdMeta = const VerificationMeta('amalId');
  @override
  late final GeneratedColumn<int> amalId = GeneratedColumn<int>(
    'amal_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES amals (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _muhasabaDateMeta = const VerificationMeta(
    'muhasabaDate',
  );
  @override
  late final GeneratedColumn<DateTime> muhasabaDate = GeneratedColumn<DateTime>(
    'muhasaba_date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [amalId, muhasabaDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'hidden_days';
  @override
  VerificationContext validateIntegrity(
    Insertable<HiddenDayRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('amal_id')) {
      context.handle(
        _amalIdMeta,
        amalId.isAcceptableOrUnknown(data['amal_id']!, _amalIdMeta),
      );
    } else if (isInserting) {
      context.missing(_amalIdMeta);
    }
    if (data.containsKey('muhasaba_date')) {
      context.handle(
        _muhasabaDateMeta,
        muhasabaDate.isAcceptableOrUnknown(
          data['muhasaba_date']!,
          _muhasabaDateMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_muhasabaDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {amalId, muhasabaDate};
  @override
  HiddenDayRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HiddenDayRow(
      amalId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}amal_id'],
      )!,
      muhasabaDate: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}muhasaba_date'],
      )!,
    );
  }

  @override
  $HiddenDaysTable createAlias(String alias) {
    return $HiddenDaysTable(attachedDatabase, alias);
  }
}

class HiddenDayRow extends DataClass implements Insertable<HiddenDayRow> {
  final int amalId;
  final DateTime muhasabaDate;
  const HiddenDayRow({required this.amalId, required this.muhasabaDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['amal_id'] = Variable<int>(amalId);
    map['muhasaba_date'] = Variable<DateTime>(muhasabaDate);
    return map;
  }

  HiddenDaysCompanion toCompanion(bool nullToAbsent) {
    return HiddenDaysCompanion(
      amalId: Value(amalId),
      muhasabaDate: Value(muhasabaDate),
    );
  }

  factory HiddenDayRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HiddenDayRow(
      amalId: serializer.fromJson<int>(json['amalId']),
      muhasabaDate: serializer.fromJson<DateTime>(json['muhasabaDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'amalId': serializer.toJson<int>(amalId),
      'muhasabaDate': serializer.toJson<DateTime>(muhasabaDate),
    };
  }

  HiddenDayRow copyWith({int? amalId, DateTime? muhasabaDate}) => HiddenDayRow(
    amalId: amalId ?? this.amalId,
    muhasabaDate: muhasabaDate ?? this.muhasabaDate,
  );
  HiddenDayRow copyWithCompanion(HiddenDaysCompanion data) {
    return HiddenDayRow(
      amalId: data.amalId.present ? data.amalId.value : this.amalId,
      muhasabaDate: data.muhasabaDate.present
          ? data.muhasabaDate.value
          : this.muhasabaDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HiddenDayRow(')
          ..write('amalId: $amalId, ')
          ..write('muhasabaDate: $muhasabaDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(amalId, muhasabaDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HiddenDayRow &&
          other.amalId == this.amalId &&
          other.muhasabaDate == this.muhasabaDate);
}

class HiddenDaysCompanion extends UpdateCompanion<HiddenDayRow> {
  final Value<int> amalId;
  final Value<DateTime> muhasabaDate;
  final Value<int> rowid;
  const HiddenDaysCompanion({
    this.amalId = const Value.absent(),
    this.muhasabaDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HiddenDaysCompanion.insert({
    required int amalId,
    required DateTime muhasabaDate,
    this.rowid = const Value.absent(),
  }) : amalId = Value(amalId),
       muhasabaDate = Value(muhasabaDate);
  static Insertable<HiddenDayRow> custom({
    Expression<int>? amalId,
    Expression<DateTime>? muhasabaDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (amalId != null) 'amal_id': amalId,
      if (muhasabaDate != null) 'muhasaba_date': muhasabaDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HiddenDaysCompanion copyWith({
    Value<int>? amalId,
    Value<DateTime>? muhasabaDate,
    Value<int>? rowid,
  }) {
    return HiddenDaysCompanion(
      amalId: amalId ?? this.amalId,
      muhasabaDate: muhasabaDate ?? this.muhasabaDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (amalId.present) {
      map['amal_id'] = Variable<int>(amalId.value);
    }
    if (muhasabaDate.present) {
      map['muhasaba_date'] = Variable<DateTime>(muhasabaDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HiddenDaysCompanion(')
          ..write('amalId: $amalId, ')
          ..write('muhasabaDate: $muhasabaDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsKvTable extends SettingsKv
    with TableInfo<$SettingsKvTable, SettingRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsKvTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings_kv';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingRow(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $SettingsKvTable createAlias(String alias) {
    return $SettingsKvTable(attachedDatabase, alias);
  }
}

class SettingRow extends DataClass implements Insertable<SettingRow> {
  final String key;
  final String value;
  const SettingRow({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingsKvCompanion toCompanion(bool nullToAbsent) {
    return SettingsKvCompanion(key: Value(key), value: Value(value));
  }

  factory SettingRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingRow(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingRow copyWith({String? key, String? value}) =>
      SettingRow(key: key ?? this.key, value: value ?? this.value);
  SettingRow copyWithCompanion(SettingsKvCompanion data) {
    return SettingRow(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingRow(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingRow &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingsKvCompanion extends UpdateCompanion<SettingRow> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SettingsKvCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsKvCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<SettingRow> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsKvCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return SettingsKvCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsKvCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, CategoryRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  @override
  List<GeneratedColumn> get $columns => [name, sortOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryRow> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {name};
  @override
  CategoryRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryRow(
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class CategoryRow extends DataClass implements Insertable<CategoryRow> {
  final String name;
  final int sortOrder;
  const CategoryRow({required this.name, required this.sortOrder});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['name'] = Variable<String>(name);
    map['sort_order'] = Variable<int>(sortOrder);
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(name: Value(name), sortOrder: Value(sortOrder));
  }

  factory CategoryRow.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryRow(
      name: serializer.fromJson<String>(json['name']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'sortOrder': serializer.toJson<int>(sortOrder),
    };
  }

  CategoryRow copyWith({String? name, int? sortOrder}) => CategoryRow(
    name: name ?? this.name,
    sortOrder: sortOrder ?? this.sortOrder,
  );
  CategoryRow copyWithCompanion(CategoriesCompanion data) {
    return CategoryRow(
      name: data.name.present ? data.name.value : this.name,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryRow(')
          ..write('name: $name, ')
          ..write('sortOrder: $sortOrder')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, sortOrder);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryRow &&
          other.name == this.name &&
          other.sortOrder == this.sortOrder);
}

class CategoriesCompanion extends UpdateCompanion<CategoryRow> {
  final Value<String> name;
  final Value<int> sortOrder;
  final Value<int> rowid;
  const CategoriesCompanion({
    this.name = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CategoriesCompanion.insert({
    required String name,
    this.sortOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : name = Value(name);
  static Insertable<CategoryRow> custom({
    Expression<String>? name,
    Expression<int>? sortOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CategoriesCompanion copyWith({
    Value<String>? name,
    Value<int>? sortOrder,
    Value<int>? rowid,
  }) {
    return CategoriesCompanion(
      name: name ?? this.name,
      sortOrder: sortOrder ?? this.sortOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('name: $name, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AmalsTable amals = $AmalsTable(this);
  late final $CompletionsTable completions = $CompletionsTable(this);
  late final $HiddenDaysTable hiddenDays = $HiddenDaysTable(this);
  late final $SettingsKvTable settingsKv = $SettingsKvTable(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final AmalDao amalDao = AmalDao(this as AppDatabase);
  late final CategoryDao categoryDao = CategoryDao(this as AppDatabase);
  late final CompletionDao completionDao = CompletionDao(this as AppDatabase);
  late final HiddenDayDao hiddenDayDao = HiddenDayDao(this as AppDatabase);
  late final SettingsDao settingsDao = SettingsDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    amals,
    completions,
    hiddenDays,
    settingsKv,
    categories,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'amals',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('completions', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'amals',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('hidden_days', kind: UpdateKind.delete)],
    ),
  ]);
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$AmalsTableCreateCompanionBuilder =
    AmalsCompanion Function({
      Value<int> id,
      required String title,
      required Frequency frequency,
      Value<int> target,
      Value<int?> weeklyDay,
      Value<int?> monthlyDate,
      Value<bool> defaultChecked,
      Value<String?> reminderTime,
      Value<int> sortOrder,
      Value<bool> isSeed,
      Value<String?> icon,
      Value<String?> category,
      required DateTime createdAt,
      Value<DateTime?> archivedAt,
    });
typedef $$AmalsTableUpdateCompanionBuilder =
    AmalsCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<Frequency> frequency,
      Value<int> target,
      Value<int?> weeklyDay,
      Value<int?> monthlyDate,
      Value<bool> defaultChecked,
      Value<String?> reminderTime,
      Value<int> sortOrder,
      Value<bool> isSeed,
      Value<String?> icon,
      Value<String?> category,
      Value<DateTime> createdAt,
      Value<DateTime?> archivedAt,
    });

final class $$AmalsTableReferences
    extends BaseReferences<_$AppDatabase, $AmalsTable, AmalRow> {
  $$AmalsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$CompletionsTable, List<CompletionRow>>
  _completionsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.completions,
    aliasName: $_aliasNameGenerator(db.amals.id, db.completions.amalId),
  );

  $$CompletionsTableProcessedTableManager get completionsRefs {
    final manager = $$CompletionsTableTableManager(
      $_db,
      $_db.completions,
    ).filter((f) => f.amalId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_completionsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$HiddenDaysTable, List<HiddenDayRow>>
  _hiddenDaysRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.hiddenDays,
    aliasName: $_aliasNameGenerator(db.amals.id, db.hiddenDays.amalId),
  );

  $$HiddenDaysTableProcessedTableManager get hiddenDaysRefs {
    final manager = $$HiddenDaysTableTableManager(
      $_db,
      $_db.hiddenDays,
    ).filter((f) => f.amalId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_hiddenDaysRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$AmalsTableFilterComposer extends Composer<_$AppDatabase, $AmalsTable> {
  $$AmalsTableFilterComposer({
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

  ColumnWithTypeConverterFilters<Frequency, Frequency, int> get frequency =>
      $composableBuilder(
        column: $table.frequency,
        builder: (column) => ColumnWithTypeConverterFilters(column),
      );

  ColumnFilters<int> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get weeklyDay => $composableBuilder(
    column: $table.weeklyDay,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get monthlyDate => $composableBuilder(
    column: $table.monthlyDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get defaultChecked => $composableBuilder(
    column: $table.defaultChecked,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get reminderTime => $composableBuilder(
    column: $table.reminderTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isSeed => $composableBuilder(
    column: $table.isSeed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> completionsRefs(
    Expression<bool> Function($$CompletionsTableFilterComposer f) f,
  ) {
    final $$CompletionsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.completions,
      getReferencedColumn: (t) => t.amalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletionsTableFilterComposer(
            $db: $db,
            $table: $db.completions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> hiddenDaysRefs(
    Expression<bool> Function($$HiddenDaysTableFilterComposer f) f,
  ) {
    final $$HiddenDaysTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.hiddenDays,
      getReferencedColumn: (t) => t.amalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HiddenDaysTableFilterComposer(
            $db: $db,
            $table: $db.hiddenDays,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AmalsTableOrderingComposer
    extends Composer<_$AppDatabase, $AmalsTable> {
  $$AmalsTableOrderingComposer({
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

  ColumnOrderings<int> get frequency => $composableBuilder(
    column: $table.frequency,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get target => $composableBuilder(
    column: $table.target,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get weeklyDay => $composableBuilder(
    column: $table.weeklyDay,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get monthlyDate => $composableBuilder(
    column: $table.monthlyDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get defaultChecked => $composableBuilder(
    column: $table.defaultChecked,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get reminderTime => $composableBuilder(
    column: $table.reminderTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isSeed => $composableBuilder(
    column: $table.isSeed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get category => $composableBuilder(
    column: $table.category,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AmalsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AmalsTable> {
  $$AmalsTableAnnotationComposer({
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

  GeneratedColumnWithTypeConverter<Frequency, int> get frequency =>
      $composableBuilder(column: $table.frequency, builder: (column) => column);

  GeneratedColumn<int> get target =>
      $composableBuilder(column: $table.target, builder: (column) => column);

  GeneratedColumn<int> get weeklyDay =>
      $composableBuilder(column: $table.weeklyDay, builder: (column) => column);

  GeneratedColumn<int> get monthlyDate => $composableBuilder(
    column: $table.monthlyDate,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get defaultChecked => $composableBuilder(
    column: $table.defaultChecked,
    builder: (column) => column,
  );

  GeneratedColumn<String> get reminderTime => $composableBuilder(
    column: $table.reminderTime,
    builder: (column) => column,
  );

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<bool> get isSeed =>
      $composableBuilder(column: $table.isSeed, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get category =>
      $composableBuilder(column: $table.category, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get archivedAt => $composableBuilder(
    column: $table.archivedAt,
    builder: (column) => column,
  );

  Expression<T> completionsRefs<T extends Object>(
    Expression<T> Function($$CompletionsTableAnnotationComposer a) f,
  ) {
    final $$CompletionsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.completions,
      getReferencedColumn: (t) => t.amalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CompletionsTableAnnotationComposer(
            $db: $db,
            $table: $db.completions,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> hiddenDaysRefs<T extends Object>(
    Expression<T> Function($$HiddenDaysTableAnnotationComposer a) f,
  ) {
    final $$HiddenDaysTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.hiddenDays,
      getReferencedColumn: (t) => t.amalId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$HiddenDaysTableAnnotationComposer(
            $db: $db,
            $table: $db.hiddenDays,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$AmalsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AmalsTable,
          AmalRow,
          $$AmalsTableFilterComposer,
          $$AmalsTableOrderingComposer,
          $$AmalsTableAnnotationComposer,
          $$AmalsTableCreateCompanionBuilder,
          $$AmalsTableUpdateCompanionBuilder,
          (AmalRow, $$AmalsTableReferences),
          AmalRow,
          PrefetchHooks Function({bool completionsRefs, bool hiddenDaysRefs})
        > {
  $$AmalsTableTableManager(_$AppDatabase db, $AmalsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AmalsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AmalsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AmalsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<Frequency> frequency = const Value.absent(),
                Value<int> target = const Value.absent(),
                Value<int?> weeklyDay = const Value.absent(),
                Value<int?> monthlyDate = const Value.absent(),
                Value<bool> defaultChecked = const Value.absent(),
                Value<String?> reminderTime = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> isSeed = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> category = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> archivedAt = const Value.absent(),
              }) => AmalsCompanion(
                id: id,
                title: title,
                frequency: frequency,
                target: target,
                weeklyDay: weeklyDay,
                monthlyDate: monthlyDate,
                defaultChecked: defaultChecked,
                reminderTime: reminderTime,
                sortOrder: sortOrder,
                isSeed: isSeed,
                icon: icon,
                category: category,
                createdAt: createdAt,
                archivedAt: archivedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required Frequency frequency,
                Value<int> target = const Value.absent(),
                Value<int?> weeklyDay = const Value.absent(),
                Value<int?> monthlyDate = const Value.absent(),
                Value<bool> defaultChecked = const Value.absent(),
                Value<String?> reminderTime = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> isSeed = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> category = const Value.absent(),
                required DateTime createdAt,
                Value<DateTime?> archivedAt = const Value.absent(),
              }) => AmalsCompanion.insert(
                id: id,
                title: title,
                frequency: frequency,
                target: target,
                weeklyDay: weeklyDay,
                monthlyDate: monthlyDate,
                defaultChecked: defaultChecked,
                reminderTime: reminderTime,
                sortOrder: sortOrder,
                isSeed: isSeed,
                icon: icon,
                category: category,
                createdAt: createdAt,
                archivedAt: archivedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$AmalsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback:
              ({completionsRefs = false, hiddenDaysRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (completionsRefs) db.completions,
                    if (hiddenDaysRefs) db.hiddenDays,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (completionsRefs)
                        await $_getPrefetchedData<
                          AmalRow,
                          $AmalsTable,
                          CompletionRow
                        >(
                          currentTable: table,
                          referencedTable: $$AmalsTableReferences
                              ._completionsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AmalsTableReferences(
                                db,
                                table,
                                p0,
                              ).completionsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.amalId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (hiddenDaysRefs)
                        await $_getPrefetchedData<
                          AmalRow,
                          $AmalsTable,
                          HiddenDayRow
                        >(
                          currentTable: table,
                          referencedTable: $$AmalsTableReferences
                              ._hiddenDaysRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$AmalsTableReferences(
                                db,
                                table,
                                p0,
                              ).hiddenDaysRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.amalId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$AmalsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AmalsTable,
      AmalRow,
      $$AmalsTableFilterComposer,
      $$AmalsTableOrderingComposer,
      $$AmalsTableAnnotationComposer,
      $$AmalsTableCreateCompanionBuilder,
      $$AmalsTableUpdateCompanionBuilder,
      (AmalRow, $$AmalsTableReferences),
      AmalRow,
      PrefetchHooks Function({bool completionsRefs, bool hiddenDaysRefs})
    >;
typedef $$CompletionsTableCreateCompanionBuilder =
    CompletionsCompanion Function({
      Value<int> id,
      required int amalId,
      required DateTime muhasabaDate,
      Value<int> progress,
      Value<String?> note,
      Value<DateTime?> completedAt,
    });
typedef $$CompletionsTableUpdateCompanionBuilder =
    CompletionsCompanion Function({
      Value<int> id,
      Value<int> amalId,
      Value<DateTime> muhasabaDate,
      Value<int> progress,
      Value<String?> note,
      Value<DateTime?> completedAt,
    });

final class $$CompletionsTableReferences
    extends BaseReferences<_$AppDatabase, $CompletionsTable, CompletionRow> {
  $$CompletionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AmalsTable _amalIdTable(_$AppDatabase db) => db.amals.createAlias(
    $_aliasNameGenerator(db.completions.amalId, db.amals.id),
  );

  $$AmalsTableProcessedTableManager get amalId {
    final $_column = $_itemColumn<int>('amal_id')!;

    final manager = $$AmalsTableTableManager(
      $_db,
      $_db.amals,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_amalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CompletionsTableFilterComposer
    extends Composer<_$AppDatabase, $CompletionsTable> {
  $$CompletionsTableFilterComposer({
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

  ColumnFilters<DateTime> get muhasabaDate => $composableBuilder(
    column: $table.muhasabaDate,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$AmalsTableFilterComposer get amalId {
    final $$AmalsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.amalId,
      referencedTable: $db.amals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AmalsTableFilterComposer(
            $db: $db,
            $table: $db.amals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletionsTableOrderingComposer
    extends Composer<_$AppDatabase, $CompletionsTable> {
  $$CompletionsTableOrderingComposer({
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

  ColumnOrderings<DateTime> get muhasabaDate => $composableBuilder(
    column: $table.muhasabaDate,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get progress => $composableBuilder(
    column: $table.progress,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$AmalsTableOrderingComposer get amalId {
    final $$AmalsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.amalId,
      referencedTable: $db.amals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AmalsTableOrderingComposer(
            $db: $db,
            $table: $db.amals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletionsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CompletionsTable> {
  $$CompletionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get muhasabaDate => $composableBuilder(
    column: $table.muhasabaDate,
    builder: (column) => column,
  );

  GeneratedColumn<int> get progress =>
      $composableBuilder(column: $table.progress, builder: (column) => column);

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  $$AmalsTableAnnotationComposer get amalId {
    final $$AmalsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.amalId,
      referencedTable: $db.amals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AmalsTableAnnotationComposer(
            $db: $db,
            $table: $db.amals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CompletionsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CompletionsTable,
          CompletionRow,
          $$CompletionsTableFilterComposer,
          $$CompletionsTableOrderingComposer,
          $$CompletionsTableAnnotationComposer,
          $$CompletionsTableCreateCompanionBuilder,
          $$CompletionsTableUpdateCompanionBuilder,
          (CompletionRow, $$CompletionsTableReferences),
          CompletionRow,
          PrefetchHooks Function({bool amalId})
        > {
  $$CompletionsTableTableManager(_$AppDatabase db, $CompletionsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CompletionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CompletionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CompletionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> amalId = const Value.absent(),
                Value<DateTime> muhasabaDate = const Value.absent(),
                Value<int> progress = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
              }) => CompletionsCompanion(
                id: id,
                amalId: amalId,
                muhasabaDate: muhasabaDate,
                progress: progress,
                note: note,
                completedAt: completedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int amalId,
                required DateTime muhasabaDate,
                Value<int> progress = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
              }) => CompletionsCompanion.insert(
                id: id,
                amalId: amalId,
                muhasabaDate: muhasabaDate,
                progress: progress,
                note: note,
                completedAt: completedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CompletionsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({amalId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (amalId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.amalId,
                                referencedTable: $$CompletionsTableReferences
                                    ._amalIdTable(db),
                                referencedColumn: $$CompletionsTableReferences
                                    ._amalIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CompletionsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CompletionsTable,
      CompletionRow,
      $$CompletionsTableFilterComposer,
      $$CompletionsTableOrderingComposer,
      $$CompletionsTableAnnotationComposer,
      $$CompletionsTableCreateCompanionBuilder,
      $$CompletionsTableUpdateCompanionBuilder,
      (CompletionRow, $$CompletionsTableReferences),
      CompletionRow,
      PrefetchHooks Function({bool amalId})
    >;
typedef $$HiddenDaysTableCreateCompanionBuilder =
    HiddenDaysCompanion Function({
      required int amalId,
      required DateTime muhasabaDate,
      Value<int> rowid,
    });
typedef $$HiddenDaysTableUpdateCompanionBuilder =
    HiddenDaysCompanion Function({
      Value<int> amalId,
      Value<DateTime> muhasabaDate,
      Value<int> rowid,
    });

final class $$HiddenDaysTableReferences
    extends BaseReferences<_$AppDatabase, $HiddenDaysTable, HiddenDayRow> {
  $$HiddenDaysTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $AmalsTable _amalIdTable(_$AppDatabase db) => db.amals.createAlias(
    $_aliasNameGenerator(db.hiddenDays.amalId, db.amals.id),
  );

  $$AmalsTableProcessedTableManager get amalId {
    final $_column = $_itemColumn<int>('amal_id')!;

    final manager = $$AmalsTableTableManager(
      $_db,
      $_db.amals,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_amalIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$HiddenDaysTableFilterComposer
    extends Composer<_$AppDatabase, $HiddenDaysTable> {
  $$HiddenDaysTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<DateTime> get muhasabaDate => $composableBuilder(
    column: $table.muhasabaDate,
    builder: (column) => ColumnFilters(column),
  );

  $$AmalsTableFilterComposer get amalId {
    final $$AmalsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.amalId,
      referencedTable: $db.amals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AmalsTableFilterComposer(
            $db: $db,
            $table: $db.amals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HiddenDaysTableOrderingComposer
    extends Composer<_$AppDatabase, $HiddenDaysTable> {
  $$HiddenDaysTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<DateTime> get muhasabaDate => $composableBuilder(
    column: $table.muhasabaDate,
    builder: (column) => ColumnOrderings(column),
  );

  $$AmalsTableOrderingComposer get amalId {
    final $$AmalsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.amalId,
      referencedTable: $db.amals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AmalsTableOrderingComposer(
            $db: $db,
            $table: $db.amals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HiddenDaysTableAnnotationComposer
    extends Composer<_$AppDatabase, $HiddenDaysTable> {
  $$HiddenDaysTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<DateTime> get muhasabaDate => $composableBuilder(
    column: $table.muhasabaDate,
    builder: (column) => column,
  );

  $$AmalsTableAnnotationComposer get amalId {
    final $$AmalsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.amalId,
      referencedTable: $db.amals,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$AmalsTableAnnotationComposer(
            $db: $db,
            $table: $db.amals,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$HiddenDaysTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HiddenDaysTable,
          HiddenDayRow,
          $$HiddenDaysTableFilterComposer,
          $$HiddenDaysTableOrderingComposer,
          $$HiddenDaysTableAnnotationComposer,
          $$HiddenDaysTableCreateCompanionBuilder,
          $$HiddenDaysTableUpdateCompanionBuilder,
          (HiddenDayRow, $$HiddenDaysTableReferences),
          HiddenDayRow,
          PrefetchHooks Function({bool amalId})
        > {
  $$HiddenDaysTableTableManager(_$AppDatabase db, $HiddenDaysTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HiddenDaysTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HiddenDaysTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HiddenDaysTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> amalId = const Value.absent(),
                Value<DateTime> muhasabaDate = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HiddenDaysCompanion(
                amalId: amalId,
                muhasabaDate: muhasabaDate,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required int amalId,
                required DateTime muhasabaDate,
                Value<int> rowid = const Value.absent(),
              }) => HiddenDaysCompanion.insert(
                amalId: amalId,
                muhasabaDate: muhasabaDate,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$HiddenDaysTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({amalId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (amalId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.amalId,
                                referencedTable: $$HiddenDaysTableReferences
                                    ._amalIdTable(db),
                                referencedColumn: $$HiddenDaysTableReferences
                                    ._amalIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$HiddenDaysTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HiddenDaysTable,
      HiddenDayRow,
      $$HiddenDaysTableFilterComposer,
      $$HiddenDaysTableOrderingComposer,
      $$HiddenDaysTableAnnotationComposer,
      $$HiddenDaysTableCreateCompanionBuilder,
      $$HiddenDaysTableUpdateCompanionBuilder,
      (HiddenDayRow, $$HiddenDaysTableReferences),
      HiddenDayRow,
      PrefetchHooks Function({bool amalId})
    >;
typedef $$SettingsKvTableCreateCompanionBuilder =
    SettingsKvCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$SettingsKvTableUpdateCompanionBuilder =
    SettingsKvCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$SettingsKvTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsKvTable> {
  $$SettingsKvTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsKvTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsKvTable> {
  $$SettingsKvTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsKvTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsKvTable> {
  $$SettingsKvTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingsKvTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsKvTable,
          SettingRow,
          $$SettingsKvTableFilterComposer,
          $$SettingsKvTableOrderingComposer,
          $$SettingsKvTableAnnotationComposer,
          $$SettingsKvTableCreateCompanionBuilder,
          $$SettingsKvTableUpdateCompanionBuilder,
          (
            SettingRow,
            BaseReferences<_$AppDatabase, $SettingsKvTable, SettingRow>,
          ),
          SettingRow,
          PrefetchHooks Function()
        > {
  $$SettingsKvTableTableManager(_$AppDatabase db, $SettingsKvTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsKvTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsKvTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsKvTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsKvCompanion(key: key, value: value, rowid: rowid),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => SettingsKvCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsKvTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsKvTable,
      SettingRow,
      $$SettingsKvTableFilterComposer,
      $$SettingsKvTableOrderingComposer,
      $$SettingsKvTableAnnotationComposer,
      $$SettingsKvTableCreateCompanionBuilder,
      $$SettingsKvTableUpdateCompanionBuilder,
      (SettingRow, BaseReferences<_$AppDatabase, $SettingsKvTable, SettingRow>),
      SettingRow,
      PrefetchHooks Function()
    >;
typedef $$CategoriesTableCreateCompanionBuilder =
    CategoriesCompanion Function({
      required String name,
      Value<int> sortOrder,
      Value<int> rowid,
    });
typedef $$CategoriesTableUpdateCompanionBuilder =
    CategoriesCompanion Function({
      Value<String> name,
      Value<int> sortOrder,
      Value<int> rowid,
    });

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);
}

class $$CategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTable,
          CategoryRow,
          $$CategoriesTableFilterComposer,
          $$CategoriesTableOrderingComposer,
          $$CategoriesTableAnnotationComposer,
          $$CategoriesTableCreateCompanionBuilder,
          $$CategoriesTableUpdateCompanionBuilder,
          (
            CategoryRow,
            BaseReferences<_$AppDatabase, $CategoriesTable, CategoryRow>,
          ),
          CategoryRow,
          PrefetchHooks Function()
        > {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> name = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion(
                name: name,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String name,
                Value<int> sortOrder = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CategoriesCompanion.insert(
                name: name,
                sortOrder: sortOrder,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTable,
      CategoryRow,
      $$CategoriesTableFilterComposer,
      $$CategoriesTableOrderingComposer,
      $$CategoriesTableAnnotationComposer,
      $$CategoriesTableCreateCompanionBuilder,
      $$CategoriesTableUpdateCompanionBuilder,
      (
        CategoryRow,
        BaseReferences<_$AppDatabase, $CategoriesTable, CategoryRow>,
      ),
      CategoryRow,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AmalsTableTableManager get amals =>
      $$AmalsTableTableManager(_db, _db.amals);
  $$CompletionsTableTableManager get completions =>
      $$CompletionsTableTableManager(_db, _db.completions);
  $$HiddenDaysTableTableManager get hiddenDays =>
      $$HiddenDaysTableTableManager(_db, _db.hiddenDays);
  $$SettingsKvTableTableManager get settingsKv =>
      $$SettingsKvTableTableManager(_db, _db.settingsKv);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
}
