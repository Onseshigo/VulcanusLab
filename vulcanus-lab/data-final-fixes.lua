data.raw['lab']['metallurgic-lab'].inputs = data.raw['lab']['lab'].inputs
local no_space_age = false
no_space_age = settings.startup["no-space-age-compatibility"].value

if(mods["space-age"] == nil) then
  no_space_age = true
end

if(no_space_age) then
    data.raw.recipe["inspirational-fuel-cell"].subgroup = nil
    data.raw.recipe["inspirational-fuel-cell"].ingredients = 
    {
        {type ="fluid", name ="heavy-oil", amount = 40},
        {type ="fluid", name ="steam", amount = 100},
        {type ="item", name ="utility-science-pack", amount = 2},
    }
    data.raw.recipe["metallurgic-lab"].subgroup = nil
    data.raw.recipe["metallurgic-lab"].ingredients = 
    {

        {type ="item", name ="engine-unit", amount = 30},
        {type ="item", name ="refined-concrete", amount = 30},
        {type ="item", name ="chemical-plant", amount = 2},
        {type ="item", name ="pipe", amount = 20},
        {type ="item", name ="processing-unit", amount = 20},
        {type ="item", name ="copper-cable", amount = 20},
        {type ="item", name ="steel-plate", amount = 25},
        {type ="item", name ="iron-gear-wheel", amount = 20},
        {type ="item", name ="express-transport-belt", amount = 5},
        {type ="item", name ="lab", amount = 1},

    }
    data.raw.recipe["metallurgic-lab"].category = "advanced-crafting"
    data.raw.technology["metallurgic-lab"].prerequisites = {"utility-science-pack","logistics-3"}
    data.raw.technology["metallurgic-lab"].unit =     
    {
      count = 750,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 3},
      },
      time = 60
    }
    data.raw.lab["metallurgic-lab"].surface_conditions = nil
    data.raw.item["inspirational-fuel-cell"].subgroup = "uranium-processing"
    data.raw.recipe["inspirational-fuel-cell"].subgroup = "uranium-processing"
    data.raw.recipe["inspirational-fuel-cell-recycling"].subgroup = "uranium-processing"
end