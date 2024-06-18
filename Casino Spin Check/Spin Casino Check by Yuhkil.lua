-- yuhkil's fast see and check csn spin script too tired for encryption for now 

RemoveCallbacks()

function fast_spin_check(varlist)
  if varlist[0] == "OnTalkBubble" and varlist[2]:find("spun the wheel and got") then
    local pattern = "spun the wheel and got (%d+)"
    if varlist[1] == -1 then
    else
      for _, player in pairs(GetPlayers()) do
        if varlist[1] == player.netid then
          if varlist[0] == "OnTalkBubble" and varlist[3] ~= -1 and varlist[2]:find("spun the wheel and got") then
            local text = ""
            if varlist[2]:find("CP:") then
              local start_pos, end_pos = string.find(varlist[2], "=")
              text = "`0[ `4FAKE `0] " .. string.sub(varlist[2], end_pos + 1)
            else
              local match_text = varlist[2]
              local number_match = match_text:match(pattern)
              number_match = tonumber(number_match)
              local new_varlist = {
                [0] = "OnTalkBubble",
                [1] = varlist[1],
                [2] = "`0[ `2REAL `0] " .. varlist[2],
                [3] = -1,
                netid = -1
              }
              SendVarlist(new_varlist)
            end
            SendVarlist({
              [0] = "OnTalkBubble",
              [1] = varlist[1],
              [2] = text,
              [3] = -1,
              netid = -1,
            })
            return true
          end
        end
      end
    end
  end
end

AddCallback("spin_name", "OnVarlist", fast_spin_check)