Rails.application.routes.draw do
  get("/square/new", {:controller=>"zebra",:action=>"rice"})
  get("/square_root/new", {:controller=>"zebra",:action=>"noodles"})
  get("/payment/new", {:controller=>"zebra",:action=>"tacos"})
  get("/random/new", {:controller=>"zebra",:action=>"tofu"})
  get("/", {:controller=>"zebra",:action=>"flex"})
end
