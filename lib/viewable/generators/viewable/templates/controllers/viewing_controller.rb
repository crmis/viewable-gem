class ViewingsController < ApplicationController
  respond_to :html, :xml, :json

  before_action :find_<%=resource_name_underscore.singularize%>

  def index
    @viewings = Viewing.where("<%=resource_name.singularize%>_id = ? AND end_time >= ?", @<%=resource_name.singularize%>.id, Time.now).order(:start_time)
    respond_with @viewings
  end

  def new
    @viewing = Viewing.new(<%=resource_name.singularize%>_id: @<%=resource_name.singularize%>.id)
  end

  def create
    @viewing =  Viewing.new(params[:viewing].permit(:<%=resource_name.singularize%>_id, :start_time, :length))
    @viewing.<%=resource_name.singularize%> = @<%=resource_name.singularize%>
    if @viewing.save
      redirect_to <%=resource_name.singularize%>_viewings_path(@<%=resource_name.singularize%>, method: :get)
    else
      render 'new'
    end
  end

  def show
    @viewing = Viewing.find(params[:id])
  end

  def destroy
    @viewing = Viewing.find(params[:id]).destroy
    if @viewing.destroy
      flash[:notice] = "Viewing: #{@viewing.start_time.strftime('%e %b %Y %H:%M%p')} to #{@viewing.end_time.strftime('%e %b %Y %H:%M%p')} deleted"
      redirect_to <%=resource_name.singularize%>_viewings_path(@<%=resource_name.singularize%>)
    else
      render 'index'
    end
  end

  def edit
    @viewing = Viewing.find(params[:id])
  end

  def update
    @viewing = Viewing.find(params[:id])
    # @viewing.<%=resource_name%> = @<%=resource_name%>

    if @viewing.update(params[:viewing].permit(:<%=resource_name.singularize%>_id, :start_time, :length))
      flash[:notice] = 'Your viewing was updated succesfully'

      if request.xhr?
        render json: {status: :success}.to_json
      else
        redirect_to <%=resource_name.singularize%>_viewings_path(@<%=resource_name.singularize%>)
      end
    else
      render 'edit'
    end
  end

  private

  def save viewing
    if @viewing.save
        flash[:notice] = 'viewing added'
        redirect_to <%=resource_name.singularize%>_viewing_path(@<%=resource_name.singularize%>, @viewing)
      else
        render 'new'
      end
  end

  def find_<%=resource_name.singularize%>
    if params[:<%=resource_name.singularize%>_id]
      @<%=resource_name.singularize%> = <%=resource_name_camelize.singularize%>.find_by_id(params[:<%=resource_name.singularize%>_id])
    end
  end

end
