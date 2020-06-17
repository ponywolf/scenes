# scenes for Solar2D

This is a simpler, instanced scene manager for Solar2D (formerly CoronaSDK) and is designed to allow for multiple concurrent scenes. For example a HUD scene that lives above a game scene that’s persistent and multiple modal dialogs that stack and close in the order they are created

Also, there’s a simple fade in/out transition that uses a screen overlay and can be expanded to support any style of layered screen transition.

### Example

<code>
local scenes = require "scenes"
local template = scenes.new("scenes.template")
scenes.show("template", {transition = "fade", time = 250 })
</code>