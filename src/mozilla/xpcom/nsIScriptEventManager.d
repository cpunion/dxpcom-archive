/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptEventManager.idl
 */

module mozilla.xpcom.nsIScriptEventManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScriptEventManager */
const char[] NS_ISCRIPTEVENTMANAGER_IID_STR = "b6427ace-dc77-495b-ab21-43baeb52bc27";

const nsIID NS_ISCRIPTEVENTMANAGER_IID= 
  {0xb6427ace, 0xdc77, 0x495b, 
    [ 0xab, 0x21, 0x43, 0xba, 0xeb, 0x52, 0xbc, 0x27 ]};

extern(Windows)
interface nsIScriptEventManager : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTEVENTMANAGER_IID_STR;
  static const nsIID IID = NS_ISCRIPTEVENTMANAGER_IID;

  /* nsISupports FindEventHandler (in AString aObjectName, in AString aEventName, in unsigned long aArgCount); */
  nsresult FindEventHandler(nsAString * aObjectName, nsAString * aEventName, PRUint32 aArgCount, nsISupports *_retval);

  /* void InvokeEventHandler (in nsISupports aHandler, in nsISupports aTargetObject, in voidPtr aArgs, in unsigned long aArgCount); */
  nsresult InvokeEventHandler(nsISupports aHandler, nsISupports aTargetObject, void * aArgs, PRUint32 aArgCount);

}

