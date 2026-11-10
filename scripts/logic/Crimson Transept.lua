function canReachCrimsonGreatLabyrinth()
    return ALL(canReachApseFloor5(),HAS("darklight",1),
        HAS("progressivecrimsontransept",1))
end

function canReachCrimsonUnderground()
    return ALL(canReachCrimsonGreatLabyrinth(),HAS("act1facet",7),
        HAS("progressivecrimsontransept",2))
end

function hasHighJump()
    return ALL(canReachCrimsonUnderground(),HAS("highjump",1))
end

function hasCrimsonChestKey()
    return ALL(canReachCrimsonUnderground(),HAS("crimsonchestkey",1))
end