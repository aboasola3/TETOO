do 

local function mustafadev(msg, matches) 
if is_sudo(msg) then 
return [[ 
هــــྮــلا ࿐ بـ᪥ـڵ ﻤـ᥍ـطـᤦـور مـ᪶᪳᪼ـالــ᪵᪼تـ᭧ـي/نـ≛ـورت

]] 
     end 
     if is_owner(msg) then 
return [[ 
 هلاااااااا
]] 
     end 

if is_momod(msg) then 
return [[ 
هلاااااا
]] 
     end 
 
if not is_momod(msg) then 
return [[ 
اۿـ≟ـلا وسـ⍣ـۿـ⎌ـلا عـ◟▵◞ـزيـ❦ـزي/نـ❠ـورتــ/ي
]] 
     end 
     end 



return { 
  patterns = { 
       "^هلو$", 
  }, 
  run = mustafadev, 
} 

end 



