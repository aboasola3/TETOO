local function h_k_a(cb_extra, success, result) 
local receiver = cb_extra.receiver 
 local msg = cb_extra.msg                                                                  --@x_I_10_I_x
  local deleted = 0 
if success == 0 then 
send_large_msg(receiver, " -_- ") 
end   
for k,v in pairs(result) do 
  if not v.first_name and not v.last_name then 
 kick_user(v.peer_id,msg.to.id)   
 deleted = deleted + 1                                                                      --@x_I_10_I_x
 end 
 end 
 send_large_msg(receiver,"🕵‍♀👁‍🗨 تـــ๋͜͡ـہٰٰـم طـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰرد الـــ๋͜͡ــمــ๋͜ہٌٍۤـہٰٰٖحـــ๋͜͡ـہٰٰـذوف-_- ") 
 end 
local function h_k_a_a(msg, matches)    
if is_owner(msg) then                                                                        --@x_I_10_I_x
 local receiver = get_receiver(msg) 
channel_get_users(receiver, h_k_a,{receiver = receiver, msg = msg}) 
 end 
 end    
 return { 
   patterns = { 
   "^(طرد المحذوف)$" 
 },                                                                                            --@x_I_10_I_x
run = h_k_a_a, 
} 
 