loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Skibidi Roblox",
         Animation = "Youtube: Skibidi Roblox"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id= 110310444028946",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Hop Boss"})
     local Tab2o = MakeTab({Name = "Farm Boss"})
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub",
    Callback = function()
	  local Settings = {
  JoinTeam = "Pirates"; -- Pirates/Marines
  Translator = true; -- true/false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))(Settings)
  end
  })
  
     AddButton(Tab2o, {
     Name = "Redz Hub",
    Callback = function()
	  -- Example Blox Fruits Auto-Farm Boss Script (educational purposes)

local function teleportToBoss(bossName)
    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
        if v.Name == bossName then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
            return v
        end
    end
end

local function attackBoss(boss)
    while boss.Parent and boss.Humanoid.Health > 0 do
        -- Attack logic
        game:GetService("VirtualUser"):Button1Down(Vector2.new(0,0))
        wait(0.1)
        game:GetService("VirtualUser"):Button1Up(Vector2.new(0,0))
        wait(0.2)
    end
end

local bosses = {"Saber Expert", "Ice Admiral", "Thunder God", "Warden", "Chief Warden"} -- Example boss names

while wait(1) do
    for _, bossName in pairs(bosses) do
        local boss = teleportToBoss(bossName)
        if boss then
            attackBoss(boss)
        end
    end
end