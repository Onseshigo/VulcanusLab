
data:extend
({
    {
        type = "recipe",
        name = "inspirational-fuel-cell",
        category ="oil-processing",
        enabled = false,
        subgroup = "vulcanus-processes",
        ingredients =
        {
  
          {type ="fluid", name ="heavy-oil", amount = 40},
          {type ="fluid", name ="steam", amount = 100},
          {type ="item", name ="metallurgic-science-pack", amount = 2},

        },
  
        energy_required = 10,
        results =
        {
          {type ="item", name ="inspirational-fuel-cell", amount = 1}
        },
        allow_productivity = true,
        allow_quality = true,
        auto_recycle = false,
        main_product ="inspirational-fuel-cell",
        maximum_productivity = 3,
        order = "f",
    },
    {
        type = "recipe",
        name = "metallurgic-lab",
        category ="metallurgy",
        enabled = false,
        subgroup = "extraction-machine", --put it with Vulcanus items
        ingredients =
        {
  
          {type ="item", name ="engine-unit", amount = 30},
          {type ="item", name ="refined-concrete", amount = 30},
          {type ="item", name ="foundry", amount = 1},
          {type ="item", name ="pipe", amount = 20},
          {type ="item", name ="processing-unit", amount = 20},
          {type ="item", name ="copper-cable", amount = 20},
          {type ="item", name ="steel-plate", amount = 25},
          {type ="item", name ="iron-gear-wheel", amount = 20},
          {type ="item", name ="turbo-transport-belt", amount = 5},
          {type ="item", name ="lab", amount = 1},

        },
  
        energy_required = 120,
        results =
        {
          {type ="item", name ="metallurgic-lab", amount = 1}
        },
        allow_productivity = false,
        allow_quality = true,
        auto_recycle = true,
        main_product ="metallurgic-lab",
        order = "f",
    }
}
)