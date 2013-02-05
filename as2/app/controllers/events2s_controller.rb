class Events2sController < ApplicationController
  # GET /events2s
  # GET /events2s.json
  def index
    @events2s = Events2.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events2s }
    end
  end

  # GET /events2s/1
  # GET /events2s/1.json
  def show
    @events2 = Events2.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @events2 }
    end
  end

  # GET /events2s/new
  # GET /events2s/new.json
  def new
    @events2 = Events2.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @events2 }
    end
  end

  # GET /events2s/1/edit
  def edit
    @events2 = Events2.find(params[:id])
  end

  # POST /events2s
  # POST /events2s.json
  def create
    @events2 = Events2.new(params[:events2])

    respond_to do |format|
      if @events2.save
        format.html { redirect_to @events2, notice: 'Events2 was successfully created.' }
        format.json { render json: @events2, status: :created, location: @events2 }
      else
        format.html { render action: "new" }
        format.json { render json: @events2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events2s/1
  # PUT /events2s/1.json
  def update
    @events2 = Events2.find(params[:id])

    respond_to do |format|
      if @events2.update_attributes(params[:events2])
        format.html { redirect_to @events2, notice: 'Events2 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @events2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events2s/1
  # DELETE /events2s/1.json
  def destroy
    @events2 = Events2.find(params[:id])
    @events2.destroy

    respond_to do |format|
      format.html { redirect_to events2s_url }
      format.json { head :no_content }
    end
  end
end
