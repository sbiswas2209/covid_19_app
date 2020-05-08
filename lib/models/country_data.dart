class CountryData{
  final int confirmed;
  final int deaths;
  final int recovered;

  CountryData({ this.confirmed , this.deaths , this.recovered });

  factory CountryData.fromJson(Map<String , dynamic> json){
    return CountryData(
      confirmed: json['TotalConfirmed'] as int,
      deaths: json['TotalDeaths'] as int,
      recovered: json['TotalRecovered'] as int,
    );
  }

  factory CountryData.fromJsonCountry(Map<String , dynamic> json){
    return CountryData(
      confirmed: json['Confirmed'] as int,
      deaths: json['Deaths'] as int,
      recovered: json['Recovered'] as int,
    );
  }

}