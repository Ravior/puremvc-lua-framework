--[[
* @author PureMVC LUA Native Port by David Ravior 
* @author Copyright(c) 2015 Gitlib, Inc., Some rights reserved.
* 
* @class puremvc.Facade
* Facade exposes the functionality of the Controller, Model and View
* actors to client facing code. 
* 
* This Facade implementation is a Multiton, so you should not call the 
* constructor directly, but instead call the static Factory method, 
* passing the unique key for this instance to #getInstance
]]


Facade = class("Facade")

--[[
* @constructor
* @param {string} key
* 	The multiton key to use to retrieve the Facade instance.
* @throws {Error} 
*  If an attempt is made to instantiate Facade directly
]]

function Facade:ctor(key)
	if Facade.instanceMap[key] ~= nil then
		error(Facade.MULTITON_MSG)
	end
end


--[[
* @ignore
* The Multiton Facade instance map.
* @static
* @protected
* @type Array
]]
Facade.instanceMap = {}


--[[
* @ignore
* Message Constants
* @protected
* @type {string}
* @const
* @static
]]
Facade.MULTITON_MSG = "Facade instance for this Multiton key already constructed!";