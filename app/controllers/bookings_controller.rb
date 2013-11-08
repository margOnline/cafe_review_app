class BookingsController < ApplicationController
  respond_to :html, :xml, :json
  
  before_action :find_table
  before_action :find_cafe

  def index
    @bookings = Booking.where("table_id = ? AND end_time >= ?", @table.id, Time.now).order(:start_time)
    respond_with @bookings
  end

  def new
    @booking = Booking.new(table_id: @table.id)
  end


  def create
    @booking =  Booking.new(params[:booking].permit(:table_id, :start_time, :length))
    @booking.table = @table
    if @booking.save
      redirect_to cafe_table_bookings_path(@cafe, @table, method: :get)
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id]).destroy
    if @booking.destroy
      flash[:notice] = "Booking: #{@booking.start_time.strftime('%e %b %Y %H:%M%p')} to #{@booking.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to cafe_table_bookings_path(@table)
    else
      render 'index'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])

    if @booking.update(params[:booking].permit(:table_id, :start_time, :length))
      flash[:notice] = 'Your booking was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to cafe_table_bookings_path(@cafe, @table)
      end
    else
      render 'edit'
    end
  end

  private

  def save booking
    if @booking.save
        flash[:notice] = 'booking added'
        redirect_to cafe_table_booking_path(@table, @booking)
      else
        render 'new'
      end
  end

  def find_table
    if params[:table_id]
      @table = Table.find_by_id(params[:table_id])
    end
  end

  def find_cafe
    if params[:cafe_id]
      @cafe = Cafe.find_by_id(params[:cafe_id])
    end
  end

end
