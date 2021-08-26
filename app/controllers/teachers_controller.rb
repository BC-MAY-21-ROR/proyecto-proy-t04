class TeachersController < ApplicationController
    
    def index
        @teachers = summary_matches()
    end

    def profile
        @teacher = Teacher.find(params[:id])

    end

    def summary_matches
        teachers = []
        
        Teacher.all.each do |teacher|
            if teacher.summary.include? params[:summary]
                teachers.push( teacher )
            end
        end

        return teachers
    end

end
