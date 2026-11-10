function canReachYellowLayer3()
    return false
end

function canEnterSacredAreas()
    return ALL(canReachYellowLayer3(),HAS("progressivetalisman",1))
end