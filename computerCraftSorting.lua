
while(true)
do
	turtle.suck()

	if turtle.getItemCount(1) > 0 then
		turtle.select(1)
		

		-- Work out how far to move
		l = string.gsub(turtle.getItemDetail()["name"], "minecraft:","" )
		n = string.byte(l) - 98
		down = false

		-- if it is below or above
		if (n > 13)
		then
			n = n - 13
			down = true
		end

		-- Move to the correct position
		for i = 0, n, 1
		do
			turtle.back()
		end

		-- Drop the item
		if down
		then
			turtle.dropDown()
		else
			turtle.dropUp()
		end

		-- Move back to the start
		for i = 0, n, 1
		do
			turtle.forward()
		end

	end

	
end