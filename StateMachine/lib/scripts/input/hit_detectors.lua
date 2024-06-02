function raycast_hit_detector(hit_vector, raycast_size, groups)
        local x1 = vmath.vector3(hit_vector.x + raycast_size, hit_vector.y, 0)
        local x2 = vmath.vector3(hit_vector.x - raycast_size, hit_vector.y, 0)
        local y1 = vmath.vector3(hit_vector.x , hit_vector.y - raycast_size, 0)
        local y2 = vmath.vector3(hit_vector.x , hit_vector.y + raycast_size, 0)
    
        local first = physics.raycast(x1, x2, groups)
        local second = physics.raycast(y1, y2, groups)
    
        if (first ~= nil and second ~= nil and first.id == second.id) then 
            return first.id
        else
            return nil
        end
    end