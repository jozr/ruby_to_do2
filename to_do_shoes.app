# to_do_shoes.app

Shoes.app do
  stack(margin: 20) do
   @back  = background magenta
   @back.style height: 10

   @title  = banner "Peggy's To Do Lists"
   @title.style  size: 20, stroke: darkblue, margin: 20

    stack margin_left: 5, margin_right: 10, width: 1.0, height: 200, scroll: true do
      background white
      border blue, strokewidth: 3
      @gui_todo = para
    end

   flow margin-top: 200 do
     @press = button "Add List"
    #  edit_line width: 200, height: 30
     @press = button "Edit List"
     @press = button "Delete List"
   end

   @press = button "Add Task"
   edit_line width: 200, height: 30

   para "Choose a task priority:"
    flow do
      radio; para strong("1=highest")
      radio; para strong("2")
      radio; para strong("3")
      radio; para strong("4")
      radio; para strong("5=lowest")
    end

   flow do
     @press = button "Edit Task"
     @press = button "Delete Task"
   end

   @press = button "Sort Tasks"
  end
end


