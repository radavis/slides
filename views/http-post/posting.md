## POSTing

```
# index.html

<form action="/tasks" method="post">
  <label for="task_name">New Task:</label>
  <input type="text" id="task_name" name="task_name">

  <input type="submit">
</form>
```

```
# server.rb

require "sinatra"

post "/tasks" do
  # Read the input from the form the user filled out
  task = params["task_name"]

  # Open the "tasks" file and append the task
  File.open("tasks.txt", "a") do |file|
    file.puts(task)
  end

  # Send the user back to the home page which shows
  # the list of tasks
  redirect "/tasks"
end
```
