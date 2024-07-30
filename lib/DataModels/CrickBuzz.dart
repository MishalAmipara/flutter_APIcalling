class CricData {
  List<TypeMatch> typeMatches;
  Filters filters;
  AppIndex appIndex;
  String responseLastUpdated;

  CricData({
    required this.typeMatches,
    required this.filters,
    required this.appIndex,
    required this.responseLastUpdated,
  });

}

class AppIndex {
  String seoTitle;
  String webUrl;

  AppIndex({
    required this.seoTitle,
    required this.webUrl,
  });

}

class Filters {
  List<String> matchType;

  Filters({
    required this.matchType,
  });

}

class TypeMatch {
  String matchType;
  List<SeriesMatch> seriesMatches;

  TypeMatch({
    required this.matchType,
    required this.seriesMatches,
  });

}

class SeriesMatch {
  SeriesAdWrapper? seriesAdWrapper;
  AdDetail? adDetail;

  SeriesMatch({
    this.seriesAdWrapper,
    this.adDetail,
  });

}

class AdDetail {
  String name;
  String layout;
  int position;

  AdDetail({
    required this.name,
    required this.layout,
    required this.position,
  });

}

class SeriesAdWrapper {
  int seriesId;
  String seriesName;
  List<Match> matches;

  SeriesAdWrapper({
    required this.seriesId,
    required this.seriesName,
    required this.matches,
  });

}

class Match {
  MatchInfo matchInfo;
  MatchScore? matchScore;

  Match({
    required this.matchInfo,
    this.matchScore,
  });

}

class MatchInfo {
  int matchId;
  int seriesId;
  String seriesName;
  String matchDesc;
  MatchFormat matchFormat;
  String startDate;
  String endDate;
  State state;
  String status;
  Team team1;
  Team team2;
  VenueInfo venueInfo;
  int? currBatTeamId;
  String seriesStartDt;
  String seriesEndDt;
  bool isTimeAnnounced;
  String stateTitle;
  bool? isFantasyEnabled;

  MatchInfo({
    required this.matchId,
    required this.seriesId,
    required this.seriesName,
    required this.matchDesc,
    required this.matchFormat,
    required this.startDate,
    required this.endDate,
    required this.state,
    required this.status,
    required this.team1,
    required this.team2,
    required this.venueInfo,
    this.currBatTeamId,
    required this.seriesStartDt,
    required this.seriesEndDt,
    required this.isTimeAnnounced,
    required this.stateTitle,
    this.isFantasyEnabled,
  });

}

enum MatchFormat {
  T20,
  TEST
}

enum State {
  COMPLETE
}

class Team {
  int teamId;
  String teamName;
  String teamSName;
  int imageId;

  Team({
    required this.teamId,
    required this.teamName,
    required this.teamSName,
    required this.imageId,
  });

}

class VenueInfo {
  int id;
  String ground;
  String city;
  Timezone timezone;
  String latitude;
  String longitude;

  VenueInfo({
    required this.id,
    required this.ground,
    required this.city,
    required this.timezone,
    required this.latitude,
    required this.longitude,
  });

}

enum Timezone {
  THE_0100,
  THE_0200,
  THE_0500,
  THE_0530
}

class MatchScore {
  TeamScore team1Score;
  TeamScore team2Score;

  MatchScore({
    required this.team1Score,
    required this.team2Score,
  });

}

class TeamScore {
  Inngs inngs1;
  Inngs? inngs2;

  TeamScore({
    required this.inngs1,
    this.inngs2,
  });

}

class Inngs {
  int inningsId;
  int runs;
  int wickets;
  double overs;
  bool? isDeclared;
  bool? isFollowOn;

  Inngs({
    required this.inningsId,
    required this.runs,
    required this.wickets,
    required this.overs,
    this.isDeclared,
    this.isFollowOn,
  });

}