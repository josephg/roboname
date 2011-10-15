# A robot's name consists of an optional adjective, followed by a prefix and a suffix.
#
# Eg, Star Blastplate
#      ^     ^    ^
# adjective  |  suffix
#          prefix
#
# The module returns a method you can call, which generates a random name.
#
#
# The robot prefix, suffix and adjective lists are far from complete. Patches more than welcome :D

prefixes = [
	"Person"
	"C-"
	"R2-"
	"K-"
	"Evo"
	"Blast"
	"Percept"
	"Sky"
	"Quick"
  "Gun"
  "Metal"
  "Iron"
  "Mecha"
]

suffixes = [
	"-OS"
	"oid"
	"us"
	"vac"
	"plate"
	"-D2"
	"-3P0"
	"droid"
	"lock"
	"dance"
	"-XOR"
	"plex"
	"tron"
	"bolt"
  "rider"
  "spin"
  "stream"
  "godzilla"
  "dragon"
]

adjectives = [
	"Mechanical"
	"Cyborg"
	"Zeta"
	"Optimus"
	"Alpha"
  "Omega"
  "Galaxy"
  "Star"
  "Sonic"
]

end = [
	"A7"
	"matrix"
	"the paranoid android"
	"1000"
	"2000"
	"Prime"
  "Squad"
]

randomInt = (n) -> Math.floor(Math.random() * n)
randomElem = (list) -> list[randomInt(list.length)]

module.exports = ->
	name = randomElem(prefixes) + randomElem(suffixes)
	name = name.replace "--", "-"
	r = Math.random()
	name = "#{randomElem adjectives} #{name}" if r < 0.2
	name = "#{name} #{randomElem end}" if r > 0.85
	name

