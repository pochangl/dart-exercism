const EarthYearSeconds = 31557600;

Map<String, double> ratios = {
  'Mercury': 0.2408467,
  'Venus': 0.61519726,
  'Earth': 1.0,
  'Mars': 1.8808158,
  'Jupiter': 11.862615,
  'Saturn': 29.447498,
  'Uranus': 84.016846,
  'Neptune': 164.79132
};

class SpaceAge {
  double age({ String planet, double seconds }) {
    double ratio = ratios[planet];
    double yearSeconds = EarthYearSeconds * ratio;
    return (seconds / yearSeconds * 100).round() / 100.0;
  }
}
