--Hey Snooper, how ya doing?

local HorrorNotice = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIStroke = Instance.new("UIStroke")
local Title1 = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local MiniTitle = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")

HorrorNotice.Name = "HorrorNotice"
HorrorNotice.Parent = game:GetService("CoreGui")

Frame.Parent = HorrorNotice
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.500
Frame.Position = UDim2.new(0.0157480389, 0, 0.0304878131, 0)
Frame.Size = UDim2.new(0, 371, 0, 170)

UIStroke.Parent = Frame
UIStroke.Color = Color3.fromRGB(148, 124, 98)
UIStroke.Thickness = 2.500
UIStroke.Transparency = 1

Title1.Name = "Title1"
Title1.Parent = Frame
Title1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title1.BackgroundTransparency = 1.000
Title1.Position = UDim2.new(0.115903087, 0, 0, 0)
Title1.Size = UDim2.new(0, 283, 0, 74)
Title1.Font = Enum.Font.Oswald
Title1.Text = "DOORS Horror Mode"
Title1.TextColor3 = Color3.fromRGB(212, 191, 160)
Title1.TextScaled = true
Title1.TextSize = 14.000
Title1.TextStrokeColor3 = Color3.fromRGB(212, 191, 160)
Title1.TextWrapped = true
Title1.TextTransparency = 1

UICorner.Parent = Title1

UICorner_2.Parent = Frame

MiniTitle.Name = "Mini-Title"
MiniTitle.Parent = Frame
MiniTitle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MiniTitle.BackgroundTransparency = 1.000
MiniTitle.Position = UDim2.new(0.0458222292, 0, 0.435294062, 0)
MiniTitle.Size = UDim2.new(0, 336, 0, 74)
MiniTitle.Font = Enum.Font.Oswald
MiniTitle.Text = "Made by Chrono for Ostoge. Have fun "..game.Players.LocalPlayer.DisplayName.."!"
MiniTitle.TextColor3 = Color3.fromRGB(156, 140, 117)
MiniTitle.TextScaled = true
MiniTitle.TextSize = 14.000
MiniTitle.TextStrokeColor3 = Color3.fromRGB(212, 191, 160)
MiniTitle.TextWrapped = true
MiniTitle.TextTransparency = 1

UICorner_3.Parent = MiniTitle

local textInstance1 = Title1
local textInstance2 = MiniTitle
local frame = Frame
local stroke = UIStroke

local fadeInInfo = TweenInfo.new(
	1,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.InOut,
	0,
	false
)

local fadeOutInfo = TweenInfo.new(
	1,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.InOut,
	0,
	false,
	5
)

local textTweenIn = game:GetService("TweenService"):Create(textInstance1, fadeInInfo, {TextTransparency = 0})
local text2TweenIn = game:GetService("TweenService"):Create(textInstance2, fadeInInfo, {TextTransparency = 0})
local frameTweenIn = game:GetService("TweenService"):Create(frame, fadeInInfo, {BackgroundTransparency = 0.5})
local strokeTweenIn = game:GetService("TweenService"):Create(stroke, fadeInInfo, {Transparency = 0})

local textTweenOut = game:GetService("TweenService"):Create(textInstance1, fadeOutInfo, {TextTransparency = 1})
local text2TweenOut = game:GetService("TweenService"):Create(textInstance2, fadeOutInfo, {TextTransparency = 1})
local frameTweenOut = game:GetService("TweenService"):Create(frame, fadeOutInfo, {BackgroundTransparency = 1})
local strokeTweenOut = game:GetService("TweenService"):Create(stroke, fadeOutInfo, {Transparency = 1})

textTweenIn:Play()
text2TweenIn:Play()
frameTweenIn:Play()
strokeTweenIn:Play()

wait(5)

textTweenOut:Play()
text2TweenOut:Play()
frameTweenOut:Play()
strokeTweenOut:Play()
