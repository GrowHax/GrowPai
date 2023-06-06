-- Auto BFG v2 by Yuhkil#0025 (its free so fuck off if someone tells you to pay for it)
-- https://github.com/GrowHax for more

local blockid = 5640 -- 5640 for magplant remote or any other id
local delay = 180

local v0={878 -(282 + 595) ,2 + 0 };x=GetLocal().pos_x//(45 -13) ;y=GetLocal().pos_y//(1097 -(68 + 997)) ;if GetLocal().facing_left then x=x-v0[1271 -(226 + 1044) ] ;else x=x + v0[4 -3 ] ;end function place(v1,v2)local v3=0;local v4;while true do if (v3==(119 -(32 + 85))) then v4.pos_y=GetLocal().pos_y;v4.int_x=v1;v3=3;end if (v3==(4 + 0)) then SendPacketRaw(v4);break;end if (v3==(1 + 0)) then v4.int_data=blockid;v4.pos_x=GetLocal().pos_x;v3=959 -(892 + 65) ;end if (v3==(0 -0)) then v4={};v4.type=3;v3=1;end if (v3==(5 -2)) then v4.int_y=v2;v4.flags=4699 -2139 ;v3=354 -(87 + 263) ;end end end function punch(v5,v6)local v7={};v7.type=183 -(67 + 113) ;v7.int_data=14 + 4 ;v7.pos_x=GetLocal().pos_x;v7.pos_y=GetLocal().pos_y;v7.int_x=v5;v7.int_y=v6;v7.flags=6285 -3725 ;SendPacketRaw(v7);end log("You are currently using `4Auto BFG`o: By `2Yuhkil#0025");while true do while true do punch(x,y);Sleep(delay + 8 + 2 );if (GetTile(x,y)~=blockid) then break;end end x=GetLocal().pos_x//(127 -95) ;y=GetLocal().pos_y//(984 -(802 + 150)) ;if GetLocal().facing_left then x=x-v0[math.random( #v0)] ;else x=x + v0[math.random( #v0)] ;end place(x,y);Sleep(delay + 10 );end
