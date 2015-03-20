--[[
* @author PureMVC LUA Native Port by David Ravior 
* @author Copyright(c) 2015 Gitlib, Inc., Some rights reserved.
* 
* @class puremvc.View
* 
* A Multiton View implementation.
* 
* In PureMVC, the View class assumes these responsibilities
* 
* - Maintain a cache of {@link puremvc.Mediator Mediator}
*   instances.
* 
* - Provide methods for registering, retrieving, and removing 
*   {@link puremvc.Mediator Mediator}.
* 
* - Notifiying {@link puremvc.Mediator Mediator} when they are registered or 
*   removed.
* 
* - Managing the observer lists for each {@link puremvc.Notification Notification}  
*   in the application.
* 
* - Providing a method for attaching {@link puremvc.Observer Observer} to an 
*   {@link puremvc.Notification Notification}'s observer list.
* 
* - Providing a method for broadcasting a {@link puremvc.Notification Notification}.
* 
* - Notifying the {@link puremvc.Observer Observer}s of a given 
*   {@link puremvc.Notification Notification} when it broadcast.
* 
* This View implementation is a Multiton, so you should not call the 
* constructor directly, but instead call the static Multiton 
* Factory #getInstance method
]]

