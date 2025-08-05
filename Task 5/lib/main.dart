void main() {
  StudentManger manger = StudentManger();
  Student A = Student(1, "Ahmed", 11, [1, 2, 3, 4]);
  Student b = Student(2, "Fathi", 21, []);
  Student c = Student(3, "Magde", 11, [11, 44, 55]);

  manger.addStudent = A;
  manger.addStudent = b;
  manger.addStudent = c;
  var res = manger.viewAllStudent;
  manger.display(res);

  manger.findStudentByid(3);
  print(A.calcluteAverage());
  print(b.calcluteAverage());
  print(c.calcluteAverage());

  manger.removeStudentByid(1);

  res = manger.viewAllStudent;
  manger.display(res);
}

class Student {
  int? id;
  String? name;
  int? age;
  List<double> grades = [];

  Student(this.id, this.name, this.age, this.grades);

  double calcluteAverage() {
    double avg = 0.0;
    grades.forEach((value) {
      avg += value;
    });
    return avg;
  }
}

class StudentManger {
  List<Student> _student = [];

  set addStudent(Student student) {
    this._student.add(student);
  }

  get viewAllStudent => _student;

  void findStudentByid(int id) {
    _student.forEach((object) {
      if (object.id == id) {
        print(
          " id  = ${object.id} Name =  ${object.name} age =  ${object.age} grades = ${object.calcluteAverage()}",
        );
        return;
      }
    });
  }

  void removeStudentByid(int id) {
    int i = 0;
    while (i < _student.length) {
      if (_student[i].id == id) {
        _student.removeAt(i);
        return;
      }
      i++;
    }
  }

  void display(List res) {
    res.forEach((result) {
      print(
        "ID: ${result.id}, Name: ${result.name}, Age: ${result.age}, Avg: ${result.calcluteAverage()}",
      );
    });
  }
}
