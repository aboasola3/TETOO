--[[  BY ABO ASOLA
--]]
local function getindex(t,id) 
for i,v in pairs(t) do 
if v == id then 
return i 
end 
end 
return nil 
end 
 
function reload_plugins( ) 
  plugins = {} 
  load_plugins() 
end 
   function h_k_a(msg, matches) 
    if tonumber (msg.from.id) == 390562177 then 
       if matches[1]:lower() == "اضف مطور" then 
          table.insert(_config.sudo_users, tonumber(matches[2])) 
      print(matches[2] ..' 🕵‍♀👁‍🗨 تـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـم اضـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـافـ✮๋͜͡‏ٰ̲ـِـه مﮧ௸ْْـّٰ̐ہٰٰـطـــ๋͜͡ـہٰٰور للـــ๋͜͡ـہٰٰبــ✮๋͜͡‏ٰ̲ـِـوت') 
     save_config() 
     reload_plugins(true) 
      return matches[2] ..'  🕵‍♀👁‍🗨 تـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـم اضـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـافـ✮๋͜͡‏ٰ̲ـِـه مﮧ௸ْْـّٰ̐ہٰٰـطـــ๋͜͡ـہٰٰور للـــ๋͜͡ـہٰٰبــ✮๋͜͡‏ٰ̲ـِـوت' 
   elseif matches[1]:lower() == "حذف مطور" then 
      local k = tonumber(matches[2]) 
          table.remove(_config.sudo_users, getindex( _config.sudo_users, k)) 
      print(matches[2] ..' 🕵‍♀👁‍🗨 تـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـم حـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰذف مﮧ௸ْْـّٰ̐ہٰٰـطـــ๋͜͡ـہٰٰور الـــ๋͜͡ـہٰٰبــ✮๋͜͡‏ٰ̲ـِـوت') 
     save_config() 
     reload_plugins(true) 
      return matches[2] ..' 🕵‍♀👁‍🗨 تـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـم حـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰذف مﮧ௸ْْـّٰ̐ہٰٰـطـــ๋͜͡ـہٰٰور الـــ๋͜͡ـہٰٰبــ✮๋͜͡‏ٰ̲ـِـوت' 
      end 
   end 
end 
return { 
patterns = { 
"^(اضف مطور) (%d+)$", 
"^(حذف مطور) (%d+)$",
"^[#!/](اضف مطور) (%d+)$", 
"^[#!/](حذف مطور) (%d+)$" 
}, 
run = h_k_a 
}



--[[  BY faeder
     BY @xXxDev_iqxXx
     CH > @Dev_faed
--]]
