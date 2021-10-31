import 'person.dart';

class Student extends Person{
  int? _mark;
  String? _grade;

 Student({id, name}) : super(id: id, name: name);
 void setMark(int? mark)=> _mark=mark;
 void setGrade(String? garde)=> _grade=garde;

 int getMark() => _mark!;
 String getGrade() => _grade!;

 @override
  void display() {
    print("Sinh viên : $name , ${super.getAge()} tuổi,điểm: $_mark, lớp: $_grade ");
  }
}