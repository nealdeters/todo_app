class Task
  attr_accessor :name, :complete, :priority

  def initialize(name)
    @name = name
    @complete = false
    @priority = 1
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = !@complete
  end

  # def set_priority(priority)
  #   @priority = priority
  # end
end