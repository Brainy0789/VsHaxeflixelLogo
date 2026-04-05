playVideo = true;

function onStartCountdown()
	if not seenCutscene then
		if playVideo then 
			runTimer('video', 0.2)
			return Function_Stop;
		end
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'video' then 
		startVideo('intro', false); 
		playVideo = false;
	end
end