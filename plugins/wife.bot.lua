--]]
do

local function run(msg, matches)
if is_momod(msg) and matches[1]== "الشبكة" then
return [[
💡اهلا وسهلا بكم بتعرف ع قوة الشبكة لديكم💡

قوة توصيل الشبكة📶 : 16 متر

الجهاز المرتبط بالشبكة📱 : جهاز اندرويد او ايفون

اسم الراوتر : ✅TPLINK 

الواير ليس : 🆗٢  او ٣🆗 واير ليس 

المطور:@AHMED_ALOBIDE
المطور:@hussian_9
المطور:@Tiq_ll
]]
end

if not is_momod(msg) then
return "مو شغلك ودعبل 😎🖕🏿"
end

end
return {
description = "Help list", 
usage = "Help list",
patterns = {
"(الشبكة)"
},
run = run 
}
end

