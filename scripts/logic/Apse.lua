function canReachApseFloor1()
    return ALL(canReachNarthexB5(),HAS("progressivestockpilexp",1),
        HAS("userfoffensively",1),HAS("userfdefensively",1),HAS("act1facet",5),
        HAS("progressiveapse",1))
end

function canReachApseFloor2()
    return ALL(canReachApseFloor1(),HAS("shinelight",1),
        HAS("progressiveapse",2))
end

function canReachApseFloor3()
    return ALL(canReachApseFloor2(),HAS("visitanightmareworld",1),
        HAS("unsealingritual",1),HAS("progressiveapse",3))
end

function canReachApseFloor4()
    return ALL(canEnterSacredAreas(),HAS("longjump",1),
        HAS("visitanightmareworld",1), HAS("unsealingritual",1),
        HAS("act1facet",6), HAS("progressiveapse",4))
end

function canReachApseFloor5()
    return ALL(canReachApseFloor4(),HAS("progressiveformations",1), 
        HAS("progressiveleavelabyrinthatwill",1),HAS("progressiveapse",5))
end

function canReachApseFloor6()
    return ALL(canReachApseFloor5(),HAS("act1facet",8),HAS("progressiveapse",6))
end

function canReachApseFloor7()
    return ALL(canReachCrimsonUnderground(),HAS("highjump",1),
        HAS("progressivetalisman",2),HAS("progressiveapse",7))
end

function canReachApseFloor8()
    return ALL(canReachApseFloor7(),HAS("progressiveformations",2),
        HAS("act1facet",9),HAS("progressiveapse",8))
end

function canReachApseFloor9()
    return ALL(canReachApseFloor8(),HAS("progressiveapse",9))
end

function canReachApseInnermost()
    return ALL(canReachApseFloor9(),HAS("progressiveapse",10))
end

function hasLongJump()
    return ALL(canReachApseFloor2(),HAS("longjump",1))
end

function hasApseChestKey()
    return ALL(HAS("apsechestkey",1),canReachApseFloor3(),canEnterSacredAreas())
end

function hasApseChestKeyII()
    return ALL(canReachApseFloor6(),HAS("apsechestkeyii",1),
        HAS("progressiveapse",7))
end

function hasApseChestKeyIII()
    return ALL(canReachApseInnermost(),HAS("apsechestkeyiii",1))
end