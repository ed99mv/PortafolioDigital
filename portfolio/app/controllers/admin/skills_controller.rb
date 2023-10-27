class Admin::SkillsController < ApplicationController
    # def index
    #     @skills = Skill.all
    #     render index:
    # end

    def new
        @skill = Skill.new
    end 

    def create
        @skill = Skill.new(skill_params)
        if @skill.save
     
          redirect_to '/admin/skills'
        else
          render :new, status: :unprocessable_entity
        end
    end

    def edit
        @skill = Skill.find(params[:id])
    end

    def update
        @skill = Skill.find(params[:id])
        if @skill.update(skill_params)
   
          redirect_to '/admin/skills'
        else
          render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @skill = Skill.find(params[:id])
        @skill.destroy
        flash[:notice] = "Skill deleted"
        redirect_to admin_skills_path
    end

      private 
      def skill_params
        params.require(:skill).permit( :Description, :Skill_type_id)
      end
end