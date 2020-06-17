# scenes for Solar2D

This is a simpler, instanced scene manager for Solar2D (formerly CoronaSDK) and is designed to allow for multiple concurrent scenes. For example a HUD scene that lives above a game scene that’s persistent and multiple modal dialogs that stack and close in the order they are created

Also, there’s a simple fade in/out transition that uses a screen overlay and can be expanded to support any style of layered screen transition.

** Example

<code>local scenes = require "scenes"

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
  </code>