local function Shaar(msg)
local text = msg.content_.text_
if text then
if text == 'تفعيل تنبيه الاشعار' and Owner(msg) then
send(msg.chat_id_, msg.id_,'ɷ︙ تم تفعيل التنبيه عل شعار  !')
hiied:set(bot_id..'twi6:SH:BOT'..msg.chat_id_,true)
return false
end
if text == 'تعطيل تنبيه الاشعار' and Owner(msg) then
send(msg.chat_id_, msg.id_,'ɷ︙ تم تعطيل التنبيه عل شعار  !')
hiied:del(bot_id..'twi6:SH:BOT'..msg.chat_id_)
return false
end
if text and text:match('^وضع الشعار (.*)$') and Owner(msg) then
local SHGP = text:match('^وضع الشعار (.*)$')
hiied:set(bot_id..'twi6:SH:BOT:GP'..msg.chat_id_,SHGP)
send(msg.chat_id_, msg.id_,'ɷ︙تم حفظ شعار المجموعه \n')
end
end
if text and hiied:get(bot_id..'twi6:SH:BOT'..msg.chat_id_) and not Owner(msg) then
if tonumber(hiied:get(bot_id..'twi6:SH:NUM'..msg.chat_id_..msg.sender_user_id_) or 0) > 3 then
Kick_Group(msg.chat_id_,msg.sender_user_id_) 
send(msg.chat_id_, msg.id_,'ɷ︙ تم طردك من المجموعة لعدم احترام قوانين المجموعة')
hiied:del(bot_id..'twi6:SH:NUM'..msg.chat_id_..msg.sender_user_id_)
else
tdcli_function ({ID = 'GetUser',user_id_ = msg.sender_user_id_},function(arg,data) 
local last_ = data.last_name_ or ''
local first_ = data.first_name_ or ''
local Hid = (first_..''..last_)
local Hid1 = (hiied:get(bot_id..'twi6:SH:BOT:GP'..msg.chat_id_) or '')
if string.find(Hid,Hid1) == nil then
local Hid = tonumber((hiied:get(bot_id..'twi6:SH:NUM'..msg.chat_id_..msg.sender_user_id_) or 0))
if Hid == 1 then
send(msg.chat_id_, msg.id_,'\nɷ︙ عليك وضع شعار المجموعه لديك {3} محاولات وعند انتهاء المحاولات سيتم طردك الشعار {`'..Hid1..'`}')
elseif Hid == 2 then
send(msg.chat_id_, msg.id_,'\nɷ︙ عليك وضع شعار المجموعه لديك {2} محاولات وعند انتهاء المحاولات سيتم طردك الشعار {`'..Hid1..'`}')
elseif Hid == 3 then
send(msg.chat_id_, msg.id_,'\nɷ︙ عليك وضع شعار المجموعه لديك اخر محاولات لوضع الشعار {`'..Hid1..'`}')
end
hiied:incrby(bot_id..'twi6:SH:NUM'..msg.chat_id_..msg.sender_user_id_,1)
end
end,nil)  
return false
end
end

end
return {
twi6 = Shaar
}
