function canReachGrandNecrohall()
    return ALL(canReachIndigoWaterway3(),HAS("cursedswampswimming",1),
        HAS("progressivetalisman",4),HAS("progressiveapse",10),
        HAS("progressivenarthex",7),HAS("progressivechancel",1))
end

function canReachNecrohallLower()
    return ALL(canReachGrandNecrohall(),HAS("act1facet",12),
        HAS("progressivechancel",2))
end

function hasMarquisChestKey()
    return ALL(canReachGrandNecrohall(),HAS("marquischestkey",1))
end