/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptEventHandler.idl
 */

module mozilla.xpcom.nsIScriptEventHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScriptEventHandler */
const char[] NS_ISCRIPTEVENTHANDLER_IID_STR = "375f787f-8d3a-4344-b540-293d5645c22c";

const nsIID NS_ISCRIPTEVENTHANDLER_IID= 
  {0x375f787f, 0x8d3a, 0x4344, 
    [ 0xb5, 0x40, 0x29, 0x3d, 0x56, 0x45, 0xc2, 0x2c ]};

extern(Windows)
interface nsIScriptEventHandler : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTEVENTHANDLER_IID_STR;
  static const nsIID IID = NS_ISCRIPTEVENTHANDLER_IID;

  /**
  * IsSameEvent:
  *
  * Determines if this script event handler is bound to the given
  * object and event name.
  *
  * @param aObjectName  Name of the object raising the event.
  *
  * @param aEventName   Name of the event being raised.
  *
  * @param aArgCount    Number of arguments expected by the event handler.
  *
  */
  /* boolean IsSameEvent (in AString aObjectName, in AString aEventName, in unsigned long aArgCount); */
  nsresult IsSameEvent(nsAString * aObjectName, nsAString * aEventName, PRUint32 aArgCount, PRBool *_retval);

  /**
  * Invoke:
  *
  * Executes this script handler.
  *
  * @param aTargetObject  Object to which the script handler is bound.
  *
  * @param aArgs          Array of arguments passed to the script handler.
  *                       This is an array of jsvals.
  *
  * @param aArgCount      Number of elements in the aArgs array.
  *
  */
  /* void Invoke (in nsISupports aTargetObject, in voidPtr aArgs, in unsigned long aArgCount); */
  nsresult Invoke(nsISupports aTargetObject, void * aArgs, PRUint32 aArgCount);

}

