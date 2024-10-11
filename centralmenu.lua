-- Central Development --
--- Info Menu ---

---- Don't Touch any of this code below ----

-- Central Development --
--- Gang Menu ---

---- Don't Touch any of this code below ----

_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("~h~~u~CDdev.xyx", "~HUD_COLOUR_DEGEN_BLUE~~m~Made By JuJu [Central Development]")
_menuPool:Add(mainMenu)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        -- {Press "M" to open the menu} --
        if IsControlJustPressed(1, 301) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)

-- Menu Code {Start} --
function FirstItem(menu) 
    local submenu = _menuPool:AddSubMenu(menu, "~HUD_COLOUR_PURPLELIGHT~[Central Development]", "~h~~w~Central Development is owned by JuJu & Redbird!") 
    local cd1 = NativeUI.CreateItem("~p~Central Development", "~w~Unlock Your Potential with Central Development Services!") ---- [Edit Text] ---- -- -- Emotes are OPTIONAL -- --
    cd1.Activated = function(sender, item)
    end
    submenu:AddItem(cd1) 
    end
    function SecondItem(menu) 
        local submenu = _menuPool:AddSubMenu(menu, "~HUD_COLOUR_PURPLE~Info About Owners", "~h~~w~MC Gangs Avalable to Join!")
        local cd2 = NativeUI.CreateItem("~p~Info About JuJu", "~w~This Menu was made by JuJu and is 1 of many scripts made by JuJu") ---- [Edit Text] ---- -- -- Emotes are OPTIONAL -- --
        cd2.Activated = function(sender, item)
        end
        submenu:AddItem(cd2) 
        local cd3 = NativeUI.CreateItem("~b~Info About Redbird", "~w~Rebird works on developing discord bots for central development, and is the Offical Co owner") ---- [Edit Text] ---- -- -- Emotes are OPTIONAL -- --
        cd3.Activated = function(sender, item)
        end
        submenu:AddItem(cd3)
        end
        function ThirdItem(menu) 
            local submenu = _menuPool:AddSubMenu(menu, "~HUD_COLOUR_PURPLEDARK~Info About Central Development", "~h~~w~Central Development Services") 
            local cd4 = NativeUI.CreateItem("~p~[Central Development]", "~w~Custom Bots, Discord Services, Custom Debagged Cars, Custom EUP, FiveM Services") ---- [Edit Text] ---- -- -- Emotes are OPTIONAL -- --
            cd4.Activated = function(sender, item)
            end
            submenu:AddItem(cd4)
            end
        function CDDiscord(menu) 
                local submenu = _menuPool:AddSubMenu(menu, "~HUD_COLOUR_TECH_GREEN_VERY_DARK~Discord", "~h~~w~Central Development Discord Info") 
                local cd5 = NativeUI.CreateItem("~p~Central Development Discord", "~w~discord.gg/cddev") ---- [Edit Text] ---- -- -- Emotes are OPTIONAL -- --
                cd5.Activated = function(sender, item)
                end
                submenu:AddItem(cd5)
                end

---- Versions Menu ----
function SixthItem(menu) 
   local submenu = _menuPool:AddSubMenu(menu, "~HUD_COLOUR_REDDARK~Menu Version", "See what version this menu is!") 
   local cd6 = NativeUI.CreateItem("~r~Version 1.0", "~w~This is version V1")
   cd6.Activated = function(sender, item)
   end
   submenu:AddItem(cd6)
end


    FirstItem(mainMenu)
    SecondItem(mainMenu)
    ThirdItem(mainMenu)
    SixthItem(mainMenu)
    CDDiscord(mainMenu)
    _menuPool:RefreshIndex()