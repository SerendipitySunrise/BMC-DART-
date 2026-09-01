import 'dart:io';

List<Map<String,dynamic>> Students = [];
next_id = 1;

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
        "Name": name,
        "Course": course,
        "Year Level": yearLevel
    });
    print("Student Added Successfully ");
    
}

void viewStudents(){
    print("======View Students======");

    if (Students.isEmpty){
        print("No records found");
    }

    for (int i = 0; i < Students.length; i++){
        var student = Students[i];

        print("Name: ${student["Name"]}");
        print("Course: ${student["Course"]}");
        print("Year Level: ${student["Year Level"]}\n");
        print("=====================\n")

    }
}

void updateStudent(){
    print("======Update Student Info======");

    search student();
}

void deleteStudent(){
    print("======Delete Student======");
}

void searchStudent

//ASSIGNMENT
//update
//delete
//next_id=1
//searching student by ID
//DRY - DONT REPEAT YOURSELF
