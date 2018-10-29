module Api
  module V1

      class VideosController < ApplicationController

        def index 
          video = Video.all 
          render json: {status: 'SUCCESS', message:'Loaded videos', data:video},status: :ok
        end
  
        def show
          @video = Video.find(params[:id])
          render :show, status: :ok
        end
  
  
        def create
          video = Video.new(video_params)
  
          if video.save
            render json: {status: 'SUCCESS', message:'Saved video', data:video},status: :ok
          else
            render json: {status: 'ERROR', message:'Video not saved', data:video.errors},status: :unprocessable_entity
          end
        end
  
        def update
          video = Video.find(params[:id])
          if video.update_attributes(video_params)
            render json: {status: 'SUCCESS', message:'Updated video', data:video},status: :ok
          else
            render json: {status: 'ERROR', message:'Video not updated', data:video.errors},status: :unprocessable_entity
          end
        end
  
  
        def destroy
          video = Video.find(params[:id])
          video.destroy
          render json: {status: 'SUCCESS', message:'Deleted video', data:video},status: :ok
        end
  
        private
  
        def video_params
          params.permit(:video_url)
        end
  
      end
    end
  end
  
  
  
  
  