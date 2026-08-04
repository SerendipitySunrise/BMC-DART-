import 'dart:io';

List<Map<String,dynamic>> students =[];
void main(){

String? choice;
do {
print("=====================================");
print("     STUDENT INFORMATION SYSTEM      ");
print("=====================================");

print("0. SEARCH STUDENT");
print("1. ADD STUDENT");
print("2. VIEW STUDENT LIST");
print("3. UPDATE STUDENT INFO");
print("4. DELETE STUDENT INFO");
print("5. COMPUTE CLASS AVERAGE");
print("6. DISPLAY STUDENT WITH HIGHEST GRADE");
print("7. DISPLAY STUDENT WITH LOWEST GRADE");
print("8. EXIT");

print("");


stdout.write("Enter your number choice: ");
choice = stdin.readLineSync();
print("Choice: $choice");


switch (choice) {

  case "0": searchStudent();
  break;

  case "1": addStudent();
  break;

  case "2": viewStudentList();
  break;

  case "3": updateStudentInfo();
  break;

  case "4": deleteStudentInfo();
  break;

  case "5": computeClassAverage();
  break;

  case "6": displayStudentWithHighestGrade();
  break;

  case "7": displayStudentWithLowestGrade();
  break;

  case "8": print("EXITING PROGRAM");
  break;

  default:
  print("INVALID INPUT");
}


} while (choice != "8");
}

void searchStudent() {
  bool found = false;

  stdout.write("Enter your name: ");
  String? studentName = stdin.readLineSync();

  for (var student in students) {
    if (student['name'] == studentName) {
      found = true;
      print("Student Information:");
      print("Name: ${student['name']}");
      print("Age: ${student['age']}");
      print("Course: ${student['course']}");
      print("GWA: ${student['gwa']}");
      print("Status: ${student['status']}");
      return;
    }
  }

  if (!found) {
    print("Student not found.");
  }
}

void addStudent(){
stdout.write("Enter your name: ");
String? name = stdin.readLineSync();

stdout.write("Enter your age: ");
int? age = int.parse(stdin.readLineSync()!);

stdout.write("Enter your Course: ");
String? course = stdin.readLineSync();

stdout.write("Enter your GWA: ");
double? gwa = double.parse(stdin.readLineSync()!);

var status = "";


if (gwa <=1.75) {
status = "Excellent";
} else if (gwa <=2.75) {
status = "Very Good";
} else if (gwa == 3.0) {
status = "Passed";
}else if (gwa == 5.0) {
status = "Probation";
} else {
status = "Invalid Grade";
}

students.add({
    "name": name,
    "age": age,
    "course": course,
    "gwa": gwa,
    "status": status 

});
print("Student added successfully");

}

void viewStudentList(){
  print("STUDENT LIST");
  if (students.isEmpty) {
      print("No students found.");
      return;
  } else {
      print("List of Students:");
    }

  for (var student in students) {
    print("Name: ${student['name']}");
  }
}

void updateStudentInfo() {
  bool found =  false;

  stdout.write("Enter your name: ");
  String? studentName = stdin.readLineSync();

   for (var student in students) {
  

    if (student['name'] == studentName) {
      found = true;

      stdout.write("Enter your age: ");
      int? age = int.parse(stdin.readLineSync()!);

      stdout.write("Enter your Course: ");
      String? course = stdin.readLineSync();

      stdout.write("Enter your GWA: ");
      double? gwa = double.parse(stdin.readLineSync()!);

      var status = "";


      if (gwa <=1.75) {
      status = "Excellent";
      } else if (gwa <=2.75) {
      status = "Very Good";
      } else if (gwa == 3.0) {
      status = "Passed";
      }else if (gwa == 5.0) {
      status = "Probation";
      } else {
      status = "Invalid Grade";
      }

            student['age'] = age;
            student['course'] = course;
            student['gwa'] = gwa;
            student['status'] = status;

            print("Student information updated successfully.");
            return;
          }
        }
        if (!found) {
        print("Student not found.");
    }
}

void deleteStudentInfo() {
  bool found =  false;

  stdout.write("Enter your name: ");
  String? studentName = stdin.readLineSync();

   for (var student in students) {
  

    if (student['name'] == studentName) {
      found = true;
      students.remove(student);
      print("Student deleted successfully.");
      return;
    }
  }

  if (!found) {
    print("Student not found.");
  }
}

void computeClassAverage () {
  if (students.isEmpty) {
    print("No students found.");
  }
  else {
    double totalGWA = 0;
    double averageGWA = 0;

    for (var student in students) {
      totalGWA += student['gwa'];
      
      averageGWA = totalGWA / students.length;
    }

    print("Class Average GWA: $averageGWA");
  }

}

void displayStudentWithHighestGrade() {
  if (students.isEmpty) {
    print("No students found.");
  } else {
    var highestGWAStudent = students[0];

    for (var student in students) {
      if (student['gwa'] < highestGWAStudent['gwa']) {
        highestGWAStudent = student;
      }
    }

    print("Student with Highest Grade:");
    print("Name: ${highestGWAStudent['name']}");
    print("Age: ${highestGWAStudent['age']}");
    print("Course: ${highestGWAStudent['course']}");
    print("GWA: ${highestGWAStudent['gwa']}");
    print("Status: ${highestGWAStudent['status']}");
  }
}

void displayStudentWithLowestGrade() {
  if (students.isEmpty) {
    print("No students found.");
  } else {
    var lowestGWAStudent = students[0];

    for (var student in students) {
      if (student['gwa'] > lowestGWAStudent['gwa']) {
        lowestGWAStudent = student;
      }
    }

    print("Student with Lowest Grade:");
    print("Name: ${lowestGWAStudent['name']}");
    print("Age: ${lowestGWAStudent['age']}");
    print("Course: ${lowestGWAStudent['course']}");
    print("GWA: ${lowestGWAStudent['gwa']}");
    print("Status: ${lowestGWAStudent['status']}");
  }
}

// DO-WHILE
// LIST, MAP
// IF, switch
// FOR LOOP
