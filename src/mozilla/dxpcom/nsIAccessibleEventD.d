/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleEvent.idl
 */

module mozilla.dxpcom.nsIAccessibleEventD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibleEvent;


public import mozilla.dxpcom.nsIAccessibleEventD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAccessible;

public import mozilla.dxpcom.nsIAccessibleD;

public import mozilla.xpcom.nsIAccessibleDocument;

public import mozilla.dxpcom.nsIAccessibleDocumentD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIAccessibleEvent */
/**
 * An interface for accessibility events listened to
 * by in-process accessibility clients, which can be used
 * to find out how to get accessibility and DOM interfaces for
 * the event and its target. To listen to in-process accessibility invents,
 * make your object an nsIObserver, and listen for accessible-event by 
 * using code something like this:
 *   nsCOMPtr<nsIObserverService> observerService = 
 *     do_GetService("@mozilla.org/observer-service;1", &rv);
 *   if (NS_SUCCEEDED(rv)) 
 *     rv = observerService->AddObserver(this, "accessible-event", PR_TRUE);
 *
 * @status UNDER_REVIEW
 */
class nsIAccessibleEventD : public nsISupportsD {

  static const nsIID IID = NS_IACCESSIBLEEVENT_IID;


  alias nsIAccessibleEvent InnerType;

  this(nsIAccessibleEvent intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibleEvent opCast() {
    return inner;
  }

  void opAssign(nsIAccessibleEvent value) {
    inner = value;
  }

  /**
   * The type of event, based on the enumerated event values
   * defined in this interface.
   */
  /* readonly attribute unsigned long eventType; */
  PRUint32 EventType(){
    PRUint32 value;
    nsresult __result = inner.GetEventType(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The nsIAccessible associated with the event.
   * May return null if no accessible is available
   */
  /* readonly attribute nsIAccessible accessible; */
  nsIAccessibleD  Accessible(){
    nsIAccessible value;
    nsresult __result = inner.GetAccessible(&value);
    CheckException(__result);
    return new nsIAccessibleD(value);
  }

  /**
   * The nsIAccessibleDocument that the event target nsIAccessible
   * resides in. This can be used to get the DOM window,
   * the DOM document and the window handler, among other things.
   */
  /* readonly attribute nsIAccessibleDocument accessibleDocument; */
  nsIAccessibleDocumentD  AccessibleDocument(){
    nsIAccessibleDocument value;
    nsresult __result = inner.GetAccessibleDocument(&value);
    CheckException(__result);
    return new nsIAccessibleDocumentD(value);
  }

  /**
   * The nsIDOMNode associated with the event
   * May return null if accessible for event has been shut down
   */
  /* readonly attribute nsIDOMNode DOMNode; */
  nsIDOMNodeD  DOMNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetDOMNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  enum { EVENT_CREATE = 32768U }

  enum { EVENT_DESTROY = 32769U }

  enum { EVENT_SHOW = 32770U }

  enum { EVENT_HIDE = 32771U }

  enum { EVENT_REORDER = 32772U }

  enum { EVENT_FOCUS = 32773U }

  enum { EVENT_STATE_CHANGE = 32778U }

  enum { EVENT_LOCATION_CHANGE = 32779U }

  enum { EVENT_NAME_CHANGE = 32780U }

  enum { EVENT_DESCRIPTIONCHANGE = 32781U }

  enum { EVENT_VALUE_CHANGE = 32782U }

  enum { EVENT_PARENTCHANGE = 32783U }

  enum { EVENT_HELPCHANGE = 32784U }

  enum { EVENT_DEFACTIONCHANGE = 32785U }

  enum { EVENT_ACCELERATORCHANGE = 32786U }

  enum { EVENT_SELECTION = 32774U }

  enum { EVENT_SELECTION_ADD = 32775U }

  enum { EVENT_SELECTION_REMOVE = 32776U }

  enum { EVENT_SELECTION_WITHIN = 32777U }

  enum { EVENT_ALERT = 2U }

  enum { EVENT_FOREGROUND = 3U }

  enum { EVENT_MENUSTART = 4U }

  enum { EVENT_MENUEND = 5U }

  enum { EVENT_MENUPOPUPSTART = 6U }

  enum { EVENT_MENUPOPUPEND = 7U }

  enum { EVENT_CAPTURESTART = 8U }

  enum { EVENT_CAPTUREEND = 9U }

  enum { EVENT_MOVESIZESTART = 10U }

  enum { EVENT_MOVESIZEEND = 11U }

  enum { EVENT_CONTEXTHELPSTART = 12U }

  enum { EVENT_CONTEXTHELPEND = 13U }

  enum { EVENT_DRAGDROPSTART = 14U }

  enum { EVENT_DRAGDROPEND = 15U }

  enum { EVENT_DIALOGSTART = 16U }

  enum { EVENT_DIALOGEND = 17U }

  enum { EVENT_SCROLLINGSTART = 18U }

  enum { EVENT_SCROLLINGEND = 19U }

  enum { EVENT_MINIMIZESTART = 22U }

  enum { EVENT_MINIMIZEEND = 23U }

  enum { EVENT_ATK_PROPERTY_CHANGE = 256U }

  enum { EVENT_ATK_SELECTION_CHANGE = 257U }

  enum { EVENT_ATK_TEXT_CHANGE = 258U }

  enum { EVENT_ATK_TEXT_SELECTION_CHANGE = 259U }

  enum { EVENT_ATK_TEXT_CARET_MOVE = 260U }

  enum { EVENT_ATK_VISIBLE_DATA_CHANGE = 261U }

  enum { EVENT_ATK_TABLE_MODEL_CHANGE = 272U }

  enum { EVENT_ATK_TABLE_ROW_INSERT = 273U }

  enum { EVENT_ATK_TABLE_ROW_DELETE = 274U }

  enum { EVENT_ATK_TABLE_ROW_REORDER = 275U }

  enum { EVENT_ATK_TABLE_COLUMN_INSERT = 276U }

  enum { EVENT_ATK_TABLE_COLUMN_DELETE = 277U }

  enum { EVENT_ATK_TABLE_COLUMN_REORDER = 278U }

  enum { EVENT_ATK_LINK_SELECTED = 279U }

  enum { EVENT_ATK_WINDOW_ACTIVATE = 280U }

  enum { EVENT_ATK_WINDOW_CREATE = 281U }

  enum { EVENT_ATK_WINDOW_DEACTIVATE = 288U }

  enum { EVENT_ATK_WINDOW_DESTROY = 289U }

  enum { EVENT_ATK_WINDOW_MAXIMIZE = 290U }

  enum { EVENT_ATK_WINDOW_MINIMIZE = 291U }

  enum { EVENT_ATK_WINDOW_RESIZE = 292U }

  enum { EVENT_ATK_WINDOW_RESTORE = 293U }

private:
  nsIAccessibleEvent inner;

}

