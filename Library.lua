--[HackPanel]
local CoreGui = game:GetService("CoreGui")

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local Lib = {}

	function Lib.Hub(name)
		if not CoreGui:FindFirstChild(name) then
			local Window = Instance.new("ScreenGui")
			local UICorner = Instance.new("UICorner")
			local UIList = Instance.new("UIListLayout")
			UIList.Padding = UDim.new(0,5)
			UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIList.VerticalAlignment = Enum.VerticalAlignment.Top
			UICorner.CornerRadius = UDim.new(0,5)
			local Background = Instance.new("Frame")
			local TopPanel = Instance.new("Frame")
			local LeftPanel = Instance.new("Frame")
			local HeadPanel	= Instance.new("Frame")
			local ScrollLeftPanel = Instance.new("ScrollingFrame")
			local Open = Instance.new("ImageButton")
			local Title = Instance.new("TextLabel")
			local Close = Instance.new("ImageButton")
			
		local C1 = UICorner:Clone()
		local C2 = UICorner:Clone()
		local C3 = UICorner:Clone()
		local C4 = UICorner:Clone()
		local C5 = UICorner:Clone()
			
			Window.Enabled = true
			Window.DisplayOrder = math.huge
			Window.ResetOnSpawn = true
			Window.Name = name
			Window.Parent = CoreGui
			
			Background.ZIndex = 0
			Background.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Background.BackgroundTransparency = 0.4
			Background.Size = UDim2.new(0, 385, 0, 245)
			Background.Position = UDim2.new(0.275, 0, 0.29, 0)
			Background.Active = true
			Background.Visible = false
			Background.Name = "Background"
			Background.Parent = Window
			C1.Parent = Background
			
			TopPanel.ZIndex = 999
			TopPanel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			TopPanel.BackgroundTransparency = 0
			TopPanel.Size = UDim2.new(0, 385, 0, 25)
			TopPanel.Position = UDim2.new(0, 0, 0, 0)
			TopPanel.Active = false
			TopPanel.Visible = true
			TopPanel.Name = "TopPanel"
			TopPanel.Parent = Background
			C2.Parent = TopPanel
			
			LeftPanel.ZIndex = 1
			LeftPanel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LeftPanel.BackgroundTransparency = 0.8
			LeftPanel.Size = UDim2.new(0, 100, 0, 245)
			LeftPanel.Position = UDim2.new(0, 0, 0, 0)
			LeftPanel.Active = false
			LeftPanel.Visible = true
			LeftPanel.Name = "LeftPanel"
			LeftPanel.Parent = Background
			C3.Parent = LeftPanel
			
			ScrollLeftPanel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			ScrollLeftPanel.BackgroundTransparency = 1
			ScrollLeftPanel.ScrollBarThickness = 0
			ScrollLeftPanel.CanvasSize = UDim2.new(0,0,0,0)
			ScrollLeftPanel.Position = UDim2.new(0,0,0.11,0)
			ScrollLeftPanel.Size = UDim2.new(0, 100, 0, 217)
			ScrollLeftPanel.Visible = true
			ScrollLeftPanel.AutomaticCanvasSize = Enum.AutomaticSize.Y
			ScrollLeftPanel.ScrollingDirection = Enum.ScrollingDirection.Y
			ScrollLeftPanel.Name = "ScrollList"
			ScrollLeftPanel.Parent = LeftPanel
			
			HeadPanel.ZIndex = 1
			HeadPanel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			HeadPanel.BackgroundTransparency = 0.8
			HeadPanel.Size = UDim2.new(0, 281, 0, 245)
			HeadPanel.Position = UDim2.new(0.27, 0, 0, 0)
			HeadPanel.Active = false
			HeadPanel.Visible = true
			HeadPanel.Name = "HeadPanel"
			HeadPanel.Parent = Background
			C4.Parent = HeadPanel
			
			Title.ZIndex = 999
			Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Title.BackgroundTransparency = 1
			Title.Size = UDim2.new(0, 144, 0, 25)
			Title.Position = UDim2.new(0, 0, 0, 0)
			Title.Active = false
			Title.Visible = true
			Title.TextColor3 = Color3.fromRGB(255,255,255)
			Title.TextScaled = true
			Title.RichText = true
			Title.Font = Enum.Font.PatrickHand
			Title.TextXAlignment = Enum.TextXAlignment.Left
			Title.Name = "Title"
			Title.Text = tostring(" "..name):upper()
			Title.Parent = TopPanel
			
			Close.ZIndex = 999
			Close.BackgroundTransparency = 1
			Close.BackgroundColor3 = Color3.fromRGB(15,15,15)
			Close.Size = UDim2.new(0, 25, 0, 25)
			Close.Position = UDim2.new(0.934, 0, 0.043, 0)
			Close.Image = "rbxassetid://83908104149378"
			Close.Visible = true
			Close.Name = "Close"
			Close.Parent = TopPanel
			
			Open.BackgroundTransparency = 1
			Open.BackgroundColor3 = Color3.fromRGB(0,0,0)
			Open.Size = UDim2.new(0, 40, 0, 40)
			Open.Position = UDim2.new(0.476, 0, 0.043, 0)
			Open.Image = "rbxassetid://111461225898428"
			Open.Visible = true
			Open.Name = "Open"
			Open.Parent = Window
			C5.Parent = Open
			
			UIList.Parent = ScrollLeftPanel
			UIList.Padding = UDim.new(0,5)
			UIList.HorizontalAlignment = Enum.HorizontalAlignment.Center
			
			
			Open.MouseButton1Click:Connect(function()
				if Background.Visible == false then
					Background.Visible = true
					Open.Visible = false
				end
			end)
			
			Close.MouseButton1Click:Connect(function()
				if Background.Visible == true then
				Background.Visible = false
				Open.Visible = true
				end
			end)
		local gui = Background

		local dragging
		local dragInput
		local dragStart
		local startPos

		function Lerp(a, b, m)
			return a + (b - a) * m
		end;

		local lastMousePos
		local lastGoalPos
		local DRAG_SPEED = (6); -- // The speed of the UI darg.
		function Update(dt)
			if not (startPos) then return end;
			if not (dragging) and (lastGoalPos) then
				gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
				return 
			end;

			local delta = (lastMousePos - UserInputService:GetMouseLocation())
			local xGoal = (startPos.X.Offset - delta.X);
			local yGoal = (startPos.Y.Offset - delta.Y);
			lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
		end;

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				lastMousePos = UserInputService:GetMouseLocation()

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		RunService.Heartbeat:Connect(Update)
		
		local gui = Open

		local dragging
		local dragInput
		local dragStart
		local startPos

		function Lerp(a, b, m)
			return a + (b - a) * m
		end;

		local lastMousePos
		local lastGoalPos
		local DRAG_SPEED = (5); -- // The speed of the UI darg.
		function Update(dt)
			if not (startPos) then return end;
			if not (dragging) and (lastGoalPos) then
				gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
				return 
			end;

			local delta = (lastMousePos - UserInputService:GetMouseLocation())
			local xGoal = (startPos.X.Offset - delta.X);
			local yGoal = (startPos.Y.Offset - delta.Y);
			lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
		end;

		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
				lastMousePos = UserInputService:GetMouseLocation()

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)

		RunService.Heartbeat:Connect(Update)
		
		
		
		
		function Lib:Section(name)
			if not ScrollLeftPanel:FindFirstChild(name) then
				print(name)
				local SectionB = Instance.new("TextButton")
				local SectionF = Instance.new("Frame")
				local SectionS = Instance.new("ScrollingFrame")
				local TitleF = Instance.new("TextLabel")
				local UIList1 = Instance.new("UIListLayout")
				UIList1.Padding = UDim.new(0,5)
				UIList1.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIList1.VerticalAlignment = Enum.VerticalAlignment.Top
				
				SectionB.LayoutOrder = -1
				SectionB.BackgroundTransparency = 0.75
				SectionB.BackgroundColor3 = Color3.fromRGB(0,0,0)
				SectionB.Size = UDim2.new(0, 95, 0, 30)
				SectionB.Text = name
				SectionB.Visible = true
				SectionB.Font = Enum.Font.PatrickHand
				SectionB.TextColor3 = Color3.fromRGB(255,255,255)
				SectionB.TextScaled = true
				SectionB.Name = name
				SectionB.Parent = ScrollLeftPanel

				SectionF.ZIndex = 1
				SectionF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				SectionF.BackgroundTransparency = 0.8
				SectionF.Size = UDim2.new(0, 281, 0, 220)
				SectionF.Position = UDim2.new(0, 0, 0.102, 0)
				SectionF.Visible = false
				SectionF.Name = name
				SectionF.Parent = HeadPanel

				SectionS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				SectionS.BackgroundTransparency = 1
				SectionS.ScrollBarThickness = 0
				SectionS.CanvasSize = UDim2.new(0,0,0,0)
				SectionS.Position = UDim2.new(0,0,0.011,0)
				SectionS.Size = UDim2.new(0, 281, 0, 217)
				SectionS.Visible = true
				SectionS.AutomaticCanvasSize = Enum.AutomaticSize.Y
				SectionS.ScrollingDirection = Enum.ScrollingDirection.Y
				SectionS.Name = "ScrollList"
				SectionS.Parent = SectionF
				UIList1.Parent = SectionS
				
				TitleF.LayoutOrder = 1
				TitleF.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				TitleF.BackgroundTransparency = 1
				TitleF.Size = UDim2.new(0, 281, 0, 25)
				TitleF.Active = false
				TitleF.Visible = true
				TitleF.TextColor3 = Color3.fromRGB(255,255,255)
				TitleF.TextScaled = true
				TitleF.RichText = true
				TitleF.Font = Enum.Font.PatrickHand
				TitleF.TextXAlignment = Enum.TextXAlignment.Center
				TitleF.Name = "Title"
				TitleF.Text = tostring(" "..name):upper()
				TitleF.Parent = SectionS

				SectionB.MouseButton1Click:Connect(function()
					for _, other in pairs(HeadPanel:GetChildren()) do
						if other:IsA("Frame") then
							if SectionB.Name ~= other.Name then
								other.Visible = false

							elseif SectionB.Name == other.Name then
								if other.Visible == false then
									other.Visible = true
								elseif other.Visible == true then
									other.Visible = false
								end
							end
						end
					end
				end)
				
				function Lib:ActiveB(name, color,functuin:FunctionalTest)
					local ActiveB = Instance.new("TextButton")
					local Inco = Instance.new("Frame")
					ActiveB.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					ActiveB.BackgroundTransparency = 1
					ActiveB.Size = UDim2.new(0, 280, 0, 35)
					ActiveB.Visible = true
					ActiveB.TextColor3 = Color3.fromRGB(255,255,255)
					ActiveB.TextScaled = true
					ActiveB.RichText = true
					ActiveB.Font = Enum.Font.PatrickHand
					ActiveB.TextXAlignment = Enum.TextXAlignment.Left
					ActiveB.Name = "Title"
					ActiveB.Text = " "..name
					ActiveB.Parent = SectionS
					
					Inco.Size = UDim2.new(0, 4, 0, 30)
					Inco.Parent = ActiveB
					Inco.BackgroundColor3 = color
					
					ActiveB.MouseButton1Click:Connect(function()
						functuin()
					end)
				end
				
				function Lib:ToggleB(name, theme ,color ,functuin:FunctionalTest)
					local ActiveB = Instance.new("TextButton")
					local ImageL = Instance.new("ImageLabel")
					local Inco = Instance.new("Frame")
					
					local Toggle = false
					local ImTg = {"rbxassetid://71881912549164", "rbxassetid://114005620437434", "rbxassetid://89521723015419"}
					
					ActiveB.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
					ActiveB.BackgroundTransparency = 1
					ActiveB.Size = UDim2.new(0, 280, 0, 35)
					ActiveB.Visible = true
					ActiveB.TextColor3 = Color3.fromRGB(255,255,255)
					ActiveB.TextScaled = true
					ActiveB.RichText = true
					ActiveB.Font = Enum.Font.PatrickHand
					ActiveB.TextXAlignment = Enum.TextXAlignment.Left
					ActiveB.Name = "Title"
					ActiveB.Text = " "..name
					ActiveB.Parent = SectionS
					
					ImageL.Parent = ActiveB
					ImageL.BackgroundTransparency = 1
					ImageL.Position = UDim2.new(0.872, 0, 0.056)
					ImageL.Size = UDim2.new(0,30,0,30)
					ImageL.Image = ImTg[1]
					ImageL.ImageColor3 = color
					
					Inco.Size = UDim2.new(0, 4, 0, 30)
					Inco.Parent = ActiveB
					Inco.BackgroundColor3 = color

					ActiveB.MouseButton1Click:Connect(function()
						if Toggle == false then
							Toggle = true
							ImageL.Image = ImTg[theme]
							while Toggle == true do
								functuin()
								wait()
							end
						elseif Toggle == true then
							
							Toggle = false
							ImageL.Image = ImTg[1]
							
						end
					end)
				end
			  end
			end
  elseif CoreGui:FindFirstChild(name) then
    CoreGui:FindFirstChild(name):Destroy()
		end
	end
