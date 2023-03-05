/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEventSink.idl
 */

module mozilla.xpcom.nsIEventSink;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEventSink */
const char[] NS_IEVENTSINK_IID_STR = "c0d3a7c8-1dd1-11b2-8903-adcd22d004ab";

const nsIID NS_IEVENTSINK_IID= 
  {0xc0d3a7c8, 0x1dd1, 0x11b2, 
    [ 0x89, 0x03, 0xad, 0xcd, 0x22, 0xd0, 0x04, 0xab ]};

/**
 * The nsIEventSink is implemented internally by Gecko as the conduit
 * through which native events travel into Gecko. You obtain an
 * event sink by QI'ing the top-level nsIWidget, usually a window.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIEventSink : nsISupports {
  static const char[] IID_STR = NS_IEVENTSINK_IID_STR;
  static const nsIID IID = NS_IEVENTSINK_IID;

  /**
   * Entry point for native events into Gecko.
   *
   * @return <code>PR_TRUE</code> if event was handled
   *         <code>PR_FALSE</code> if not handled
   *
   * On Mac, <code>anEvent</code> is a native <code>EventRecord*</code>.
   */
  /* boolean dispatchEvent (in voidPtr anEvent); */
  nsresult DispatchEvent(void * anEvent, PRBool *_retval);

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
  nsresult DragEvent(PRUint32 aMessage, PRInt16 aMouseGlobalX, PRInt16 aMouseGlobalY, PRUint16 aKeyModifiers, PRBool *_retval);

  /**
   * Tell gecko to scroll, usually in response to a mouse-wheel
   *
   * @param aVertical <code>PR_TRUE</code> if scrolling veritcally, <code>PR_FALSE</code> if horizontal
   * @param aNumLines the number of lines to scroll, positive for down, negative for up
   * @param aMouseLocalX the x coordinate of the mouse in window (local) coordinates
   * @param aMouseLocalY the y coordinate of the mouse in window (local) coordinates
   */
  /* boolean scroll (in boolean aVertical, in short aNumLines, in short aMouseLocalX, in short aMouseLocalY); */
  nsresult Scroll(PRBool aVertical, PRInt16 aNumLines, PRInt16 aMouseLocalX, PRInt16 aMouseLocalY, PRBool *_retval);

  /**
   * Perform any idle processing (handle timers, set the cursor, etc)
   */
  /* void Idle (); */
  nsresult Idle();

}

