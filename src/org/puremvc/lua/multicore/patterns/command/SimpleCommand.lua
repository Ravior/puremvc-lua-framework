--[[
* @author PureMVC LUA Native Port by David Ravior 
* @author Copyright(c) 2015 Gitlib, Inc., Some rights reserved.
* 
* @class puremvc.SimpleCommand
* @extends puremvc.Notifier
*
* SimpleCommands encapsulate the business logic of your application. Your 
* subclass should override the #execute method where your business logic will
* handle the 
* {@link puremvc.Notification Notification}
* 
* Take a look at 
* {@link puremvc.Facade#registerCommand Facade's registerCommand}
* or {@link puremvc.Controller#registerCommand Controllers registerCommand}
* methods to see how to add commands to your application.
]]

SimpleCommand = class("SimpleCommand",Notifier)


--[[
* @constructor
]]
function SimpleCommand:ctor()
end


--[[
* Fulfill the use-case initiated by the given Notification
* 
* In the Command Pattern, an application use-case typically begins with some
* user action, which results in a Notification is handled by the business logic
* in the #execute method of a command.
* 
* @param {puremvc.Notification} notification
*  The notification to handle.
* @return {void}
]]
function SimpleCommand:execute(notification)
end