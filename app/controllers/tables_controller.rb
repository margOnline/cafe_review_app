class TablesController < ApplicationController

  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
  end

  def create
    @table = Table.create(table_params)
    if @table.save
      name = @table.name
      redirect_to tables_path
      flash[:notice] = "#{name} created"
    else
      render 'new'
      flash[:error] = "Unable to create table. Please try again"
    end
  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    redirect_to tables_path
  end

  def edit
    @table = Table.find(params[:id])
  end

  def update
    @table = Table.find(params[:id])
    @table.update table_params
    if @table.save
      flash[:notice] = "Your table was updated succesfully"
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

    def table_params
      params.require(:table).permit(:name, :delete)
    end

end
