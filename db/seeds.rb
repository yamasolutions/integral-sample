# Load Integral seedings
Integral::Engine.load_seed

# Override the default call to action button
cta_item = Integral::List.first.list_items.last
cta_item.update_attributes(title: 'Users Area', url: "/#{Integral.backend_namespace}")
