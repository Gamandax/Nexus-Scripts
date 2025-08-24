
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()
local Window = Rayfield:CreateWindow({
   Name = "Nexus",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Welcome",
   LoadingSubtitle = "by VantaXock",
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "FEHub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "feScripts",
      Subtitle = "Key System",
      Note = "Go to https://rkns.link/vtumj for your key", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"9099977875"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

-- Helper function for script buttons
local function createFEButton(tab, name, url) 
    tab:CreateButton({
        Name = name,
        Callback = function()
            loadstring(game:HttpGet(url))()
        end
    })
end
-- FE Scripts Tab
local FETab = Window:CreateTab("FE Scripts")
local FEScriptsSection = FETab:CreateSection("FE Scripts")

createFEButton(FETab, "FE KJ", "https://pastebin.com/raw/5KnPXUEm")
createFEButton(FETab, "FE Shooter", "https://pastefy.app/ZGWONifX/raw")
createFEButton(FETab, "FE Jerk R15", "https://pastefy.app/YZoglOyJ/raw")
createFEButton(FETab, "FE Goner Divine Edge", "https://raw.githubusercontent.com/Fe-ProjectR/FE-Files/refs/heads/main/Fe%20Divine%20Edge.lua")
createFEButton(FETab, "FE Gale", "https://raw.githubusercontent.com/Fe-ProjectR/FE-Files/refs/heads/main/Fe%20gale.lua")
createFEButton(FETab, "FE Gale No Cutscene", "https://raw.githubusercontent.com/Fe-ProjectR/FE-Files/785403033b2b9161076ddaddc65923a7290e274d/Fe%20fighter%20optimized")
createFEButton(FETab, "FE Jerk Off", "https://pastefy.app/wa3v2Vgm/raw")
createFEButton(FETab, "FE Hug", "https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG")
createFEButton(FETab, "FE SCP-096", "https://pastefy.app/YsJgITXR/raw")
createFEButton(FETab, "FE Energize UI", "https://pastebin.com/raw/1p6xnBNf")
createFEButton(FETab, "FE Nameless Animation V4", "https://scriptblox.com/raw/Universal-Script-Silly-Fe-Nameless-Animation-V4-But-with-Less-Shake-24226")
createFEButton(FETab, "FE Headless", "https://raw.githubusercontent.com/Gazer-Ha/Valiant-Ui-Lib-Gazed-/refs/heads/main/Head%20Pack")
createFEButton(FETab, "FE Anim Hub", "https://gist.githubusercontent.com/MelonsStuff/f018928d2f010789a150b4924e279b16/raw/8de399eb9cbccbde430fcd37270cd4ff171f8b8e/AnimationGUI.txt")
createFEButton(FETab, "FE Seraphic Blade", "https://pastebin.com/raw/K51MUGBu")
createFEButton(FETab, "FE Hawk Guy", "https://pastefy.app/9O46YtFx/raw")
createFEButton(FETab, "FE Zombie", "https://pastefy.app/JOWniO6o/raw")
createFEButton(FETab, "FE Hammer", "https://pastefy.app/5aEVoujP/raw")
createFEButton(FETab, "FE VPOSE", "https://scriptblox.com/raw/Universal-Script-FE-VPOSE-R15-28931")
createFEButton(FETab, "FE Saitama", "https://pastefy.app/zdMgLmgG/raw")
createFEButton(FETab, "FE Knife", "https://pastefy.app/zdMgLmgG/raw")
