/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventTarget.idl
 */

module mozilla.xpcom.nsIEventTarget;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEventTarget */
const char[] NS_IEVENTTARGET_IID_STR = "ea99ad5b-cc67-4efb-97c9-2ef620a59f2a";

const nsIID NS_IEVENTTARGET_IID= 
  {0xea99ad5b, 0xcc67, 0x4efb, 
    [ 0x97, 0xc9, 0x2e, 0xf6, 0x20, 0xa5, 0x9f, 0x2a ]};

/**
 * nsIEventTarget
 *
 * This interface is used to dispatch events to a particular thread.  In many
 * cases the event target also supports nsIEventQueue.
 */
extern(Windows)
interface nsIEventTarget : nsISupports {
  static const char[] IID_STR = NS_IEVENTTARGET_IID_STR;
  static const nsIID IID = NS_IEVENTTARGET_IID;

  /**
     * Method for posting an asynchronous event to the event target.  If this
     * method succeeds, then the event will be dispatched on the target thread.
     *
     * @param aEvent
     *        The event to dispatched.
     */
  /* [noscript] void postEvent (in PLEventPtr aEvent); */
  nsresult PostEvent(PLEvent * aEvent);

  /**
     * This method returns true if the event target is the current thread.
     */
  /* boolean isOnCurrentThread (); */
  nsresult IsOnCurrentThread(PRBool *_retval);

}

