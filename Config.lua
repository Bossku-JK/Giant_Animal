Config = {}

Giants = nil
Giants = GetCurrentResourceName()

Config.base = 'limit' -- limit
Config.Namebase = 'esx' -- framework or esx


Config['UITHEME'] = {
	main = 'background-color: #ed7b99;',
	semi = 'background-color:rgba(0, 0, 0, 0.8);box-shadow: 0px 0px 15px 1px #f3a8bc;',
	boxbg = 'background-color:rgba(255, 141, 199, 0.8)',
}
-- discordlog
Config.WebhookOn = true
Config.Webhook = 'https://discord.com/api/webhooks/1029929760022855701/Pgf8Lt718HpVEkpV0vLbZ6KfowwLlxpd4mkdKVxRUZE3qu0WQMjeERrTke8xZy7e8Cde'
Config.IconURL = 'https://media.discordapp.net/attachments/999622908550848542/1016333468893986957/GG_Project_00-01.png'
Config.ServerName = 'GGPROJECT Town'
Config.corlorwebhook = '16711680'
Config.DateFormat = '%d/%m/%Y [%X]'
Config.BotName = 'Giant'
Config.QueneDelay = 5000 -- ระบบคิวสำหรับส่ง hoook ไม่ให้ส่งถี่เกินไป 5000 มาตฐาน
-----------------------------------------------------
Config['VipMode'] = false
Config['itemvip'] = {
	['1'] = {name = 'water', limitcount = 10 },
	-- ['2'] = {name = 'jobcard', limitcount = 15 }
}


Config.limitAnimal = 20 -- จำนวนสัตว์ / รวมไม่เกินนี้
Config.showanimal = false -- โชว์สัตว์ให้ทุกคนในประเทศเห็น  จะแลคถ้าคนสเปคต่ำ
Config.deleteOutZone = false -- ลบ object / ped หรือไม่ถ้าออกนอกเขต 
-----------------------------------------------------


Config.Feed = {
	{
		name = 'เลี้ยงวัว 10 นาที',  -- ห้ามซ้ำกัน 
		job = {'unemployed'}, -- ่job ที่สามารถทำงานนี้ได้ / ถ้าจะอนุญาตทุก job ใส่ {} แบบนี้
		type = true, -- true = ped | false = object 
		ped = "a_c_cow", -- ชื่อ ped or object อย่าลืม เปิด/ปิด type
		pedAtk = false, -- ped จู่โจม เจ้าของ สำหรับ ped ที่มี animation จู่โจม
		limit = 20,  -- limit สัตว์เลี้ยงโซนนี้
		icon = 'https://media.discordapp.net/attachments/1025040030428831814/1034400163680239656/cow_10_min.png',
		coords = vector3(1450.18994140625, 1079.5999755859375, 114.33000183105467),
		spawnzone = vector3(1451.22998046875, 1066.8299560546875, 114.33000183105467),
		textinUI = {
			startText = 'กำลังเริ่มเลี้ยงวัว', -- ชื่อ
			feed = 'ใส่อาหารวัว ',   -- text แสดงใน ui ข้อความให้อาหาร
			dead = 'วัวของคุณตาย ', -- text แสดงใน ui ข้อความตอนตาย
			bfeed = 'ให้อาหารวัว',	-- ข้อความในปุ่ม มุมขวา ตอนให้อาหาร
			bgive = 'รีดนมวัว', -- ข้อความในปุ่ม มุมขวา ตอนเก็บ
		},
		range = {
			rangeMenu = 2,  --ระยะห่างกดเปิดเมนู
			rangeUI = 3, -- ระยะห่างโชว์ UI ชื่อพื้นที่
			rangeText = 20,
			rangeDelete = 100, -- ระยะห่างออกนอกพื้นที่จะลบสัตว์
		},  -- ระยะห่างในการกด E เปิดเมนู อิงตาม coords

		openNPC = true,
		NPC = {
			Model = "g_m_m_chemwork_01",		-- Model ของ NPC # จะใส่เป็น mp_m_freemode_01 หรือ mp_f_freemode_01 ก็ได้
			heading = 359.28,						-- จะให้ NPC หันไปทางไหน
			Animation = { -- ใส่ท่าทางให้ NPC
				Scenario = false,
				AnimationDirect = "anim@amb@nightclub@peds@",
				AnimationScene = "rcmme_amanda1_stand_loop_cop",
			}
		},
	
		Text = {
            -- Text1 = "~p~GGPROJECT TOWN", -- text บนหัว npc 
            Text2 = '<font face="font4thai"> ~y~ จุดเลี้ยงวัว 10 นาที Limit 3</font>', -- text บนหัว npc 
            -- Text3 = '<font face="font4thai">กด [ ~g~E~w~ ] เพื่อเปิดเมนู </font>', -- text บนหัว npc 
        },
		percent_feed = {}, -- จะให้อาหารได้ตอนกี่เปอ ตัวอย่างเช่น ให้อาหารตอน 20% - 40 % - 80 % ใส่ {20,40,80}
		need = 5, --การเจริญเติบโตมากกว่าเท่านี้ถึงจะสุ่มให้อาหาร
		time_need = 3,  -- โตเต็มไว ภายในกี่วิตาย
		cool = 60, -- ให้อาหารภายในกี่วิ ก่อนสัตว์ตาย
		blips = {
			enabled = false,
			sprite = 463,
			scale = 0.8,
			color = 0,
			text = "<font face='Sarabun'>เลี้ยงวัว</font>",
		},
		vip = { limit = 7 },
		item = {
			use = {item = "water", name = "ลูกวัว", count = 1},
			feed = {item = "water", name = "ลูกวัว", count = 1},
		},
		giveitem = {item = "money", count = {2200,2400}}, -- only one  -- สามารถ ตั้งให้เงินได้เลยถ้าเลี้ยงเสร็จ item = "money" or black_money
		bonusitem = {

			{item = "water", count = {1,1}, percent = 5.0}, -- สามารถ ตั้งให้เงินได้เลยถ้าเลี้ยงเสร็จ item = "money" or black_money
			-- {item = "water", count = {1,1}, percent = 50.0}, -- สามารถ ตั้งให้เงินได้เลยถ้าเลี้ยงเสร็จ item = "money" or black_money
			-- {item = "black_money", count = {1000,1800}, percent = 40.0}, -- สามารถ ตั้งให้เงินได้เลยถ้าเลี้ยงเสร็จ item = "money" or black_money
		},
		
	},
	
	
}


-- function นี้จะเรียกใช้งานหลังจากเก็บสัตว์เลี้ยงเสร็จแล้ว สามารถนำ export funxtion update quest ต่างๆมาใส่ได้
-- สิ่งที่ส่งมาด้วย source, itemname , itemcount

function updateQuest(source,itemName,itemCount)


end

function startAnimal()
	-- body
	pcall(function()
		exports.nc_notify:PushNotification({
			scale = 1,  -- ปรับขนาดของ Notify
			category = 'message',  -- หมวดหมู่ของ Notify * หากไม่ใส่จะเป็น 'message'
			title = 'แจ้งเตือน!',  -- หัวเรื่อง
			description = 'เริ่มเลี้ยงสัตว์..!',  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
			type = 'success',  -- ชนิดของ Notify * หากไม่ใส่จะเป็น 'info'
			position = 'top',  -- ตำแหน่งการแสดง ('top': บน | 'bottom': ล่าง) * หากไม่ใส่จะเป็น 'top'
			direction = 'right',  -- ตำแหน่งการแสดง ('left': ซ้าย | 'center': กลาง' | 'right': ขวา) * หากไม่ใส่จะเป็น 'right'
			priority = 'medium',  -- ความสำคัญของ Notify นั้นๆ high จะอยู่บน และ low จะอยู่ล่าง * หากไม่ใส่จะเป็น 'medium'
			duration = 4000  -- ระยะเวลาการแสดง Notify
		}) 
	end)
	
end

function limitAnimals()
	-- body
	pcall(function()
		exports.nc_notify:PushNotification({
			scale = 1,  -- ปรับขนาดของ Notify
			category = 'message',  -- หมวดหมู่ของ Notify * หากไม่ใส่จะเป็น 'message'
			title = 'คำเตือน!',  -- หัวเรื่อง
			description = 'จำนวนครบกำหนด!',  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
			type = 'errors',  -- ชนิดของ Notify * หากไม่ใส่จะเป็น 'info'
			position = 'top',  -- ตำแหน่งการแสดง ('top': บน | 'bottom': ล่าง) * หากไม่ใส่จะเป็น 'top'
			direction = 'right',  -- ตำแหน่งการแสดง ('left': ซ้าย | 'center': กลาง' | 'right': ขวา) * หากไม่ใส่จะเป็น 'right'
			priority = 'medium',  -- ความสำคัญของ Notify นั้นๆ high จะอยู่บน และ low จะอยู่ล่าง * หากไม่ใส่จะเป็น 'medium'
			duration = 4000  -- ระยะเวลาการแสดง Notify
		})
	end)
end

function nohaveAnimal()
	-- body
	pcall(function()
		exports.nc_notify:PushNotification({
			scale = 1,  -- ปรับขนาดของ Notify
			category = 'message',  -- หมวดหมู่ของ Notify * หากไม่ใส่จะเป็น 'message'
			title = 'คำเตือน!',  -- หัวเรื่อง
			description = 'ไม่มีสามารถเลี้ยงสัตว์ได้ ไม่มีสัตว์!',  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
			type = 'errors',  -- ชนิดของ Notify * หากไม่ใส่จะเป็น 'info'
			position = 'top',  -- ตำแหน่งการแสดง ('top': บน | 'bottom': ล่าง) * หากไม่ใส่จะเป็น 'top'
			direction = 'right',  -- ตำแหน่งการแสดง ('left': ซ้าย | 'center': กลาง' | 'right': ขวา) * หากไม่ใส่จะเป็น 'right'
			priority = 'medium',  -- ความสำคัญของ Notify นั้นๆ high จะอยู่บน และ low จะอยู่ล่าง * หากไม่ใส่จะเป็น 'medium'
			duration = 4000  -- ระยะเวลาการแสดง Notify
		})
	end)
end

function Alertfeed(name,text,number)
	-- body
	pcall(function()
		exports.nc_notify:PushNotification({
			scale = 1,  -- ปรับขนาดของ Notify
			category = 'message',  -- หมวดหมู่ของ Notify * หากไม่ใส่จะเป็น 'message'
			title = 'คำเตือน '..name..' #'..number,  -- หัวเรื่อง
			description = text,  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
			type = 'errors',  -- ชนิดของ Notify * หากไม่ใส่จะเป็น 'info'
			position = 'top',  -- ตำแหน่งการแสดง ('top': บน | 'bottom': ล่าง) * หากไม่ใส่จะเป็น 'top'
			direction = 'right',  -- ตำแหน่งการแสดง ('left': ซ้าย | 'center': กลาง' | 'right': ขวา) * หากไม่ใส่จะเป็น 'right'
			priority = 'medium',  -- ความสำคัญของ Notify นั้นๆ high จะอยู่บน และ low จะอยู่ล่าง * หากไม่ใส่จะเป็น 'medium'
			duration = 4000  -- ระยะเวลาการแสดง Notify
		})

	
	end)
end


function nohaveFood()
	-- body
	pcall(function()
		exports.pNotify:SendNotification({text = "ไม่มีอาหาร ไม่สามารถให้อาหารได้!!", timeout = 5000})
	end)
end

function notinZone()
	pcall(function()
		exports.pNotify:SendNotification({text = "คุณไม่ได้อยู่ในโซนเลี้ยงสัตว์!!", timeout = 5000})
	end)
end

function accessJob() 
	pcall(function()
		exports.nc_notify:PushNotification({
			scale = 1,  -- ปรับขนาดของ Notify
			category = 'message',  -- หมวดหมู่ของ Notify * หากไม่ใส่จะเป็น 'message'
			title = 'คำเตือน!',  -- หัวเรื่อง
			description = 'คุณไม่อยู่ในรายการ JOB ที่อนุญาต!!',  -- รายละเอียด หากต้องการให้แสดงปุ่มกดให้ใช้ tag <btn></btn>
			type = 'errors',  -- ชนิดของ Notify * หากไม่ใส่จะเป็น 'info'
			position = 'top',  -- ตำแหน่งการแสดง ('top': บน | 'bottom': ล่าง) * หากไม่ใส่จะเป็น 'top'
			direction = 'right',  -- ตำแหน่งการแสดง ('left': ซ้าย | 'center': กลาง' | 'right': ขวา) * หากไม่ใส่จะเป็น 'right'
			priority = 'medium',  -- ความสำคัญของ Notify นั้นๆ high จะอยู่บน และ low จะอยู่ล่าง * หากไม่ใส่จะเป็น 'medium'
			duration = 4000  -- ระยะเวลาการแสดง Notify
		})
	end)
end


function fullItemSv(_source,xItem)
	TriggerClientEvent("pNotify:SendNotification", _source, {
		text = '<span class="red-text">' .. xItem .. ' ของคุณเต็ม</span> ',
		type = "error",
		timeout = 3000,
		layout = "bottomCenter",
		queue = "global"
	}) 
	-- body
end