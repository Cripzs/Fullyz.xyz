local TweenService = game:GetService'TweenService'
local CoreGui = game:GetService'CoreGui'
local Library = {}
local Mouse = game:GetService'Players'.LocalPlayer:GetMouse()




local function GetXY(GuiObject)
	local Max, May = GuiObject.AbsoluteSize.X, GuiObject.AbsoluteSize.Y
	local Px, Py = math.clamp(Mouse.X - GuiObject.AbsolutePosition.X, 0, Max), math.clamp(Mouse.Y - GuiObject.AbsolutePosition.Y, 0, May)
	return Px/Max, Py/May
end

function CreateShadow(instance,color)
    local b_instance = Instance.new("ImageLabel")
    b_instance.ScaleType =Enum.ScaleType.Slice
    b_instance.BackgroundTransparency = 1.000
    b_instance.Position = UDim2.new(0, -15, 0, -15)
    b_instance.Size = UDim2.new(1, 30, 1, 30)
    b_instance.Image = "rbxassetid://5554236805"
    b_instance.ImageColor3 = color
    b_instance.ScaleType = Enum.ScaleType.Slice
    b_instance.SliceCenter = Rect.new(23, 23, 277, 277)
    b_instance.Parent = instance
end
local function CircleAnim(GuiObject, EndColour, StartColour)
	local PX, PY = GetXY(GuiObject)
	local Circle = Instance.new("ImageLabel")
    Circle.Image = "http://www.roblox.com/asset/?id=5554831670"
    Circle.BackgroundTransparency = 1 
	Circle.Size = UDim2.fromScale(0,0)
	Circle.Position = UDim2.fromScale(PX,PY)
	Circle.ImageColor3 = StartColour or GuiObject.ImageColor3
	Circle.ZIndex = 200
	Circle.Parent = GuiObject
	local Size = GuiObject.AbsoluteSize.X
	TweenService:Create(Circle, TweenInfo.new(1), {Position = UDim2.fromScale(PX,PY) - UDim2.fromOffset(Size/2,Size/2), ImageTransparency = 1, ImageColor3 = EndColour, Size = UDim2.fromOffset(Size,Size)}):Play()
	spawn(function()
		wait(2)
		Circle:Destroy()
	end)
end


for i,v in pairs(CoreGui:GetChildren()) do
    if v:IsA("ScreenGui") and v.Name == "Base" then
        v:Destroy()
    end
end
function DraggingEnabled(frame, parent)
        
    parent = parent or frame
    
    local dragging = false
    local dragInput, mousePos, framePos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = parent.Position
            
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)
end

function Library.ToggleUI()
    CoreGui:FindFirstChild("Base").Enabled = not CoreGui:FindFirstChild("Base").Enabled
end
function Library.DestroyUI()
    CoreGui:FindFirstChild("Base"):Destroy()
end
function Library.Render(settings)
    settings = settings or {}
    local Title = settings.Title or "Fullyz.xyz"
    local SavePosition = settings.SavePosition or false 
    local Options = settings.Options or {}
 
        local Base = Instance.new("ScreenGui")
        local motherFrame = Instance.new("Frame")
        local one = Instance.new("UICorner")
        local uiName = Instance.new("TextLabel")
        local Shadow = Instance.new("ImageLabel")
        local list = Instance.new("ImageButton")
        local album = Instance.new("ImageButton")
        local one_2 = Instance.new("Frame")
        local Pages = Instance.new("Folder")
        

        -- TAB LIST START
        local TabContainer = Instance.new("Frame")
        local TabList = Instance.new("ScrollingFrame")
        local UIListLayout = Instance.new("UIListLayout")
        local UICorner_2 = Instance.new("UICorner")
        local NameOf = Instance.new("TextLabel")
        local border = Instance.new("Frame")
        local Shadow_2 = Instance.new("ImageLabel")
    -- TAB LIST END 
-- Settings
local DebugWindow = Instance.new("Frame")
local Shadow_4 = Instance.new("ImageLabel")
local UICorner_23 = Instance.new("UICorner")
local NameOf_2 = Instance.new("TextLabel")
local border_9 = Instance.new("Frame")
local Close = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local Shadow_22 = Instance.new("ImageLabel")
local Theme = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Shadow_3 = Instance.new("ImageLabel")

-- end settings

        Base.Parent = CoreGui
        Base.Name = "Base"

        motherFrame.Name = "motherFrame"
        motherFrame.Parent = Base
        motherFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
        motherFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        motherFrame.Size = UDim2.new(0, 594,0, 420)
        motherFrame.AnchorPoint = Vector2.new(.5,.5)
      
        DraggingEnabled(motherFrame)
        
        one.CornerRadius = UDim.new(0, 5)
        one.Name = "one"
        one.Parent = motherFrame

        uiName.Name = "uiName"
        uiName.Parent = motherFrame
        uiName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        uiName.BackgroundTransparency = 1.000
        uiName.Position = UDim2.new(0, 0, 0.0190476198, 0)
        uiName.Size = UDim2.new(1, 0, 0, 15)
        uiName.Font = Enum.Font.GothamMedium
        uiName.RichText = true
        uiName.Text = "<font color=\"rgb(129, 145, 255)\">Fullyz.xyz</font>"
        uiName.TextColor3 = Color3.fromRGB(235, 235, 235)
        uiName.TextSize = 13.000

        Shadow.Name = "Shadow"
        Shadow.Parent = motherFrame
        Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Shadow.BackgroundTransparency = 1.000
        Shadow.Position = UDim2.new(0, -15, 0, -15)
        Shadow.Size = UDim2.new(1, 30, 1, 30)
        Shadow.Image = "rbxassetid://5554236805"
        Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
        Shadow.ScaleType = Enum.ScaleType.Slice
        Shadow.SliceCenter = Rect.new(23, 23, 277, 277)

        list.Name = "list"
        list.Parent = motherFrame
        list.BackgroundTransparency = 1.000
        list.Position = UDim2.new(0.0151515147, 0, 0.0119047631, 0)
        list.Size = UDim2.new(0, 20, 0, 20)
        list.ZIndex = 2
        list.Image = "rbxassetid://3926305904"
        list.ImageColor3 = Color3.fromRGB(235, 235, 235)
        list.ImageRectOffset = Vector2.new(644, 364)
        list.ImageRectSize = Vector2.new(36, 36)
        list.ScaleType = Enum.ScaleType.Fit

        album.Name = "album"
        album.Parent = motherFrame
        album.BackgroundTransparency = 1.000
        album.LayoutOrder = 4
        album.Position = UDim2.new(0.954240084, 0, 0.0121846497, 0)
        album.Size = UDim2.new(0, 19, 0, 18)
        album.ZIndex = 2
        album.Image = "rbxassetid://3926307971"
        album.ImageColor3 = Color3.fromRGB(225, 225, 225)
        album.ImageRectOffset = Vector2.new(524, 404)
        album.ImageRectSize = Vector2.new(36, 36)
        album.ScaleType = Enum.ScaleType.Fit


            DebugWindow.Name = "DebugWindow"
            DebugWindow.Parent = motherFrame
            DebugWindow.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            DebugWindow.Position = UDim2.new(-.282, 0, -.25, 0)
            DebugWindow.Size = UDim2.new(0, 329, 0, 100)
            DebugWindow.BackgroundTransparency = 1 

            Shadow_4.Name = "Shadow"
            Shadow_4.Parent = DebugWindow
            Shadow_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Shadow_4.BackgroundTransparency = 1.000
            Shadow_4.Position = UDim2.new(0, -15, 0, -15)
            Shadow_4.Size = UDim2.new(1, 30, 1, 30)
            Shadow_4.Image = "rbxassetid://5554236805"
            Shadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
            Shadow_4.ScaleType = Enum.ScaleType.Slice
            Shadow_4.SliceCenter = Rect.new(23, 23, 277, 277)
            Shadow_4.ImageTransparency = 1 

            UICorner_23.CornerRadius = UDim.new(0, 4)
            UICorner_23.Parent = DebugWindow

            NameOf_2.Name = "NameOf"
            NameOf_2.Parent = DebugWindow
            NameOf_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameOf_2.BackgroundTransparency = 1.000
            NameOf_2.Size = UDim2.new(1, 0, -0.190795302, 50)
            NameOf_2.Font = Enum.Font.Gotham
            NameOf_2.Text = "Settings"
            NameOf_2.TextColor3 = Color3.fromRGB(235, 235, 235)
            NameOf_2.TextSize = 14.000
            NameOf_2.TextTransparency = 1 

            border_9.Name = "border"
            border_9.Parent = DebugWindow
            border_9.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            border_9.BorderSizePixel = 0
            border_9.Position = UDim2.new(0, 0, 0.293809533, 0)
            border_9.Size = UDim2.new(1, 0, 0, 1)
            border_9.BackgroundTransparency = 1

            Close.Name = "Close"
            Close.Parent = DebugWindow
            Close.BackgroundColor3 = Color3.fromRGB(190, 18, 44)
            Close.Position = UDim2.new(0.0303951371, 0, 0.419999987, 0)
            Close.Size = UDim2.new(0, 57, 0, 50)
            Close.Font = Enum.Font.GothamMedium
            Close.Text = "Close"
            Close.TextColor3 = Color3.fromRGB(0, 0, 0)
            Close.TextSize = 12.000
            Close.BackgroundTransparency = 1 
            Close.TextTransparency = 1 
            Close.AutoButtonColor = false 
            Close.MouseButton1Click:Connect(function()
                Base:Destroy()
            end)
            UICorner_22.CornerRadius = UDim.new(0, 4)
            UICorner_22.Parent = Close

            Shadow_22.Name = "Shadow"
            Shadow_22.Parent = Close
            Shadow_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Shadow_22.BackgroundTransparency = 1.000
            Shadow_22.Position = UDim2.new(0, -15, 0, -15)
            Shadow_22.Size = UDim2.new(1, 30, 1, 30)
            Shadow_22.Image = "rbxassetid://5554236805"
            Shadow_22.ImageColor3 = Color3.fromRGB(190, 18, 44)
            Shadow_22.ScaleType = Enum.ScaleType.Slice
            Shadow_22.SliceCenter = Rect.new(23, 23, 277, 277)
            Shadow_22.ImageTransparency =1 

            Theme.Name = "Theme"
            Theme.Parent = DebugWindow
            Theme.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
            Theme.Position = UDim2.new(0.224924013, 0, 0.419999987, 0)
            Theme.Size = UDim2.new(0, 57, 0, 50)
            Theme.Font = Enum.Font.GothamMedium
            Theme.Text = "Theme"
            Theme.TextColor3 = Color3.fromRGB(0, 0, 0)
            Theme.TextSize = 12.000
            Theme.BackgroundTransparency = 1 
            Theme.TextTransparency = 1 
            Theme.AutoButtonColor = false 

            UICorner_3.CornerRadius = UDim.new(0, 4)
            UICorner_3.Parent = Theme

            Shadow_3.Name = "Shadow"
            Shadow_3.Parent = Theme
            Shadow_3.BackgroundColor3 = Color3.fromRGB(255, 170, 0)
            Shadow_3.BackgroundTransparency = 1.000
            Shadow_3.Position = UDim2.new(0, -15, 0, -15)
            Shadow_3.Size = UDim2.new(1, 30, 1, 30)
            Shadow_3.Image = "rbxassetid://5554236805"
            Shadow_3.ImageColor3 = Color3.fromRGB(255, 170, 0)
            Shadow_3.ScaleType = Enum.ScaleType.Slice
            Shadow_3.SliceCenter = Rect.new(23, 23, 277, 277)
            Shadow_3.ImageTransparency =1 

           local info = TweenInfo.new(.25, Enum.EasingStyle.Linear)
    asdasd = false 
            album.MouseButton1Click:Connect(function()
                    asdasd = not asdasd
                    if asdasd then
                        TweenService:Create(DebugWindow,info, { BackgroundTransparency = 0 }):Play()
                        TweenService:Create(Shadow_4,info,{ ImageTransparency = 0 }):Play()
                        TweenService:Create(NameOf_2,info, { TextTransparency = 0 }):Play()
                        TweenService:Create(border_9,info, { BackgroundTransparency = 0 }):Play()
                        TweenService:Create(Close,info, { BackgroundTransparency = 0, TextTransparency = 0}):Play()
                        TweenService:Create(Shadow_22,info,{ ImageTransparency = 0 }):Play()
                        TweenService:Create(Theme,info, { BackgroundTransparency = 0, TextTransparency = 0}):Play()
                        TweenService:Create(Shadow_3,info,{ ImageTransparency = 0 }):Play()
                        else
                            TweenService:Create(DebugWindow,info, { BackgroundTransparency = 1 }):Play()
                            TweenService:Create(Shadow_4,info,{ ImageTransparency = 1 }):Play()
                            TweenService:Create(NameOf_2,info, { TextTransparency = 1 }):Play()
                            TweenService:Create(border_9,info, { BackgroundTransparency = 1 }):Play()
                            TweenService:Create(Close,info, { BackgroundTransparency = 1, TextTransparency = 1}):Play()
                            TweenService:Create(Shadow_22,info,{ ImageTransparency = 1 }):Play()
                            TweenService:Create(Theme,info, { BackgroundTransparency = 1, TextTransparency =1}):Play()
                            TweenService:Create(Shadow_3,info,{ ImageTransparency = 1 }):Play()
                    end
                end)




        one_2.Name = "one"
        one_2.Parent = motherFrame
        one_2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
        one_2.BorderSizePixel = 0
        one_2.Position = UDim2.new(0, 0, 0.0738095269, 0)
        one_2.Size = UDim2.new(1, 0, 0, 1)

        Pages.Name = "Pages"
        Pages.Parent = motherFrame

    

          -- TAB LIST START 
            TabContainer.Name = "TabContainer"
            TabContainer.Parent = motherFrame
            TabContainer.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
            TabContainer.BackgroundTransparency = 1.000
            TabContainer.Position = UDim2.new(-0.282, 0, 0, 0)
            TabContainer.Size = UDim2.new(0, 153, 0, 420)

            TabList.Name = "TabList"
            TabList.Parent = TabContainer
            TabList.Active = true
            TabList.AnchorPoint = Vector2.new(0.5, 0.5)
            TabList.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TabList.BackgroundTransparency = 1.000
            TabList.BorderSizePixel = 0
            TabList.Position = UDim2.new(0.496356636, 0, 0.548028708, 0)
            TabList.Size = UDim2.new(0, 153, 0, 380)
            TabList.ScrollBarImageTransparency = 1 

            UIListLayout.Parent = TabList
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)

            
            task.spawn(function()
                while task.wait() do
                        TabList.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 5 )         
                end
            end)

            UICorner_2.CornerRadius = UDim.new(0, 4)
            UICorner_2.Parent = TabContainer

            NameOf.Name = "NameOf"
            NameOf.Parent = TabContainer
            NameOf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameOf.BackgroundTransparency = 1.000
            NameOf.Size = UDim2.new(1, 0, -0.0407953188, 50)
            NameOf.Font = Enum.Font.Gotham
            NameOf.Text = "Tabs"
            NameOf.TextColor3 = Color3.fromRGB(235, 235, 235)
            NameOf.TextSize = 14.000
            NameOf.TextTransparency = 1.000

            border.Name = "border"
            border.Parent = TabContainer
            border.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            border.BackgroundTransparency = 1.000
            border.BorderSizePixel = 0
            border.Position = UDim2.new(0, 0, 0.0738095269, 0)
            border.Size = UDim2.new(1, 0, 0, 1)

            Shadow_2.Name = "Shadow"
            Shadow_2.Parent = TabContainer
            Shadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Shadow_2.BackgroundTransparency = 1.000
            Shadow_2.Position = UDim2.new(0, -15, 0, -15)
            Shadow_2.Size = UDim2.new(1, 30, 1, 30)
            Shadow_2.Image = "rbxassetid://5554236805"
            Shadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
            Shadow_2.ImageTransparency = 1.000
            Shadow_2.ScaleType = Enum.ScaleType.Slice
            Shadow_2.SliceCenter = Rect.new(23, 23, 277, 277)

            local tw = TweenInfo.new(.25)
            enabled = false 
            list.MouseButton1Click:Connect(function()
            enabled = not enabled
            if enabled then
                TweenService:Create(TabContainer,tw,{ BackgroundTransparency = 0}):Play()
                TweenService:Create(NameOf,tw,{ TextTransparency = 0 }):Play()
                TweenService:Create(border,tw, { BackgroundTransparency = 0 }):Play()
                TweenService:Create(Shadow_2,tw, { ImageTransparency = 0 }):Play()

                for i,v in next, TabList:GetChildren() do
                    if v:IsA("TextButton") then
                        v.Visible = true
                    end
                end
            else
                TweenService:Create(TabContainer,tw,{ BackgroundTransparency = 1}):Play()
                TweenService:Create(NameOf,tw,{ TextTransparency = 1 }):Play()
                TweenService:Create(border,tw, { BackgroundTransparency = 1 }):Play()
                TweenService:Create(Shadow_2,tw, { ImageTransparency = 1 }):Play()
                for i,v in next, TabList:GetChildren() do
                    if v:IsA("TextButton") then
                        v.Visible = false
                    end
                end
            end
        end)

        local Tabs = {}
        
        function Tabs:Tab(settings)
            settings = settings or {}
            local Title = settings.Title or "New Tab"

            local Tab = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local Shadow_3 = Instance.new("ImageLabel")
            local Page = Instance.new("ScrollingFrame")
            local UIListLayout = Instance.new("UIListLayout")
            local UIPadding = Instance.new("UIPadding")
          
            Tab.Name = "Tab"
            Tab.Parent = TabList
            Tab.BackgroundColor3 = Color3.fromRGB(129, 145, 255)
            Tab.BackgroundTransparency = 1
            Tab.Position = UDim2.new(0.0686274543, 0, 0, 0)
            Tab.Size = UDim2.new(0, 132, 0, 28)
            Tab.AutoButtonColor = false
            Tab.Font = Enum.Font.Gotham
            Tab.Text = Title
            Tab.TextColor3 = Color3.fromRGB(0, 0, 0)
            Tab.TextSize = 12.000
            Tab.TextTransparency = 1.000
            Tab.Visible = false  


            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Tab

            Shadow_3.Name = "Shadow"
            Shadow_3.Parent = Tab
            Shadow_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Shadow_3.BackgroundTransparency = 1.000
            Shadow_3.Position = UDim2.new(0, -15, 0, -15)
            Shadow_3.Size = UDim2.new(1, 30, 1, 30)
            Shadow_3.Image = "rbxassetid://5554236805"
            Shadow_3.ImageColor3 = Color3.fromRGB(129, 145, 255)
            Shadow_3.ImageTransparency = 1.000
            Shadow_3.ScaleType = Enum.ScaleType.Slice
            Shadow_3.SliceCenter = Rect.new(23, 23, 277, 277)


            Page.Name = "Page"
            Page.Parent = Pages
            Page.Active = true
            Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Page.BackgroundTransparency = 1.000
            Page.BorderSizePixel = 0
            Page.Position = UDim2.new(-0.00168350164, 0, 0.0761904791, 0)
            Page.Size = UDim2.new(0, 595, 0, 387)
            Page.ScrollBarImageTransparency = 1 
            Page.Name = "Page"
            Page.Parent = Pages
            Page.Active = true
            Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Page.BackgroundTransparency = 1.000
            Page.BorderSizePixel = 0
            Page.Position = UDim2.new(-0.00168350164, 0, 0.0761904791, 0)
            Page.Size = UDim2.new(0, 595, 0, 387)

            UIListLayout.Parent = Page
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0,5)
            UIPadding.Parent = Page
            UIPadding.PaddingTop = UDim.new(0, 7)
            task.spawn(function()
                while task.wait() do
                    Page.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)
                end  
            end)

            int1 = 0 
            int2 = 0 
            for i,v in next, TabList:GetChildren() do
                if v:IsA("TextButton") then
                    int1 = int1 + 1 
                    v.Name = "Tab" .. int1
                    v.BackgroundTransparency = 0 
                    v.TextColor3 = Color3.fromRGB(0,0,0)
                    v.TextTransparency = 0 
                end
                if v:IsA("TextButton") and v.Name ~= "Tab1" then
                    v.BackgroundTransparency = 1
                    v.TextColor3 = Color3.fromRGB(235,235,235)

                end
            end
            for i,v in next, Pages:GetChildren() do
                int2 = int2 + 1
                v.Name = "Page" .. int2 

                if v.Name ~= "Page1" then
                    v.Visible = false 
                end
            end

            Tab.MouseButton1Click:Connect(function()
                for i,v in next, TabList:GetChildren() do
                    if v:IsA("TextButton") then
                        TweenService:Create(v, tw, { BackgroundTransparency = 1, TextColor3 = Color3.fromRGB(235,235,235)}):Play()
                    end
                    TweenService:Create(Tab, tw, { BackgroundTransparency = 0, TextColor3 = Color3.fromRGB(0,0,0) }):Play()
                end
                for i,v in next, Pages:GetChildren() do
                    v.Visible = false
                end
                Page.Visible = true 
            end)
            
            local Cards = {}
            function Cards:Section(settings)
                local Title = settings.Title or "New Section"


            local Section = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local UIListLayout = Instance.new("UIListLayout")
            local NameOf = Instance.new("TextLabel")
            local border = Instance.new("Frame")

            Section.Name = "Section"
            Section.Parent = Page
            Section.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            Section.Size = UDim2.new(0, 570, 0, 50)

            UICorner.CornerRadius = UDim.new(0, 4)
            UICorner.Parent = Section

            UIListLayout.Parent = Section
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)

            NameOf.Name = "NameOf"
            NameOf.Parent = Section
            NameOf.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            NameOf.BackgroundTransparency = 1.000
            NameOf.Size = UDim2.new(0, 570, 0, 22)
            NameOf.Font = Enum.Font.Gotham
            NameOf.Text = tostring(Title)
            NameOf.TextColor3 = Color3.fromRGB(235, 235, 235)
            NameOf.TextSize = 14.000

            border.Name = "border"
            border.Parent = Section
            border.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            border.BorderSizePixel = 0
            border.Position = UDim2.new(0, 0, 0, 3)
            border.Size = UDim2.new(0, 570, 0, 1)


            task.spawn(function()
                while task.wait() do
                    Section.Size = UDim2.new(0,570,0,UIListLayout.AbsoluteContentSize.Y + 10)
                end
            end)

            local Elements = {}
            function Elements:Button(settings)
                settings = settings or {}
                local Title = settings.Title or "New Button"
                local Callback = settings.Callback or function() end 
            local ButtonElement = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local Stroke = Instance.new("UIStroke")
      
            ButtonElement.Name = "ButtonElement"
            ButtonElement.Parent = Section
            ButtonElement.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            ButtonElement.Size = UDim2.new(1, -15, 0, 30)
            ButtonElement.Font = Enum.Font.Gotham
            ButtonElement.TextColor3 = Color3.fromRGB(235, 235, 235)
            ButtonElement.TextSize = 12.000
            ButtonElement.Text = Title
            ButtonElement.AutoButtonColor = false 
            ButtonElement.ClipsDescendants = true 
            CreateShadow(ButtonElement,Color3.fromRGB(30,30,30))

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = ButtonElement
            
            Stroke.Parent = ButtonElement
            Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Stroke.Color = Color3.fromRGB(129, 145, 255)
            Stroke.LineJoinMode = Enum.LineJoinMode.Round
            Stroke.Thickness = .6
            Stroke.Transparency = 1 

            ButtonElement.MouseEnter:Connect(function(x, y)
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
            end)
            ButtonElement.MouseLeave:Connect(function(x, y)
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 1 }):Play()
            end)
            ButtonElement.MouseButton1Click:Connect(function()
                pcall(function()
                    Callback()
                end)
                CircleAnim(ButtonElement,Color3.fromRGB(129, 145, 255),Color3.fromRGB(55,55,55))
            end)
            end

            function Elements:Dropdown(settings)
                local t = settings.Title or "New Dropdown"
                local List = settings.List or {}
                local Callback = settings.Callback or function() end 
                local dropFunc = {}

            local Dropdown = Instance.new("TextButton")
            local UICorner = Instance.new("UICorner")
            local UIListLayout = Instance.new("UIListLayout")
            local Title = Instance.new("TextLabel")
            local UIPadding = Instance.new("UIPadding")
            local expand_more = Instance.new("ImageButton")
            local border = Instance.new("Frame")
        
            Dropdown.Name = "Dropdown"
            Dropdown.Parent = Section
            Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Dropdown.ClipsDescendants = true
            Dropdown.Position = UDim2.new(0.0131578948, 0, 0.201219514, 0)
            Dropdown.Size = UDim2.new(0, 555, 0, 30)
            Dropdown.AutoButtonColor = false
            Dropdown.Font = Enum.Font.Gotham
            Dropdown.Text = ""
            Dropdown.TextColor3 = Color3.fromRGB(235, 235, 235)
            Dropdown.TextSize = 12.000
            Dropdown.TextXAlignment = Enum.TextXAlignment.Left

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = Dropdown

            UIListLayout.Parent = Dropdown
            UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout.Padding = UDim.new(0, 5)

            Title.Name = "Title"
            Title.Parent = Dropdown
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Position = UDim2.new(-0.336874843, 0, 0, 0)
            Title.Size = UDim2.new(0, 555, 0, 30)
            Title.Font = Enum.Font.Gotham
            Title.Text = t
            Title.TextColor3 = Color3.fromRGB(235, 235, 235)
            Title.TextSize = 12.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            UIPadding.Parent = Title
            UIPadding.PaddingLeft = UDim.new(0, 7)

            expand_more.Name = "expand_more"
            expand_more.Parent = Title
            expand_more.BackgroundTransparency = 1.000
            expand_more.Position = UDim2.new(0.950729907, 0, 0.233333319, 0)
            expand_more.Size = UDim2.new(0, 19, 0, 15)
            expand_more.ZIndex = 2
            expand_more.Image = "rbxassetid://3926305904"
            expand_more.ImageColor3 = Color3.fromRGB(235, 235, 235)
            expand_more.ImageRectOffset = Vector2.new(564, 284)
            expand_more.ImageRectSize = Vector2.new(36, 36)
            expand_more.ScaleType = Enum.ScaleType.Fit

            border.Name = "border"
            border.Parent = Dropdown
            border.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            border.BorderSizePixel = 0
            border.Position = UDim2.new(0, 0, 0, 3)
            border.Size = UDim2.new(1, 0, 0, 1)


            local function newItem(v)
                local dropItem = Instance.new("TextButton")
                local UICorner_2 = Instance.new("UICorner")
                local Stroke = Instance.new("UIStroke")

                dropItem.Name = "dropItem"
                dropItem.Parent = Dropdown
                dropItem.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
                dropItem.Position = UDim2.new(-0.280180186, 0, 0.512499988, 0)
                dropItem.Size = UDim2.new(0, 533, 0, 32)
                dropItem.AutoButtonColor = false
                dropItem.Font = Enum.Font.Gotham
                dropItem.TextColor3 = Color3.fromRGB(235, 235, 235)
                dropItem.TextSize = 12.000
                dropItem.Text = v 
                CreateShadow(dropItem, Color3.fromRGB(39,39,39))
                UICorner_2.CornerRadius = UDim.new(0, 3)
                UICorner_2.Parent = dropItem

                Stroke.Parent = dropItem
            Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Stroke.Color = Color3.fromRGB(129, 145, 255)
            Stroke.LineJoinMode = Enum.LineJoinMode.Round
            Stroke.Thickness = .6
            Stroke.Transparency = 1 
            dropItem.MouseEnter:Connect(function(x, y)
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
            end)
            dropItem.MouseLeave:Connect(function(x, y)
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 1 }):Play()
            end)
            dropItem.MouseButton1Click:Connect(function()
                pcall(function()
                    Callback(dropItem.Text)
                end)
                Title.Text = t .. " - " .. dropItem.Text
            end)
            end
            for i,v in next, List do
                newItem(v)
            end
            toggle = false 
            Dropdown.MouseButton1Click:Connect(function()
                toggle = not toggle 
                if toggle then
                    TweenService:Create(Dropdown, TweenInfo.new(.15), { Size = UDim2.new(0, 555, 0, UIListLayout.AbsoluteContentSize.Y + 5 )}):Play()
                else
                    TweenService:Create(Dropdown, TweenInfo.new(.15), { Size = UDim2.new(0, 555, 0,30 )}):Play()

                end
            end)
        
            function dropFunc:Refresh(settings)
                settings = settings or {}
                local list = settings.List or {}
                for i,v in next, Dropdown:GetChildren() do
                    if v.Name == "dropItem" then
                        v:Destroy()
                    end
                end
                for i,v in next, list do
                    newItem(v)
                end
            end
            return dropFunc
            end
            function Elements:Toggle(settings)
                settings = settings or {}
                local T = settings.Title or "New Toggle"
                local TDefault = settings.Default or false 
                local Callback = settings.Callback or function () end

                local Toggle = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local ToggleButton = Instance.new("TextButton")
                local Tracker = Instance.new("Frame")
                local UICorner_2 = Instance.new("UICorner")
                local Shadow = Instance.new("ImageLabel")
                local check = Instance.new("ImageButton")
                local Title = Instance.new("TextLabel")
                local UIPadding = Instance.new("UIPadding")

                Toggle.Name = "Toggle"
                Toggle.Parent = Section
                Toggle.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Toggle.Size = UDim2.new(0, 555, 0, 30)

                UICorner.CornerRadius = UDim.new(0, 3)
                UICorner.Parent = Toggle

                ToggleButton.Name = "ToggleButton"
                ToggleButton.Parent = Toggle
                ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                ToggleButton.BackgroundTransparency = 1.000
                ToggleButton.Size = UDim2.new(1, 0, 1, 0)
                ToggleButton.Font = Enum.Font.SourceSans
                ToggleButton.Text = ""
                ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
                ToggleButton.TextSize = 14.000

                Tracker.Name = "Tracker"
                Tracker.Parent = Toggle
                Tracker.AnchorPoint = Vector2.new(0.5, 0.5)
                Tracker.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
                Tracker.Position = UDim2.new(0.966216207, 0, 0.5, 0)
                Tracker.Size = UDim2.new(0, 20, 1, -11)
                Tracker.BackgroundTransparency = 0

                UICorner_2.CornerRadius = UDim.new(0, 3)
                UICorner_2.Parent = Tracker

                Shadow.Name = "Shadow"
                Shadow.Parent = Tracker
                Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Shadow.BackgroundTransparency = 1.000
                Shadow.Position = UDim2.new(0, -15, 0, -15)
                Shadow.Size = UDim2.new(1, 30, 1, 30)
                Shadow.Image = "rbxassetid://5554236805"
                Shadow.ImageColor3 = Color3.fromRGB(129, 145, 255)
                Shadow.ScaleType = Enum.ScaleType.Slice
                Shadow.SliceCenter = Rect.new(23, 23, 277, 277)

                check.Name = "check"
                check.Parent = Tracker
                check.BackgroundTransparency = 1.000
                check.LayoutOrder = 3
                check.Rotation = 90.000
                check.Size = UDim2.new(1, 0, 1, 0)
                check.ZIndex = 2
                check.Image = "rbxassetid://3926305904"
                check.ImageColor3 = Color3.fromRGB(40, 40, 40)
                check.ImageRectOffset = Vector2.new(312, 4)
                check.ImageRectSize = Vector2.new(24, 24)
                check.ScaleType = Enum.ScaleType.Fit

                Title.Name = "Title"
                Title.Parent = Toggle
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.Size = UDim2.new(0, 555, 0, 30)
                Title.Font = Enum.Font.Gotham
                Title.Text = T
                Title.TextColor3 = Color3.fromRGB(235, 235, 235)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left

                UIPadding.Parent = Title
                UIPadding.PaddingLeft = UDim.new(0, 7)

                
                local State = TDefault
                if TDefault then
                   State = true
                else
                   State = false
                end
                if TDefault then
                    pcall(Callback, State)
                    check.Rotation = 0 
                    Tracker.BackgroundColor3 = Color3.fromRGB(129, 145, 255)
                    Shadow.ImageTransparency = 0
                        State = true
                    else
                        pcall(Callback, State)
                        check.Rotation = 100
                        Shadow.ImageTransparency =1
                        State = false
                        end
             
                        function Toggle()
                            State = not State
                            pcall(Callback, State)
        
                            local NewColour = State and Color3.fromRGB(129, 145, 255)  or Color3.fromRGB(40,40,40) 
                            local NewTrans = State and 0 or 90 
                            local NewImage  = State and 0 or 1 
                            TweenService:Create(Shadow,TweenInfo.new(.25), { ImageTransparency = NewImage }):Play()
                            local alpha =  TweenService:Create(check, TweenInfo.new(.25), {Rotation = NewTrans})
                            alpha:Play()
                            task.wait()
                             local   delta = TweenService:Create(Tracker,TweenInfo.new(.25), { BackgroundColor3 = NewColour})
                            delta:Play()
                        end
                        check.MouseButton1Click:Connect(Toggle)
                        ToggleButton.MouseButton1Click:Connect(Toggle)
            end
            function Elements:Slider(settings)
               settings = settings or {}
               local T = settings.Title or "New Slider"
               local Callback = settings.Callback or function() end 
               local Min = settings.Min or 0
               local Max = settings.Max or 1000
            local Default = settings.Default or Min
               if Min > Max then
                local vb = Min
                Min, Max = Max, vb
               end
               local SliderDef = math.clamp(Default, Min, Max) or math.clamp(50, Min, Max)
               local DefaultScale =  (Default - Min) / (Max - Min)

               
			local MinSize = 10
			local MaxSize = 36

            local Slider = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local Title = Instance.new("TextLabel")
            local UIPadding = Instance.new("UIPadding")
            local SliderButton = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local bar = Instance.new("Frame")
            local UICorner_3 = Instance.new("UICorner")
            local Int = Instance.new("TextBox")
            local UIPadding_2 = Instance.new("UIPadding")

           
            Slider.Name = "Slider"
            Slider.Parent = Section
            Slider.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Slider.Position = UDim2.new(0.0131578948, 0, 0.628048778, 0)
            Slider.Size = UDim2.new(0, 555, 0, 48)

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = Slider

            Title.Name = "Title"
            Title.Parent = Slider
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Size = UDim2.new(0, 555, 0, 30)
            Title.Font = Enum.Font.Gotham
            Title.Text = T
            Title.TextColor3 = Color3.fromRGB(235, 235, 235)
            Title.TextSize = 12.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            UIPadding.Parent = Title
            UIPadding.PaddingLeft = UDim.new(0, 7)

            SliderButton.Name = "SliderButton"
            SliderButton.Parent = Slider
            SliderButton.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
            SliderButton.Position = UDim2.new(0.0144144148, 0, 0.625, 0)
            SliderButton.Size = UDim2.new(1, -15, 0, 7)
            SliderButton.AutoButtonColor = false
            SliderButton.Font = Enum.Font.SourceSans
            SliderButton.Text = ""
            SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            SliderButton.TextSize = 14.000

            UICorner_2.Parent = SliderButton

            bar.Name = "bar"
            bar.Parent = SliderButton
            bar.BackgroundColor3 = Color3.fromRGB(129, 145, 255)
            bar.BorderColor3 = Color3.fromRGB(30, 30, 30)
            bar.Size = UDim2.fromScale(DefaultScale,1)

            UICorner_3.Parent = bar

            Int.Name = "Int"
            Int.Parent = Slider
            Int.Active = false
            Int.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Int.BackgroundTransparency = 1.000
            Int.Position = UDim2.new(0.699099123, 0, 0, 0)
            Int.Selectable = false
            Int.Size = UDim2.new(0, 167, 0, 30)
            Int.Font = Enum.Font.Gotham
            Int.TextColor3 = Color3.fromRGB(235, 235, 235)
            Int.TextSize = 12.000
            Int.TextXAlignment = Enum.TextXAlignment.Right
            Int.Text = Default
            pcall(function()
                Callback(Int.Text)
            end)
            UIPadding_2.Parent = Int
            UIPadding_2.PaddingRight = UDim.new(0, 15)


            Int.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
                if enterPressed then
                       numb = tonumber(Int.Text)
                 
                      local function check()
                            if numb < Min and numb > Max then
                                return false 
                                elseif numb >= Min and numb <= Max then
                                    return true 
                                end
                      end
                      if check() then
                        local oldSliderDef = math.clamp(Int.Text, Min, Max) or math.clamp(50, Min, Max)
                        local oldDefaultScale =  (oldSliderDef - Min) / (Max - Min)
                        pcall(function()
                            Callback(Int.Text)
                        end)
                        TweenService:Create(bar, TweenInfo.new(0.15), {Size = UDim2.fromScale(oldDefaultScale, 1)}):Play()
                      end
                end  
            end)
            SliderButton.MouseButton1Down:Connect(function()
                local MouseMove, MouseKill
                MouseMove = Mouse.Move:Connect(function()
                    local Px = GetXY(SliderButton)
                    local SizeFromScale = (MinSize +  (MaxSize - MinSize)) * Px
                    local Value = math.floor(Min + ((Max - Min) * Px))
                    SizeFromScale = SizeFromScale - (SizeFromScale % 2)
                    TweenService:Create(bar, TweenInfo.new(0.15), {Size = UDim2.fromScale(Px, 1)}):Play()
                    Int.Text = tostring(Value)
                    pcall(function()
                        Callback(Value)
                    end)
                end)
                MouseKill = game:GetService("UserInputService").InputEnded:Connect(function(UserInput)
                    if UserInput.UserInputType == Enum.UserInputType.MouseButton1 then
                        MouseMove:Disconnect()
                        MouseKill:Disconnect()
                    end
                end)
            end)
            end
            function Elements:Label(settings)
                settings = settings or {}
                local T = settings.Title or "New Label"
                local LabelFunctions = {}
    
                local Label = Instance.new("Frame")
                local UICorner = Instance.new("UICorner")
                local Title = Instance.new("TextLabel")

               
                Label.Name = "Label"
                Label.Parent = Section
                Label.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Label.Position = UDim2.new(0.0131578948, 0, 0.735849082, 0)
                Label.Size = UDim2.new(0, 555, 0, 39)

                UICorner.CornerRadius = UDim.new(0, 3)
                UICorner.Parent = Label

                Title.Name = "Title"
                Title.Parent = Label
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(0, 0, 0.102564104, 0)
                Title.Size = UDim2.new(0, 555, 0, 30)
                Title.Font = Enum.Font.Gotham
                Title.Text = T
                Title.TextColor3 = Color3.fromRGB(235, 235, 235)
                Title.TextSize = 15.000

                function LabelFunctions:SetText(settings)
                    settings = settings or {}
                    local Tt = settings.Title or "nil"
                    Title.Text = Tt
                end
                return LabelFunctions
            end
            function Elements:Datalist(settings)
                local text = settings.Title or "New Datalist"
                local list = settings.Items or {}
                local Callback = settings.Callback or function() end 
                local funcs = {}
                local Dropdownd = {Value = {}, Toggled = false, Options = list}
               
                local Dropdown = Instance.new("TextButton")
                local UICorner = Instance.new("UICorner")
                local UIListLayout = Instance.new("UIListLayout")
                local Title = Instance.new("TextLabel")
                local UIPadding = Instance.new("UIPadding")
                local expand_more = Instance.new("ImageButton")
                local border = Instance.new("Frame")
            
                Dropdown.Name = "Dropdown"
                Dropdown.Parent = Section
                Dropdown.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
                Dropdown.ClipsDescendants = true
                Dropdown.Position = UDim2.new(0.0131578948, 0, 0.201219514, 0)
                Dropdown.Size = UDim2.new(0, 555, 0, 30)
                Dropdown.AutoButtonColor = false
                Dropdown.Font = Enum.Font.Gotham
                Dropdown.Text = ""
                Dropdown.TextColor3 = Color3.fromRGB(235, 235, 235)
                Dropdown.TextSize = 12.000
                Dropdown.TextXAlignment = Enum.TextXAlignment.Left
    
                UICorner.CornerRadius = UDim.new(0, 3)
                UICorner.Parent = Dropdown
    
                UIListLayout.Parent = Dropdown
                UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
                UIListLayout.Padding = UDim.new(0, 5)
    
                Title.Name = "Title"
                Title.Parent = Dropdown
                Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Title.BackgroundTransparency = 1.000
                Title.Position = UDim2.new(-0.336874843, 0, 0, 0)
                Title.Size = UDim2.new(0, 555, 0, 30)
                Title.Font = Enum.Font.Gotham
                Title.Text = text
                Title.TextColor3 = Color3.fromRGB(235, 235, 235)
                Title.TextSize = 12.000
                Title.TextXAlignment = Enum.TextXAlignment.Left
    
                UIPadding.Parent = Title
                UIPadding.PaddingLeft = UDim.new(0, 7)
    
                expand_more.Name = "expand_more"
                expand_more.Parent = Title
                expand_more.BackgroundTransparency = 1.000
                expand_more.Position = UDim2.new(0.950729907, 0, 0.233333319, 0)
                expand_more.Size = UDim2.new(0, 19, 0, 15)
                expand_more.ZIndex = 2
                expand_more.Image = "rbxassetid://3926305904"
                expand_more.ImageColor3 = Color3.fromRGB(235, 235, 235)
                expand_more.ImageRectOffset = Vector2.new(564, 284)
                expand_more.ImageRectSize = Vector2.new(36, 36)
                expand_more.ScaleType = Enum.ScaleType.Fit
    
                border.Name = "border"
                border.Parent = Dropdown
                border.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                border.BorderSizePixel = 0
                border.Position = UDim2.new(0, 0, 0, 3)
                border.Size = UDim2.new(1, 0, 0, 1)
    
    
                    local dropItem = Instance.new("TextButton")
                    local UICorner_2 = Instance.new("UICorner")
                    local Stroke = Instance.new("UIStroke")
    
                    dropItem.Name = "dropItem"
                    dropItem.Parent = motherFrame
                    dropItem.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
                    dropItem.Position = UDim2.new(-0.280180186, 0, 0.512499988, 0)
                    dropItem.Size = UDim2.new(0, 533, 0, 32)
                    dropItem.AutoButtonColor = false
                    dropItem.Font = Enum.Font.Gotham
                    dropItem.TextColor3 = Color3.fromRGB(235, 235, 235)
                    dropItem.TextSize = 12.000
                    dropItem.Text = ""
                    dropItem.Visible = false 
                    CreateShadow(dropItem, Color3.fromRGB(39,39,39))
                    UICorner_2.CornerRadius = UDim.new(0, 3)
                    UICorner_2.Parent = dropItem
    
                    Stroke.Parent = dropItem
                    Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    Stroke.Color = Color3.fromRGB(129, 145, 255)
                    Stroke.LineJoinMode = Enum.LineJoinMode.Round
                    Stroke.Thickness = .6
                    Stroke.Transparency = 1
                    Stroke.Name = "Stroke"
                dropItem.MouseEnter:Connect(function(x, y)
                    TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
                end)
                dropItem.MouseLeave:Connect(function(x, y)
                    TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 1 }):Play()
                end)
              
                
        
                toggle = false 
                Dropdown.MouseButton1Click:Connect(function()
                    toggle = not toggle 
                    if toggle then
                        TweenService:Create(Dropdown, TweenInfo.new(.15), { Size = UDim2.new(0, 555, 0, UIListLayout.AbsoluteContentSize.Y + 5 )}):Play()
                    else
                        TweenService:Create(Dropdown, TweenInfo.new(.15), { Size = UDim2.new(0, 555, 0,30 )}):Play()
    
                    end
                end)

                local function AddOptions(opts)
                    for _,option in pairs(opts) do
                        local Option = dropItem:Clone()
                        Option.Parent = Dropdown
                        Option.Text = option
                        Option.Visible = true 
                        Option.ClipsDescendants = true

                        Option.MouseEnter:Connect(function(x, y)
                    TweenService:Create(Option.Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
                end)
                Option.MouseLeave:Connect(function(x, y)
                    TweenService:Create(Option.Stroke,TweenInfo.new(.2), { Transparency = 1 }):Play()
                end)
                        Option.MouseButton1Click:Connect(function()
                            if table.find(Dropdownd.Value, option) then				
								table.remove(Dropdownd.Value, table.find(Dropdownd.Value, option))
								Title.Text = text .. " - " .. table.concat(Dropdownd.Value, ", ")
								pcall(Callback,Dropdownd.Value)
							else
								table.insert(Dropdownd.Value, option)
								Title.Text = text .. " - " .. table.concat(Dropdownd.Value, ", ")
								pcall(Callback,Dropdownd.Value)
							end
                        end)
                    end   
                end    
                AddOptions(list)
                function funcs:Refresh(settings)
                    settings = settings or {}
                    local newItems = settings.Items or {}

                    for i,v in next, Dropdown:GetChildren() do
                        if v.Name == "dropItem" then
                            v:Destroy()
                    end
                end
                AddOptions(newItems)
                function funcs:Set(settings)
                    settings = settings or {}
                    local newV = settings.Value 
                    Dropdownd.Value = newV
                    Title.Text = Title.Text .. " - " .. table.concat(Dropdownd.Value, ", ")
                    return Callback(Dropdownd.Value) 
                end
            end
            return funcs
        end
        function Elements:TextField(settings)
    settings = settings or {} 
    local t = settings.Title or "New Field"
    local PText = settings.Placeholder or ""
    local Callback = settings.Callback or function () end 
    
  
            local TextField = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local ToggleButton = Instance.new("TextButton")
            local Title = Instance.new("TextLabel")
            local UIPadding = Instance.new("UIPadding")
            local Input = Instance.new("TextBox")
            local UICorner_2 = Instance.new("UICorner")
            local Stroke = Instance.new("UIStroke")
            local five = Instance.new("UIPadding")
 
            TextField.Name = "TextField"
            TextField.Parent = Section
            TextField.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            TextField.Size = UDim2.new(0, 555, 0, 30)

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = TextField

            ToggleButton.Name = "ToggleButton"
            ToggleButton.Parent = TextField
            ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ToggleButton.BackgroundTransparency = 1.000
            ToggleButton.Size = UDim2.new(1, 0, 1, 0)
            ToggleButton.Font = Enum.Font.SourceSans
            ToggleButton.Text = ""
            ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
            ToggleButton.TextSize = 14.000

            Title.Name = "Title"
            Title.Parent = TextField
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Size = UDim2.new(0, 555, 0, 30)
            Title.Font = Enum.Font.Gotham
            Title.Text = t
            Title.TextColor3 = Color3.fromRGB(235, 235, 235)
            Title.TextSize = 12.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            UIPadding.Parent = Title
            UIPadding.PaddingLeft = UDim.new(0, 7)

            Input.Name = "Input"
            Input.Parent = TextField
            Input.AnchorPoint = Vector2.new(0.5, 0.5)
            Input.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
            Input.ClipsDescendants = true
            Input.Position = UDim2.new(0.870522559, 0, 0.5, 0)
            Input.Size = UDim2.new(-0.127927929, 200, 1, -10)
            Input.Font = Enum.Font.Gotham
            Input.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
            Input.Text = ""
            Input.TextColor3 = Color3.fromRGB(235, 235, 235)
            Input.TextSize = 12.000
            Input.PlaceholderText = PText
            Input.TextXAlignment = Enum.TextXAlignment.Center

            five.Parent = Input
            five.PaddingLeft = UDim.new(0,5)

            UICorner_2.CornerRadius = UDim.new(0, 3)
            UICorner_2.Parent = Input

            Stroke.Parent = Input
            Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Stroke.Color = Color3.fromRGB(129, 145, 255)
            Stroke.LineJoinMode = Enum.LineJoinMode.Round
            Stroke.Thickness = .6
            Stroke.Transparency = 1 

            ToggleButton.MouseButton1Click:Connect(function()
                Input:CaptureFocus()
                Input:TweenSizeAndPosition(UDim2.new(0.112, 200,1, -10),UDim2.new(0.751, 0,0.5, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.1,false)
                Input.TextXAlignment = Enum.TextXAlignment.Left
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
            end)
            Input.Focused:Connect(function()
                Input:TweenSizeAndPosition(UDim2.new(0.112, 200,1, -10),UDim2.new(0.751, 0,0.5, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.1,false)
                Input.TextXAlignment = Enum.TextXAlignment.Left
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
            end)
            Input.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
                if enterPressed then
                    pcall(function()
                        Callback(Input.Text)
                    end)
                end
                Input:TweenSizeAndPosition(UDim2.new(-0.128, 200,1, -10),UDim2.new(0.871, 0,0.5, 0),Enum.EasingDirection.InOut,Enum.EasingStyle.Sine,.1,true)
                Input.TextXAlignment = Enum.TextXAlignment.Center
                TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 1 }):Play()
            end)
        end
        function Elements:Keybind(settings)
            settings = settings or {}
            local T = settings.Title or {}
            local Key = settings.Key or Enum.KeyCode.F
            local Callback = settings.Callback or function() end 
            local oldKey = Key.Name


            local Keybind = Instance.new("Frame")
            local UICorner = Instance.new("UICorner")
            local ToggleButton = Instance.new("TextButton")
            local Title = Instance.new("TextLabel")
            local UIPadding = Instance.new("UIPadding")
            local Input = Instance.new("TextButton")
            local UICorner_2 = Instance.new("UICorner")
            local Stroke = Instance.new("UIStroke")

        
            Keybind.Name = "Keybind"
            Keybind.Parent = Section
            Keybind.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Keybind.Size = UDim2.new(0, 555, 0, 30)

            UICorner.CornerRadius = UDim.new(0, 3)
            UICorner.Parent = Keybind

            Title.Name = "Title"
            Title.Parent = Keybind
            Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Title.BackgroundTransparency = 1.000
            Title.Size = UDim2.new(0, 555, 0, 30)
            Title.Font = Enum.Font.Gotham
            Title.Text = T
            Title.TextColor3 = Color3.fromRGB(235, 235, 235)
            Title.TextSize = 12.000
            Title.TextXAlignment = Enum.TextXAlignment.Left

            UIPadding.Parent = Title
            UIPadding.PaddingLeft = UDim.new(0, 7)

            Input.Name = "Input"
            Input.Parent = Keybind
            Input.AnchorPoint = Vector2.new(0.5, 0.5)
            Input.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
            Input.ClipsDescendants = true
            Input.Position = UDim2.new(0.870522559, 0, 0.5, 0)
            Input.Size = UDim2.new(-0.127927929, 200, 1, -10)
            Input.AutoButtonColor = false
            Input.Font = Enum.Font.Gotham
            Input.Text = oldKey
            Input.TextColor3 = Color3.fromRGB(235, 235, 235)
            Input.TextSize = 12.000

            Stroke.Parent = Input
            Stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            Stroke.Color = Color3.fromRGB(129, 145, 255)
            Stroke.LineJoinMode = Enum.LineJoinMode.Round
            Stroke.Thickness = .6
            Stroke.Transparency = 1 


            UICorner_2.CornerRadius = UDim.new(0, 3)
            UICorner_2.Parent = Input

            Input.MouseButton1Click:Connect(function()
             TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 0 }):Play()
                Input.TextSize = 0 
                TweenService:Create(Input,TweenInfo.new(.2),{ TextSize = 15}):Play()
                Input.Text = "..."
                wait(.2)
                TweenService:Create(Input,TweenInfo.new(.2),{TextSize = 13}):Play()
                Input.Text = "..."
                local a, b = game:GetService('UserInputService').InputBegan:wait();
                if a.KeyCode.Name ~= "Unknown" then
                    Input.Text = a.KeyCode.Name
                    oldKey = a.KeyCode.Name;
                    TweenService:Create(Stroke,TweenInfo.new(.2), { Transparency = 1 }):Play()
                end
            end)
        local b =     game:GetService("UserInputService").InputBegan:connect(function(current, ok) 
                if not ok then 
                    if current.KeyCode.Name == oldKey then 
                        pcall(function()
                            Callback()
                        end)
                    end
                end
            end)


            game:GetService("CoreGui").ChildRemoved:Connect(function(child)
                        if child.Name == "Base" then
                            b:Disconnect()
                        end
                end)
        end
            return Elements
            end
            return Cards
        end
        return Tabs
end
return Library

--thanks deity :kissing_heart: 
