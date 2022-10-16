function onCreate()
	-- background shit
	makeLuaSprite('floor', 'feels/feelfloor', -275, 500);
	setLuaSpriteScrollFactor('floor', 1, 1);
	scaleObject('floor', 2.5, 2.5);

	makeLuaSprite('mount', 'feels/feelmount', -300, -125);
	setLuaSpriteScrollFactor('mount', 0.8, 0.8);
	scaleObject('mount', 2.5, 2.5);

	makeLuaSprite('sky', 'feels/feelsky', -300, -500);
	setLuaSpriteScrollFactor('sky', 0.7, 0.7);
	scaleObject('sky', 2.5, 2.5);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeAnimatedLuaSprite('boys', 'feels/baddies', -50, -100);
		luaSpriteAddAnimationByPrefix('boys', 'baddies bop', 'baddies bop', 12, true); 
		objectPlayAnimation('boys', 'baddies bop');
		setLuaSpriteScrollFactor('boys', 1, 1);
		scaleObject('boys', 1.1, 1.1);

		makeAnimatedLuaSprite('lads', 'feels/frontlads', -450, -500);
		luaSpriteAddAnimationByPrefix('lads', 'frontlads bop', 'frontlads bop', 12, true); 
		objectPlayAnimation('lads', 'frontlads bop');
		setLuaSpriteScrollFactor('lads', 1, 1);
		scaleObject('lads', 1.7, 1.7);

		makeAnimatedLuaSprite('morb', 'feels/morbius', 400, -550);
		luaSpriteAddAnimationByPrefix('morb', 'morbius morb', 'morbius morb', 12, true); 
		objectPlayAnimation('morb', 'morbius morb');
		setLuaSpriteScrollFactor('morb', 1, 1);
		scaleObject('morb', 0.8, 0.8);
		setProperty('morb.alpha', 0)
		
	end
	
	addLuaSprite('sky', false);
	addLuaSprite('morb', false);
	addLuaSprite('mount', false);
	addLuaSprite('floor', false);
	addLuaSprite('boys', false);
	addLuaSprite('lads', true)
end

-- very cool and epic bop on beat
function onBeatHit()
    -- triggered 4 times per section
    luaSpritePlayAnimation('boys', 'baddies bop', false);
    luaSpritePlayAnimation('sonic', 'sonic stand', false);
	luaSpritePlayAnimation('lads', 'frontlads bop', false);
	luaSpritePlayAnimation('morb', 'morbius morb', false);
end

function onCreatePost()
	setTextFont("scoreTxt", "sonic-title-card-extended.ttf")
	setTextFont("timeTxt", "sonic-title-card-extended.ttf")
end

function onStepHit()
	if curStep == 592  then
		doTweenAlpha('gross', 'morb', 1, 1.71)
	end

end