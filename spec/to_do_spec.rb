require('rspec')
require('to_do')

describe(Task) do
  describe("#description") do
    it("lets you give it a description") do
      test_task = Task.new("buy cat food")
      expect(test_task.description()).to(eq("buy cat food"))
    end
  end
end
