module Api
  module V1
    class SkillsController < ApplicationController

        def index 
          character = Character.all 
          skill = Skill.all

          skill = Skill.all
          render json: {status: 'SUCCESS', message:'Loaded skills', data:skill},status: :ok
        end
  
        def show
          @skill = Skill.find(params[:id])
          render :show, status: :ok

          # render json: {status: 'SUCCESS', message:'Loaded skill', data:skill},status: :ok
        end
  
        # ---no use for it so far---
        # def edit
        # end
  
        def create
          skill = Skill.new(skill_params)
  
          if skill.save
            render json: {status: 'SUCCESS', message:'Saved skill', data:skill},status: :ok
          else
            render json: {status: 'ERROR', message:'Skill not saved', data:skill.errors},status: :unprocessable_entity
          end
        end
  
        def update
          skill = Skill.find(params[:id])
          if skill.update_attributes(skill_params)
            render json: {status: 'SUCCESS', message:'Updated skill', data:skill},status: :ok
          else
            render json: {status: 'ERROR', message:'Skill not updated', data:skill.errors},status: :unprocessable_entity
          end
        end
  
  
        def destroy
          skill = Skill.find(params[:id])
          skill.destroy
          render json: {status: 'SUCCESS', message:'Deleted skill', data:skill},status: :ok
        end
  
        private
  
        def skill_params
          params.permit(:stat)
        end
  
      end
    end
  end
  
  
  
  
  