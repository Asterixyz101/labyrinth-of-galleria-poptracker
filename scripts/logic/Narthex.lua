function canReachNarthexB2()
    return HAS("progressivenarthex",2)
end

function canReachNarthexB3()
    return ALL(canReachNarthexB2(),hasWallbreaker(),HAS("act1facet",4),
        HAS("progressivenarthex",3))
end

function canReachNarthexB4()
    return ALL(canReachNarthexB3(),HAS("progressivenarthex",4))
end

function canReachNarthexB5()
    return ALL(canReachNarthexB4(),HAS("progressivenarthex",5))
end

function canReachNarthexB6()
    return ALL(canReachApseFloor7(),HAS("progressivenarthex",6))
end

function canReachNarthexB7()
    return ALL(canReachIndigoWaterway1(),HAS("progressivenarthex",7))
end
    
function hasWallbreaker()
    return ALL(HAS("wallbreaker",1),canReachNarthexB2())
end

function hasCursedSwampSwimming()
    return ALL(HAS("cursedswampswimming",1),canReachNarthexB3())
end

function hasNarthexChestKey()
    return ALL(HAS("narthexchestkey",1),canReachNarthexB4())
end

function hasSuspiciousChestKey()
    return false
end

function hasAshenChestKey()
    return false
end

function hasNarthexChestKeyII()
    return false
end