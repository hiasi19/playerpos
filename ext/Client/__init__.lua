Events:Subscribe('Player:Connected', function(player)

    Console:Register('here', 'gives you current postition', function(args)

        local soldierinfo = PlayerManager:GetLocalPlayer().soldier
        

        if soldierinfo == nil then

            return "Player not spawned"
        else
            transx = soldierinfo.worldTransform.trans.x
            transy = soldierinfo.worldTransform.trans.y
            transz = soldierinfo.worldTransform.trans.z

            return "X: " ..transx.. " Y: " ..transy.. " Z: " ..transz
        end

    end)

    Console:Register('player', 'gives position of other players', function(args)

        if #args == 1 then    


            local soldierinfo = PlayerManager:GetPlayerByName(args[1]).soldier
        

            if soldierinfo == nil then

                return "Player not spawned"
            else
             transx = soldierinfo.worldTransform.trans.x
             transy = soldierinfo.worldTransform.trans.y
             transz = soldierinfo.worldTransform.trans.z

                return "X: " ..transx.. " Y: " ..transy.. " Z: " ..transz
            end
        
        else 
            return "playerpos.player <PLAYERNAME>"

                    
        end

    end)
    
end)
 

