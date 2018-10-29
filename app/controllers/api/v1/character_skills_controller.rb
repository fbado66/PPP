module Api
  module V1
    class CharacterSkillsController < ApplicationController
      def index
        @characterSkill = CharacterSkill.all
        render json: {status: 'SUCCESS', message:'Loaded characters_skills', data:characterSkill},status: :ok
      end

      def show
        @characterSkill = CharacterSkill.find(params[:id])
      end

      # ---no use for it so far---
      # def edit
      # end

      def create
        characterSkill = CharacterSkill.new(character_skill_params)

        if characterSkill.save
          render json: {status: 'SUCCESS', message:'Saved character_skill', data:characterSkill},status: :ok
        else
          render json: {status: 'ERROR', message:'Character_Skills not saved', data:characterSkill.errors},status: :unprocessable_entity
        end
      end

      def update
        characterSkill = CharacterSkill.find(params[:id])
        if characterSkill.update_attributes(character_skill_params)
          render json: {status: 'SUCCESS', message:'Updated character', data:characterSkill},status: :ok
        else
          render json: {status: 'ERROR', message:'Character not updated', data:characterSkill.errors},status: :unprocessable_entity
        end
      end


      def destroy
        characterSkill = CharacterSkill.find(params[:id])
        characterSkill.destroy
        render json: {status: 'SUCCESS', message:'Deleted character_skills', data:characterSkill},status: :ok
      end

      private

      def character_skill_params
        params.permit(:character_id, :skill_id)
      end

    end
  end
end





