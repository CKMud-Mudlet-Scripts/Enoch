function onFightingPrompt(val)
  Toggles.skip_fight = Toggles.skip_fight or 1
  if last(Times.lastfight) > 2 and PromptFlags.fighting then
    if not Toggles.no_fight then
      if Toggles.skip_fight > 1 then
        fight(nil)
        Toggles.skip_fight = nil
      else
        Toggles.skip_fight = 2
      end
    end
  end
  if
    is_state(State.CRAFTING, true) or is_state(State.BUFFING, true) or is_state(State.SENSE, true)
  then
    set_state(State.NORMAL)
  end
end