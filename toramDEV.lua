--[[
my english is poor , so if somthing can be better
please leave messages at my post or PM me
]]

--[[
My naming habit
Strings Varibles : Upper Camel Case
variables : lower Camel Case
functions : lower Camel Case
--]]

function commonStringsZH()
	-- Traditional Chinese (Taiwan)
	NavigationBarString = "隱藏導航列"
	CleanString = "清理背包"
	FillTimeString = "魔力填充時間:"
	ExecuteModeString = "清包模式:"
	NormalModeString = "分解模式"
	FastModeString = "快速寄信模式"
	CommonSettingString = "自動刷怪設定"
	ShockWaveLocationString = "衝擊波位置:"
	LUpString = "左上"
	RUpString = "右上"
	LDownString = "左下"
	RDownString = "右下"
	FillMPLocationString = "魔力填充位置:"
	LowExitString = "電量過低時自動停止"
	ConflictString = "兩個技能位置不可相同!"
	ChargeString = "電量過低!"
	MaxMPString = "最大MP:"
end

function commonStringsEN()
	-- English
	NavigationBarString = "Hide Navigation Bar"
	CleanString = "Clean bag"
	FillTimeString = "Fill MP's CD"
	ExecuteModeString = "Clean bag mode"
	NormalModeString = "Turn to element mode"
	FastModeString = "Send mail mode(quick)"
	CommonSettingString = "Auto attack setting"
	ShockWaveLocationString = "Shock wave's location:"
	LUpString = "Left-Up"
	RUpString = "Right-Up"
	LDownString = "Left-Down"
	RDownString = "Right-Down"
	FillMPLocationString = "Fill MP's location:"
	LowExitString = "Auto stop when battery low"
	ConflictString = "Two skill conflict!"
	ChargeString = "battery low!"
	MaxMPString = "Max MP:"
end

function fastModeStringsZH()
	ReceiverCategory = "選擇接收者類別:"
	Partner = "隊友"
	Guild = "公會成員"
	Friend = "好友"
	Order = "接收者列表序號(001~006):"
	TotalPage = "背包頁數"
	StartPageString = "開始清理頁數:"
	StartBlockString = "開始清理位置:"
	LastPageBlockString1 = "最後一頁有"
	LastPageBlockString2 = "格"
end

function fastModeStringsEN()
	ReceiverCategory = "Receiver's Category:"
	Partner = "partner"
	Guild = "guild member"
	Friend = "friend"
	Order = "Receiver's order(001~006):"
	TotalPage = "Total bag pages:"
	StartPageString = "Start cleaning page:"
	StartBlockString = "Start cleaning block:"
	LastPageBlockString1 = "There are "
	LastPageBlockString2 = "Blocks in last page"
end

function normalModeStringsZH()
	BreakDownCategoeyString = "分解種類(圖示):"
	SwordString = "劍"
	MetalString = "金屬"
	ClothString = "布料"
	BeastString = "獸品"
	WondString = "法杖"
	ShieldString = "盾牌"
	WoodString = "木材"
	MedicineString = "果實"
	MagicDeviceString = "魔導具"
	ManaString = "魔素"
end

function normalModeStringsEN()
	BreakDownCategoeyString = "Process category:"
	SwordString = "one-handed sowrd"
	MetalString = "metal"
	ClothString = "cloth"
	beastString = "beast"
	WondString = "wond"
	ShieldString = "shield"
	WoodString = "wood"
	MedicineString = "nut"
	MagicDeviceString = "mana"
	ManaString = "magic device"
end

function commonDialog()
	if (language == "zh") then
		commonStringsZH()
	else
		commonStringsEN()
	end
	dialogInit()
	addCheckBox("immersive", NavigationBarString, false)
	newRow()
	addCheckBox("LowExit",LowExitString,false)
	newRow()
	addCheckBox("clean",CleanString,false)
	newRow()
	addTextView(ExecuteModeString)
	addRadioGroup("executeMode",1)
	addRadioButton(NormalModeString,1)
	addRadioButton(FastModeString,2)
	newRow()
	addTextView(FillTimeString)
	addEditNumber("fillTime", 5.0)
	newRow()
	addTextView(MaxMPString)
	addEditNumber("MaxMP",500)
	newRow()
	addTextView(ShockWaveLocationString)
	addRadioGroup("wave",3)
	addRadioButton(LUpString,1)
	addRadioButton(RUpString,2)
	addRadioButton(LDownString,3)
	addRadioButton(RDownString,4)
	newRow()
	addTextView(FillMPLocationString)
	addRadioGroup("fill",4)
	addRadioButton(LUpString,1)
	addRadioButton(RUpString,2)
	addRadioButton(LDownString,3)
	addRadioButton(RDownString,4)
	dialogShow(CommonSettingString)
end

function normalModeDialog()
	if (language == "zh") then
		normalModeStringsZH()
	else
		normalModeStringsEN()
	end
	dialogInit()
	addTextView(BreakDownCategoeyString)
	newRow()
	addCheckBox("sword", SwordString, true)
	addCheckBox("metal", MetalString, false)
	addCheckBox("cloth", ClothString, false)
	addCheckBox("beast", BeastString, false)
	addCheckBox("wond", WondString, false)
	addCheckBox("shield", ShieldString, true)
	addCheckBox("wood", WoodString, true)
	addCheckBox("medicine", MedicineString, false)
	addCheckBox("magicDevice", MagicDeviceString, false)
	addCheckBox("mana", ManaString, false)
	dialogShowFullScreen("Toram Auto Project by Mikucat")
end
function fastModeDialog()
	if (language == "zh") then
		fastModeStringsZH()
	else
		fastModeStringsEN()
	end
	dialogInit()
	addTextView(ReceiverCategory)
	addRadioGroup("receiver",2)
	addRadioButton(Partner,1)
	addRadioButton(Guild,2)
	addRadioButton(Friend,3)
	newRow()
	addTextView(Order)
	addEditNumber("orderNumber",1)
	newRow()
	addTextView(TotalPage)
	addEditNumber("page",3)
	newRow()
	addTextView(StartPageString)
	addEditNumber("startPage",2)
	newRow()
	addTextView(StartBlockString)
	addEditNumber("startBlockNumber",1)
	newRow()
	addTextView(LastPageBlockString1)
	addEditNumber("lastBlockNumber",10)
	addTextView(LastPageBlockString2)
	dialogShow("Toram Auto Project by Mikucat")

	orderNumber = orderNumber - 1
	page = page - startPage
	lastRowNumber = math.ceil(lastBlockNumber/4)
	lastBlockNumber = math.mod(lastBlockNumber,4)
end

function choose(x,y)
	local r , g , b = getColor(Location(x,y))
	--print("RGB:"..r.." "..g.." "..b)
	if ( r >=220 and g >= 220 and b >= 220) then 
		return "w"
	elseif ( r >= 200 and g >= 200 and b <= 20) then
		return "y"
	else
		return "l"
	end
end

function sendMail(column,row,startBlock,lastBlock)
	local startSkip = startBlock
	for j=1,row do
		if (j == row) then column = lastBlock end
		for i=1,column do
			if (startSkip == 1) then
				if (skip == false) then
					click(Location(1200,565)) --寄送物品
					click(listCategory[receiver]) --寄送給[好友]
					click(Location(960 , 311 + orderNumber*120 +40)) --寄送給
					click(Location(960,550)) --夾帶物品
					for j=1,startPage-1 do click(Location(990,960)) end
				end
				click(Location(bagX[i]+90,bagY[j]+90))
				if (choose(795,1040) == "w" and choose(bagX[i]+130,bagY[j]+150) == "y") then
				--第一個判斷是否有白色+號 第二個判斷是否該格已滿(黃色)
					click(Location(bagX[i]+90,bagY[j]+90))
					click(Location(1370,480)) --最大
					click(Location(660,480)) --少1
					click(Location(980,790)) --選擇
					click(Location(535,480)) --確定
					click(Location(960,1000)) --寄送
					wait(1)
					click(960,950) --OK
					skip = false
				else
					skip = true
				end
				usePreviousSnap(true)
			else
				startSkip = startSkip - 1
			end
		end
	end
	usePreviousSnap(false)
end

function fastMode()
	--function rightList(local i) return Location(1200 , 226 + i*150 +39)
	--function bagList(local i , local j) return Location(1125 + i*183 +90 , 165 + j*183 +90)
	--function friendList(local i) return Location(960 , 311 + i*120 +40)
	listCategory = {
		Location(960,380),
		Location(960,650),
		Location(960,920)
	}
	click(menu)
	click(Location(1630,850)) --社群
	click(Location(1200,850)) --信箱
	skip = false
	for k=1,page do
		sendMail(4,5,startBlockNumber,4)
		click(Location(980,960))
	end
	sendMail(4, lastRowNumber,1, lastBlockNumber)
	click(Location(1910,10)) --關閉
end


--=============================================================================================
--=============================================================================================
--=============================================================================================
--=============================================================================================


function processing()
	click(button[2])
	local r , g , b = getColor(Location(700,913))
	if (r <= 20 and g <= 80 and b >= 120) then click(ok) end
	click(Location(960,890))
	click(Location(960,870))
	--toast("Debug-processingDone")
end

function selectTarget(picture)
	--savecnt = 1
	local success,fail = 0,0
	for j=1,5 do
		if (fail >= 2) then break end
		for i=1,4 do
			if (fail >= 2) then break end
			if (Region(bagX[i]+30,bagY[j]+60,80,60):exists(picture,0.9)) then
				success = success + 1
			 	click(Location(bagX[i]+90,bagY[j]+90))
			else
				fail = fail + 1
				--Region(bagX[i]+30,bagY[j]+60,80,60):save("unMatch"..savecnt..".png")
				--savecnt = savecnt + 1
			end
			usePreviousSnap(true)
		end
	end
	usePreviousSnap(false)
	--toast("Debug-selectDone")
	return success
end

function count()
	if(sword) then table.insert(selectCategory[1], "sword.png") end
	if(metal) then table.insert(selectCategory[1], "metal.png") end

	if(cloth) then table.insert(selectCategory[2], "cloth.png") end
	if(bodyarmor) then table.insert(selectCategory[2], "bodyarmor.png") end
	if(hat) then table.insert(selectCategory[2], "hat.png") end

	if(beast) then table.insert(selectCategory[3], "beast.png") end

	--if(wond) then table.insert(selectCategory[4], "wond.png") end
	if(shield) then table.insert(selectCategory[4], "shield.png") end
	if(wood) then table.insert(selectCategory[4], "wood.png") end

	if(medicine) then table.insert(selectCategory[5], "medicine.png") end
	if(nut) then table.insert(selectCategory[5], "nut.png") end
	if(powder) then table.insert(selectCategory[5], "powder.png") end

	--if(magicDevice) then table.insert(selectCategory[6], "magicdevice.png") end
	if(mana) then table.insert(selectCategory[6], "manaquest.png") end
	--table.insert(selectCategory[], ".png")
	--toast("Debug-countDone")
end

function normalMode()
	selectCategory = {{},{},{},{},{},{}}
	
	count()
	click(menu) --選單
	click(Location(290,550)) --道具
	local r , g ,b = getColor(Location(1100,660)) --是否位於暫存區
	if ( r >= 200 and g <= 100) then
		for i=1,20 do
			click(Location(1125+90,165+90))
			if (Region(1125+80,165+80,20,20):exists("empty.png",1)) then
				break
			end
			click(Location(1125+90,165+90))
			click(button[2])
			click(ok)
		end
	end
	click(button[2]) --重排
	click(ok)
	click(menu)
	click(Location(285,250)) --角色
	click(rightList[2]) --技能
	click(rightList[1]) --EXskill
	click(Location(500,290)) --煉金術
	click(Location(960,650)) --素材加工
	click(button[3]) --切換成多選
	click(button[1])
	-- 1	   2	   3	   4	   5	   6
	-- 金屬 -> 布料 -> 獸品 -> 木材 -> 藥品 -> 魔素
	local successTimes = 0
	for i=1,6 do
		if (#selectCategory[i] >= 1) then
			for j=1,#selectCategory[i] do
				successTimes = successTimes + selectTarget(selectCategory[i][j])
			end
			if (successTimes >= 1) then processing() end
		end
			click(button[1]) --切換種類
	end
	click(Location(1910,10)) --關閉
end

--===腳本入口 Script Entry===

bagX = {1125,1308,1491,1674}
bagY = { 165, 348, 531, 714, 897}

rightList = {
	Location(1200,265),
	Location(1200,415),
	Location(1200,565),
	Location(1200,715),
	Location(1200,865)
}
quickButton = {
	Location(1575,210), --(左上)
	Location(1760,260), --(右上)
	Location(1575,380), --(左下)
	Location(1760,420) --(右下)
}
button = {
	Location(150,380),
	Location(450,380),
	Location(750,380)
}
ok   = Location(960,915)
menu = Location( 10, 10)
language = getLanguage()

commonDialog()

if (executeMode == 1) then
	normalModeDialog()
else
	fastModeDialog()
end

--====環境設定 Enviroment Setting====
Settings:setCompareDimension(true,1920)
Settings:setScriptDimension(true,1920)
Settings:set("AutoWaitTimeout",3)
if (immersive) then setImmersiveMode(true) end

MaxMP = math.floor(MaxMP / 100) - 3
--toast("MaxMPTimes:"..MaxMP)
if (wave == fill) then scriptexit(ConflictString) end

while(true) do
	if (LowExit and batteryLevel() <= 20) then
		scriptExit(ChargeString)
	end
	local fillTimes = 0
	---[[
	for i=1,MaxMP do
		doubleClick(quickButton[wave])
		wait(4)
		--toast("偵測魔力填充中...")
		local r , g , b = getColor(Location(883,829)) --getColor(Location(1120,829))
		if (r >= 230 and g <= 20 and b <= 20) then
			--toast("已偵測到")
			wait(fillTime+3)
			fillTimes = fillTimes + 1
		end
	end
	if (fillTimes <= MaxMP) then
		click(quickButton[fill])
		wait(fillTime+5)
	end
	click(quickButton[fill])
	wait(fillTime+5)
	---]]
	if (clean == true) then
		if (Region(300,105,50,37):exists("bagfull.png")) then
			if (executeMode == 1) then
				normalMode()
			else
				fastMode()
			end
		end
	end
end