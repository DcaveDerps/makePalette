

local spr = app.activeSprite
if not spr then
  return app.alert("Can't get current foreground color from active sprite!")
end

-- Get the currently selected color (foreground color)
--local curr = app.fgColor
--app.alert(curr)

app.transaction(
    function()

    local curr = app.fgColor

    local pal = spr.palettes[1]     -- palettes array starts at 1 for some reason

    local currValue = curr.hsvValue + 0.2


    if(currValue < 0.91)                -- Tries to make +0.2 from curr
    then
        pal:resize(#pal+1)
        pal:setColor(#pal-1, Color{ h = curr.hsvHue, s = curr.hsvSaturation, v = currValue, a = curr.alpha})
    end

    currValue = currValue - 0.1

    if(currValue < 0.91)                -- Tries to make +0.1 from curr
    then
        pal:resize(#pal+1)
        pal:setColor(#pal-1, Color{ h = curr.hsvHue, s = curr.hsvSaturation, v = currValue, a = curr.alpha})
    end

    currValue = currValue - 0.1

    pal:resize(#pal+1)                  -- Adds curr (should check for it first)
    pal:setColor(#pal-1, Color{ h = curr.hsvHue, s = curr.hsvSaturation, v = currValue, a = curr.alpha})

    currValue = currValue - 0.1

    if(currValue > 0.09)                -- Tries to make -0.1 from curr
    then
        --app.alert("the if thing went")
        pal:resize(#pal+1)
        pal:setColor(#pal-1, Color{ h = curr.hsvHue, s = curr.hsvSaturation, v = currValue, a = curr.alpha})
    end

    currValue = currValue - 0.1

    if(currValue > 0.09)                -- Tries to make -0.2 from curr
    then
        --app.alert("the if thing went")
        pal:resize(#pal+1)
        pal:setColor(#pal-1, Color{ h = curr.hsvHue, s = curr.hsvSaturation, v = currValue, a = curr.alpha})
    end

    end)

app.refresh() -- don't know if I still need this, the documentation is a few years old

--    end