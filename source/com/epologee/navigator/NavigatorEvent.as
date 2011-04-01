package com.epologee.navigator {
	import flash.events.Event;
	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;
	


	/**
	 * @author Eric-Paul Lecluse (c) epologee.com
	 */
	public class NavigatorEvent extends Event {
		public static const TRANSITION_STATUS_UPDATED : String = "TRANSITION_STATUS_UPDATED";
		public static const STATE_CHANGED : String = "STATE_CHANGED";
		public static const STATE_REQUESTED : String = "STATE_REQUESTED";
		//
		// public properties:
		public var statusByResponder : Dictionary;
		public var state : NavigationState;

		public function NavigatorEvent(type : String, statusByResponder:Dictionary = null) {
			super(type, false);
			this.statusByResponder = statusByResponder;
		}

		override public function toString() : String {
			return getQualifiedClassName(this);
		}
	}
}
