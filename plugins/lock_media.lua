do 

local function pre_process(msg) 
local mohammed = msg['id'] 
  local user = msg.from.id 
local chat = msg.to.id 
    local moody = 'mate:'..msg.to.id 
    if redis:get(moody) and msg.media and not is_momod(msg) then 

            delete_msg(msg.id, ok_cb, false) 
local test = "🕵🌟 يــــ๋͜͡ـہٰٰﮧ௸ْْـّٰ̐ہٰٰا خـــ✮๋͜͡‏ٰ̲ـِــــ๋͜͡ـہٰٰرا  ["..msg.from.first_name.."]".."\n".."♻️مﮧ௸ْْـّٰ̐ہٰٰمنــــ๋͜͡ـہٰٰـوع عـــ๋͜͡ـــمــ͡ـ̡ـل😻 المـ✮๋͜͡‏ٰ̲ـِــيـــ๋͜͡ـہٰٰديـــ๋͜͡ـہٰٰا ⚠️هـــ๘ٌ๋ـنا  يــــ๋͜͡ـہٰٰرجـــ๋͜͡ــي✋ الالـــ๋͜͡ـہٰٰتـﮧ௸ْْـّٰ̐ہٰٰزام🤝 بـــ๋͜͡ـہٰٰقـٰٰٖـٰٰٖہـٰٰٖ͡ـہـوانــــ๋͜͡ــيـــ๋͜͡ـہٰٰن 🔄و لـــ๋͜͡ـہٰٰـة سـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰوف 🏃 تـــ๋͜͡ـہٰٰجـــ͡ـ̡ـبــ๋͜ہٌٍۤـہٰٰٖرني 🌝 ع طہہًّ๋͜͡‏ِــًّ๋͜͡‏ــردك 🌚️️".."\n".." 👮 username : @"..(msg.from.username or " ") 
reply_msg(mohammed, test, ok_cb, true) 

end 

        return msg 
    end 

local function MOHAMMED(msg, matches) 
local mohammed = msg['id'] 

    if matches[1] == 'قفل الوسائط'  and is_momod(msg) then 
                    local th3boss= 'mate:'..msg.to.id 
                    redis:set(th3boss, true) 
local boss = '☑️ تم قفل 🔒 جميع الوسائط 🔕 \n🎀🎖Order By : @'..msg.from.username..'\n🎀🎖Order By : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'قفل الوسائط' and not is_momod(msg) then 
local moody = '🕵‍♀👁‍🗨للہہًّ๋͜͡‏ِــًّ๋͜͡‏ـمشﮧ௸ْْـّٰ̐ہٰٰـ๋͜͡ـہٰٰرفـــ๋͜͡ـہٰٰيـ✮๋͜͡‏ٰ̲ـِـن فـــ๋͜͡ـہٰٰقﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰط' 
reply_msg(mohammed, moody, ok_cb, true) 
  elseif is_momod(msg) and matches[1] == 'فتح الوسائط' then 
      local th3boss= 'mate:'..msg.to.id 
      redis:del(th3boss) 
local boss = '☑️ تم فتح جميع الوسائط 🔓🔔 \n🎀🎖Order By : @'..msg.from.username..'\n🎀🎖Order By : '.. msg.from.id..'\n'
reply_msg(mohammed, boss, ok_cb, true) 
elseif matches[1] == 'فتح الوسائط' and not is_momod(msg) then 
local moody= '🕵‍♀👁‍🗨للہہًّ๋͜͡‏ِــًّ๋͜͡‏ـمشﮧ௸ْْـّٰ̐ہٰٰـ๋͜͡ـہٰٰرفـــ๋͜͡ـہٰٰيـ✮๋͜͡‏ٰ̲ـِـن فـــ๋͜͡ـہٰٰقﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰط' 
reply_msg(mohammed, moody, ok_cb, true) 
end 
end 

return { 
    patterns = { 
    "^(قفل الوسائط)$", 
    "^(فتح الوسائط)$", 
  }, 
run = MOHAMMED, 
    pre_process = pre_process 
} 

end
