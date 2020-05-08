class Country{
  final String country;
  final String slug;
  final String iso;
  
  Country({ this.country , this.slug , this.iso});

  factory Country.fromJson(Map<String , dynamic> json){
    Country ob = new Country(
      country: json['Country'] as String,
      slug: json['Slug'] as String,
      iso: json['ISO2'] as String,
    );
    return ob;
  }
  
  factory Country.fromJsonData(Map<String , dynamic> json){
    Country ob = new Country(
      country: json['Country'] as String,
      slug: json['Slug'] as String,
      iso: json['ISO2'] as String,
    );

    return ob;
  }

}