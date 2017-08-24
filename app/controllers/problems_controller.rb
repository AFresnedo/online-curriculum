class ProblemsController < ApplicationController

  def index
    @problems = Problem.all.paginate(page: params[:page])
  end

  def show
    @problem = Problem.find(params[:id])
    @answer = @problem.answer
    @solutions = @problem.solutions
    @hints = []
    @solutions.each do |solution|
      @hints.push(solution.hints)
    end
    @metadata = @problem.metadata
  end

  def edit
    @problem = Problem.find(params[:id])
  end
end
