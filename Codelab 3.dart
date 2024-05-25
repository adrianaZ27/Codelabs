/***********************Ejercicio 1, Escribir un predicado de prueba*******************************/

// Implement the predicate of singleWhere
// with the following conditions
// * The element contains the character `'a'`
// * The element starts with the character `'M'`
//String singleWhere(Iterable<String> items) {
//  return items.singleWhere(TODO('Implement the outlined predicate.'));
//}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
//void main() {
//  const items = [
//    'Salad',
//    'Popcorn',
//    'Milk',
//    'Toast',
//    'Sugar',
//    'Mozzarella',
//    'Tomato',
//    'Egg',
//    'Water',
//  ];

//  try {
//    final str = singleWhere(items);
//    if (str == 'Mozzarella') {
//      print('Success. All tests passed!');
//    } else {
//      print(
//        'Tried calling singleWhere, but received $str instead of '
//        'the expected value \'Mozzarella\'',
//      );
//    }
//  } on StateError catch (stateError) {
//    print(
//      'Tried calling singleWhere, but received a StateError: ${stateError.message}. '
//      'singleWhere will fail if 0 or many elements match the predicate.',
//    );
//  } on UnimplementedError {
//    print(
//      'Tried running `singleWhere`, but received an error. '
//      'Did you implement the function?',
//    );
//  } catch (e) {
//    print('Tried calling singleWhere, but received an exception: $e');
//  }
//}

/********************************************SOLUCION*************************************************/

String singleWhere(Iterable<String> items) { //Utilizar metodos de la clase String    
  return items.singleWhere(
          (element) => element.startsWith('M') && element.contains('a'));
}

void main() {
  const items = [
    'Salad',
    'Popcorn',
    'Milk',
    'Toast',
    'Sugar',
    'Mozzarella',
    'Tomato',
    'Egg',
    'Water',
  ];

  try {
    final str = singleWhere(items);
    if (str == 'Mozzarella') {
      print('Success. All tests passed!');
    } else {
      print(
        'Tried calling singleWhere, but received $str instead of '
        'the expected value \'Mozzarella\'',
      );
    }
  } on StateError catch (stateError) {
    print(
      'Tried calling singleWhere, but received a StateError: ${stateError.message}. '
      'singleWhere will fail if 0 or many elements match the predicate.',
    );
  } on UnimplementedError {
    print(
      'Tried running `singleWhere`, but received an error. '
      'Did you implement the function?',
    );
  } catch (e) {
    print('Tried calling singleWhere, but received an exception: $e');
  }
}

/************************Ejercicio 2, Verificar que un iterable cumpla una condicion****************************/

//bool anyUserUnder18(Iterable<User> users) {
  // TODO: Implement the anyUserUnder18 function.
//}

//bool everyUserOver13(Iterable<User> users) {
  // TODO: Implement the everyUserOver13 function.
//}

//class User {
//  final String name;
//  final int age;

//  User(
//    this.name,
//    this.age,
//  );
//}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
//void main() {
//  final users = [
//    User('Alice', 21),
//    User('Bob', 17),
//    User('Claire', 52),
//    User('David', 14),
//  ];

//  try {
//    final out = anyUserUnder18(users);
//    if (!out) {
//      print('Looks like `anyUserUnder18` is wrong. Keep trying!');
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `anyUserUnder18`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print('Tried running `anyUserUnder18`, but received an exception: $e');
//    return;
//  }

//  try {
    // with only one user older than 18, should be false
//    final out = anyUserUnder18([User('Alice', 21)]);
//    if (out) {
//      print(
//          'Looks like `anyUserUnder18` is wrong. What if all users are over 18?');
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `anyUserUnder18`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print(
//      'Tried running `anyUserUnder18([User("Alice", 21)])`, '
//      'but received an exception: $e',
//    );
//    return;
//  }

//  try {
//    final out = everyUserOver13(users);
//    if (!out) {
//      print(
//        'Looks like `everyUserOver13` is wrong. '
//        'There are no users under 13!',
//      );
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `everyUserOver13`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print(
//      'Tried running `everyUserOver13`, '
//      'but received an exception: $e',
//    );
//    return;
//  }

//  try {
//    final out = everyUserOver13([User('Dan', 12)]);
//    if (out) {
//      print(
//        'Looks like `everyUserOver13` is wrong. '
//        'There is at least one user under 13!',
//      );
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `everyUserOver13`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print(
//      'Tried running `everyUserOver13([User(\'Dan\', 12)])`, '
//      'but received an exception: $e',
//    );
//    return;
//  }

//  print('Success. All tests passed!');
//}

/****************************************SOLUCION*******************************************/

bool anyUserUnder18(Iterable<User> users) { //Utilizar metodo any 
  return users.any((user) => user.age < 18);
}

bool everyUserOver13(Iterable<User> users) { //Utilizar metodo every 
  return users.every((user) => user.age > 13);
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('David', 14),
  ];

  try {
    final out = anyUserUnder18(users);
    if (!out) {
      print('Looks like `anyUserUnder18` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyUserUnder18`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running `anyUserUnder18`, but received an exception: $e');
    return;
  }

  try {

    final out = anyUserUnder18([User('Alice', 21)]);
    if (out) {
      print(
          'Looks like `anyUserUnder18` is wrong. What if all users are over 18?');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyUserUnder18`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `anyUserUnder18([User("Alice", 21)])`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = everyUserOver13(users);
    if (!out) {
      print(
        'Looks like `everyUserOver13` is wrong. '
        'There are no users under 13!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `everyUserOver13`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `everyUserOver13`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = everyUserOver13([User('Dan', 12)]);
    if (out) {
      print(
        'Looks like `everyUserOver13` is wrong. '
        'There is at least one user under 13!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `everyUserOver13`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `everyUserOver13([User(\'Dan\', 12)])`, '
      'but received an exception: $e',
    );
    return;
  }

  print('Success. All tests passed!');
}

/*************************Ejercicio 3, Filtrar elementos de una lista*******************************/

//Iterable<User> filterOutUnder21(Iterable<User> users) {
  // TODO: Implement the filterOutUnder21 function.
//}

//Iterable<User> findShortNamed(Iterable<User> users) {
  // TODO: Implement the findShortNamed function.
//}

//class User {
//  final String name;
//  final int age;

//  User(
//    this.name,
//    this.age,
//  );
//}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.

//void main() {
//  final users = [
//    User('Alice', 21),
//    User('Bob', 17),
//    User('Claire', 52),
//    User('Dan', 12),
//  ];

//  try {
//    final out = filterOutUnder21(users);
//    if (out.any((user) => user.age < 21) || out.length != 2) {
//      print(
//        'Looks like `filterOutUnder21` is wrong, there are '
//        'exactly two users with age under 21. Keep trying!',
//      );
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `filterOutUnder21`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print(
//      'Tried running `filterOutUnder21`, '
//      'but received an exception: ${e.runtimeType}',
//    );
//    return;
//  }

//  try {
//    final out = findShortNamed(users);
//    if (out.any((user) => user.name.length > 3) || out.length != 2) {
//      print(
//        'Looks like `findShortNamed` is wrong, there are '
//        'exactly two users with a three letter name. Keep trying!',
//      );
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `findShortNamed`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print(
//      'Tried running `findShortNamed`, '
//      'but received an exception: ${e.runtimeType}',
//    );
//    return;
//  }

//  print('Success. All tests passed!');
//}


/*****************************************SOLUCION************************************************/

Iterable<User> filterOutUnder21(Iterable<User> users) { //Utilizar metodo where
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  return users.where((user) => user.name.length <= 3);
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('Dan', 12),
  ];

  try {
    final out = filterOutUnder21(users);
    if (out.any((user) => user.age < 21) || out.length != 2) {
      print(
        'Looks like `filterOutUnder21` is wrong, there are '
        'exactly two users with age under 21. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `filterOutUnder21`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `filterOutUnder21`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  try {
    final out = findShortNamed(users);
    if (out.any((user) => user.name.length > 3) || out.length != 2) {
      print(
        'Looks like `findShortNamed` is wrong, there are '
        'exactly two users with a three letter name. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `findShortNamed`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `findShortNamed`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  print('Success. All tests passed!');
}

/************************************Ejercicio 4, Asignacion**********************************/

//Iterable<String> getNameAndAges(Iterable<User> users) {
  // TODO: Implement the getNameAndAges function.
//}

//class User {
//  final String name;
//  final int age;

//  User(
//    this.name,
//    this.age,
//  );
//}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
//void main() {
//  final users = [
//    User('Alice', 21),
//    User('Bob', 17),
//    User('Claire', 52),
//  ];

//  try {
//    final out = getNameAndAges(users).toList();
//    if (!_listEquals(out, ['Alice is 21', 'Bob is 17', 'Claire is 52'])) {
//      print(
//        'Looks like `getNameAndAges` is wrong. Keep trying! '
//        'The output was: $out',
//      );
//      return;
//    }
//  } on UnimplementedError {
//    print(
//      'Tried running `getNameAndAges`, but received an error. '
//      'Did you implement the function?',
//    );
//    return;
//  } catch (e) {
//    print('Tried running the function, but received an exception: $e');
//    return;
//  }

//  print('Success. All tests passed!');
//}

//bool _listEquals<T>(List<T>? a, List<T>? b) {
//  if (a == null) return b == null;
//  if (b == null || a.length != b.length) return false;
//  for (var index = 0; index < a.length; index += 1) {
//    if (a[index] != b[index]) return false;
//  }
//  return true;
//}

/*****************************************SOLUCION************************************************/

Iterable<String> getNameAndAges(Iterable<User> users) {
  return users.map((user) => '${user.name} is ${user.age}'); //Utilizar metodo map
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
  ];

  try {
    final out = getNameAndAges(users).toList();
    if (!_listEquals(out, ['Alice is 21', 'Bob is 17', 'Claire is 52'])) {
      print(
        'Looks like `getNameAndAges` is wrong. Keep trying! '
        'The output was: $out',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `getNameAndAges`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running the function, but received an exception: $e');
    return;
  }

  print('Success. All tests passed!');
}

bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) return b == null;
  if (b == null || a.length != b.length) return false;
  for (var index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) return false;
  }
  return true;
}

/*******************************************Ejercicio 5***********************************************/

/* Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  // TODO: Implement the parseEmailAddresses function.
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  // TODO: Implement the anyInvalidEmailAddress function.
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  // TODO: Implement the validEmailAddresses function.
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'EmailAddress{address: $address}';
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  const input = [
    'ali@gmail.com',
    'bobgmail.com',
    'cal@gmail.com',
  ];

  const correctInput = ['dash@gmail.com', 'sparky@gmail.com'];

  bool _listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (var index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) return false;
    }
    return true;
  }

  final Iterable<EmailAddress> emails;
  final Iterable<EmailAddress> correctEmails;
  try {
    emails = parseEmailAddresses(input);
    correctEmails = parseEmailAddresses(correctInput);
    if (emails.isEmpty) {
      print(
        'Tried running `parseEmailAddresses`, but received an empty list.',
      );
      return;
    }
    if (!_listEquals(emails.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('bobgmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `parseEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `parseEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `parseEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = anyInvalidEmailAddress(emails);
    if (!out) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with at least one invalid address.',
      );
      return;
    }
    final falseOut = anyInvalidEmailAddress(correctEmails);
    if (falseOut) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with all valid addresses.',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyInvalidEmailAddress`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
        'Tried running `anyInvalidEmailAddress`, but received an exception: $e');
    return;
  }

  try {
    final valid = validEmailAddresses(emails);
    if (emails.isEmpty) {
      print('Tried running `validEmailAddresses`, but received an empty list.');
      return;
    }
    if (!_listEquals(valid.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `validEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `validEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running the `validEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  print('Success. All tests passed!');
}

bool isValidEmailAddress(EmailAddress email) {
  return email.address.contains('@');
} */

/*****************************************SOLUCION************************************************/

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  return strings.map((s) => EmailAddress(s));
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  return emails.any((email) => !isValidEmailAddress(email));
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  return emails.where((email) => isValidEmailAddress(email));
}
class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'EmailAddress{address: $address}';
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  const input = [
    'ali@gmail.com',
    'bobgmail.com',
    'cal@gmail.com',
  ];

  const correctInput = ['dash@gmail.com', 'sparky@gmail.com'];

  bool _listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (var index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) return false;
    }
    return true;
  }

  final Iterable<EmailAddress> emails;
  final Iterable<EmailAddress> correctEmails;
  try {
    emails = parseEmailAddresses(input);
    correctEmails = parseEmailAddresses(correctInput);
    if (emails.isEmpty) {
      print(
        'Tried running `parseEmailAddresses`, but received an empty list.',
      );
      return;
    }
    if (!_listEquals(emails.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('bobgmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `parseEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `parseEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `parseEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = anyInvalidEmailAddress(emails);
    if (!out) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with at least one invalid address.',
      );
      return;
    }
    final falseOut = anyInvalidEmailAddress(correctEmails);
    if (falseOut) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with all valid addresses.',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyInvalidEmailAddress`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
        'Tried running `anyInvalidEmailAddress`, but received an exception: $e');
    return;
  }

  try {
    final valid = validEmailAddresses(emails);
    if (emails.isEmpty) {
      print('Tried running `validEmailAddresses`, but received an empty list.');
      return;
    }
    if (!_listEquals(valid.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `validEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `validEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running the `validEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  print('Success. All tests passed!');
}

bool isValidEmailAddress(EmailAddress email) {
  return email.address.contains('@');
}