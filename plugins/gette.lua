--[[

   
DEV_             ANMAR                   
DEV_  ABO_ASOLA
CH_       @NO_NO2
]]

do

local function run(msg, matches)
  if matches[1] == "جلب ملف" then
    local file = matches[2]
    if is_sudo(msg) then
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".lua", ok_cb, false)
      return "👁‍🗨🕵‍♀اهـ௸ْْــلا حّٰ̐ہٰٰــضـــ๋͜͡ـرت الہٰٰـمـ๋͜͡ــ✮๋͜͡‏ٰ̲ـِـسـوول🕴هـ௸ْْـذالمـّٰ̐ہٰٰـــ๋͜͡ــلف 🔰"
    end
  end
end

return {
  patterns = {
  "^(جلب ملف) (.*)$"
  },
  run = run
}
end


--[[ 

ما اوصيكم غيروحقوق
]]
