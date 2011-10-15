(function() {
  var adjectives, end, prefixes, randomElem, randomInt, suffixes;
  prefixes = ["Person", "C-", "R2-", "K-", "Evo", "Blast", "Percept", "Sky", "Quick", "Gun", "Metal", "Iron", "Mecha"];
  suffixes = ["-OS", "oid", "us", "vac", "plate", "-D2", "-3P0", "droid", "lock", "dance", "-XOR", "plex", "tron", "bolt", "rider", "spin", "stream", "godzilla", "dragon"];
  adjectives = ["Mechanical", "Cyborg", "Zeta", "Optimus", "Alpha", "Omega", "Galaxy", "Star", "Sonic"];
  end = ["A7", "matrix", "the paranoid android", "1000", "2000", "Prime", "Squad"];
  randomInt = function(n) {
    return Math.floor(Math.random() * n);
  };
  randomElem = function(list) {
    return list[randomInt(list.length)];
  };
  module.exports = function() {
    var name, r;
    name = randomElem(prefixes) + randomElem(suffixes);
    name = name.replace("--", "-");
    r = Math.random();
    if (r < 0.2) {
      name = "" + (randomElem(adjectives)) + " " + name;
    }
    if (r > 0.85) {
      name = "" + name + " " + (randomElem(end));
    }
    return name;
  };
}).call(this);
