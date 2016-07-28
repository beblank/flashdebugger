package com.debug 
{
	import flash.external.ExternalInterface;
	/**
	 * ...
	 * @author aditya hadiwijaya
	 * 
	 * global debugger and trace to console.log when Externalinterface available
	 */
	public class Debugger 
	{
		private var _debug:IDebugger;
		
		public function print(message:*):void{
			if (!ExternalInterface.available){
				_debug = new LocalDebugger();
			} else {
				_debug = new ConsoleDebugger();
			}
			_debug.print(message);
		}
		
	}

}