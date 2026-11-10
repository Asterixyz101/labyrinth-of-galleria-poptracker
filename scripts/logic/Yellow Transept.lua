function canReachYellowLayer1()
    return ALL(canReachApseFloor2(),hasLongJump(),
        HAS("progressiveyellowtransept",1))
end

function canReachYellowLayer2()
    return ALL(canReachYellowLayer1(),HAS("progressiveyellowtransept",2))
end

function canReachYellowLayer3()
    return ALL(canReachYellowLayer2(),HAS("progressiveyellowtransept",3),
        HAS("act1facet",6))
end

function canEnterSacredAreas()
    return ALL(canReachYellowLayer3(),HAS("progressivetalisman",1))
end

function hasYellowChestKey()
    return ALL(canReachYellowLayer3(),HAS("yellowchestkey",1))
end