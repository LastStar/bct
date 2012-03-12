Bct.controllers  do
  get :index do
    render 'index'
  end

  post :save do
    flash[:message] = add_address params[:email]
    redirect '/'
  end
end
