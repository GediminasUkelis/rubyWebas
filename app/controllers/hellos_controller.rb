class HellosController < ApplicationController
    def index
        @hellos = Hello.all
    end

    def show
        @hellos = Hello.find(params[:id])    
    end

    def new
        @hellos = Hello.new
    end

    def create
        @hello = Hello.new(product_params)
        if @hello.save
            redirect_to hellos_path
        else
            render :new
        end
    end

    def edit
        @hellos = Hello.find(params[:id])
    end

    def update
        @hello = Hello.find(params[:id])
        if @hello.update(product_params)
            redirect_to hellos_path
        else
            render :endit
        end 
    end

    def destroy
        @hello = Hello.find(params[:id])
        @hello.destroy
        redirect_to hellos_path
    end

    private
    def product_params
        params.require(:hello).permit(:name, :description, :price)
    end
end
