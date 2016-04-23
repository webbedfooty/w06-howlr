# Howls Controller

# NEW
get "/howls/new" do
  @howl = Howl.new
  erb :"howls/new"
end


# CREATE
post "/howls" do
  @howl = Howl.new(params)
  if @howl.save
    redirect to("/howls")
  else
    erb :"howls/new"
  end
end


# INDEX
get "/howls/index" do
  @howls = Howl.order(:text)
  erb :"howls/index"
end

# SHOW
get "/howls/:id" do
  @howl = Howl.find_by_id(params['id'])

erb :"howls/show"
end
