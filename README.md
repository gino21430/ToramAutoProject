
# 托蘭異世錄自動腳本計畫
# 使用AnkuLua程式自動清怪和清理背包的腳本
# ToramAutoProject
# Toram Online Auto Attack & Clean Bag Script on AnkuLua

## 狀態: _測試版_ 1.0
> 英文翻譯待改進 <br>
> 仍在測試它的穩定性

## Status : _Beta_ 1.0
> English translation needs improve <br>
> Still testing its stability

### 作者 :
* 暱稱 : 安安
* 學歷 : 成功高中(當個稱職學渣XD)
* 興趣 : 資訊相關、打羽球、睡覺、玩電腦遊戲、看動漫
* Line : mikumikumikumiku (就是"miku"x4) <br>
	平常閒著會打打CTF和ZJ(立志寫完80%!!!)，有時耍懶把寫腳本當放鬆(?)
	其實是我哥在玩這款遊戲，只是發現這遊戲怎麼那麼坑阿!
	錢超級難賺，要不是有人專門刷錢，否則裡面的市場有跟沒有一樣
	除了打王之外就剩解任來賺EXP，也就是這支腳本誕生滴由來喔~

### 功能 :
1. 自動忽略錯誤 : 它可以忽略錯誤並繼續正常執行
2. 兩種清包模式 :
	* 加工模式 : 將副產物加工成素材點數
	* 寄信模式 : 寄送所有未鎖上的物品到別隻帳號
	***注意:*** 使用寄信模式前你應該要先填滿背包，否則將會把副產物一併寄出
3. 計時停止

### Function :
1. Auto ignore error: It can ignore attack error and normal executing e.g. No monster, spell was interrupted
2. Two clean bag mode :
    * proccess mode : Turn trash into element point
    * mailing mode : Mailing everything which is unlocked to someone <br>
    	***Attention:*** You should fill up your bag with you want before using mailing mode, or trashes will be send together
3. Execute timer : Auto stop after times up

### 準備
1. 開啟"自動使用藥水"以免死亡
2. **關閉**"鏡頭自動追蹤"以免跑遠
3. 將"鎖定怪物"設成**遠**
4. 連擊請設成 **衝擊波 -> 暴風+增幅 -> 魔力填充+迅速** <br>
<img src="image/combo_zhTW.png" alt="altCombo_zhTW.png" title="Combo_zhTW.png">

### Preparation :
1. turn on "auto use item" if you may be killed
2. turn **off** "Auto focus" in order not to move out of the area
3. switch "Target Monster" to **furthest**
4. set combo like this **impact -> storm + smite -> MP charge + swift** <br>
<img src="image/combo_enUS.png" alt="altcombo_enUS.png" title="combo_enUS.png">

### 注意事項 :
1. 只要是腳本都有可能出錯，最好把你需要的東西鎖定以防萬一
2. 腳本判斷速度一定 ***比人慢*** ，所以請盡量 ***不要*** 與人組隊
3. 使用寄信模式需要讓接收者位於清單 001~006 的位置
4. 我只在夜神模擬器和我的HTC New One測試過, 最好先確定腳本正常執行後再離開

### Caution :
1. Script may have some bug, so lock you need item in order not to be processed or send
2. Because identifying picture is ***slower*** than human ,***do not*** play with human
3. In mailing mode, you have to let the receiver at 001~006 on the list
4. I only test on Nox emulator and my HTC New One, you had better look its execute one time before leaving

### 測試機資訊 :
1. HTC New One 801e
	* 中央處理器:Snapdragon 600 APQ8064T Quad-core 1.7 GHz(32-Bit) no overloading
	* 記憶體:2GB
	* 儲存空間:32GB
	* 作業系統:AICP 12.1 2017/12/10 (Android 7.1)
	* 螢幕解析度:1920x1080
2. PC (Nox Player)
	* 中央處理器:Celeron E3200 2.40GHz(N/A)
	* 記憶體:4GB(2GB)
	* 螢幕解析度:1360x768(1920x1080)

### Test Devices information :
1. HTC New One 801e
	* CPU:Snapdragon 600 APQ8064T Quad-core 1.7 GHz(32-Bit) no overloading
	* RAM:2GB
	* Storage:32GB
	* OS:AICP 12.1 2017/12/10 (Android 7.1)
	* Resolution:1920x1080
2. PC (Nox Player)
	* CPU:Celeron E3200 2.40GHz(N/A)
	* RAM:4GB(2GB)
	* Resolution:1360x768(1920x1080)

_My english is poor , so if somthing can be better, please leave messages at my post or PM me_
