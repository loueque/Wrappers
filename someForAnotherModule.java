import java.util.Random; // Ignore this...

class Student {

    String name;
    int grade;

    public Student setName(String name) {
        this.name = name;
        return this;
    }

    public Student setGrade(int grade) {
        this.grade = grade;
        return this;
    }
}

class GetStudent {

    String name;
    int grade;

    public GetStudent getName(String name) {
        return this;
    }

    public GetStudent getGrade(int grade) {
        return this;
    }
}

public class School {
    
    public static void schoolHouse() {
        
        Student stud = new Student();
        GetStudent getstud = new GetStudent();
        Random rng = new Random();

        String[] school_students = {"John", "Mary", "Duke", "Ben", "Billy", "Mandy"};
        int[] school_grades = {98, 100, 87, 88, 91, 75, 93, 69, 95, 79, 82};

        stud.setGrade(98).setName("Billy");
        stud.setGrade(88).setName("John");
        getstud.getName("Billy");
        getstud.getGrade(22);

        System.out.println(school_students);
        System.err.println(school_grades);

        System.out.println(rng.getClass());

    }

}
