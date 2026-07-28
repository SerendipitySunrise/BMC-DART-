import 'dart:io';

List<Map<String,dynamic>> students =[];
void main(){

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
String? choice = stdin.readLineSync();
print("Choice: $choice");

switch (choice) {

case "0":
print("SEARCH STUDENT");
break;

case "1": addStudent();
break;

case "2":
print("VIEW STUDENT LIST");
break;

case "3":
print("UPDATE STUDENT INFO");
break;

case "4":
print("DELETE STUDENT INFO");
break;

default:
print("INVALID INPUT");
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
print("Excellent");
} else if (gwa <=2.75) {
print("Very Good");
} else if (gwa == 3.0) {
print("Passed");
}else if (gwa == 5.0) {
print("Probation");
} else {
print("Invalid Grade");
}

students.add({
    "name": name,
    "age": age,
    "course": course,
    "status": status 

});
print("Student added successfully");

}

// DO-WHILE
// LIST, MAP
// IF, switch
// FOR LOOP

