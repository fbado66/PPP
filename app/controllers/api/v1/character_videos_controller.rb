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
        
        
        
        
        
        
   
      
