task.spawn(function()
    while _G.Flames_Hub_Spit_On_That_Thang do
        task.spawn(function()
            pcall(function()
                -- Check if UCoins are within the limit, and only reset if they are above the threshold
                local uCoins = game:GetService("Players").LocalPlayer.Data.UCoins.Value
                if uCoins < 5000000 and uCoins ~= 20000000 then
                    local args = {[1] = 1}
                    game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.StatService.RF.ResetStats:InvokeServer(unpack(args))
                end

                local args = {[1] = "Save_The_Village_Adventure"}
                game:GetService("ReplicatedStorage").ReplicatedModules.KnitPackage.Knit.Services.DialogueService.RF.CheckDialogue:InvokeServer(unpack(args))
            end)
        end)
        task.wait(0.1)
    end
end)
