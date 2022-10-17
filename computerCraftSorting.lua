turtle.suck()

l = string.gsub(turtle.getItemDetail()["name"], "minecraft:","" )
n = string.byte(l) - 98
down = false

if (n > 13)
then
	n = n - 13
	down = true
end

for i = 0, n, 1
do
	turtle.back()
end

if down
then
	turtle.dropDown()
else
	turtle.dropUp()
end

for i = 0, n, 1
do
	turtle.forward()
end