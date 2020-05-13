class School
   attr_accessor :name, :roster
   
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @student_name = name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << name
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |key, value|
      value.sort!
    end
  end
end

school = School.new
school.add_student("Zach Morris", 9)
school.roster
