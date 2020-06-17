local scenes = require "scenes"

-- infinitly stackable scenes

-- new scenes start hidden
local template = scenes.new("scenes.template")

-- list all scenes
scenes.list()

-- just one simple transition, fade
scenes.show("template", {transition = "fade", time = 250 })

-- loading a scene under a different name and modal
timer.performWithDelay(2000, function ()
    scenes.new("scenes.modal", { name = "modal", modal = true, dim = 0.5 })
    scenes.show("modal")
  end)

timer.performWithDelay(3000, function ()
    scenes.remove("modal")
  end)

timer.performWithDelay(4000, function ()
    scenes.hide("template", {transition = "fade", time = 250 })
  end)

-- removing a scene sends a finalize and optional destroy
timer.performWithDelay(5000, function ()
    scenes.remove("template", {collectgarbage = true})
  end)