local sound = script.Sound --Replace "sound" with the name of the music sound
local ids = {"rbxassetid://123", "rbxassetid://456", "rbxassetid://789"} --Replace with real song ids
local skipbtn = script.Parent --Replace with wherever the button is located

function skip(songid)
    local songidx = 0
    for i, id in ipairs(ids) do
        if id == songid then
            songidx = i
        end
    end
    sound.SoundId = ids[songidx+1]
end

skipbtn.Activated:Connect(skip)