local v0={[{3019335204}]="Furry%20Infection",[{4807308814}]="Break%20In%202%20Story",[{1701332290}]="Field%20Trip%20Z",[{47545}]="Work%20At%20A%20Pizza%20Place",[{1318971886}]="Break%20In%20Story",[{4834449429}]="Radiant%20Residents",[{5120885191}]="Anime%20Ball",[{1701332290}]="Legends%20Of%20Speed"};local v1=nil;for v2,v3 in pairs(v0) do if (table.find(v2,game.PlaceId) or table.find(v2,game.CreatorId) or table.find(v2,game.GameId)) then v1=v3;break;end end if v1 then loadstring(game:HttpGet("https://raw.githubusercontent.com/NoobHubV1/NoobHubV1/main/"   .. v1   .. ".lua" ))();else game.Players.LocalPlayer:Kick("No script found for this game");end
