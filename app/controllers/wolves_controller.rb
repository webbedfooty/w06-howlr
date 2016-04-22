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
    redirect to("/wolves")
  else
    erb :"wolves/new"
  end
end


# INDEX
get "/wolves" do
  @wolves = Wolf.order(:name)
  erb :"wolves/index"
end
