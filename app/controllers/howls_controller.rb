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
get "/howls" do
  @howls = Howl.order(:name)
  erb :"howls/index"
end
