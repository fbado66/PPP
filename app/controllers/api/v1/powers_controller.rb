

  module Api
    module V1
  
      class PowersController < ApplicationController
  
          def index 
            power = Power.all 
            render json: {status: 'SUCCESS', message:'Loaded powers', data:power},status: :ok
          end
    
          def show
            @power = Power.find(params[:id])
            render :show, status: :ok
          end
    
    
          def create
            power = Power.new(power_params)
    
            if power.save
              render json: {status: 'SUCCESS', message:'Saved power', data:power},status: :ok
            else
              render json: {status: 'ERROR', message:'Video not saved', data:power.errors},status: :unprocessable_entity
            end
          end
    
          def update
            power = Power.find(params[:id])
            if power.update_attributes(power_params)
              render json: {status: 'SUCCESS', message:'Updated power', data:power},status: :ok
            else
              render json: {status: 'ERROR', message:'Video not updated', data:power.errors},status: :unprocessable_entity
            end
          end
    
    
          def destroy
            power = Power.find(params[:id])
            power.destroy
            render json: {status: 'SUCCESS', message:'Deleted power', data:power},status: :ok
          end
    
          private
    
          def power_params
            params.permit(:magic)
          end
    
        end
      end
    end
    
    
    
    
    
