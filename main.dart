import 'dart:io';

List<Map<String,dynamic>> Students = [];

int next_id = 1;

void main(){
    while(true){
        print("=================================");
        print("    Student Information System   ");
        print("=================================");
        print("1. Add Student");
        print("2. View Students");
        print("3. Update Student Info");
        print("4. Delete Student");
        print("5. Exit");
        print("=================================");

        stdout.write("Please enter a number:  ");
        int? choice = int.parse(stdin.readLineSync()!);

        switch(choice){
            case 1: addStudent();
            break;

            case 2: viewStudents();
            break;

            case 3: updateStudent();
            break;

            case 4: deleteStudent();
            break;

            case 5: 
            print("Exiting Program");
            return;

            default: 
            print("Invalid Choice");
        }
    }

}

void addStudent(){
    print("======Add Student======");
    stdout.write("Please enter your Name:  ");
    String name = stdin.readLineSync()!;

    stdout.write("Please enter your Course:  ");
    String course = stdin.readLineSync()!;

    stdout.write("Please enter your Year Level:  ");
    String yearLevel = stdin.readLineSync()!;

    Students.add({
        "ID": next_id,
        "Name": name,
        "Course": course,
        "Year Level": yearLevel
    });

    next_id++;
  
    print("Student Added Successfully ");
    
}

void viewStudents(){
    print("======View Students======");

    if (Students.isEmpty){
        print("No records found");
      return;
    }

    for (int i = 0; i < Students.length; i++){
        var student = Students[i];

        print("ID: ${student["ID"]}");
        print("Name: ${student["Name"]}");
        print("Course: ${student["Course"]}");
        print("Year Level: ${student["Year Level"]}");
        print("===================== \n");

    }
}


Map<String, dynamic>? searchStudent() {
    
    stdout.write("Enter student ID: ");
    int id = int.parse(stdin.readLineSync()!);

    for (int i = 0; i < Students.length; i++) {
      if (Students[i]["ID"] == id) {
        return Students[i];
      }
    }
    return null;
  }

void updateStudent(){
    print("======Update Student Info======");
  
    if (Students.isEmpty) {
      print("No records found.");
      return;
    }
  
    var student = searchStudent();
  
      if (student == null) {
        print("Student not found");
        return;
      }

      print("Current Name: ${student["Name"]}");
      print("Current Course: ${student["Course"]}");
      print("Current Year Level: ${student["Year Level"]}\n");
    
      stdout.write("Enter new Name: ");
      String name = stdin.readLineSync()!;
    
      stdout.write("Enter new Course: ");
      String course = stdin.readLineSync()!;
    
      stdout.write("Enter new Year Level: ");
      String yearLevel = stdin.readLineSync()!;
    
      student["Name"] = name;
      student["Course"] = course;
      student["Year Level"] = yearLevel;
    
      print("Student Updated Successfully!");
    }


void deleteStudent(){
    print("======Delete Student======");

    if (Students.isEmpty) {
      print("No records found.");
      return;
    }
  
    var student = searchStudent();
  
      if (student == null) {
        print("Student not found");
        return;
      }

      print("Student Found!");
      print("ID: ${student["ID"]}");
      print("Name: ${student["Name"]}\n");
    
      stdout.write("Are you sure you want to delete? (Y/N): ");
      String answer = stdin.readLineSync()!;
    
      if (answer.toUpperCase() == "Y") {
        Students.remove(student);
    
        print("Student Deleted Successfully!");
      } else {
        print("Delete Cancelled.");
      }
}



//ASSIGNMENT
//update
//delete
//next_id=1
//searching student by ID
//DRY - DONT REPEAT YOURSELF
