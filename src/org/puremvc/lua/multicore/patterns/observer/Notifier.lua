--[[
* @author PureMVC LUA Native Port by David Ravior 
* @author Copyright(c) 2015 Gitlib, Inc., Some rights reserved.
* 
* @class puremvc.Notifier
* 
* A Base Notifier implementation.
* 
* {@link puremvc.MacroCommand MacroCommand}, 
* {@link puremvc.SimpleCommand SimpleCommand}, 
* {@link puremvc.Mediator Mediator} and 
* {@link puremvc.Proxy Proxy}
* all have a need to send Notifications
* 
* The Notifier interface provides a common method called #sendNotification that 
* relieves implementation code of the necessity to actually construct 
* Notifications.
* 
* The Notifier class, which all of the above mentioned classes
* extend, provides an initialized reference to the 
* {@link puremvc.Facade Facade}
* Multiton, which is required for the convienience method
* for sending Notifications but also eases implementation as these
* classes have frequent 
* {@link puremvc.Facade Facade} interactions 
* and usually require access to the facade anyway.
* 
* NOTE: In the MultiCore version of the framework, there is one caveat to
* notifiers, they cannot send notifications or reach the facade until they
* have a valid multitonKey. 
* 
* The multitonKey is set:
*   - on a Command when it is executed by the Controller
*   - on a Mediator is registered with the View
*   - on a Proxy is registered with the Model. 
]]

Notifier = class("Notifier")

--[[
* @constructor 
]]
function Notifier:ctor()
end


--[[
* Retrieve the Multiton Facade instance
*
*
* @protected
* @return {puremvc.Facade}
]]

function Notifier:getFacade()
	if self.multitonKey == nil
		error(Notifier.MULTITON_MSG)
	end
	return Facade:getInstance(this.multitonKey);
end

--[[
* @ignore
* The error message used if the Notifier is not initialized correctly and
* attempts to retrieve its own multiton key
*
* @static
* @protected
* @const
* @type string
]]
Notifier.MULTITON_MSG = "multitonKey for this Notifier not yet initialized!";