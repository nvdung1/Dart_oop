import 'student.dart';
void showInfoOfStudent(List<Student> student){
  Student temp;
  for(int i= 0; i<student.length-1 ;i++){
    for (int j = i + 1; j <student.length ; j++) {
      if(student[i].getMark() < student[j].getMark()){
          temp= student[i];
          student[i]=student[j];
          student[j]=temp;
       }
    }
  }
  for(int i= 0; i<student.length ;i++){
      print("thứ hạng:${(i+1)}");
      student[i].display();
      
  }
}
void main(List<String> arguments) {
    Student sv1 = Student(id: "1",name: "hoàng");
  sv1.setAge( 20);
  sv1.setGrade("60HT");
  sv1.setMark(8);
  Student sv2 = Student(id: "2", name: "Quang");
  sv2.setAge(20);
  sv2.setGrade( "60HT");
  sv2.setMark(9);
  Student sv3 = Student(id: "2", name: "Ngọc");
  sv3.setAge(20);
  sv3.setGrade("60HT");
  sv3.setMark(3);
  List<Student> ht= [sv1,sv2,sv3];
  showInfoOfStudent(ht);
}
