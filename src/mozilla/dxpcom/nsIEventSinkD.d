/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventSink.idl
 */

module mozilla.dxpcom.nsIEventSinkD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEventSink;


public import mozilla.dxpcom.nsIEventSinkD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEventSink */
/**
 * The nsIEventSink is implemented internally by Gecko as the conduit
 * through which native events travel into Gecko. You obtain an
 * event sink by QI'ing the top-level nsIWidget, usually a window.
 *
 * @status UNDER_REVIEW
 */
class nsIEventSinkD : public nsISupportsD {

  static const nsIID IID = NS_IEVENTSINK_IID;


  alias nsIEventSink InnerType;

  this(nsIEventSink intr){
    super(intr);
    this.inner = intr;
  }

  nsIEventSink opCast() {
    return inner;
  }

  void opAssign(nsIEventSink value) {
    inner = value;
  }

  /**
   * Entry point for native events into Gecko.
   *
   * @return <code>PR_TRUE</code> if event was handled
   *         <code>PR_FALSE</code> if not handled
   *
   * On Mac, <code>anEvent</code> is a native <code>EventRecord*</code>.
   */
  /* boolean dispatchEvent (in voidPtr anEvent); */
  PRBool DispatchEvent(void * anEvent){
    PRBool _retval;
    nsresult __result = inner.DispatchEvent(anEvent, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Alerts gecko of a drag event. 
   *
   * @param aMessage the message parameter for a Gecko NS_DRAGDROP_EVENT (See nsGUIEvent.h for list).
   * @param aMouseGlobalX x coordinate of mouse, in global coordinates
   * @param aMouseGlobalY y coordinate of mouse, in global coordinates
   * @param aKeyModifiers a native bitfield of which modifier keys are currently pressed
   *
   * @return <code>PR_TRUE</code> if event was handled
   *         <code>PR_FALSE</code> if not handled
   */
  /* boolean dragEvent (in unsigned long aMessage, in short aMouseGlobalX, in short aMouseGlobalY, in unsigned short aKeyModifiers); */
  PRBool DragEvent(PRUint32 aMessage, PRInt16 aMouseGlobalX, PRInt16 aMouseGlobalY, PRUint16 aKeyModifiers){
    PRBool _retval;
    nsresult __result = inner.DragEvent(aMessage, aMouseGlobalX, aMouseGlobalY, aKeyModifiers, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Tell gecko to scroll, usually in response to a mouse-wheel
   *
   * @param aVertical <code>PR_TRUE</code> if scrolling veritcally, <code>PR_FALSE</code> if horizontal
   * @param aNumLines the number of lines to scroll, positive for down, negative for up
   * @param aMouseLocalX the x coordinate of the mouse in window (local) coordinates
   * @param aMouseLocalY the y coordinate of the mouse in window (local) coordinates
   */
  /* boolean scroll (in boolean aVertical, in short aNumLines, in short aMouseLocalX, in short aMouseLocalY); */
  PRBool Scroll(PRBool aVertical, PRInt16 aNumLines, PRInt16 aMouseLocalX, PRInt16 aMouseLocalY){
    PRBool _retval;
    nsresult __result = inner.Scroll(aVertical, aNumLines, aMouseLocalX, aMouseLocalY, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Perform any idle processing (handle timers, set the cursor, etc)
   */
  /* void Idle (); */
  void Idle(){
    nsresult __result = inner.Idle();
    CheckException(__result);
  }

private:
  nsIEventSink inner;

}

