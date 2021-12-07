package.path = package.path .. ";./lua/?.lua"
package.path = package.path .. ";./lua/?/init.lua"

vim = {}
local tools = require("tools")
local map = tools.map
local foreach = tools.foreach
local curry = tools.curry
local unpack = table.unpack or unpack
local tolist = tools.tolist

local animals = map({dog="perro", cat="gato", parrot="loro"}, function(animal, key)
  print(animal)
  return animal .. " oh!" .. key
end)

foreach(animals, print)

print "----------------"

animals = map({"perro", "gato", "loro"}, function(animal, key)
  print(animal)
  return animal .. " oh!" .. key
end)

print "\nContiene el indice"
foreach(animals, print)
print "\nSuprime el indice"
foreach(animals, function (animal) print(animal) end)

local function hi(a,b,c)
  print(a,b,c)
end

print({"hi", "sopa", "mundo"})
print(unpack{"hi", "sopa", "mundo"})
print "------------- LIST"

foreach(tolist({va=2,yp=3,4,5}), print)

print "---- Curry ----"

local sayHello = curry(function(name, from, postfix)
  print("Hola "..name.." desde "..from.." :) "..(postfix or ":c"))
end)


local toPedro = sayHello("Pedro")
toPedro("Guatemala", "Usa 2 argumentos")

local toPedroFromGuate = toPedro("Guatemala")
toPedroFromGuate("Secuencial")

