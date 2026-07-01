local gui = Instance.new("ScreenGui")
gui.Name = "Surpresa"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

local frame = Instance.new("Frame")
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Position = UDim2.new(0.5, 0, 0.5, 0)
frame.Size = UDim2.new(0, 500, 0, 180)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, -20, 1, -20)
label.Position = UDim2.new(0, 10, 0, 10)
label.BackgroundTransparency = 1
label.Font = Enum.Font.GothamBold
label.TextScaled = true
label.TextWrapped = true
label.TextColor3 = Color3.new(1, 1, 1)
label.Parent = frame

local function escrever(txt)
	label.Text = ""
	for i = 1, #txt do
		label.Text = txt:sub(1, i)
		task.wait(0.03)
	end
end

local etapas = {
	"Carregando script...",
	"Inicializando módulos...",
	"Finalizando..."
}

for _, etapa in ipairs(etapas) do
	escrever(etapa)
	task.wait(1.2)
end

task.wait(0.5)

local mensagens = {
	"🖤 Oi!",
	"Só queria dizer uma coisa...",
	"Você é uma amiga incrível. ❤️",
	"Já pensou em arrumar um namoradinho? 🤭",
	"Tá na hora, eu acho. -' 😆",
	"Brincadeira kkk!",
	"O importante é que você seja muito feliz. 💙"
}

for _, msg in ipairs(mensagens) do
	escrever(msg)
	task.wait(2.2)
end

task.wait(4)
gui:Destroy()
