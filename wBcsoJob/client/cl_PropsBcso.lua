function GoodNameBcso(hash)
    if hash == GetHashKey("prop_roadcone02a") then
        return "Cone"
    elseif hash == GetHashKey("prop_barrier_work030") then
        return "Barrière"
    elseif hash == GetHashKey("p_ld_stinger_s") then
        return "Herse"
    else
        return hash
    end

end

-- Si ajout de props dans le config , juste rajoute comme sa :

 --elseif hash == GetHashKey("nomduprops") then
    --return "LabelduProps"