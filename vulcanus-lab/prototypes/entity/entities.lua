require ("sound-util")
require ("circuit-connector-sprites")
require ("util")

local hit_effects = require("__base__.prototypes.entity.hit-effects")
local sounds = require("__base__.prototypes.entity.sounds")
local meld = require("meld")

data:extend
({
  {
    type = "lab",
    name = "metallurgic-lab",
    icon = "__vulcanus-lab__/graphics/icons/lab-64.png",
    minable = {mining_time = 0.5, result = "metallurgic-lab"},
    subgroup = "production-machine",
    order = "z-z[z-lab]",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    collision_box = {{-2.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    max_health = 350,
    impact_category = "glass",
    alert_icon_shift = util.by_pixel(0, -12),
    icon_draw_specification = {shift = {0, -0.3}},
    corpse = "lab-remnants",
    dying_explosion = "lab-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    surface_conditions =
    {
      {
        property = "pressure",
        min = 1000,
        max = 4000
      }
    },
    damaged_trigger_effect = hit_effects.entity(),
    on_animation = {
      layers = {
        util.sprite_load("__vulcanus-lab__/graphics/entity/oxidizer-anim",{
          frame_count = 60,
          scale = 0.5,
          animation_speed = 0.2,
        }),
        util.sprite_load("__vulcanus-lab__/graphics/entity/oxidizer-lights",{
          frame_count = 60,
          draw_as_glow = true,
          blend_mode = "additive",
          scale = 0.5,
          animation_speed = 0.2,
        }),
        util.sprite_load("__vulcanus-lab__/graphics/entity/oxidizer-shadow",{
          frame_count = 1,
          scale = 0.5,
          animation_speed = 0.2,
          draw_as_shadow = true,
          repeat_count = 60,
        })
      }
    },
    off_animation = {
      layers = {
        util.sprite_load("__vulcanus-lab__/graphics/entity/oxidizer-anim",{
          frame_count = 60,
          scale = 0.5,
          animation_speed = 0.2,
        }),
        util.sprite_load("__vulcanus-lab__/graphics/entity/oxidizer-shadow",{
          frame_count = 1,
          scale = 0.5,
          animation_speed = 0.2,
          draw_as_shadow = true,
          repeat_count = 60,
        })
      }
    },
    open_sound = sounds.lab_open,
    close_sound = sounds.lab_close,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7,
        modifiers = {volume_multiplier("main-menu", 2.2), volume_multiplier("tips-and-tricks", 0.8)},
        audible_distance_modifier = 0.7,
      },
      fade_in_ticks = 4,
      fade_out_ticks = 20,
      sound_accents =
      {
        --{sound = {variations = sound_variations("__space-age__/sound/entity/biolab/biolab-beaker", 7, 0.8), audible_distance_modifier = 0.4}, frame = 1},
        --{sound = {variations = sound_variations("__space-age__/sound/entity/biolab/biolab-centrifuge", 4, 0.7), audible_distance_modifier = 0.3}, frame = 14},
      },
      max_sounds_per_prototype = 2,
    },
    researching_speed = 2,
    inputs =
    {
      "automation-science-pack",
      "logistic-science-pack",
      "military-science-pack",
      "chemical-science-pack",
      "production-science-pack",
      "utility-science-pack",
      "space-science-pack",
      "metallurgic-science-pack",
      "agricultural-science-pack",
      "electromagnetic-science-pack",
      "cryogenic-science-pack",
      "promethium-science-pack"
    },
    science_pack_drain_rate_percent = settings.startup["metallurgic_lab_science_pack_drain_rate_percent"].value,
    energy_source =
    {
      type = "burner",
      fuel_inventory_size = 1,
      fuel_categories = {"inspirational"},
      effectivity = 0.6,
    },
    energy_usage = "450kW",
    module_slots = 4,
    icons_positioning =
    {
      {inventory_index = defines.inventory.lab_modules, shift = {0, 1.6}},
      {inventory_index = defines.inventory.lab_input, shift = {0, 0.4}, max_icons_per_row = 6, separation_multiplier = 1/1.1}
    }
  },
})