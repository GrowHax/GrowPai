-- AUTO PROVIDER BY YUHKIL#0025
-- DONT FORGET TO TURN ON GHOST MODE

local itemid = 872 --Change number to preferred provider
local delay = 180

function Hit(v1,v2)local v3=0 -0 ;local v4;while true do if (v3==0) then v4={type=3 + 0 ,int_data=586 -(367 + 201) ,flags=1081 -(68 + 997) ,int_x=(GetLocal().pos_x//(959 -(214 + 713))) + v1 ,int_y=(GetLocal().pos_y//(139 -107)) + v2 ,pos_x=GetLocal().pos_x,pos_y=GetLocal().pos_y};SendPacketRaw(v4);break;end end end local function v0()for v5,v6 in pairs(GetTiles()) do if (v6.fg==itemid) then FindPath(v6.pos_x,v6.pos_y);Sleep(delay);Hit(0 + 0 ,0 + 0 );Sleep(delay);end end end MessageBox("Ingfo","Starting Auto Provider by Yuhkil#0025");while true do if  not v0() then local v7=877 -(282 + 595) ;while true do if (v7==(1637 -(1523 + 114))) then MessageBox("Ingfo","Auto Provider has stopped");return;end end end end
