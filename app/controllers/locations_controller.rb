class LocationsController < ApplicationController
  # GET /locations
  # GET /locations.xml
  
  def show_all_links
    @locations = Location.all
    
  end
  
  def index
    @locations = Location.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locations }
    end
  end

  # GET /locations/1
  # GET /locations/1.xml
  def show
    @location = Location.find(params[:id])
    #@links = Link.find(:all, :order => :name)
    @links = @location.links
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/new
  # GET /locations/new.xml
  def new
    @location = Location.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.xml
  def create
    @location = Location.new(params[:location])

    respond_to do |format|
      if @location.save
        format.html { redirect_to(@location, :notice => 'Location was successfully created.') }
        format.xml  { render :xml => @location, :status => :created, :location => @location }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /locations/1
  # PUT /locations/1.xml
  def update
    @location = Location.find(params[:id])

    respond_to do |format|
      if @location.update_attributes(params[:location])
        format.html { redirect_to(@location, :notice => 'Location was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @location.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.xml
  def destroy
    @location = Location.find(params[:id])
    @location.destroy

    respond_to do |format|
      format.html { redirect_to(locations_url) }
      format.xml  { head :ok }
    end
  end
  
  def upload
    d = Location.new
    unless params[:location].nil?
      post = d.upload(params[:location])
    end
    #redirect_to :action => :show, :id => params[:id]
    redirect_to :action => :index
  end
  
  def download
    data_id = params[:id]
    # Extra security or stupid idea?
    file = Location.first(:conditions => { :id => data_id })
    redirect_to file.download
  end
  
  def links_form
    render :partial => "links_form",
           :locals => {:id => params[:id]}
  end
  def new_link
    link = Link.create(:name => params[:name], :lat => params[:lat], :long => params[:long], :radius => params[:radius])
    loc = Location.find(params[:id])
    loc.links << link unless loc.links.include?(link)
    redirect_to :back
  end
  
  def links_dropdown
    links = Link.find(:all, options = {:order => 'name'})
    render :partial => "links_dropdown",
           :locals => {:id => params[:id], :links => links} 
  end
  
  def add_links
    location = Location.find params[:id]
    @link_ids = params[:links_id]
    #raise @contact_ids
    @link_ids.each do | link |
      link = Link.find link
      location.links << link unless location.links.include?(link)
    end
    
    redirect_to :back
  end
  
  def remove_link   
    location = Location.find params[:id]
    link = Link.find params[:link_id]
    location.links.delete(link)
    
    redirect_to :back
  end
end
