require('rspec')
require('to_do')

describe(Task) do
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("buy cat food")
      expect(test_task.description()).to(eq("buy cat food"))
    end
  end

  describe(".all") do
    it ("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("Make coffee")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe(".clear") do
    it ("empties out all of saved tasks") do
      Task.new("Make coffee").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end

  describe(Task) do
    before() do
      Task.clear()
    end
  end
end
