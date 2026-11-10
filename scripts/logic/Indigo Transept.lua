function canReachIndigoWaterway1()
    return ALL(canReachApseFloor8(),HAS("progressiveswimming",2),
        HAS("act1facet",10),HAS("progressiveindigotransept",1))
end

function canReachIndigoWaterway2()
    return ALL(canReachIndigoWaterway1(),HAS("progressiveindigotransept",2))
end

function canReachIndigoWaterway3()
    return ALL(canReachIndigoWaterway2(),HAS("act1facet",11),
        HAS("progressiveindigotransept",3))
end

function hasIndigoChestKey()
    return ALL(canReachIndigoWaterway2(),HAS("indigochestkey",1))
end