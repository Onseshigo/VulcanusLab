local sounds = require("__base__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local simulations = require("__base__.prototypes.factoriopedia-simulations")



data:extend
({
  {
    type = "item",
    name = "inspirational-fuel-cell",
    icon = "__vulcanus-lab__/graphics/icons/inspirational-fuel-cell.png",
    pictures =
    {
      layers =
      {
        {
          size = 64,
          filename = "__vulcanus-lab__/graphics/icons/inspirational-fuel-cell.png",
          scale = 0.5,
          mipmap_count = 4
        },
        {
          draw_as_light = true,
          size = 64,
          filename = "__base__/graphics/icons/uranium-fuel-cell-light.png",
          scale = 0.5
        }
      }
    },
    subgroup = "vulcanus-processes",
    order = "b[chemistry]-z[inspirational-fuel]",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
    fuel_category = "inspirational",
    fuel_value = "10MJ",
    stack_size = 25,
    weight = 10*kg
  },
  {
    type = "item",
    name = "metallurgic-lab",
    icon = "__vulcanus-lab__/graphics/icons/lab-64.png",
    subgroup = "production-machine",
    order = "z[z-metallurgic-lab]",
    inventory_move_sound = item_sounds.mechanical_inventory_move,
    pick_sound = item_sounds.mechanical_inventory_pickup,
    drop_sound = item_sounds.mechanical_inventory_move,
    place_result = "metallurgic-lab",
    stack_size = 5,
    weight = 200 * kg
  },

})