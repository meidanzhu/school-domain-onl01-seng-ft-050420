class School
  attr_accessor :name, :roster

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def add_student(student, grade)
    if roster[grade] != nil
      roster[grade] << student
    else
      roster[grade] = []
      roster[grade] << student
    end
  end

  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end
  end

end
