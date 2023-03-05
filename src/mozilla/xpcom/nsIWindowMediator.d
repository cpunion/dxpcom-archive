/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowMediator.idl
 */

module mozilla.xpcom.nsIWindowMediator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.xpcom.nsIXULWindow; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIWindowMediatorListener; /* forward declaration */


/* starting interface:    nsIWindowMediator */
const char[] NS_IWINDOWMEDIATOR_IID_STR = "0659cb81-faad-11d2-8e19-b206620a657c";

const nsIID NS_IWINDOWMEDIATOR_IID= 
  {0x0659cb81, 0xfaad, 0x11d2, 
    [ 0x8e, 0x19, 0xb2, 0x06, 0x62, 0x0a, 0x65, 0x7c ]};

extern(Windows)
interface nsIWindowMediator : nsISupports {
  static const char[] IID_STR = NS_IWINDOWMEDIATOR_IID_STR;
  static const nsIID IID = NS_IWINDOWMEDIATOR_IID;

  /** Return an enumerator which iterates over all windows of type aWindowType
    * from the oldest window to the youngest.
    * @param  aWindowType the returned enumerator will enumerate only
    *                     windows of this type. ("type" is the
    *                     |windowtype| attribute of the XML <window> element.)
    *                     If null, all windows will be enumerated.
    * @return an enumerator of nsIDOMWindows
    */
  /* nsISimpleEnumerator getEnumerator (in wstring aWindowType); */
  nsresult GetEnumerator(PRUnichar *aWindowType, nsISimpleEnumerator *_retval);

  /** Identical to getEnumerator except:
    * @return an enumerator of nsIXULWindows
  */
  /* nsISimpleEnumerator getXULWindowEnumerator (in wstring aWindowType); */
  nsresult GetXULWindowEnumerator(PRUnichar *aWindowType, nsISimpleEnumerator *_retval);

  /** Return an enumerator which iterates over all windows of type aWindowType
    * in their z (front-to-back) order. Note this interface makes
    * no requirement that a window couldn't be revisited if windows
    * are re-ordered while z-order enumerators are active.
    * @param  aWindowType the returned enumerator will enumerate only
    *                     windows of this type. ("type" is the
    *                     |windowtype| attribute of the XML <window> element.)
    *                     If null, all windows will be enumerated.
    * @param  aFrontToBack if true, the enumerator enumerates windows in order
    *                      from front to back. back to front if false.
    * @return an enumerator of nsIDOMWindows
    */
  /* nsISimpleEnumerator getZOrderDOMWindowEnumerator (in wstring aWindowType, in boolean aFrontToBack); */
  nsresult GetZOrderDOMWindowEnumerator(PRUnichar *aWindowType, PRBool aFrontToBack, nsISimpleEnumerator *_retval);

  /** Identical to getZOrderDOMWindowEnumerator except:
    * @return an enumerator of nsIXULWindows
    */
  /* nsISimpleEnumerator getZOrderXULWindowEnumerator (in wstring aWindowType, in boolean aFrontToBack); */
  nsresult GetZOrderXULWindowEnumerator(PRUnichar *aWindowType, PRBool aFrontToBack, nsISimpleEnumerator *_retval);

  /** This is a shortcut for simply fetching the first window in
    * front to back order.
    * @param  aWindowType return the topmost window of this type.
    *                     ("type" is the |windowtype| attribute of
    *                     the XML <window> element.)
    *                     If null, return the topmost window of any type.
    * @return the topmost window
    */
  /* nsIDOMWindowInternal getMostRecentWindow (in wstring aWindowType); */
  nsresult GetMostRecentWindow(PRUnichar *aWindowType, nsIDOMWindowInternal *_retval);

  /** Add the window to the list of known windows. Listeners (see
    * addListener) will be notified through their onOpenWindow method.
    * @param aWindow the window to add
    */
  /* [noscript] void registerWindow (in nsIXULWindow aWindow); */
  nsresult RegisterWindow(nsIXULWindow aWindow);

  /** Remove the window from the list of known windows. Listeners (see
    * addListener) will be be notified through their onCloseWindow method.
    * @param aWindow the window to remove
    */
  /* [noscript] void unregisterWindow (in nsIXULWindow aWindow); */
  nsresult UnregisterWindow(nsIXULWindow aWindow);

  /** Call this method when a window gains focus. It's a primitive means of
    * determining the most recent window. It's no longer necessary and it
    * really should be removed.
    * @param aWindow the window which has gained focus
    */
  /* [noscript] void updateWindowTimeStamp (in nsIXULWindow aWindow); */
  nsresult UpdateWindowTimeStamp(nsIXULWindow aWindow);

  /** Call this method when a window's title changes. Listeners (see
    * addListener) will be notified through their onWindowTitleChange method.
    * @param aWindow the window whose title has changed
    * @param inTitle the window's new title
    */
  /* [noscript] void updateWindowTitle (in nsIXULWindow aWindow, in wstring inTitle); */
  nsresult UpdateWindowTitle(nsIXULWindow aWindow, PRUnichar *inTitle);

  enum { zLevelTop = 1U };

  enum { zLevelBottom = 2U };

  enum { zLevelBelow = 3U };

  /** A window wants to be moved in z-order. Calculate whether and how
    * it should be constrained. Note this method is advisory only:
    * it changes nothing either in WindowMediator's internal state
    * or with the window.
    * Note it compares the nsIXULWindow to nsIWidgets. A pure interface
    * would use all nsIXULWindows. But we expect this to be called from
    * callbacks originating in native window code. They are expected to
    * hand us comparison values which are pulled from general storage
    * in the native widget, and may not correspond to an nsIWidget at all.
    * For that reason this interface requires only objects one step
    * removed from the native window (nsIWidgets), and its implementation
    * must be very understanding of what may be completely invalid
    * pointers in those parameters.
    *
    * @param inWindow the window in question
    * @param inPosition requested position
    *                   values: zLevelTop: topmost window. zLevelBottom: bottom.
    *                   zLevelBelow: below ioBelow. (the value of ioBelow will
    *                   be ignored for zLevelTop and Bottom.)
    * @param inBelow if inPosition==zLevelBelow, the window
    *                 below which inWindow wants to be placed. Otherwise this
    *                 variable is ignored.
    * @param outPosition constrained position, values like inPosition.
    * @param outBelow if outPosition==zLevelBelow, the window
    *                 below which inWindow should be placed. Otherwise this
    *                 this value will be null.
    * @return PR_TRUE if the position returned is different from
    *         the position given.
    */
  /* [noscript] boolean calculateZPosition (in nsIXULWindow inWindow, in unsigned long inPosition, in nsIWidget inBelow, out unsigned long outPosition, out nsIWidget outBelow); */
  nsresult CalculateZPosition(nsIXULWindow inWindow, PRUint32 inPosition, nsIWidget inBelow, PRUint32 *outPosition, nsIWidget *outBelow, PRBool *_retval);

  /** A window has been positioned behind another. Inform WindowMediator
    * @param inWindow the window in question
    * @param inPosition new position. values:
    *                   zLevelTop: topmost window.
    *                   zLevelBottom: bottom.
    *                   zLevelBelow: below inBelow. (inBelow is ignored
    *                                for other values of inPosition.)
    * @param inBelow the window inWindow is behind, if zLevelBelow
    */
  /* [noscript] void setZPosition (in nsIXULWindow inWindow, in unsigned long inPosition, in nsIXULWindow inBelow); */
  nsresult SetZPosition(nsIXULWindow inWindow, PRUint32 inPosition, nsIXULWindow inBelow);

  /** Return the window's Z level (as defined in nsIXULWindow).
    * @param aWindow the window in question
    * @return aWindow's z level
    */
  /* [noscript] PRUint32 getZLevel (in nsIXULWindow aWindow); */
  nsresult GetZLevel(nsIXULWindow aWindow, PRUint32 *_retval);

  /** Set the window's Z level (as defined in nsIXULWindow). The implementation
    * will reposition the window as necessary to match its new Z level.
    * The implementation will assume a window's Z level to be
    * nsIXULWindow::normalZ until it has been informed of a different level.
    * @param aWindow the window in question
    * @param aZLevel the window's new Z level
    */
  /* [noscript] void setZLevel (in nsIXULWindow aWindow, in PRUint32 aZLevel); */
  nsresult SetZLevel(nsIXULWindow aWindow, PRUint32 aZLevel);

  /** Register a listener for window status changes.
    * keeps strong ref? (to be decided)
    * @param aListener the listener to register
    */
  /* void addListener (in nsIWindowMediatorListener aListener); */
  nsresult AddListener(nsIWindowMediatorListener aListener);

  /** Unregister a listener of window status changes.
    * @param aListener the listener to unregister
    */
  /* void removeListener (in nsIWindowMediatorListener aListener); */
  nsresult RemoveListener(nsIWindowMediatorListener aListener);

}

