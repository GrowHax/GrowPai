-- Auto Plant v2 by Yuhkil#0025 (its free so fuck off if someone tells you to pay for it)
-- https://github.com/GrowHax for more
-- DONT FORGET GHOST MODE WHILE USING THIS SCRIPT !!!!!

local platform = 2 -- change id of the platform you are using
local id = 3 -- change id with what you want to plant
local delay = 190 -- delay keep it above 190+ to stay safe

local v0=193;local v1=199;function place(v3,v4,v5)local v6=0 + 0 ;local v7;while true do if (v6==(1639 -(1523 + 114))) then v7.pos_y=GetLocal().pos_y;v7.int_x=math.floor((GetLocal().pos_x//(29 + 3)) + v4 );v6=3 -0 ;end if (v6==1) then v7.int_data=v3;v7.pos_x=GetLocal().pos_x;v6=2;end if (v6==(1068 -(68 + 997))) then v7.int_y=math.floor((GetLocal().pos_y//(1302 -(226 + 1044))) + v5 );SendPacketRaw(v7);break;end if (v6==(0 -0)) then v7={};v7.type=120 -(32 + 85) ;v6=1;end end end log("You are currently using `4Auto Plant v2`o: By `2Yuhkil#0025");local function v2()for v8=0 + 0 ,v0 do for v9=0 + 0 ,v1 do local v10=GetTile(v9,v8);if ((v10.fg==(957 -(892 + 65))) and (GetTile(v9,v8 + (2 -1) ).fg==platform)) then local v19=0 -0 ;while true do if (v19==(0 -0)) then FindPath(v9,v8);Sleep(delay);v19=351 -(87 + 263) ;end if (v19==(181 -(67 + 113))) then place(id,0,0 + 0 );Sleep(delay);break;end end end end end end while true do v2();end
