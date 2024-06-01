class Solution {
  List<double> convertTemperature(double celsius) {
    double kelvin = celsius + 273.15;
    double fahrenheit = celsius * 1.80 + 32.00;
    return [kelvin, fahrenheit];
  }
}
