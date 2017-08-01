class MilestonesController < ApplicationController

  def create
    #@task = Task.find(params[:task_id])
    #@milestone = @task.milestones.create(milestone_params)
    # redirect_to task_path(@task)
    @milestone = Milestone.new(product_type_id: params[:product_type_id])
  end

  def destroy
    @task = Task.find(params[:task_id])
    @milestone = @task.milestones.find(params[:id])
    @milestone.destroy
    # redirect_to article_path(@article)
  end

 private
   def milestone_params
     params.require(:milestone).permit(:description)
   end

end
