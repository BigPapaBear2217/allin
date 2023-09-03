--------------
-- COMMANDE --
--------------

-- add_ace group.admin command.startTrain allow
RegisterCommand("startTrain", function(source, args, raw)
    startTrain()
end, true)

-- add_ace group.admin command.stopTrain allow
RegisterCommand("stopTrain", function(source, args, raw)
    stopTrain()
end, true)
