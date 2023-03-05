/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowMediator.idl
 */

module mozilla.dxpcom.nsIWindowMediatorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowMediator;


public import mozilla.dxpcom.nsIWindowMediatorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIXULWindow;

public import mozilla.dxpcom.nsIXULWindowD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIWindowMediatorListener;

public import mozilla.dxpcom.nsIWindowMediatorListenerD;


/* starting wrapper class:    nsIWindowMediator */
class nsIWindowMediatorD : public nsISupportsD {

  static const nsIID IID = NS_IWINDOWMEDIATOR_IID;


  alias nsIWindowMediator InnerType;

  this(nsIWindowMediator intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowMediator opCast() {
    return inner;
  }

  void opAssign(nsIWindowMediator value) {
    inner = value;
  }

  /** Return an enumerator which iterates over all windows of type aWindowType
    * from the oldest window to the youngest.
    * @param  aWindowType the returned enumerator will enumerate only
    *                     windows of this type. ("type" is the
    *                     |windowtype| attribute of the XML <window> element.)
    *                     If null, all windows will be enumerated.
    * @return an enumerator of nsIDOMWindows
    */
  /* nsISimpleEnumerator getEnumerator (in wstring aWindowType); */
  nsISimpleEnumeratorD  GetEnumerator(PRUnichar*aWindowType){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetEnumerator(aWindowType, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /** Identical to getEnumerator except:
    * @return an enumerator of nsIXULWindows
  */
  /* nsISimpleEnumerator getXULWindowEnumerator (in wstring aWindowType); */
  nsISimpleEnumeratorD  GetXULWindowEnumerator(PRUnichar*aWindowType){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetXULWindowEnumerator(aWindowType, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

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
  nsISimpleEnumeratorD  GetZOrderDOMWindowEnumerator(PRUnichar*aWindowType, PRBool aFrontToBack){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetZOrderDOMWindowEnumerator(aWindowType, aFrontToBack, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /** Identical to getZOrderDOMWindowEnumerator except:
    * @return an enumerator of nsIXULWindows
    */
  /* nsISimpleEnumerator getZOrderXULWindowEnumerator (in wstring aWindowType, in boolean aFrontToBack); */
  nsISimpleEnumeratorD  GetZOrderXULWindowEnumerator(PRUnichar*aWindowType, PRBool aFrontToBack){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetZOrderXULWindowEnumerator(aWindowType, aFrontToBack, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /** This is a shortcut for simply fetching the first window in
    * front to back order.
    * @param  aWindowType return the topmost window of this type.
    *                     ("type" is the |windowtype| attribute of
    *                     the XML <window> element.)
    *                     If null, return the topmost window of any type.
    * @return the topmost window
    */
  /* nsIDOMWindowInternal getMostRecentWindow (in wstring aWindowType); */
  nsIDOMWindowInternalD  GetMostRecentWindow(PRUnichar*aWindowType){
    nsIDOMWindowInternal _retval;
    nsresult __result = inner.GetMostRecentWindow(aWindowType, &_retval);
    CheckException(__result);
    return new nsIDOMWindowInternalD(_retval);
  }

  /** Add the window to the list of known windows. Listeners (see
    * addListener) will be notified through their onOpenWindow method.
    * @param aWindow the window to add
    */
  /* [noscript] void registerWindow (in nsIXULWindow aWindow); */
  void RegisterWindow(nsIXULWindowD aWindow){
    nsresult __result = inner.RegisterWindow(aWindow ? cast(nsIXULWindow)aWindow : null);
    CheckException(__result);
  }

  /** Remove the window from the list of known windows. Listeners (see
    * addListener) will be be notified through their onCloseWindow method.
    * @param aWindow the window to remove
    */
  /* [noscript] void unregisterWindow (in nsIXULWindow aWindow); */
  void UnregisterWindow(nsIXULWindowD aWindow){
    nsresult __result = inner.UnregisterWindow(aWindow ? cast(nsIXULWindow)aWindow : null);
    CheckException(__result);
  }

  /** Call this method when a window gains focus. It's a primitive means of
    * determining the most recent window. It's no longer necessary and it
    * really should be removed.
    * @param aWindow the window which has gained focus
    */
  /* [noscript] void updateWindowTimeStamp (in nsIXULWindow aWindow); */
  void UpdateWindowTimeStamp(nsIXULWindowD aWindow){
    nsresult __result = inner.UpdateWindowTimeStamp(aWindow ? cast(nsIXULWindow)aWindow : null);
    CheckException(__result);
  }

  /** Call this method when a window's title changes. Listeners (see
    * addListener) will be notified through their onWindowTitleChange method.
    * @param aWindow the window whose title has changed
    * @param inTitle the window's new title
    */
  /* [noscript] void updateWindowTitle (in nsIXULWindow aWindow, in wstring inTitle); */
  void UpdateWindowTitle(nsIXULWindowD aWindow, PRUnichar*inTitle){
    nsresult __result = inner.UpdateWindowTitle(aWindow ? cast(nsIXULWindow)aWindow : null, inTitle);
    CheckException(__result);
  }

  enum { zLevelTop = 1U }

  enum { zLevelBottom = 2U }

  enum { zLevelBelow = 3U }

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
  PRBool CalculateZPosition(nsIXULWindowD inWindow, PRUint32 inPosition, nsIWidgetD inBelow, out PRUint32 outPosition, out nsIWidgetD outBelow){
    nsIWidget _outBelow;
    PRBool _retval;
    nsresult __result = inner.CalculateZPosition(inWindow ? cast(nsIXULWindow)inWindow : null, inPosition, inBelow ? cast(nsIWidget)inBelow : null, &outPosition, &_outBelow, &_retval);
    CheckException(__result);
    outBelow = _outBelow ? new nsIWidgetD(_outBelow) : null;
    return _retval;
  }

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
  void SetZPosition(nsIXULWindowD inWindow, PRUint32 inPosition, nsIXULWindowD inBelow){
    nsresult __result = inner.SetZPosition(inWindow ? cast(nsIXULWindow)inWindow : null, inPosition, inBelow ? cast(nsIXULWindow)inBelow : null);
    CheckException(__result);
  }

  /** Return the window's Z level (as defined in nsIXULWindow).
    * @param aWindow the window in question
    * @return aWindow's z level
    */
  /* [noscript] PRUint32 getZLevel (in nsIXULWindow aWindow); */
  PRUint32 GetZLevel(nsIXULWindowD aWindow){
    PRUint32 _retval;
    nsresult __result = inner.GetZLevel(aWindow ? cast(nsIXULWindow)aWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** Set the window's Z level (as defined in nsIXULWindow). The implementation
    * will reposition the window as necessary to match its new Z level.
    * The implementation will assume a window's Z level to be
    * nsIXULWindow::normalZ until it has been informed of a different level.
    * @param aWindow the window in question
    * @param aZLevel the window's new Z level
    */
  /* [noscript] void setZLevel (in nsIXULWindow aWindow, in PRUint32 aZLevel); */
  void SetZLevel(nsIXULWindowD aWindow, PRUint32 aZLevel){
    nsresult __result = inner.SetZLevel(aWindow ? cast(nsIXULWindow)aWindow : null, aZLevel);
    CheckException(__result);
  }

  /** Register a listener for window status changes.
    * keeps strong ref? (to be decided)
    * @param aListener the listener to register
    */
  /* void addListener (in nsIWindowMediatorListener aListener); */
  void AddListener(nsIWindowMediatorListenerD aListener){
    nsresult __result = inner.AddListener(aListener ? cast(nsIWindowMediatorListener)aListener : null);
    CheckException(__result);
  }

  /** Unregister a listener of window status changes.
    * @param aListener the listener to unregister
    */
  /* void removeListener (in nsIWindowMediatorListener aListener); */
  void RemoveListener(nsIWindowMediatorListenerD aListener){
    nsresult __result = inner.RemoveListener(aListener ? cast(nsIWindowMediatorListener)aListener : null);
    CheckException(__result);
  }

private:
  nsIWindowMediator inner;

}

