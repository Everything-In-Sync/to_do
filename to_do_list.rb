#to do list
loop do#loops the whole program
  puts "Hello!"
  d = Time.now.strftime("%m/%d/%Y %H:%M") #saves current date and time to variable d
  standard_tasks = ["Work out", "Go for a walk","Meditate","Prey","Practice Coding"] #creates an array of standard_tasks
  puts "It is " + d
  puts "Would you like to see your standard daily tasks? (Y/N)"
  answer = gets.chomp!
  answer.downcase
  if answer == "n"
    puts "Okay, maybe next time"
  else
    puts standard_tasks
  end
  puts "What tasks have you completed today?"
  completed_tasks = gets.chomp! #creates a variable for the information being saved to a file
  puts "Your new file is being saved"
  configFile = File.open("completed_tasks.txt", "a") #opens file. "a" adds to file without deleting anything
  configFile.write("#{d}"+"#{completed_tasks}") #writes variable d and completed_taks to file
  configFile.write "\n" #creates a new line in txt file
  configFile.close #closes the file
  puts "file saved."#confirms process was complete without error
  puts "Would you like to read your past entries?(Y/N)"
  answer_2 = gets.chomp!
  answer_2.downcase
  if answer_2 == "n"
    puts "Okay,maybe next time"
  else
    content = File.readlines 'completed_tasks.txt' #reads the current file
content.each_with_index{|line, i| puts "#{i+1}: #{line}"} #prints current file to individual lines
  end
end
