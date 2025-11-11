state("yumenikki-Win64-Shipping") {
    bool isInGame           : 0x6F61EF8;   // 0 → 1 when starting a New Game
    int  elevatorTransition : 0x6BF2CA4;   // 2 → 3 when the elevator activates
    int  libraryStatus      : 0x6E68B74;   // 1 → 2 when entering the Library
}

startup {
    vars.started = false;
    vars.split1Done = false;
    vars.split2Done = false;
}

update {
    vars.elevator = current.elevatorTransition;
    vars.library  = current.libraryStatus;
}

start {
    // Start timer when the player begins a New Game
    if (!vars.started && current.isInGame) {
        vars.started = true;
        return true;
    }
    return false;
}

split {
    // Split 1: ends the first segment (New Game) when elevator activates
    if (!vars.split1Done && vars.elevator == 7) {
        vars.split1Done = true;
        return true;
    }

    // Split 2: ends the second segment (Library)
    if (!vars.split2Done && vars.library == 2) {
        vars.split2Done = true;
        return true;
    }

    return false;
}

reset {
    // Do not reset automatically
    return false;
}

isLoading {
    // The timer always keeps running
    return false;
}