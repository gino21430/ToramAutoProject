init(1) --rotate home at right
initLog("debug", 0)
sz = require("sz");
json = sz.json;
w,h = getScreenSize();

function commenUI()

	commenTable = 
	{
		["style"] = "default",
		["width"] = w,
		["height"] = h,
		["config"] = "commen.dat",
		["rettype"] = "default",
		views = 
		{
			{
				["type"] = "Label",
				["text"] = "清理模式:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "300",
				["nowrap"] = "1"
			},
			{
				["type"] = "RadioGroup",
				["list"] = "不清理,分解模式,寄信模式",
				["select"] = "1"
			},
			{
				["type"] = "Label",
				["text"] = "最大MP:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "300",
				["nowrap"] = "1"
			},
			{
				["type"] = "Edit",
				["prompt"] = "數字",
				["text"] = "500",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["kbtype"] = "number"
			},
			{
				["type"] = "Label",
				["text"] = "衝擊波位置:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "300",
				["nowrap"] = "1"
			},
			{
				["type"] = "RadioGroup",
				["list"] = "左上,右上,左下,右下",
				["select"] = "2",
			},
			{
				["type"] = "Label",
				["text"] = "魔力填充位置:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "300",
				["nowrap"] = "1"
			},
			{
				["type"] = "RadioGroup",
				["list"] = "左上,右上,左下,右下",
				["select"] = "2"
			},
		}
	}
	
	local JsonStr = json.encode(commenTable);
	commen = {showUI(JsonStr)}--返回值是一个table
	table.remove(commen,1)
	for i=1,#commen do 
		wLog("debug","commen["..i.."]:"..commen[i])
	end
	--lua_exit()
end

function processUI()
	processTable = 
	{
		["style"] = "default",
		["width"] = w,
		["height"] = h,
		["config"] = "process.dat",
		["rettype"] = "default",
		views = 
		{
			{
				["type"] = "Label",
				["text"] = "分解種類:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360"
			},
			{
				["type"] = "CheckBoxGroup",
				["list"] = "單手劍,金屬 ,盔甲,帽子,布料 ,獸品 ,法杖,盾牌,木材 ,藥品(植物),藥品(雜類),粉末 ,魔導具,魔素",
				["select"] = "1@2"
			},
		
		}
	}
	local JsonStr = json.encode(processTable);
	process = {showUI(JsonStr)}--返回值ret是一个table
	if (process[1] == 0) then lua_exit() end
	table.remove(process,1)
	for i=1,#process do 
		wLog("debug","process["..i.."]:"..process[i])
	end
	--lua_exit()
end

function mailUI()
	mailTable = 
	{
		["style"] = "default",
		["width"] = w,
		["height"] = h,
		["config"] = "mail.dat",
		["rettype"] = "default",
		views = 
		{
			{
				["type"] = "Label",
				["text"] = "收信者類別:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360",
				["nowrap"] = "1"
			},
			{
				["type"] = "ComboBox",
				["list"] = "隊友,公會成員,好友",
				["select"] = "2"
			},
			{
				["type"] = "Label",
				["text"] = "收信者編號:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360",
				["nowrap"] = "1"
			},
			{
				["type"] = "ComboBox",
				["list"] = "001. ,002. ,003. ,004. ,005. ,006.",
				["select"] = "0"
			},
			{
				["type"] = "Label",
				["text"] = "背包總頁數:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360",
				["nowrap"] = "1"
			},
			{
				["type"] = "ComboBox",
				["list"] = "2,3,4,5",
				["select"] = "1"
			},
			{
				["type"] = "Label",
				["text"] = "開始清理頁數:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360",
				["nowrap"] = "1"
			},
			{
				["type"] = "ComboBox",
				["list"] = "1,2,3,4,5",
				["select"] = "1"
			},
			{
				["type"] = "Label",
				["text"] = "開始清理位置:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360",
				["nowrap"] = "1"
			},
			{
				["type"] = "Edit",
				["prompt"] = "數字",
				["text"] = "1",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["kbtype"] = "number"
			},
			{
				["type"] = "Label",
				["text"] = "最後一頁格子數:",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["width"] = "360",
				["nowrap"] = "1"
			},
			{
				["type"] = "Edit",
				["prompt"] = "數字",
				["text"] = "10",
				["size"] = 20,
				["align"] = "left",
				["color"] = "0,0,0",
				["kbtype"] = "number"
			},
		
		}
	}
	local JsonStr = json.encode(mailTable);
	mail = {showUI(JsonStr)}--返回值ret是一个table
	if (mail[1] == 0) then lua_exit() end
	table.remove(mail,1)
	for i=1,#mail do
		wLog("debug","mail["..i.."]:"..mail[i])
	end
	--lua_exit()
end


--=====AnkuLua Definition=====
function Location(x,y)
	return x,y
end

function exists(picture,wait,x,y,dx,dy)
	for i=1,wait do
		local a , b = findImageInRegionFuzzy(picture,90,x,y,x+dx,y+dy,0)
		if (a ~= -1) then return true end
		mSleep(900)
	end
	return false
end

function doubleClick(x,y)
	touchDown(0,x,y)
	mSleep(50)
	touchUp(0,x,y)
	mSleep(100)
	touchDown(0,x,y)
	mSleep(50)
	touchUp(0,x,y)
end
--=====AnkuLua Definition End=====

--=====MailMode=====

function choose(x,y)
	local r , g , b = getColorRGB(Location(x,y))
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
	skip = false
	local startSkip = startBlock
	for j=1,row do
		if (j == row) then column = lastBlock end
		for i=1,column do
			if (startSkip == 1) then
				if (skip == false) then
					click(Location(1200,565)) --寄送物品
					click(listCategory[receiverCate]) --寄送給[好友]
					click(Location(960 , 311 + receiverNum*120 + 40)) --寄送給
					click(Location(960,550)) --夾帶物品
					for j=1,startPageNum-1 do click(Location(990,960)) end
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
					mSleep(1000)
					click(Location(960,950)) --OK
					skip = false
				else
					skip = true
				end
				keepScreen(1)
			else
				startSkip = startSkip - 1
			end
		end
	end
	keepScreen(0)
end

function mailMode()
	listCategory = {
		Location( 960, 380),
		Location( 960, 650),
		Location( 960, 920)
	}
	click(menu)
	click(Location(1630,850)) --社群
	click(Location(1200,850)) --信箱
	for k=1,bagNum - startPageNum do
		sendMail(4,5,startPageBlockNum,4)
		click(Location(980,960))
	end
	sendMail(4,math.floor(lastPageBlockNum/4),1,math.fmod(lastPageBlockNum,4))
	click(Location(1910,10)) --關閉
end
--=====MailMode End=====



--=====processMode=====

function processing()
	click(button[2])
	local r , g , b = getColorRGB(Location(700,913))
	if (r <= 20 and g <= 80 and b >= 120) then click(ok) end
	click(Location(940,890))
	click(Location(940,870))
end

function count()
	judge = {2,5,6,9,12,14}
	target = {
		"sword.png","metal.png",
		"bodyarmor.png","hat.png","cloth.png",
		"beast.png",
		"wond.png","shield.png","wood.png",
		"medicineplant.png","medicinegrocery.png","powder.png",
		"magicdevice.png","manaquest.png"
	}
	for i=1,string.len(process[1]),2 do --1@2@5@9
		a = string.sub(process[1]),i,1)
		local score , j = 1 , 1
		while ((a - judge[j]) > 0) do
			score = score + 1
			i = i + 1
		end
		table.insert(selectCategory[score],target[a])
	end
end

function processMode()

	click(Location(1900,10))
end
--=====processMode End=====






--=====Script Start=====
--=====Script Start=====
--=====Script Start=====
--=====Script Start=====

bagX = {1125,1308,1491,1674}
bagY = { 165, 348, 531, 714, 897}

rightList = {
	Location(1200, 265),
	Location(1200, 415),
	Location(1200, 565),
	Location(1200, 715),
	Location(1200, 865)
}
quickButton = {
	Location(1575, 210), --(左上)
	Location(1760, 260), --(右上)
	Location(1575, 380), --(左下)
	Location(1760, 420) --(右下)
}
button = {
	Location( 150, 380),
	Location( 450, 380),
	Location( 750, 380)
}
ok = 
	Location( 960, 915)
menu = 
	Location(  10,  10)

--=====User Interface =====
commenUI()
mSleep(500)
if (commen[1] == "1") then
	processUI()
elseif (commen[1] == "2") then
	mailUI()
end
--=====User Interface End=====

while (true) do
	--[[=====Auto Attack=====
	for i=1,maxTimes do
		doubleClick(quickButton[ commen[impactLocation] ])
		mSleep(4000)
		if (exists("powercharge.png",4,935,819,22,18)) then
			mSleep(6500)
			toast("finish") --debug
		else
			click(quickButton[ commen[MPchargeLocation] ])
			mSleep(6500)
			toast("exception finish") --debug
		end
	end
	click(quickButton[ commen[MPchargeLocation] ])
	mSleep(6500)
	toast("LAST finish") --debug
	--=====Auto Attack End=====]]
	if (commen[1] ~= "0") then
		if (exists("bagfull.png",1,300,100,150,50)) then
			if (commen[1] == "1") then processMode() end
			if (commen[1] == "2") then mailMode() end
		end
	end
	toast("abcdefg")
	mSleep(2600)
end