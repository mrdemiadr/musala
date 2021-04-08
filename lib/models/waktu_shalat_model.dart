//service api diambil dari https://waktusholat.org/api/docs/school

class WaktuShalatModel {
  WaktuShalatModel({
    this.code,
    this.status,
    this.results,
  });

  int code;
  String status;
  Results results;
}

class Results {
  Results({
    this.datetime,
    this.location,
    this.settings,
  });

  List<Datetime> datetime;
  Location location;
  Settings settings;
}

class Datetime {
  Datetime({
    this.times,
    this.date,
  });

  Times times;
  Date date;
}

class Date {
  Date({
    this.timestamp,
    this.gregorian,
    this.hijri,
  });

  int timestamp;
  DateTime gregorian;
  DateTime hijri;
}

class Times {
  Times({
    this.imsak,
    this.sunrise,
    this.fajr,
    this.dhuhr,
    this.asr,
    this.sunset,
    this.maghrib,
    this.isha,
    this.midnight,
  });

  String imsak;
  String sunrise;
  String fajr;
  String dhuhr;
  String asr;
  String sunset;
  String maghrib;
  String isha;
  String midnight;
}

class Location {
  Location({
    this.latitude,
    this.longitude,
    this.elevation,
    this.country,
    this.countryCode,
    this.timezone,
    this.localOffset,
  });

  double latitude;
  double longitude;
  int elevation;
  String country;
  String countryCode;
  String timezone;
  int localOffset;
}

class Settings {
  Settings({
    this.timeformat,
    this.school,
    this.juristic,
    this.highlat,
    this.fajrAngle,
    this.ishaAngle,
  });

  String timeformat;
  String school;
  String juristic;
  String highlat;
  double fajrAngle;
  int ishaAngle;
}
