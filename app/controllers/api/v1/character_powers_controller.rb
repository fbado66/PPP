

  module Api
    module V1
      class CharacterPowersController < ApplicationController
        def index
          @characterPower = CharacterPower.all
          render json: {status: 'SUCCESS', message:'Loaded characters_powers', data:characterPower},status: :ok
        end

        def show
          @characterPower = CharacterPower.find(params[:id])
        end

  
        def create
          characterPower = CharacterPower.new(character_power_params)
  
          if characterPower.save
            render json: {status: 'SUCCESS', message:'Saved character_power', data:characterPower},status: :ok
          else
            render json: {status: 'ERROR', message:'Character_Powers not saved', data:characterPower.errors},status: :unprocessable_entity
          end
        end
  
        def update
          characterPower = CharacterPower.find(params[:id])
          if characterPower.update_attributes(character_power_params)
            render json: {status: 'SUCCESS', message:'Updated character', data:characterPower},status: :ok
          else
            render json: {status: 'ERROR', message:'Character not updated', data:characterPower.errors},status: :unprocessable_entity
          end
        end
  
  
        def destroy
          characterPower = CharacterPower.find(params[:id])
          characterPower.destroy
          render json: {status: 'SUCCESS', message:'Deleted character_powers', data:characterPower},status: :ok
        end
  
        private
  
        def character_power_params
          params.permit(:character_id, :power_id)
        end
  
      end
    end
  end
  
  
  
