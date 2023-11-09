class Game {
  Game({
    required this.data,
    required this.additional,
  });
  late final List<Data> data;
  late final Additional additional;

  Game.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    additional = Additional.fromJson(json['additional']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['additional'] = additional.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.details,
    required this.properties,
    required this.player,
    required this.season,
    required this.playableDuration,
    required this.startedAt,
    required this.endedAt,
  });
  late final String? id;
  late final Details details;
  late final Properties properties;
  late final Player player;
  late final Season season;
  late final PlayableDuration playableDuration;
  late final String? startedAt;
  late final String? endedAt;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    details = Details.fromJson(json['details']);
    properties = Properties.fromJson(json['properties']);
    player = Player.fromJson(json['player']);
    season = Season.fromJson(json['season']);
    playableDuration = PlayableDuration.fromJson(json['playable_duration']);
    startedAt = json['started_at'];
    endedAt = json['ended_at'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['details'] = details.toJson();
    _data['properties'] = properties.toJson();
    _data['player'] = player.toJson();
    _data['season'] = season.toJson();
    _data['playable_duration'] = playableDuration.toJson();
    _data['started_at'] = startedAt;
    _data['ended_at'] = endedAt;
    return _data;
  }
}

class Details {
  Details({
    required this.map,
    required this.ugcgamevariant,
    required this.playlist,
  });
  late final GameMap map;
  late final Ugcgamevariant ugcgamevariant;
  late final Playlist playlist;

  Details.fromJson(Map<String, dynamic> json) {
    map = GameMap.fromJson(json['map']);
    ugcgamevariant = Ugcgamevariant.fromJson(json['ugcgamevariant']);
    playlist = Playlist.fromJson(json['playlist']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['map'] = map.toJson();
    _data['ugcgamevariant'] = ugcgamevariant.toJson();
    _data['playlist'] = playlist.toJson();
    return _data;
  }
}

class GameMap {
  GameMap({
    required this.id,
    required this.version,
    required this.name,
    required this.imageUrls,
    required this.properties,
  });
  late final String? id;
  late final String? version;
  late final String? name;
  late final ImageUrls imageUrls;
  late final Properties properties;

  GameMap.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    name = json['name'];
    imageUrls = ImageUrls.fromJson(json['image_urls']);
    properties = Properties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['version'] = version;
    _data['name'] = name;
    _data['image_urls'] = imageUrls.toJson();
    _data['properties'] = properties.toJson();
    return _data;
  }
}

class ImageUrls {
  ImageUrls({
    required this.hero,
    required this.thumbnail,
    required this.screenshots,
  });
  late final String? hero;
  late final String? thumbnail;
  late final List<String> screenshots;

  ImageUrls.fromJson(Map<String, dynamic> json) {
    hero = json['hero'];
    thumbnail = json['thumbnail'];
    screenshots = List.castFrom<dynamic, String>(json['screenshots']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['hero'] = hero;
    _data['thumbnail'] = thumbnail;
    _data['screenshots'] = screenshots;
    return _data;
  }
}

class Properties {
  Properties({
    required this.levelId,
    required this.ownerType,
  });
  late final String? levelId;
  late final String? ownerType;

  Properties.fromJson(Map<String, dynamic> json) {
    levelId = json['level_id'];
    ownerType = json['owner_type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['level_id'] = levelId;
    _data['owner_type'] = ownerType;
    return _data;
  }
}

class Ugcgamevariant {
  Ugcgamevariant({
    required this.id,
    required this.version,
    required this.name,
    required this.imageUrls,
    required this.properties,
  });
  late final String? id;
  late final String? version;
  late final String? name;
  late final ImageUrls imageUrls;
  late final Properties properties;

  Ugcgamevariant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    name = json['name'];
    imageUrls = ImageUrls.fromJson(json['image_urls']);
    properties = Properties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['version'] = version;
    _data['name'] = name;
    _data['image_urls'] = imageUrls.toJson();
    _data['properties'] = properties.toJson();
    return _data;
  }
}

class Playlist {
  Playlist({
    required this.id,
    required this.version,
    required this.name,
    required this.imageUrls,
    required this.attributes,
    required this.properties,
  });
  late final String? id;
  late final String? version;
  late final String? name;
  late final ImageUrls imageUrls;
  late final Attributes attributes;
  late final Properties properties;

  Playlist.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    name = json['name'];
    imageUrls = ImageUrls.fromJson(json['image_urls']);
    attributes = Attributes.fromJson(json['attributes']);
    properties = Properties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['version'] = version;
    _data['name'] = name;
    _data['image_urls'] = imageUrls.toJson();
    _data['attributes'] = attributes.toJson();
    _data['properties'] = properties.toJson();
    return _data;
  }
}

class Attributes {
  Attributes({
    required this.active,
    required this.featured,
    required this.ranked,
  });
  late final bool active;
  late final bool featured;
  late final bool ranked;

  Attributes.fromJson(Map<String, dynamic> json) {
    active = json['active'];
    featured = json['featured'];
    ranked = json['ranked'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['active'] = active;
    _data['featured'] = featured;
    _data['ranked'] = ranked;
    return _data;
  }
}

class Player {
  Player({
    required this.rank,
    required this.outcome,
    required this.properties,
    required this.stats,
    required this.participation,
    required this.progression,
    required this.performances,
  });
  late final int? rank;
  late final String? outcome;
  late final Properties properties;
  late final Stats stats;
  late final Participation participation;
  late final Progression progression;
  late final Performances performances;

  Player.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
    outcome = json['outcome'];
    properties = Properties.fromJson(json['properties']);
    stats = Stats.fromJson(json['stats']);
    participation = Participation.fromJson(json['participation']);
    progression = Progression.fromJson(json['progression']);
    performances = Performances.fromJson(json['performances']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['rank'] = rank;
    _data['outcome'] = outcome;
    _data['properties'] = properties.toJson();
    _data['stats'] = stats.toJson();
    _data['participation'] = participation.toJson();
    _data['progression'] = progression.toJson();
    _data['performances'] = performances.toJson();
    return _data;
  }
}

class Stats {
  Stats({
    required this.core,
    required this.mode,
    this.mmr,
  });
  late final Core core;
  late final Mode mode;
  late final Null mmr;

  Stats.fromJson(Map<String, dynamic> json) {
    core = Core.fromJson(json['core']);
    mode = Mode.fromJson(json['mode']);
    mmr = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['core'] = core.toJson();
    _data['mode'] = mode.toJson();
    _data['mmr'] = mmr;
    return _data;
  }
}

class Core {
  Core({
    required this.summary,
    required this.damage,
    required this.shots,
    required this.rounds,
    required this.breakdown,
    required this.kdr,
    required this.kda,
    required this.averageLifeDuration,
    required this.scores,
  });
  late final Summary summary;
  late final Damage damage;
  late final Shots shots;
  late final Rounds rounds;
  late final Breakdown breakdown;
  late final int? kdr;
  late final int? kda;
  late final AverageLifeDuration averageLifeDuration;
  late final Scores scores;

  Core.fromJson(Map<String, dynamic> json) {
    summary = Summary.fromJson(json['summary']);
    damage = Damage.fromJson(json['damage']);
    shots = Shots.fromJson(json['shots']);
    rounds = Rounds.fromJson(json['rounds']);
    breakdown = Breakdown.fromJson(json['breakdown']);
    kdr = json['kdr'];
    kda = json['kda'];
    averageLifeDuration =
        AverageLifeDuration.fromJson(json['average_life_duration']);
    scores = Scores.fromJson(json['scores']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['summary'] = summary.toJson();
    _data['damage'] = damage.toJson();
    _data['shots'] = shots.toJson();
    _data['rounds'] = rounds.toJson();
    _data['breakdown'] = breakdown.toJson();
    _data['kdr'] = kdr;
    _data['kda'] = kda;
    _data['average_life_duration'] = averageLifeDuration.toJson();
    _data['scores'] = scores.toJson();
    return _data;
  }
}

class Summary {
  Summary({
    required this.kills,
    required this.deaths,
    required this.assists,
    required this.betrayals,
    required this.suicides,
    required this.spawns,
    required this.maxKillingSpree,
    required this.vehicles,
    required this.medals,
    required this.objectivesCompleted,
  });
  late final int? kills;
  late final int? deaths;
  late final int? assists;
  late final int? betrayals;
  late final int? suicides;
  late final int? spawns;
  late final int? maxKillingSpree;
  late final Vehicles vehicles;
  late final Medals medals;
  late final int? objectivesCompleted;

  Summary.fromJson(Map<String, dynamic> json) {
    kills = json['kills'];
    deaths = json['deaths'];
    assists = json['assists'];
    betrayals = json['betrayals'];
    suicides = json['suicides'];
    spawns = json['spawns'];
    maxKillingSpree = json['max_killing_spree'];
    vehicles = Vehicles.fromJson(json['vehicles']);
    medals = Medals.fromJson(json['medals']);
    objectivesCompleted = json['objectives_completed'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['kills'] = kills;
    _data['deaths'] = deaths;
    _data['assists'] = assists;
    _data['betrayals'] = betrayals;
    _data['suicides'] = suicides;
    _data['spawns'] = spawns;
    _data['max_killing_spree'] = maxKillingSpree;
    _data['vehicles'] = vehicles.toJson();
    _data['medals'] = medals.toJson();
    _data['objectives_completed'] = objectivesCompleted;
    return _data;
  }
}

class Vehicles {
  Vehicles({
    required this.destroys,
    required this.hijacks,
  });
  late final dynamic destroys;
  late final dynamic hijacks;

  Vehicles.fromJson(Map<String, dynamic> json) {
    destroys = json['destroys'];
    hijacks = json['hijacks'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['destroys'] = destroys;
    _data['hijacks'] = hijacks;
    return _data;
  }
}

class Medals {
  Medals({
    required this.total,
    required this.unique,
  });
  late final int? total;
  late final int? unique;

  Medals.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    unique = json['unique'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['total'] = total;
    _data['unique'] = unique;
    return _data;
  }
}

class Damage {
  Damage({
    required this.taken,
    required this.dealt,
  });
  late final int? taken;
  late final int? dealt;

  Damage.fromJson(Map<String, dynamic> json) {
    taken = json['taken'];
    dealt = json['dealt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['taken'] = taken;
    _data['dealt'] = dealt;
    return _data;
  }
}

class Shots {
  Shots({
    required this.fired,
    required this.hit,
    required this.missed,
    required this.accuracy,
  });
  late final int? fired;
  late final int? hit;
  late final int? missed;
  late final int? accuracy;

  Shots.fromJson(Map<String, dynamic> json) {
    fired = json['fired'];
    hit = json['hit'];
    missed = json['missed'];
    accuracy = json['accuracy'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['fired'] = fired;
    _data['hit'] = hit;
    _data['missed'] = missed;
    _data['accuracy'] = accuracy;
    return _data;
  }
}

class Rounds {
  Rounds({
    required this.won,
    required this.lost,
    required this.tied,
  });
  late final int? won;
  late final int? lost;
  late final int? tied;

  Rounds.fromJson(Map<String, dynamic> json) {
    won = json['won'];
    lost = json['lost'];
    tied = json['tied'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['won'] = won;
    _data['lost'] = lost;
    _data['tied'] = tied;
    return _data;
  }
}

class Breakdown {
  Breakdown({
    required this.kills,
    required this.assists,
    required this.vehicles,
    required this.medals,
  });
  late final Kills kills;
  late final Assists assists;
  late final Vehicles vehicles;
  late final List<dynamic> medals;

  Breakdown.fromJson(Map<String, dynamic> json) {
    kills = Kills.fromJson(json['kills']);
    assists = Assists.fromJson(json['assists']);
    vehicles = Vehicles.fromJson(json['vehicles']);
    medals = List.castFrom<dynamic, dynamic>(json['medals']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['kills'] = kills.toJson();
    _data['assists'] = assists.toJson();
    _data['vehicles'] = vehicles.toJson();
    _data['medals'] = medals;
    return _data;
  }
}

class Kills {
  Kills({
    required this.melee,
    required this.grenades,
    required this.headshots,
    required this.powerWeapons,
    required this.sticks,
    required this.assassinations,
  });
  late final int? melee;
  late final int? grenades;
  late final int? headshots;
  late final int? powerWeapons;
  late final int? sticks;
  late final int? assassinations;

  Kills.fromJson(Map<String, dynamic> json) {
    melee = json['melee'];
    grenades = json['grenades'];
    headshots = json['headshots'];
    powerWeapons = json['power_weapons'];
    sticks = json['sticks'];
    assassinations = json['assassinations'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['melee'] = melee;
    _data['grenades'] = grenades;
    _data['headshots'] = headshots;
    _data['power_weapons'] = powerWeapons;
    _data['sticks'] = sticks;
    _data['assassinations'] = assassinations;
    return _data;
  }
}

class Miscellaneous {
  Miscellaneous({
    required this.repulsor,
    required this.fusionCoils,
  });
  late final int? repulsor;
  late final int? fusionCoils;

  Miscellaneous.fromJson(Map<String, dynamic> json) {
    repulsor = json['repulsor'];
    fusionCoils = json['fusion_coils'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['repulsor'] = repulsor;
    _data['fusion_coils'] = fusionCoils;
    return _data;
  }
}

class Assists {
  Assists({
    required this.emp,
    required this.driver,
    required this.callouts,
  });
  late final int? emp;
  late final int? driver;
  late final int? callouts;

  Assists.fromJson(Map<String, dynamic> json) {
    emp = json['emp'];
    driver = json['driver'];
    callouts = json['callouts'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['emp'] = emp;
    _data['driver'] = driver;
    _data['callouts'] = callouts;
    return _data;
  }
}

class AverageLifeDuration {
  AverageLifeDuration({
    required this.seconds,
    required this.human,
  });
  late final int? seconds;
  late final String? human;

  AverageLifeDuration.fromJson(Map<String, dynamic> json) {
    seconds = json['seconds'];
    human = json['human'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['seconds'] = seconds;
    _data['human'] = human;
    return _data;
  }
}

class Scores {
  Scores({
    required this.personal,
    required this.points,
  });
  late final int? personal;
  late final int? points;

  Scores.fromJson(Map<String, dynamic> json) {
    personal = json['personal'];
    points = json['points'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['personal'] = personal;
    _data['points'] = points;
    return _data;
  }
}

class Mode {
  Mode({
    required this.flagCaptureAssists,
    required this.flagCaptures,
    required this.flagCarriersKilled,
    required this.flagGrabs,
    required this.flagReturnersKilled,
    required this.flagReturns,
    required this.flagSecures,
    required this.flagSteals,
    required this.killsAsFlagCarrier,
    required this.killsAsFlagReturner,
    required this.timeAsFlagCarrier,
  });
  late final int? flagCaptureAssists;
  late final int? flagCaptures;
  late final int? flagCarriersKilled;
  late final int? flagGrabs;
  late final int? flagReturnersKilled;
  late final int? flagReturns;
  late final int? flagSecures;
  late final int? flagSteals;
  late final int? killsAsFlagCarrier;
  late final int? killsAsFlagReturner;
  late final TimeAsFlagCarrier timeAsFlagCarrier;

  Mode.fromJson(Map<String, dynamic> json) {
    flagCaptureAssists = json['flag_capture_assists'];
    flagCaptures = json['flag_captures'];
    flagCarriersKilled = json['flag_carriers_killed'];
    flagGrabs = json['flag_grabs'];
    flagReturnersKilled = json['flag_returners_killed'];
    flagReturns = json['flag_returns'];
    flagSecures = json['flag_secures'];
    flagSteals = json['flag_steals'];
    killsAsFlagCarrier = json['kills_as_flag_carrier'];
    killsAsFlagReturner = json['kills_as_flag_returner'];
    timeAsFlagCarrier =
        TimeAsFlagCarrier.fromJson(json['time_as_flag_carrier']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['flag_capture_assists'] = flagCaptureAssists;
    _data['flag_captures'] = flagCaptures;
    _data['flag_carriers_killed'] = flagCarriersKilled;
    _data['flag_grabs'] = flagGrabs;
    _data['flag_returners_killed'] = flagReturnersKilled;
    _data['flag_returns'] = flagReturns;
    _data['flag_secures'] = flagSecures;
    _data['flag_steals'] = flagSteals;
    _data['kills_as_flag_carrier'] = killsAsFlagCarrier;
    _data['kills_as_flag_returner'] = killsAsFlagReturner;
    _data['time_as_flag_carrier'] = timeAsFlagCarrier.toJson();
    return _data;
  }
}

class TimeAsFlagCarrier {
  TimeAsFlagCarrier({
    required this.seconds,
    required this.human,
  });
  late final int? seconds;
  late final String? human;

  TimeAsFlagCarrier.fromJson(Map<String, dynamic> json) {
    seconds = json['seconds'];
    human = json['human'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['seconds'] = seconds;
    _data['human'] = human;
    return _data;
  }
}

class Participation {
  Participation({
    this.confirmed,
    required this.joinedInProgress,
    required this.joinedAt,
    required this.leftAt,
    required this.presence,
  });
  late final Null confirmed;
  late final bool joinedInProgress;
  late final String? joinedAt;
  late final String? leftAt;
  late final Presence presence;

  Participation.fromJson(Map<String, dynamic> json) {
    confirmed = null;
    joinedInProgress = json['joined_in_progress'];
    joinedAt = json['joined_at'];
    leftAt = json['left_at'];
    presence = Presence.fromJson(json['presence']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['confirmed'] = confirmed;
    _data['joined_in_progress'] = joinedInProgress;
    _data['joined_at'] = joinedAt;
    _data['left_at'] = leftAt;
    _data['presence'] = presence.toJson();
    return _data;
  }
}

class Presence {
  Presence({
    required this.beginning,
    required this.completion,
  });
  late final bool beginning;
  late final bool completion;

  Presence.fromJson(Map<String, dynamic> json) {
    beginning = json['beginning'];
    completion = json['completion'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['beginning'] = beginning;
    _data['completion'] = completion;
    return _data;
  }
}

class Progression {
  Progression({
    this.csr,
  });
  late final Null csr;

  Progression.fromJson(Map<String, dynamic> json) {
    csr = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['csr'] = csr;
    return _data;
  }
}

class Performances {
  Performances({
    required this.kills,
    required this.deaths,
  });
  late final Kills kills;
  late final Deaths deaths;

  Performances.fromJson(Map<String, dynamic> json) {
    kills = Kills.fromJson(json['kills']);
    deaths = Deaths.fromJson(json['deaths']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['kills'] = kills.toJson();
    _data['deaths'] = deaths.toJson();
    return _data;
  }
}

class Deaths {
  Deaths({
    required this.count,
    required this.expected,
    required this.standardDeviation,
  });
  late final int? count;
  late final int? expected;
  late final int? standardDeviation;

  Deaths.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    expected = json['expected'];
    standardDeviation = json['standard_deviation'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['expected'] = expected;
    _data['standard_deviation'] = standardDeviation;
    return _data;
  }
}

class Season {
  Season({
    required this.id,
    required this.version,
    required this.properties,
  });
  late final int? id;
  late final int? version;
  late final Properties properties;

  Season.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    properties = Properties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['version'] = version;
    _data['properties'] = properties.toJson();
    return _data;
  }
}

class PlayableDuration {
  PlayableDuration({
    required this.seconds,
    required this.human,
  });
  late final int? seconds;
  late final String? human;

  PlayableDuration.fromJson(Map<String, dynamic> json) {
    seconds = json['seconds'];
    human = json['human'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['seconds'] = seconds;
    _data['human'] = human;
    return _data;
  }
}

class Additional {
  Additional({
    required this.total,
    required this.paging,
    required this.params,
    required this.query,
  });
  late final int? total;
  late final Paging paging;
  late final Params params;
  late final Query query;

  Additional.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    paging = Paging.fromJson(json['paging']);
    params = Params.fromJson(json['params']);
    query = Query.fromJson(json['query']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['total'] = total;
    _data['paging'] = paging.toJson();
    _data['params'] = params.toJson();
    _data['query'] = query.toJson();
    return _data;
  }
}

class Paging {
  Paging({
    required this.count,
    required this.offset,
  });
  late final int? count;
  late final int? offset;

  Paging.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    offset = json['offset'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['offset'] = offset;
    return _data;
  }
}

class Params {
  Params({
    required this.gamertag,
  });
  late final String? gamertag;

  Params.fromJson(Map<String, dynamic> json) {
    gamertag = json['gamertag'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['gamertag'] = gamertag;
    return _data;
  }
}

class Query {
  Query({
    required this.type,
    required this.language,
  });
  late final String? type;
  late final String? language;

  Query.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['language'] = language;
    return _data;
  }
}
