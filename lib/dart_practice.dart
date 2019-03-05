/**
 * Main
 */
main() {
//  variables();
//  builtInTypes();
//  typeTestOperators();
//  cascadeNotation();
  controlFlow();
//  print(call2("1", "2", "3"));
}

/**
 * intro variables
 */
variables() {
  var name = "Bob";
  print("name = $name");
  String nameStr = "Bob";

  int intDefaultValue;
  assert(intDefaultValue == null);
  print(intDefaultValue);

  final nameFinal = "Kevin";
//  final var nameFinal = "Kevin";
//  nameFinal = "James";

  const nameConst = "Const";
//  const var nameConst = "Const";
//  nameConst = "King";
}

/**
 * intro types
 */
builtInTypes() {
  //===== Numbers =====
  print("===== Numbers =====");
  int intNum1 = 10 ;
  print(intNum1);     //out: 10
  int hex = 0xDEADBEEF ;
  print(hex);     //out: 3735928559

  double doubleNum1 = 1.1;
  print(doubleNum1);  //out: 1.1
  double doubleNum2 = 1.42e5;
  print(doubleNum2);  //out: 142000.0

  double testDoubleToInt = 12; //Dart2.1
  print(testDoubleToInt); //out: 12.0
  print(testDoubleToInt.toInt()); //out: 12

  // String -> int
  var one = int.parse('1');
  assert(one == 1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');


  //===== String =====
  print("===== String =====");
  String str1 = "string 1";
  String str2 = "string 2";
  String str3 = str1 + str2;
  print(str3);  //out: string 1string 2

  String multiLine = ''' 
    Line1
    Line2
    Line3
  ''';
  print(multiLine);

  //===== Booleans =====
  print("===== Booleans =====");
  bool isBool = true;
  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);


  //===== Lists =====
  print("===== Lists =====");
  var intList = [1, 2, 3];
  print(intList);     //out: [1, 2, 3]
  print(intList.length);  //out: 3
  print(intList[1]);  //out: 2

  //===== Maps =====
  print("===== Maps =====");
  var maps = {
    // Keys      Values
    'first' : 'values1',
    'second': 'values2',
    'third' : 'values3'
  };
  print(maps);  //out: {first: values1, second: values2, third: values3}

  var newMaps = new Map();
  newMaps['first'] = "values1";
  newMaps['second'] = "values2";
  newMaps['third'] = "values3";
  print(newMaps); //out: {first: values1, second: values2, third: values3}

  assert(newMaps.containsKey("first") == true);
}

/**
 * intro function
 */
call1(String a, String b, String c) {
  return '$a $b $c!';
}

// => expr equals { return expr; }
call2(String a, String b, String c) => '$a $b $c!';

/**
 * Type test operators
 */
typeTestOperators() {
  print("===== Type test operators =====");
  String name = "1234";

  if (name is String) {
    print(name.length);
  }

  print((name as String).length);

  // ===== Assignment operators =====
  print("===== Assignment operators =====");
  String nullString = "nullString";
  nullString ??= "demo string";
  print(nullString);
}

/**
 * Cascade notation
 */
cascadeNotation() {
  print("===== Cascade notation =====");
  var person = new Person();
  person
    ..name = "Django"
    ..age = 20
    ..height = 175.0
    ..weight = 65.0;

//  person.name = "Django";
//  person.age = 20;
//  person.height = 175.0;
//  person.weight = 65.0;

  // If person is non-null, set its age value to 20.
//  person?.age = 20;

  print(person.toString());
}

class Person {
  String name;
  double height;
  double weight;
  int age;

  @override
  String toString() {
    return 'Person{name: $name, height: $height, weight: $weight, age: $age}';
  }
}

controlFlow() {
  print("===== controlFlow =====");
  print("===== if and else =====");
  String str = "string";
  if (str == "string") {
    print("equal string");
  } else if (str == "demo") {
    print("equal demo");
  } else {
    print("others");
  }

  print("===== for loops =====");
  var message = new StringBuffer("Dart is fun");
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  print("===== While and do-while =====");
//  while (!message.isEmpty) {
//    print("not empty!");
//  }
//
//  do {
//    print("not empty!");
//  } while (!message.isEmpty);

  print("===== Break and continue =====");
  while (true) {
    if (!message.isEmpty) break;
    print("is empty");
  }

  for (int i = 0; i < message.length; i++) {
    if (i < 5) {
      continue;
    }
    print("continue: $i");
  }

  print("===== Switch and case =====");
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("CLOSE");
      break;
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("DEFAULT");
  }
}