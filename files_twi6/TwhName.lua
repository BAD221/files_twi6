local function team_twi6(msg)
local text = msg.content_.text_
if hiied:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
if text and text:match("^وضع توحيد (.*)$") and Owner(msg) and hiied:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local teh = text:match("^وضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'ɷ︙تم تعيين '..teh..' كتوحيد للمجموعه')
hiied:set(bot_id.."twi6:teh"..msg.chat_id_,teh)
end
if text and text:match("^تعين عدد الكتم (.*)$") and Owner(msg) and hiied:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local nump = text:match("^تعين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'ɷ︙تم تعين  '..nump..' عدد الكتم')
hiied:set(bot_id.."twi6:nump"..msg.chat_id_,nump)
end
if text == "التوحيد" then
local s1 = hiied:get(bot_id.."twi6:teh"..msg.chat_id_) or "لا يوجد توحيد"
local s2 = hiied:get(bot_id.."twi6:nump"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'ɷ︙التوحيد هو '..s1..'\n ɷ︙ عدد الكتم هو : '..s2)
end
end
if text == "تفعيل التوحيد" and Constructor(msg) then
send(msg.chat_id_, msg.id_, 'ɷ︙تم تفعيل التوحيد')
hiied:set(bot_id.."kt:twh:stats"..msg.chat_id_,"open")
end
if text == "تعطيل التوحيد" and Constructor(msg) then
send(msg.chat_id_, msg.id_, 'ɷ︙تم تعطيل التوحيد')
hiied:set(bot_id.."kt:twh:stats"..msg.chat_id_,"close")
end
if not Constructor(msg) then
if hiied:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open"  and hiied:get(bot_id.."twi6:teh"..msg.chat_id_) then 
id = msg.sender_user_id_
function hii3d_twi(twi1,twi2)
if twi2 and twi2.first_name_ then 
if twi2.first_name_:match("(.*)"..hiied:get(bot_id.."twi6:teh"..msg.chat_id_).."(.*)") then 
hiied:srem(bot_id.."twi6:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else
local twi_nnn = hiied:get(bot_id.."twi6:nump"..msg.chat_id_) or 5
local twi_nnn2 = hiied:get(bot_id.."twi6:nump22"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(twi_nnn2) == tonumber(twi_nnn) or tonumber(twi_nnn2) > tonumber(twi_nnn)) then 
hiied:sadd(bot_id.."twi6:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else 
hiied:incrby(bot_id.."twi6:nump22"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "ɷ︙عزيزي >>["..twi2.username_.."](https://t.me/"..(twi2.username_ or "twiteam")..")\nɷ︙عليك وضع التوحيد ~⪼ {`"..hiied:get(bot_id.."twi6:teh"..msg.chat_id_).."`} بجانب اسمك\nɷ︙عدد المحاولات المتبقيه {"..(tonumber(twi_nnn) - tonumber(twi_nnn2)).."}")
end
end
end
end
getUser(id, hii3d_twi)
end
end
end
return {
twi6 = team_twi6,
}
