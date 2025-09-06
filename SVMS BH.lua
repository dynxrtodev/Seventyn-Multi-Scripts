-- [[
--  * Seventyn Multi SC
--  * VERSION : 1.1
--  * LAUNCHER : BOTHAX
--  * SERVER : GTFY
--  * Cr @Svntyn ⃤
-- ]]


-- CONFIG --
local Booth = {
  running = false, 
  delay = 80
  }  
local MIRRORMAZE = {
    running = false,
    doorX   = 26,
    doorY   = 22,
    targetX = 24,
    targetY = 24,
    delay   = 1000
}
local Shop  = { 
  running = false, 
  delay = 100, 
  itemid = 1796
  }
local UT  = {
  running = false, 
  delay = 100,
  tilex = 4,
  tiley = 48, 
  removeItem = 200, 
  dropItem = 16956, 
  dropCount = 200 
}
local PNB   = { 
  running = false, 
  delay = 100,
  itemid = 17092,
  maxBlocks = 10 
}
local VENDING = {
    running   = false,
    shopWorld = "nice",
    dropWorld = "svms",
    itemid    = 3207,
    buycount  = 200,
    tilex     = 10,
    tiley     = 46,
   dropx  = 10,
   dropy   = 46
}
local ADDVEND = {
    running = false,
    tilex   = 48,
    tiley   = 36,
    price   = 1,
    perlock = 0,
    peritem = 1
}
local PLANT = {
    running   = false,
    seedid   = 17093,  
    TakeSeed_X = 11,  
    TakeSeed_Y = 44,
    X_MIN = 1,       
    X_MAX = 98,   
    Y_MIN = 0,
    Y_MAX = 20
}


--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]
--[[
 /¯¯¯/¯¯\‚     ‚'            /¯¯/¯¯|          /¯¯¯/¯¯'\ "  /¯¯¯/¯¯\‚     ‚'  
|¯¯¯|  |\_/       °/¯¯¯/¯¯\¯|    |   /¯¯¯/¯¯\|       \  |¯¯¯|  |\_/       °
\¯¯¯\  ``¯¯¯¯\  \¯¯¯\     \ |    |  \¯¯¯\     __|\_./  \¯¯¯\  ``¯¯¯¯\  
  ¯¯¯)¯¯¯)    /    \     \     \|    |    \     '\   '\‚        '   ¯¯¯)¯¯¯)    /  
       |___'|__/'      \__\'____ / ''    \__ \_/’                 |___'|__/'  
              "                           ‚                ’                         "        
--]]















































































































































RunThread(function()
    while true do
        -- VENDING
        if VENDING.running then
            SendPacket(3, "action|join_request\nname|" .. VENDING.shopWorld .. "\ninvitedWorld|0")
            Sleep(500)
        
            FindPath(VENDING.tilex, VENDING.tiley, 80)
            Sleep(500)

            local pktBuy = "action|dialog_return\n" ..
                           "dialog_name|vending\n" ..
                           "tilex|"..VENDING.tilex.."|\n" ..
                           "tiley|"..VENDING.tiley.."|\n" ..
                           "expectprice|1|\n" ..
                           "expectitem|"..VENDING.itemid.."|\n" ..
                           "verify|1|\n".. 
                           "buycount|"..VENDING.buycount
            SendPacket(2, pktBuy)
            Sleep(100)

            SendPacket(3, "action|join_request\nname|" .. VENDING.dropWorld .. "\ninvitedWorld|0")
            Sleep(500)

            FindPath(VENDING.dropx, VENDING.dropy, 80)
            Sleep(500)

            local pktDrop = "action|dialog_return\n" ..
                            "dialog_name|drop_item\n" ..
                            "itemID|"..VENDING.itemid.."|\n" ..
                            "count|"..VENDING.buycount
            SendPacket(2, pktDrop)
            Sleep(100)
        end

        -- BOOTH
        if Booth.running then
            SendPacket(2, "action|dialog_return\ndialog_name|carnival_booth\ntilex|65|\ntiley|53|\nbuttonClicked|buy_112")
            Sleep(Booth.delay)
        end
        
RunThread(function()
    while true do
        if MIRRORMAZE.running then
            -- 1. Jalan ke pintu
            FindPath(MIRRORMAZE.doorX, MIRRORMAZE.doorY, 100)
            Sleep(500)
            SendPacketRaw(false, {
                type  = 7,
                value = 18,
                px    = MIRRORMAZE.doorX,
                py    = MIRRORMAZE.doorY
            })
            Sleep(1000)
            FindPath(MIRRORMAZE.targetX, MIRRORMAZE.targetY, 100)
            Sleep(MIRRORMAZE.delay)
        end
        Sleep(5)
    end
end)

        -- SHOP
        if Shop.running then
            SendPacket(2, "action|buy\nitem|"..Shop.itemid)
            Sleep(Shop.delay)
        end

        -- UT
        if UT.running then
            SendPacket(2, "action|dialog_return\ndialog_name|itemremovedfromsucker\ntilex|"..UT.tilex.."|\ntiley|"..UT.tiley.."|\nitemtoremove|"..UT.removeItem)
            Sleep(UT.delay)
            SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|"..UT.dropItem.."|\ncount|"..UT.dropCount)
            Sleep(UT.delay)
        end
        
 RunThread(function()
    while true do
        if PLANT.running then
            plantArea()
            logPlant("Finished one full cycle of planting.")
            Sleep(1000)
        end
        Sleep(5)
    end
end)

        -- PNB
        if PNB.running then
            local me = GetLocal()
            if me then
                local px = math.floor(me.pos.x / 32)
                local py = math.floor(me.pos.y / 32)
                for i=1, PNB.maxBlocks do
                    SendPacketRaw(false, {type=3,int_data=PNB.itemid,px=px+i,py=py,value=PNB.itemid})
                    Sleep(PNB.delay)
                end
                for i=1, PNB.maxBlocks do
                    SendPacketRaw(false, {type=3,int_data=18,px=px+i,py=py,value=18})
                    Sleep(PNB.delay)
                end
            end
        end

        Sleep(5)
    end
end)
RunThread(function()
    while true do
        if ADDVEND.running then
            local pkt = "action|dialog_return\n" ..
                        "dialog_name|vending\n" ..
                        "tilex|"..ADDVEND.tilex.."|\n" ..
                        "tiley|"..ADDVEND.tiley.."|\n" ..
                        "buttonClicked|addstock\n" ..
                        "setprice|"..ADDVEND.price.."\n" ..
                        "chk_perlock|"..ADDVEND.perlock.."\n" ..
                        "chk_peritem|"..ADDVEND.peritem
            SendPacket(2, pkt)
            Sleep(1000) -- biar ga spam kebangetan
        end
        Sleep(5)
    end
end)

-- ===================== LOG FUNC =====================
local function logState(name, state)
    local status = state and "`2ON" or "`4OFF"
    LogToConsole("[SVMS] "..name.." -> "..status)
end

local function logPlant(x)
    SendVariantList({[0] = "OnTextOverlay", [1] = "`c[ SVMS-PLANT ] : " .. x}) 
    LogToConsole("`c[ SVMS ] : " .. x) 
end

local function plant_pnp(x, y, id)
    local me = GetLocal()
    if not me then return end
    local pkt = {type = 3, value = id, x = me.pos.x, y = me.pos.y, px = x, py = y}
    SendPacketRaw(false , pkt)
end

local function plant_takeSeed()
    if GetItemCount(PLANT.seedid) == 0 then
        logPlant("No seeds, taking more...")
        FindPath(PLANT.TakeSeed_X, PLANT.TakeSeed_Y, 50) 
        Sleep(200)
    end
end

local function plantAt(x, y)
    plant_takeSeed()
    if GetItemCount(PLANT.seedid) == 0 then return end
    local tile = GetTile(x,y)
    if tile and tile.fg == 0 then
        FindPath(x,y,50) 
        Sleep(100)
        plant_pnp(x,y,PLANT.seedid)
        logPlant("Planted seed at "..x..","..y)
        Sleep(300)
    end
end

local function plantArea()
    for y = PLANT.Y_MIN, PLANT.Y_MAX do
        if not PLANT.running then return end -- bisa stop kapan aja
        if y % 2 == 0 then
            for x = PLANT.X_MIN, PLANT.X_MAX do
                plantAt(x,y)
            end
        else
            for x = PLANT.X_MAX, PLANT.X_MIN, -1 do
                plantAt(x,y)
            end
        end
    end
end

-- ===================== DIALOG =====================
local function ShowSVMSDialog()
    local dialog = [[
set_default_color|`o
add_label_with_icon|big|`cSVMS HELPER! `2< v1.1 >|left|32|
add_label_with_icon|small|`cServer : `9GTFY!|right|6336|
add_spacer|small|
add_image_button|banner|game/gtfy_carnival.rttex|bannerlayout||
add_spacer|small|
add_separator|

add_label_with_icon|small|`cSVMS New Updates!|left|6018|
add_smalltext|`wSeptember 04-05, 2025:|left|
add_smalltext|`2>>  Added Auto Plant and Auto Mirrormaze Features ( /plant, /mirrormaze ) |left|
add_smalltext|`2>>  Improved /booth, /shop, /UT Config Toggle ( /booth <delay> , /shop <itemID>, /UT xy <x> <y> , /UT item <remItem> <itemID> <dropCount> )|left|
add_smalltext|`2>>  Bug fixes & performance improvements|left|
add_spacer|small|
add_separator|

add_label_with_icon|small|`eAutomation Features|left|3682|
add_smalltext|`2/booth `7-> Auto Buy Gems from Booth|left|
add_smalltext|`2/mirrormaze `7-> Auto Mirrormaze Solving|left|
add_smalltext|`2/mirrormaze door <x> <y> `7-> Set door coordinate|left|
add_smalltext|`2/shop `7-> Auto Buy from Store|left|
add_smalltext|`2/vending `7-> Auto Vending Menu|left|
add_smalltext|`2/vending start|stop `7-> Start/Stop vending cycle|left|
add_smalltext|`2/venditem <id> <count> `7-> Set item & amount|left|
add_smalltext|`2/vendxy <x> <y> `7-> Set vending pos|left|
add_smalltext|`2/dropxy <x> <y> `7-> Set drop pos|left|
add_smalltext|`2/vendworld <shop> <drop> `7-> Set worlds|left|
add_smalltext|`2/addvend `7-> Auto Add Stock|left|
add_smalltext|`2/addvendxy <x> <y> `7-> Set vending pos|left|
add_smalltext|`2/UT `7-> Auto Retrieve UT + drop|left|
add_smalltext|`2/pnb `4(beta) `7-> Auto Place & Break blocks|left|
add_smalltext|`2/plant start|stop `7-> Start/Stop plant cycle|left|
add_smalltext|`2/plant id < Seed ID > `7-> Set Seed ID|left|
add_smalltext|`2/plant x < from x > < to x > `7-> Set x to x world|left|
add_smalltext|`2/plant y < from y > < to y > `7-> Set y to y world|left|
add_spacer|small|
add_separator|

add_label_with_icon|small|`9Lock Helper|left|1796|
add_smalltext|`2/dwl <amount> `7-> Drop WLs|left|
add_smalltext|`2/ddl <amount> `7-> Drop DLs|left|
add_smalltext|`2/dbgl <amount> `7-> Drop BGLs|left|
add_smalltext|`2/deposit <amount> `7-> Deposit BGLs to bank|left|
add_smalltext|`2/wd <amount> `7-> Withdraw BGLs|left|
add_spacer|small|
add_separator|

add_label_with_icon|small|`eExtra Tools|left|9474|
add_smalltext|`2/donate <amount> `7-> Support the developer!|left|
add_smalltext|`2/helpsv `7-> Show this help menu|left|
add_spacer|small|
add_separator|
add_image_button|svms_dc|interface/gtps/discord.rttex|3imageslayout|https://discord.gg/gePbgrZX|Do you want to join our `cDISCORD SERVER``?|
add_button_with_icon||END_LIST|noflags|0||
add_spacer|small|
add_label_with_icon|small|`wPowered By: `e@Seventyn|left|3732|
add_label_with_icon|small|`wJoin Our Discord Server For More Information!|left|28|
add_spacer|small|
end_dialog|gazette||OK|
add_quick_exit
]]
    SendVariantList({[0] = "OnDialogRequest", [1] = dialog})
end

AddHook("OnSendPacket", "SVMS_Commands", function(type, packet)
    if type ~= 2 then return end

    local text = packet:match("text|(.+)")
    if not text then return end

    local args = {}
    for w in text:gmatch("%S+") do table.insert(args, w) end
    local cmd = args[1] or ""
    local num = args[2] or ""

    ---------------- HELP MENU ----------------
    if cmd == "/helpsv" then
        ShowSVMSDialog()
        return true
    end

---------------- CARNIVAL ----------------
if cmd == "/booth" then
    if args[2] then
        local delay = tonumber(args[2])
        if delay then
            Booth.delay = delay
            LogToConsole("`c[ SVMS ] `eBooth delay updated -> "..delay)
        else
            LogToConsole("`c[ SVMS ] `4Usage: /booth <delay>")
        end
    else
        Booth.running = not Booth.running
        LogToConsole(Booth.running and "`c[ SVMS ] `2Auto Buy Gems In Booth Started"
                                   or  "`c[ SVMS ] `4Auto Buy Gems In Booth Stopped")
    end
    return true
end

 if cmd == "mirrormaze" then
    if args[2] == "start" then
        MIRRORMAZE.running = true
        LogToConsole("`c[ SVMS ] `2Mirror Maze Started")

    elseif args[2] == "stop" then
        MIRRORMAZE.running = false
        LogToConsole("`c[ SVMS ] `4Mirror Maze Stopped")

    elseif args[2] == "door" and args[3] and args[4] then
        MIRRORMAZE.doorX = tonumber(args[3])
        MIRRORMAZE.doorY = tonumber(args[4])
        LogToConsole("`c[ SVMS ] `eDoor updated -> ("..MIRRORMAZE.doorX..","..MIRRORMAZE.doorY..")")

    elseif args[2] == "target" and args[3] and args[4] then
        MIRRORMAZE.targetX = tonumber(args[3])
        MIRRORMAZE.targetY = tonumber(args[4])
        LogToConsole("`c[ SVMS ] `eTarget updated -> ("..MIRRORMAZE.targetX..","..MIRRORMAZE.targetY..")")

    else
        LogToConsole("`c[ SVMS ] `eUsage: /mirrormaze start | stop | door <x> <y> | target <x> <y>")
    end
    return true
end
---------------- SHOP ----------------
if cmd == "/shop" then
    if args[2] then
        local item = tonumber(args[2])
        if item then
            Shop.itemid = item
            LogToConsole("`c[ SVMS ] `eShop Item ID updated -> "..item)
        else
            LogToConsole("`c[ SVMS ] `4Usage: /shop <itemid>")
        end
    else
        Shop.running = not Shop.running
        LogToConsole(Shop.running and "`c[ SVMS ] `2Auto Buy In Store Started"
                                  or  "`c[ SVMS ] `4Auto Buy In Store Stopped")
    end
    return true
end

---------------- UT ----------------
if cmd:lower() == "/ut" then
    if args[2] == "xy" and args[3] and args[4] then
        UT.tilex = tonumber(args[3]) or UT.tilex
        UT.tiley = tonumber(args[4]) or UT.tiley
        LogToConsole("`c[ SVMS ] `eUT Position updated -> ("..UT.tilex..","..UT.tiley..")")
    elseif args[2] == "item" and args[3] and args[4] and args[5] then
        UT.removeItem = tonumber(args[3]) or UT.removeItem
        UT.dropItem   = tonumber(args[4]) or UT.dropItem
        UT.dropCount  = tonumber(args[5]) or UT.dropCount
        LogToConsole("`c[ SVMS ] `eUT Items updated -> Remove:"..UT.removeItem..
                     " Drop:"..UT.dropItem.." Count:"..UT.dropCount)
    else
        UT.running = not UT.running
        LogToConsole(UT.running and "`c[ SVMS ] `2Auto Ret UT Started"
                                 or  "`c[ SVMS ] `4Auto Ret UT Stopped")
    end
    return true
end

    ---------------- PNB ----------------
    if cmd == "/pnb" then
        PNB.running = not PNB.running
        LogToConsole(PNB.running and "`c[ SVMS ] `2PNB Started"
                                or  "`c[ SVMS ] `4PNB Stopped")
        return true
    end
    
    if packet:find("text|/plant") then
    local args = {}
    for w in packet:gmatch("%S+") do table.insert(args, w) end

    if args[2] == "start" then
        PLANT.running = true
        logPlant("Auto Plant Started!")

    elseif args[2] == "stop" then
        PLANT.running = false
        logPlant("Auto Plant Stopped!")

    elseif args[2] == "x" and args[3] and args[4] then
        PLANT.X_MIN = tonumber(args[3])
        PLANT.X_MAX = tonumber(args[4])
        logPlant("Updated X range → "..PLANT.X_MIN.." - "..PLANT.X_MAX)

    elseif args[2] == "y" and args[3] and args[4] then
        PLANT.Y_MIN = tonumber(args[3])
        PLANT.Y_MAX = tonumber(args[4])
        logPlant("Updated Y range → "..PLANT.Y_MIN.." - "..PLANT.Y_MAX)

    elseif args[2] == "id" and args[3] then
        PLANT.seedid = tonumber(args[3])
        logPlant("Updated Tree/Seed ID → "..PLANT.seedid)

    else
        logPlant("Usage: /plant start | stop | x <min> <max> | y <min> <max> | id <itemID>")
    end
    return true
end

    ---------------- LOCK COMMANDS ----------------
    local amount = tonumber(num) or 1
    if cmd == "/dbgl" then
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|7188|\ncount|"..amount)
        LogToConsole("`c[ SVMS ] `eDropped "..amount.." BGL")
        return true
    end
    if cmd == "/ddl" then
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|1796|\ncount|"..amount)
        LogToConsole("`c[ SVMS ] `cDropped "..amount.." DL")
        return true
    end
    if cmd == "/dwl" then
        SendPacket(2, "action|dialog_return\ndialog_name|drop_item\nitemID|242|\ncount|"..amount)
        LogToConsole("`c[ SVMS ] `8Dropped "..amount.." WL")
        return true
    end
    if cmd == "/deposit" then
        local pkt = "action|dialog_return\n" ..
                    "dialog_name|my_bank_account\n" ..
                    "buttonClicked|depo_true\n" ..
                    "bgl_|"..amount
        SendPacket(2, pkt)
        LogToConsole("`c[ SVMS ] `2Deposited "..amount.." BGL")
        return true
    end
    if cmd == "/wd" then
        local pkt = "action|dialog_return\n" ..
                    "dialog_name|my_bank_account\n" ..
                    "buttonClicked|wd_true\n" ..
                    "wd_|"..amount
        SendPacket(2, pkt)
        LogToConsole("`c[ SVMS ] `2Withdrew "..amount.." BGL")
        return true
    end
    if cmd == "/donate" then
        RunThread(function()
            SendPacket(3, "action|join_request\nname|svms\ninvitedWorld|0")
            Sleep(1500)
            local pkt = "action|dialog_return\n" ..
                        "dialog_name|give_item\n" ..
                        "itemID|7188|\n" ..
                        "tilex|49|\n" ..
                        "tiley|35|\n" ..
                        "buttonClicked|give\n" ..
                        "count|"..amount.."|\n" ..
                        "sign_text|"
            SendPacket(2, pkt)
            LogToConsole("`c[ SVMS ] `2Thanks For The Support!")
        end)
        return true
    end

    ---------------- VENDING ----------------
    if cmd == "/vending" then
        if num == "start" then
            VENDING.running = true
            LogToConsole("`c[ SVMS ] `2Auto Vending-Drop Started")
        elseif num == "stop" then
            VENDING.running = false
            LogToConsole("`c[ SVMS ] `4Auto Vending-Drop Stopped")
        else
            LogToConsole("`c[ SVMS ] `eAutomation Vending Menu:")
            LogToConsole("`7/vending start | stop")
            LogToConsole("`7/venditem <itemid> <jumlah>")
            LogToConsole("`7/vendxy <tileX> <tileY>")
            LogToConsole("`7/dropxy <tileX> <tileY>")
            LogToConsole("`7/vendworld <vendWorld> <dropWorld>")
            LogToConsole("`7/addvend start | stop")
            LogToConsole("`7/addvendxy <tileX> <tileY>")
        end
        return true
    end

    if cmd == "/venditem" then
        local id, count = tonumber(args[2]), tonumber(args[3])
        if id and count then
            VENDING.itemid = id
            VENDING.buycount = count
            LogToConsole("`c[ SVMS ] `eVending Item Updated -> ItemID: "..id.." Count: "..count)
        else
            LogToConsole("`c[ SVMS ] `eUsage: /venditem <itemid> <jumlah>")
        end
        return true
    end

    if cmd == "/vendxy" then
        local x, y = tonumber(args[2]), tonumber(args[3])
        if x and y then
            VENDING.tilex, VENDING.tiley = x, y
            LogToConsole("`c[ SVMS ] `2Vending position updated -> ("..x..","..y..")")
        else
            LogToConsole("`c[ SVMS ] `eUsage: /vendxy <tileX> <tileY>")
        end
        return true
    end

    if cmd == "/dropxy" then
        local x, y = tonumber(args[2]), tonumber(args[3])
        if x and y then
            VENDING.dropx, VENDING.dropy = x, y
            LogToConsole("`c[ SVMS ] `2Drop position updated -> ("..x..","..y..")")
        else
            LogToConsole("`c[ SVMS ] `eUsage: /dropxy <tileX> <tileY>")
        end
        return true
    end

    if cmd == "/vendworld" then
        local shop, drop = args[2], args[3]
        if shop and drop then
            VENDING.shopWorld, VENDING.dropWorld = shop, drop
            LogToConsole("`c[ SVMS ] `eVending Worlds Updated -> Shop: "..shop.." Drop: "..drop)
        else
            LogToConsole("`c[ SVMS ] `eUsage: /vendworld <vendWorld> <dropWorld>")
        end
        return true
    end

    ---------------- ADDVEND ----------------
    if cmd == "/addvend" then
        if num == "start" then
            ADDVEND.running = true
            LogToConsole("`c[ SVMS ] `2Auto AddVending Started")
        elseif num == "stop" then
            ADDVEND.running = false
            LogToConsole("`c[ SVMS ] `4Auto AddVending Stopped")
        else
            LogToConsole("`c[ SVMS ] `eUsage: /addvend start | stop")
        end
        return true
    end

    if cmd == "/addvendxy" then
        local x, y = tonumber(args[2]), tonumber(args[3])
        if x and y then
            ADDVEND.tilex, ADDVEND.tiley = x, y
            LogToConsole("`c[ SVMS ] `2AddVend position updated -> ("..x..","..y..")")
        else
            LogToConsole("`c[ SVMS ] `eUsage: /addvendxy <tileX> <tileY>")
        end
        return true
    end
end)
