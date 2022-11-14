/*
  Just a basic class for holding the potential options on our database
  can be used for anything that needs a list of potential options by
    databaseStrings *newNameHere* = new databaseStrings();
  should be all correct and inclusive, might be 1 or 2 errors
 */
class databaseStrings {
  List<String> AgeRangeList = [
    'Under 18',
    '18 to 29',
    '30 to 39',
    '40 to 49',
    '50 to 59',
    'NA'
  ];
  List<int> CodingHoursList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10
  ];
  List<String> CodingWithoutCoffeeList = [
    'Yes',
    'No',
    'Sometimes'
  ];
  List<int> CoffeeCupsPerDayList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8
  ];
  List<String> CoffeeSolveBugsList = [
    'Yes',
    'No',
    'Sometimes'
  ];
  List<String> CoffeeTimeList = [
    'Before coding',
    'While coding',
    'Before and while coding',
    'In the morning',
    'All the time',
    'After Coding'
  ];
  List<String> CoffeeTypeList = [
    'Americano',
    'Espresso (Short Black)',
    'Double Espresso (Doppio)',
    'American Coffee',
    'Nescafe',
    'Turkish',
    'Cappuccino',
    'Caffè latte'
  ];
  List<String> CountryList = [
    'Lebanon'
  ];
  List<String> GenderList = [
    'Female',
    'Male'
  ];
}