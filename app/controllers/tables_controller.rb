class TablesController < ApplicationController

  before_action :find_cafe

  def index
    @tables = Table.all.where(:cafe_id => @cafe.id)
  end

  def new
    @table = Table.new(:cafe_id => @cafe.id)
  end

  def create
    @table = Table.new(params[:table].permit(:cafe_id, :name))
    @table.cafe = @cafe
    name = @table.name
    if @table.save
      redirect_to cafe_tables_path
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create table. Please try again"
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to cafe_tables_path
  end

  def edit
    @table = Table.find(params[:id])
  end

  def update
    @table = Table.find(params[:id])
    @table.update cafe_table_params
    if @table.save
      flash[:notice] = "Your table was updated succesfully"
      redirect_to @cafe
    else
      render 'edit'
    end
  end

  private

    def table_params
      params.require(:table).permit(:name, :delete)
    end

    def find_cafe
      if params[:cafe_id]
        @cafe = Cafe.find_by_id(params[:cafe_id])
      end
  end

end
