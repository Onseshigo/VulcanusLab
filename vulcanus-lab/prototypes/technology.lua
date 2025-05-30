
data:extend
({
  {
    type = "technology",
    name = "metallurgic-lab",
    icon = "__vulcanus-lab__/graphics/technology/lab-256.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "inspirational-fuel-cell"
      },
      {
        type = "unlock-recipe",
        recipe = "metallurgic-lab"
      }
    },
    prerequisites = {"metallurgic-science-pack","turbo-transport-belt","foundry"},
    unit =
    {
      count = 1000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"military-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 2}

      },
      time = 60
    }
  },

})