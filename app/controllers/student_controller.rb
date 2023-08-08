
class StudentController < ApplicationController
    
  include AuthenticationConcern

    def getStudentById
        begin
          student = Student.find(params[:id])
          render json: {
            success: true,
            message: "Student found",
            student: student
          }, status: 200
        rescue ActiveRecord::RecordNotFound
          render json: {
            success: false,
            message: "Student not found",
          }, status: 404
        rescue StandardError => error
          render json: {
            success: false,
            message: "Error while fetching student",
            error: error.message
          }, status: 500
        end
      end




    def getStudents
        begin
          students = Student.all
          render json: {
            success: true,
            message: "Students fetched successfully",
            data: students
          }, status: 200
        rescue StandardError => error
          render json: {
            success: false,
            message: "Error while fetching students",
            error: error.message
          }, status: 500
        end
      end



      

    def addStudent
        begin
          student = Student.new(name: params[:name], age: params[:age])
          if student.save
            render json: {
              success: true,
              message: "Student added successfully",
              data: student
            }, status: 200
          else
            render json: {
              success: false,
              message: "Failed to add student",
              errors: student.errors.full_messages
            }, status: 500
          end
        rescue StandardError => error
          render json: {
            success: false,
            message: "Error while adding student",
            error: error.message
          }, status: 500
        end
    end
    
    
    def testMethod
        data = 5
        begin
          if data == 5
            render json: {
              success: true,
              message: "perfectly done",
              data: data
            }, status: 200
          else
            render json: {
              success: false,
              message: "failed"
            }, status: 500
          end
        rescue StandardError => error
          render json: {
            success: false,
            message: "Error while getting single product",
            error: error.message
          }, status: 500
        end
    end













end
