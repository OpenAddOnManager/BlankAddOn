local frame = CreateFrame('Frame')
local printLoadMessageAfter = GetTime() + 1
local loadMessagePrinted = false

frame:SetScript('OnUpdate', function()
    if GetTime() > printLoadMessageAfter and not loadMessagePrinted then
        local interfaceVersion = select(4, GetBuildInfo())
        if interfaceVersion == 80200 then
            print('Blank add-on loaded on the PTR.')
        elseif interfaceVersion == 11302 then
            print('Blank add-on loaded in Classic.')
        else
            print('Blank add-on loaded in retail.')
        end
        loadMessagePrinted = true
    end
end)