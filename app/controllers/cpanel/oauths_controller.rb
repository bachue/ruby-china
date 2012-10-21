# coding: utf-8
class Cpanel::OauthsController < Cpanel::ApplicationController
  def index
    @oauths = Oauth.all
  end

  def new
    @oauth = Oauth.new
  end

  def create
    @oauth = Oauth.new(params[:oauth])

    if @oauth.save
      redirect_to(cpanel_oauths_path, :notice => 'Oauth was successfully created.')
    else
      render :action => "new"
    end
  end

  def edit
    @oauth = Oauth.find(params[:id])
  end

  def update
    @oauth = Oauth.find(params[:id])

    if @oauth.update_attributes(params[:oauth])
      redirect_to(cpanel_oauths_path, :notice => 'Oauth was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @oauth = Oauth.find(params[:id])
    @oauth.destroy

    redirect_to(cpanel_oauths_url)
  end
end
