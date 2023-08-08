
Rails.application.routes.draw do
  get '/test', to: 'student#testMethod'
  post '/addstudent', to: 'student#addStudent'
  get '/getstudents', to: 'student#getStudents'  # Add this line
  get '/getstudent/:id', to: 'student#getStudentById'  # Add this line
  # You can add more routes for the StudentController here if needed
end
