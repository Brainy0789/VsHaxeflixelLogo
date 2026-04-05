local time = 0
local dadY = 0

function onCreatePost()
    dadY = getCharacterY('dad')
end

function onUpdate(elapsed)
    time = time + elapsed

    setCharacterY('dad', math.sin(time)*100 + dadY)

    if mustHitSection then
        cameraSetTarget('bf')
    else
        cameraSetTarget('dad')
    end
end