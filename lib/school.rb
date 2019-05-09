# code here!

class School 
  attr_accessor :roster, :name
  
  def initialize(name)
    @roster = {}
    @name = name
  end
  
  def add_student(student_name, grade)
    if @roster[grade]
      @roster[grade] << student_name
    else
      @roster[grade] = []
      @roster[grade] << student_name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
 def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
  end
    sorted
  end
end

