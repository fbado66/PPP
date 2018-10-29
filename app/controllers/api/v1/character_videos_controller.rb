
module Api
  module V1

    class CharacterVideosController < ApplicationController
  
      def index
       @characterVideo = CharacterVideo.all
                render json: {status: 'SUCCESS', message:'Loaded characters_videos', data:characterVideo},status: :ok
              end
        
              def show
                @characterVideo = CharacterVideo.find(params[:id])
              end
        
              def create
                characterVideo = CharacterVideo.new(character_video_params)
        
                if characterVideo.save
                  render json: {status: 'SUCCESS', message:'Saved character_video', data:characterVideo},status: :ok
                else
                  render json: {status: 'ERROR', message:'Character_Videos not saved', data:characterVideo.errors},status: :unprocessable_entity
                end
              end
        
              def update
                characterVideo = CharacterVideo.find(params[:id])
                if characterVideo.update_attributes(character_video_params)
                  render json: {status: 'SUCCESS', message:'Updated video', data:characterVideo},status: :ok
                else
                  render json: {status: 'ERROR', message:'Video not updated', data:characterVideo.errors},status: :unprocessable_entity
                end
              end
        
        
              def destroy
                characterVideo = CharacterVideo.find(params[:id])
                characterVideo.destroy
                render json: {status: 'SUCCESS', message:'Deleted character_videos', data:characterVideo},status: :ok
              end
        
              private
        
              def character_video_params
                params.permit(:character_id, :video_id)
              end
        
            end
          end
        end
        
        
        
        
        
        
   
      @character = Character.all
      end

      def show
        @character = Character.find(params[:id])
        @character.skills
        render :show, status: :ok


        # render json: {status: 'SUCCESS', message:'Loaded show character', data:character},status: :ok 
      end 

      # ---no use for it so far---
      # def edit
      # end

      def create
        @character = Character.new(character_params)

        if character.save
          render :create, status: :ok

         render json: {status: 'SUCCESS', message:'Saved character', data:character},status: :ok
        else
          render json: {status: 'ERROR', message:'Character not saved', data:character.errors},status: :unprocessable_entity
        end
      end

      def update
        character = Character.find(params[:id])
        if character.update_attributes(character_params)
          render json: {status: 'SUCCESS', message:'Updated character', data:character},status: :ok
        else
          render json: {status: 'ERROR', message:'Character not updated', data:character.errors},status: :unprocessable_entity
        end
      end


      def destroy
        character = Character.find(params[:id])
        character.destroy
        render json: {status: 'SUCCESS', message:'Deleted character', data:character},status: :ok
      end

      private

      def character_params
        params.permit(:name, :gender, :equipment, :squad)
      end

    end
  end
end




