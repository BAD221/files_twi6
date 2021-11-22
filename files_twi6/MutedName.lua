local function hii3d_twi6(msg)
local text = msg.content_.text_
if hiied:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
function bnnaGet(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
if text and text:match("^كتم اسم (.*)$") and Owner(msg) and hiied:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local BlNe = text:match("^كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, 'ɷ︙تم كتم الاسم '..BlNe)
hiied:sadd(bot_id.."twi6:blocname"..msg.chat_id_, BlNe)
end

if text and text:match("^الغاء كتم اسم (.*)$") and Owner(msg) and hiied:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local delBn = text:match("^الغاء كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, 'ɷ︙تم الغاء كتم الاسم '..delBn)
hiied:srem(bot_id.."twi6:blocname"..msg.chat_id_, delBn)
end

if text == "مسح الاسماء المكتومه" and Constructor(msg) and hiied:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
hiied:del(bot_id.."twi6:blocname"..msg.chat_id_)
texts = "ɷ︙ تم مسح الاسماء المكتومه "
send(msg.chat_id_, msg.id_, texts)
end
if text == "الاسماء المكتومه" and Constructor(msg) and hiied:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local All_name = hiied:smembers(bot_id.."twi6:blocname"..msg.chat_id_)
t = "\nɷ︙قائمة الاسماء المكتومه \n┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ ┉ \n"
for k,v in pairs(All_name) do
t = t..""..k.."- (["..v.."])\n"
end
if #All_name == 0 then
t = "ɷ︙لا يوجد اسماء مكتومه"
end
send(msg.chat_id_, msg.id_, t)
end
end
if text == "تفعيل كتم الاسم" and Constructor(msg) then
send(msg.chat_id_, msg.id_, 'ɷ︙تم التفعيل سيتم كتم العضو الذي يضع الاسماء المكتومه')
hiied:set(bot_id.."block:name:stats"..msg.chat_id_,"open")
end
if text == "تعطيل كتم الاسم" and Constructor(msg) then
send(msg.chat_id_, msg.id_, 'ɷ︙تم تعطيل سيتم كتم العضو الذي يضع الاسماء المكتومه')
hiied:set(bot_id.."block:name:stats"..msg.chat_id_,"close")
end
if not Owner(msg) and hiied:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
function hii3d_name(t1,t2)
if t2.id_ then 
name_hii3d = ((t2.first_name_ or "") .. (t2.last_name_ or ""))
if name_hii3d then 
names_hii3d = hiied:smembers(bot_id.."twi6:blocname"..msg.chat_id_) or ""
if names_hii3d and names_hii3d[1] then 
for i=1,#names_hii3d do 
if name_hii3d:match("(.*)("..names_hii3d[i]..")(.*)") then 
DeleteMessage_(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
end
end
bnnaGet(msg.sender_user_id_, hii3d_name)
end
end
return {
twi6 = hii3d_twi6,
}
