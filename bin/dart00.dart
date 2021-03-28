import 'dart:io';

void main() {
  print('=== Welcome to School bills ===');
  // ignore: omit_local_variable_types
  List<String> grades = ['1Q banknote bill', 'bill of the year grades'];
  // ignore: omit_local_variable_types
  List<String> options = ['Calculate', 'Leave'];
  print('What do you want to do \n');
  (options).map((e) => print(e + '\n')).toList();
  String aswerToDo;
  aswerToDo = stdin.readLineSync();
  // ignore: omit_local_variable_types
  bool systemRunning = true;
  while (systemRunning) {
    if (aswerToDo == options[1] || aswerToDo == 'leave') {
      print('Program Closed');
      systemRunning = false;
    } else if (aswerToDo == options[0] ||
        aswerToDo == 'calculate' ||
        aswerToDo == options.indexOf('Calculate').toString()) {
      print('What you want to ${options[0]}');
      (grades).map((data) => print(data + '\n')).toList();
      // ignore: omit_local_variable_types
      String calculateAnswer = stdin.readLineSync();
      if (calculateAnswer == grades[0] ||
          calculateAnswer == grades.indexOf('1Q banknote bill').toString()) {
        // ignore: omit_local_variable_types
        double _1test = 0.0;
        // ignore: omit_local_variable_types
        double _2test = 0.0;
        // ignore: omit_local_variable_types
        double _oea = 0.0;
        // ignore: omit_local_variable_types
        double _oeaPercent = 0.2;
        // ignore: omit_local_variable_types
        double _testsPercent = 0.8;
        // ignore: omit_local_variable_types
        double _total = 0.0;
        // ignore: omit_local_variable_types
        String subject = '';

        print('What is the subject do you want to calculate ?');
        subject = stdin.readLineSync();
        print('What is your first mark of $subject ?');
        _1test = double.parse(stdin.readLineSync());
        print('and second ?');
        _2test = double.parse(stdin.readLineSync());
        print('What is your OEA in $subject ?');
        _oea = double.parse(stdin.readLineSync());
        print('Calculing ...');
        _total = ((_1test + _2test) / 2 * _testsPercent) + _oea * _oeaPercent;
        print(
            'Your final mark in $subject is equal to ${_total.toStringAsPrecision(2)}');
        print('=== Thanks ===');
        print('Program Closed');
        systemRunning = false;
      } else if (calculateAnswer == grades[1] ||
          calculateAnswer ==
              grades.indexOf('bill of the year grades').toString()) {
        print('No available yet');
        print('Program Closed');
        systemRunning = false;
      } else {
        print('It doens\'t exist');
        print('Program Closed');
        systemRunning = false;
      }
    } else {
      print('Choose what you see above | ${options[0]} or ${options[1]}');
      print('Program Closed');
      systemRunning = false;
    }
  }
}
