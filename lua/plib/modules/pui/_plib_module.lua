return {
    Name = "Pika UI",
    DisableAutoload = true,
    Init = function(PLib)
        PUI = PUI or {}

        PLib:SH("pui/core", "sh_init.lua")
        PLib:Log(nil, "Module Loaded: ", PLib._C.module, "Pika UI")
    end
}