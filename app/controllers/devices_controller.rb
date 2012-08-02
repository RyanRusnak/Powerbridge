class DevicesController < ApplicationController
  # GET /devices
  # GET /devices.json
  
  # skip_before_filter :verify_authenticity_token, :except => [:update, :create]
  #   skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  skip_before_filter  :verify_authenticity_token
  
  def index
    @devices = Device.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @devices }
    end
  end

  # GET /devices/1
  # GET /devices/1.json
  def show
    @device = Device.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @device }
    end
  end

  # GET /devices/new
  # GET /devices/new.json
  def new
    @customer = Customer.find(params[:customer_id])
    @device = @customer.devices.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @device }
    end
  end

  # GET /devices/1/edit
  def edit
    @customer = Customer.find(params[:customer_id])
    @device = @customer.devices.find(params[:id])
  end

  # POST /devices
  # POST /devices.json
  def create
    @customer = Customer.find(params[:customer_id])
    @device = @customer.devices.new(params[:device])

    respond_to do |format|
      if @device.save
        format.html { redirect_to([@customer,@device], :notice => 'Device was successfully updated.') }
        format.json { render :json => @device, :status => :created, :location => @device }
      else
        format.html { render :action => "new" }
        format.json { render :json => @device.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /devices/1
  # PUT /devices/1.json
  def update
    @customer = Customer.find(params[:customer_id])
    @device = @customer.devices.find(params[:id])

    respond_to do |format|
      if @device.update_attributes(params[:device])
        format.html { redirect_to([@customer,@device], :notice => 'Device was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @device.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /devices/1
  # DELETE /devices/1.json
  def destroy
    @device = Device.find(params[:id])
    @device.destroy

    respond_to do |format|
      format.html { redirect_to(customer_path(@device.customer_id)) }
      format.json { head :no_content }
    end
  end
end
