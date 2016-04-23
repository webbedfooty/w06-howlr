# Wolves Controller

# NEW
get "/wolves/new" do
  @wolf = Wolf.new
  erb :"wolves/new"
end


# CREATE
post "/wolves" do
  @wolf = Wolf.new(params)
  if @wolf.save
    redirect to("/wolves/index")
  else
    erb :"wolves/new"
  end
end


# INDEX
get "/wolves/index" do
  @wolves = Wolf.order(:name)
  erb :"wolves/index"
end

# SHOW
get "/wolves/:id" do
  @wolf = Wolf.find_by_id(params['id'])
  @howls = @wolf.howls
erb :"wolves/show"
end
