--[[ 
▀▄ ▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀▄▀▄▄▀▀▄▄▀▀▄▄▀▀▄▄▀▀          
▀▄ ▄▀                                      ▀▄ ▄▀ 
▀▄ ▄▀     ▄@l_l_lo       ▀ 
▀▄ ▄▀           ▀▄ ▄▀ 
▀▄ ▄▀           ▀▄ ▄▀   
▀▄ ▄▀     delete : حذف الرسائل            ▀▄ ▄▀ 
▀▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀▄▄▀▀▄▄▀▄▄▀▀
--]]
local function history(extra, suc, result)
  for i=1, #result do
    delete_msg(result[i].id, ok_cb, false)
  end
  if tonumber(extra.con) == #result then
    send_msg(extra.chatid, '"'..#result..'" 🎓🌟تﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـم تـــ๋͜͡ـہٰٰنظـــ๋͜͡ـہٰٰيہہًّ๋͜͡‏ِــًّ๋͜͡‏ـف عـ💋ـــ๋͜͡ـہٰٰ💋ـدد رسـﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰال🍃', ok_cb, false)
  else
send_msg(extra.chatid, '🎓🌟تـــ๋͜͡ـہٰٰـ✮๋͜͡‏ٰ̲ـِــم ✅تـ✮๋͜͡‏ٰ̲ـ௸ْْـّٰ̐ہٰٰنہہًّ๋͜͡‏ِــًّ๋͜͡‏ـضـــ๋͜͡ـہٰٰيف مـــ๋͜͡ـہٰٰجﮧ௸ْْـّٰ̐ہٰٰمـہۧۖۖۗـ₪ۣۗـہـوعـــ๋͜͡ـہٰٰـ✮๋͜͡‏ٰ̲ـِــه☂', ok_cb, false)
end
end
local function run(msg, matches)
  if matches[1] == 'تنظيف' and is_sudo(msg) then
    if msg.to.type == 'channel' then
    if tonumber(matches[2]) > 100000 or tonumber(matches[2]) < 1 then
        return "🎓🕵يﮧ௸ْْـّٰ̐ہٰٰمـــ๋͜͡ـہٰٰكـــ๋͜͡ــنـٰٰٖـٰٰٖہـٰٰٖ͡ـہك وضـ✮๋͜͡‏ٰ̲ـِـع عـــ๋͜͡ـہٰٰددٌ1000000رسـ✮๋͜͡‏ٰ̲ـِــــ๋͜͡ـہٰٰالہہًّ๋͜͡‏ِــًّ๋͜͡‏ـة😝 او اقـ✮๋͜͡‏ٰ̲ـِـل فــ͡ـ̡ـقـــ๋͜͡ـہٰٰط"
      end
      get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
    else
      return ""
    end
  else
    return "🎓🕵 لا تﮧ௸ْْـّٰ̐ہٰٰـــ๋͜͡ـہٰٰـلـــ๋͜͡ــعــــ๋͜͡ـہٰٰب بـــ๋͜͡ــكہہًّ๋͜͡‏ِــًّ๋͜͡‏ـيفـ✮๋͜͡‏ٰ̲ـِـيﮧ௸ْْـّٰ̐ہٰٰك🌟️"
  end
end

return {
    patterns = {
        '^(تنظيف) (%d*)$'
    },
    run = run,
}
