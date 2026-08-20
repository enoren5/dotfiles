local directions = {
    { key = "left",  x = -20, y =  0 },
    { key = "right", x =  20, y =  0 },
    { key = "up",    x =  0,  y = -20 },
    { key = "down",  x =  0,  y =  20 },
}

for _, dir in ipairs(directions) do
    -- Change Focus
    --hl.bind("SUPER + " .. dir.key,
    --    hl.dsp.focus({ direction = dir.key }))

    -- Move Active
    hl.bind("SUPER + SHIFT + " .. dir.key,
        hl.dsp.window.move({ direction = dir.key }))

    -- Resize Active
    hl.bind("SUPER + CTRL + " .. dir.key,
        hl.dsp.window.resize({
            x = dir.x,
            y = dir.y,
            relative = true,
        }),
        { repeating = true })

    -- Move Active (Floating Only)
    hl.bind("SUPER + ALT + " .. dir.key,
        hl.dsp.window.move({
            x = dir.x,
            y = dir.y,
            relative = true,
        }),
        { repeating = true })
end