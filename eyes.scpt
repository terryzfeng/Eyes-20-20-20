-- AppleScript to protect my eyes 
-- terry feng

log "Starting 20-20-20..."
beep 
set loop to 0
repeat while loop >= 0

    -- 20 minute timer
    set timer to 20*60
    repeat while timer > 0
        -- Seconds
        set minuteCount to timer div 60
        if minuteCount = 0 then
            set minuteCount to "00"
        else 
            set minuteCount to minuteCount as string
        end if
        -- Minutes
        set secondCount to (timer mod 60)
        if secondCount = 0 then
            set secondCount to "00"
        else 
            set secondCount to secondCount as string
        end if

        log minuteCount & ":" & secondCount 
        set timer to timer - 30  -- Update timer
        delay 30 -- Wait
    end repeat

    -- 20 second break
    say "stop"
    display dialog "Look at something 20 feet away" with icon stop with title "20-20-20" buttons {"OK"} default button "OK"
    -- Print how many sessions
    set loop to loop + 1
    log "Sessions: " & loop

    delay 20 -- Wait 
    beep 3 -- Resume

end repeat
