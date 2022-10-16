function onCreate()
	-- setPropertyFromClass('GameOverSubstate', 'characterName', 'protobf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'feelin_bad'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'feelin_bad_end'); --put in mods/music/

	makeLuaSprite('noshadfloor', 'feels/feelfloorbutnoleftshad', -275, 500);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('noshadfloor', 2.5, 2.5);
	addLuaSprite('noshadfloor', false);

	precacheImage('feels/sonkdabonk');
	makeAnimatedLuaSprite('sonic', 'feels/sonkdabonk', 1550, 250);
	luaSpriteAddAnimationByPrefix('sonic', 'sonic stand', 'sonic stand', 12, true); 
	objectPlayAnimation('sonic', 'sonic stand');
	setLuaSpriteScrollFactor('sonic', 1, 1);
	scaleObject('sonic', 0.4, 0.4);
	addLuaSprite('sonic', false);
	
end

function onCreatePost()
	setProperty('dad.visible', false)

end

function onStepHit()
	if curStep == 41  then
		setProperty('intro.alpha', 0)
		setProperty('dad.visible', true)
		doTweenAlpha('finejaymz', 'noshadfloor', 0, 1.71)
	end
end