require('sinatra')
require('sinatra/reloader')
require('./lib/to_do')
also_reload('lib/**/*.rb')

get('/') do
  @tasks = Task.all()
  erb(:index)
end


post ('/task') do
  description = params.fetch("task_input")
  new_task = Task.new(description)
  new_task.save()
  @result = "your task has been saved"
  erb(:results)
end
