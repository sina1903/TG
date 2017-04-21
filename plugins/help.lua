local function run (msg , matches)
local hash = "gp_lang:"..msg.to.id
local lang = redis:get(hash)
if matches[1]:lower() == "help" or matches[1] == 'راهنما' and is_mod(msg) then
if not lang then
text = [[
* Bot Commands:*
*!helplock*
_Show locks Help_

*!helptools*
_Show Tools Help_

*!helpfun*
_Show Fun Help_

*!helpmanag*
_Show manag Help_
_You Can Use_ *[!/#]* _To Run The Commands_
_This Help List Only For_ *Moderators/Owners!*
_Its Means, Only Group_ *Moderators/Owners* _Can Use It!_
*Good luck ;)*]]

elseif lang then

text = [[
*دستورات ربات:*
*راهنما قفل*
_نمایش راهنمای قفل ها_
*راهنما ابزار*
_نمایش راهنمای ابزار_
*راهنما سرگرمی*
_نمایش راهنمای سرگرمی_
*راهنما مدیریتی*
_نمایش دستورات بیصدا های گروه_

_این راهنما فقط برای مدیران/مالکان گروه میباشد!
این به این معناست که فقط مدیران/مالکان گروه میتوانند از دستورات بالا استفاده کنند!_
*موفق باشید ;)*]]
end
return text
end
-----------------------------------------
if matches[1]:lower() == "helplock" or matches[1] == 'راهنما قفل' and is_mod(msg) then
if not lang then
lock = [[
*Bot Commands:*
*!lock* `[link | join | tag | edit | arabic | webpage | bots | spam | flood | markdown | mention | pin | cmds]`
_If This Actions Lock, Bot Check Actions And Delete Them_

*!unlock* `[link | join | tag | edit | arabic | webpage | bots | spam | flood | markdown | mention | pin | cmds]`
_If This Actions Unlock, Bot Not Delete Them_

*!mute* `[all | gif | photo | document | sticker | keyboard | video | text | forward | location | audio | voice | contact | all]`
_If This Actions Lock, Bot Check Actions And Delete Them_

*!mutetime* `(hour) (minute) (seconds)`
_Mute group at this time_ 
*!mutehours* `(number)`
_Mute group at this time_ 
*!muteminutes* `(number)`
_Mute group at this time_ 
*!muteseconds* `(number)`
_Mute group at this time_

*!unmute* `[all | gif | photo | document | sticker | keyboard | video | text | forward | location | audio | voice | contact | all]`
_If This Actions Unlock, Bot Not Delete Them_

_You Can Use_ *[!/#]* _To Run The Commands_
_This Help List Only For_ *Moderators/Owners!*
_Its Means, Only Group_ *Moderators/Owners* _Can Use It!_
*Good luck ;)*]]

elseif lang then

lock = [[
*دستورات ربات :*
*قفل* `[لینک | ورود | تگ | ویرایش | عربی | وب | ربات |هرزنامه | پیام مکرر | فونت | فراخوانی | سنجاق]`
_در صورت قفل بودن فعالیت ها, ربات آنهارا حذف خواهد کرد_
*باز* `[لینک | ورود | تگ | ویرایش | عربی | وب | ربات |هرزنامه | پیام مکرر | فونت | فراخوانی | سنجاق]`
_در صورت قفل نبودن فعالیت ها, ربات آنهارا حذف نخواهد کرد_
*بیصدا* `[همه | تصاویر متحرک | عکس | اسناد | برچسب | صفحه کلید | فیلم | متن | نقل قول | موقعیت | اهنگ | صدا | مخاطب | کیبورد شیشه ای|بازی|خدمات تلگرام|]`
_در صورت بیصدد بودن فعالیت ها, ربات آنهارا حذف خواهد کرد_
*زمان بیصدا* `(ساعت) (دقیقه) (ثانیه)`
_بیصدا کردن گروه با ساعت و دقیقه و ثانیه_ 
*ساعت بیصدا* `(عدد)`
_بیصدا کردن گروه در ساعت_ 
*دقیقه بیصدا* `(عدد)`
_بیصدا کردن گروه در دقیقه_ 
*ثانیه بیصدا* `(عدد)`
_بیصدا کردن گروه در ثانیه_ 
*باصدا* `[همه | تصاویر متحرک | عکس | اسناد | برچسب | صفحه کلید | فیلم | متن | نقل قول | موقعیت | اهنگ | صدا | مخاطب | کیبورد شیشه ای|بازی|خدمات تلگرام|]`
_در صورت بیصدا نبودن فعالیت ها, ربات آنهارا حذف نخواهد کرد_

_این راهنما فقط برای مدیران/مالکان گروه میباشد!
این به این معناست که فقط مدیران/مالکان گروه میتوانند از دستورات بالا استفاده کنند!_
*موفق باشید ;)*]]
end
return lock
end
-----------------------------------------
if matches[1]:lower() == "helpmanag" or matches[1] == 'راهنما مدیریتی' and is_mod(msg) then
if not lang then
Management = [[
* Bot Management:*
*!setmanager* `[username|id|reply]` 
_Add User To Group Admins(CreatorBot)_
*!Remmanager* `[username|id|reply]` 
 _Remove User From Owner List(CreatorBot)_
*!setowner* `[username|id|reply]` 
_Set Group Owner(Multi Owner)_
*!remowner* `[username|id|reply]` 
 _Remove User From Owner List_
*!promote* `[username|id|reply]` 
_Promote User To Group Admin_
*!demote* `[username|id|reply]` 
_Demote User From Group Admins List_
*!setflood* `[2-50]`
_Set Flooding Number_
*!silent* `[username|id|reply]` 
_Silent User From Group_
*!unsilent* `[username|id|reply]` 
_Unsilent User From Group_
*!kick* `[username|id|reply]` 
_Kick User From Group_
*!ban* `[username|id|reply]` 
_Ban User From Group_
*!unban* `[username|id|reply]` 
_UnBan User From Group_
*!res* `[username]`
_Show User ID_
*!id* `[reply]`
_Show User ID_
*!whois* `[id]`
_Show User's Username And Name_
*!clean* `[bans | mods | bots | rules | about | silentlist | filtelist | welcome]`   
_Bot Clean Them_
*!filter* `[word]`
_Word filter_
*!unfilter* `[word]`
_Word unfilter_
*!pin* `[reply]`
_Pin Your Message_
*!unpin* 
_Unpin Pinned Message_
*!welcome enable/disable*
_Enable Or Disable Group Welcome_
*!settings*
_Show Group Settings_
*!cmds* `[member | moderator | owner]`	
_set cmd_
*!mutelist*
_Show Mutes List_
*!whitelist* `[+ | -]`	
_Add User To White List_
*!silentlist*
_Show Silented Users List_
*!filterlist*
_Show Filtered Words List_
*!banlist*
_Show Banned Users List_
*!ownerlist*
_Show Group Owners List_ 
*!whitelist*
_Show Group whitelist List_
*!modlist* 
_Show Group Moderators List_
*!rules*
_Show Group Rules_
*!about*
_Show Group Description_
*!id*
_Show Your And Chat ID_
*!gpinfo*
_Show Group Information_
*!newlink*
_Create A New Link_
*!newlink pv*
_Create A New Link The Pv_
*!link*
_Show Group Link_
*!link pv*
_Send Group Link In Your Private Message_
*!setlang fa*
_Set Persian Language_
*!setwelcome [text]*
_set Welcome Message_

_You Can Use_ *[!/#]* _To Run The Commands_
_This Help List Only For_ *Moderators/Owners!*
_Its Means, Only Group_ *Moderators/Owners* _Can Use It!_
*Good luck ;)*]]

elseif lang then

Management = [[
*دستورات ربات مدیرتی:*
*ادمین گروه* `[username|id|reply]` 
_افزودن ادمین گروه(درصورت اینکه ربات سازنده  گروه)_
*حذف ادمین گروه* `[username|id|reply]` 
_حذف ادمین گروه(درصورت اینکه ربات سازنده  گروه)_
*مالک* `[username|id|reply]` 
_انتخاب مالک گروه(قابل انتخاب چند مالک)_
*حذف مالک* `[username|id|reply]` 
 _حذف کردن فرد از فهرست مالکان گروه_
*مدیر* `[username|id|reply]` 
_ارتقا مقام کاربر به مدیر گروه_
*حذف مدیر* `[username|id|reply]` 
_تنزیل مقام مدیر به کاربر_
*تنظیم پیام مکرر* `[2-50]`
_تنظیم حداکثر تعداد پیام مکرر_
*سکوت* `[username|id|reply]` 
_بیصدا کردن کاربر در گروه_
*!حذف سکوت* `[username|id|reply]` 
_در آوردن کاربر از حالت بیصدا در گروه_
*!اخراج* `[username|id|reply]` 
_حذف کاربر از گروه_
*!بن* `[username|id|reply]` 
_مسدود کردن کاربر از گروه_
*!حذف بن* `[username|id|reply]` 
_در آوردن از حالت مسدودیت کاربر از گروه_
*کاربری* `[username]`
_نمایش شناسه کاربر_
*ایدی* `[reply]`
_نمایش شناسه کاربر_
*شناسه* `[id]`
_نمایش نام کاربر, نام کاربری و اطلاعات حساب_
*تنظیم*`[قوانین | نام | لینک | درباره | خوشآمد]`
_ربات آنهارا ثبت خواهد کرد_
*پاک کردن* `[بن | مدیران | ربات | قوانین | درباره | لیست سکوت | خوشآمد]`   
_ربات آنهارا پاک خواهد کرد_
*لیست سفید* `[+|-]`
_افزودن افراد به لیست سفید_
*فیلتر* `[کلمه]`
_فیلتر‌کلمه مورد نظر_
*حذف فیلتر* `[کلمه]`
_ازاد کردن کلمه مورد نظر_
*سنجاق* `[reply]`
_ربات پیام شمارا در گروه سنجاق خواهد کرد_
*حذف سنجاق* 
_ربات پیام سنجاق شده در گروه را حذف خواهد کرد_
*!خوشآمد فعال/غیرفعال*
_فعال یا غیرفعال کردن خوشآمد گویی_
*تنظیمات*
_نمایش تنظیمات گروه_
*دستورات* `[کاربر | مدیر | مالک]`	
_نتخاب کردن قفل cmd بر چه مدیریتی_
*لیست بیصدا*
_نمایش فهرست بیصدا های گروه_
*لیست بیصدا*
_نمایش فهرست افراد بیصدا_
*فیلتر لیست*
_نمایش لیست کلمات فیلتر شده_
*لیست سفید*
_نمایش افراد سفید شده از گروه_
*لیست بن*
_نمایش افراد مسدود شده از گروه_
*لیست مالکان*
_نمایش فهرست مالکان گروه_ 
*لیست مدیران* 
_نمایش فهرست مدیران گروه_
*قوانین*
_نمایش قوانین گروه_
*درباره*
_نمایش درباره گروه_
*ایدی*
_نمایش شناسه شما و گروه_
*اطلاعات گروه*
_نمایش اطلاعات گروه_
*لینک جدید*
_ساخت لینک جدید_
*لینک جدید خصوصی*
_ساخت لینک جدید در پیوی_
*لینک*
_نمایش لینک گروه_
*لینک خصوصی*
_ارسال لینک گروه به چت خصوصی شما_
*زبان انگلیسی*
_تنظیم زبان انگلیسی_
*!تنظیم خوشآمد [متن]*
_ثبت پیام خوش آمد گویی_

_این راهنما فقط برای مدیران/مالکان گروه میباشد!
این به این معناست که فقط مدیران/مالکان گروه میتوانند از دستورات بالا استفاده کنند!_
*موفق باشید ;)*]]
end
return Management
end
-----------------------------------------
if matches[1]:lower() == "helpfun" or matches[1] == "راهنما سرگرمی" and is_mod(msg) then
if not lang then
helpfun = [[
_ Reborn Fun Help Commands:_

*!time*
_Get time in a sticker_

*!short* `[link]`
_Make short url_

*!voice* `[text]`
_Convert text to voice_

*!tr* `[lang] [word]`
_Translates FA to EN and EN to FA_
_Example:_
*!tr fa hi*

*!sticker* `[word]`
_Convert text to sticker_

*!photo* `[word]`
_Convert text to photo_

*!azan* `[city]`
_Get Azan time for your city_

*!calc* `[number]`
Calculator

*!praytime* `[city]`
_Get Patent (Pray Time)_

*!tosticker* `[reply]`
_Convert photo to sticker_

*!tophoto* `[reply]`
_Convert text to photo_

*!weather* `[city]`
_Get weather_

_You can use_ *[!/#]* _at the beginning of commands._

*Good luck ;)*]]
tdcli.sendMessage(msg.chat_id_, 0, 1, helpfun, 1, 'md')
else

helpfun = [[
_راهنمای سرگرمی ربات :_
*ساعت*
_دریافت ساعت به صورت استیکر_

*لینک کوتاه* `[لینک]`
_کوتاه کننده لینک_

*تبدیل به صدا* `[متن]`
_تبدیل متن به صدا_

*ترجمه* `[زبان]` `[کلمه]`
_ترجمه متن فارسی به انگلیسی وبرعکس_
_مثال:_
_ترجمه زبان سلام_

*استیکر* `[کلمه]`
_تبدیل متن به استیکر_

*عکس* `[کلمه]`
_تبدیل متن به عکس_

*اذان* `[شهر]`
_دریافت اذان_

*حساب کن* `[عدد]`
_ماشین حساب_

*ساعات شرعی* `[شهر]`
_اعلام ساعات شرعی_

*تبدیل به استیکر* `[ریپلی]`
_تبدیل عکس به استیکر_

*تبدیل به عکس* `[ریپلی]`
_تبدیل استیکر‌به عکس_

*اب هوا* `[شهر]`
_دریافت اب وهوا_

*شما میتوانید از [!/#] در اول دستورات برای اجرای آنها بهره بگیرید*

موفق باشید ;)]]
tdcli.sendMessage(msg.chat_id_, 0, 1, helpfun, 1, 'md')
end
end
-----------------------------------------
if matches[1] == "helptools" or  matches[1] == "راهنما ابزار" and is_mod(msg) then
if not lang then
text = [[

_Sudoer And Admins Bot Help :_

*!visudo* `[username|id|reply]`
_Add Sudo_

*!desudo* `[username|id|reply]`
_Demote Sudo_

*!sudolist *
_Sudo(s) list_

*!adminprom* `[username|id|reply]`
_Add admin for bot_

*!admindem* `[username|id|reply]`
_Demote bot admin_

*!adminlist *
_Admin(s) list_

*!leave *
_Leave current group_

*!autoleave* `[disable/enable]`
_Automatically leaves group_

*!creategroup* `[text]`
_Create normal group_

*!createsuper* `[text]`
_Create supergroup_

*!tosuper *
_Convert to supergroup_

*!chats*
_List of added groups_

*!join* `[id]`
_Adds you to the group_

*!rem* `[id]`
_Remove a group from Database_

*!import* `[link]`
_Bot joins via link_

*!setbotname* `[text]`
_Change bot's name_

*!setbotusername* `[text]`
_Change bot's username_

*!delbotusername *
_Delete bot's username_

*!markread* `[off/on]`
_Second mark_

*!broadcast* `[text]`
_Send message to all added groups_

*!bc* `[text] [gpid]`
_Send message to a specific group_

*!sendfile* `[folder] [file]`
_Send file from folder_

*!sendplug* `[plug]`
_Send plugin_

*!del* `[Reply]`
_Remove message Person you are_

*!save* `[plugin name] [reply]`
_Save plugin by reply_

*!savefile* `[address/filename] [reply]`
_Save File by reply to specific folder_

*!clear cache*
_Clear All Cache Of .telegram-cli/data_

*!check*
_Stated Expiration Date_

*!check* `[GroupID]`
_Stated Expiration Date Of Specific Group_

*!charge* `[GroupID]` `[Number Of Days]`
_Set Expire Time For Specific Group_

*!charge* `[Number Of Days]`
_Set Expire Time For Group_

*!jointo* `[GroupID]`
_Invite You To Specific Group_

*!leave* `[GroupID]`
_Leave Bot From Specific Group_

_You can use_ *[!/#]* _at the beginning of commands._

`This help is only for sudoers/bot admins.`
 
*This means only the sudoers and its bot admins can use mentioned commands.*

*Good luck ;)*]]
tdcli.sendMessage(msg.chat_id_, 0, 1, text, 1, 'md')
else

text = [[
_راهنمای ادمین و سودو های ربات :_

*سودو* `[username|id|reply]`
_اضافه کردن سودو_

*حذف سودو* `[username|id|reply]`
_حذف کردن سودو_

*لیست سودو* 
_لیست سودو‌های ربات_

*ادمین* `[username|id|reply]`
_اضافه کردن ادمین به ربات_

*حذف ادمین* `[username|id|reply]`
_حذف فرد از ادمینی ربات_

*لیست ادمین* 
_لیست ادمین ها_

*خروج* 
_خارج شدن ربات از گروه_

*خروج خودکار* `[غیرفعال/فعال | موقعیت]`
_خروج خودکار_

*ساخت گروه* `[اسم انتخابی]`
_ساخت گروه ریلم_

*ساخت سوپر گروه* `[اسم انتخابی]`
_ساخت سوپر گروه_

*تبدیل به سوپر* 
_تبدیل به سوپر گروه_

*لیست گروه ها*
_لیست گروه های مدیریتی ربات_

*افزودن* `[ایدی گروه]`
_جوین شدن توسط ربات_

*حذف گروه* `[ایدی گروه]`
_حذف گروه ازطریق پنل مدیریتی_

*ورود لینک* `[لینک_]`
_جوین شدن ربات توسط لینک_

*تغییر نام ربات* `[text]`
_تغییر اسم ربات_

*تغییر یوزرنیم ربات* `[text]`
_تغییر یوزرنیم ربات_

*حذف یوزرنیم ربات* 
_پاک کردن یوزرنیم ربات_

*تیک دوم* `[فعال/غیرفعال]`
_تیک دوم_

*ارسال به همه* `[متن]`
_فرستادن پیام به تمام گروه های مدیریتی ربات_

*ارسال* `[متن]` `[ایدی گروه]`
_ارسال پیام مورد نظر به گروه خاص_

*ارسال فایل* `[cd]` `[file]`
_ارسال فایل موردنظر از پوشه خاص_

*ارسال پلاگین* `[اسم پلاگین]`
_ارسال پلاگ مورد نظر_

* ذخیره پلاگین* `[اسم پلاگین] [reply]`
_ذخیره کردن پلاگین_

*ذخیره فایل* `[address/filename] [reply]`
_ذخیره کردن فایل در پوشه مورد نظر_

*پاک کردن حافظه*
_پاک کردن کش مسیر .telegram-cli/data_

*اعتبار*
_اعلام تاریخ انقضای گروه_

*اعتبار* `[ایدی گروه]`
_اعلام تاریخ انقضای گروه مورد نظر_

*شارژ* `[ایدی گروه]` `[تعداد روز]`
_تنظیم تاریخ انقضای گروه مورد نظر_

*شارژ* `[تعداد روز]`
_تنظیم تاریخ انقضای گروه_

*ورود به* `[ایدی گروه]`
_دعوت شدن شما توسط ربات به گروه مورد نظر_

*خروج* `[ایدی گروه]`
_خارج شدن ربات از گروه مورد نظر_

*شما میتوانید از [!/#] در اول دستورات برای اجرای آنها بهره بگیرید*

_این راهنما فقط برای سودو ها/ادمین های ربات میباشد!_

`این به این معناست که فقط سودو ها/ادمین های ربات میتوانند از دستورات بالا استفاده کنند!`

*موفق باشید ;)*]]
tdcli.sendMessage(msg.chat_id_, 0, 1, text, 1, 'md')
end
end
end


return {
patterns ={
command .. "([Hh]elp)$",
command .. "([Hh]elplock)$",
command .. "([Hh]elpmanag)$",
command .. "([Hh]elpfun)$",
command .. "([Hh]elptools)$",
"^([Hh]elp)$",
"^([Hh]elplock)$",
"^([Hh]elpmanag)$",
"^([Hh]elpfun)$",
"^([Hh]elptools)$"
},
patterns_fa = {
"^(راهنما)$",
"^(راهنما قفل)$",
"^(راهنما مدیریتی)$",
"^(راهنما سرگرمی)$",
"^(راهنما ابزار)$"

}, 
run =run
}
