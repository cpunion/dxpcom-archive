/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMetricsService.idl
 */

module mozilla.dxpcom.nsIMetricsServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMetricsService;


public import mozilla.dxpcom.nsIMetricsServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIPropertyBag;

public import mozilla.dxpcom.nsIPropertyBagD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsIMetricsEventItem */
/**
 * This file defines the interfaces for the Metrics Service.
 *
 * This service allows arbitrary types of events to be logged and uploaded
 * to a server, based on server-configured collection parameters.
 * The nsIMetricsService API provides an abstraction for the underlying XML
 * data format.
 * 
 * For more information about the data format and the built-in
 * event collectors, see http://wiki.mozilla.org/Browser_Metrics.
 */
/**
 * nsIMetricsEventItem represents a particular node of data to record
 * in an event.  Each item has a namespaced item name, a list of properties
 * (key/value pairs), and an ordered list of child items.  The child items
 * need not be unique; an item may be repeated.
 */
class nsIMetricsEventItemD : public nsISupportsD {

  static const nsIID IID = NS_IMETRICSEVENTITEM_IID;


  alias nsIMetricsEventItem InnerType;

  this(nsIMetricsEventItem intr){
    super(intr);
    this.inner = intr;
  }

  nsIMetricsEventItem opCast() {
    return inner;
  }

  void opAssign(nsIMetricsEventItem value) {
    inner = value;
  }

  /**
   * The namespace for this item, which must be a valid XML namespace URI.
   */
  /* readonly attribute DOMString itemNamespace; */
  wchar[] ItemNamespace(){
    scope auto value = new AString();
    nsresult __result = inner.GetItemNamespace(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * The name of this item, which must be a valid XML tag name.
   */
  /* readonly attribute DOMString itemName; */
  wchar[] ItemName(){
    scope auto value = new AString();
    nsresult __result = inner.GetItemName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * A PropertyBag containing the key/value pairs to be included in the item.
   * JavaScript callers can simply set this to an object containing the
   * key/value pairs as object properties.
   */
  /* attribute nsIPropertyBag properties; */
  nsIPropertyBagD  Properties(){
    nsIPropertyBag value;
    nsresult __result = inner.GetProperties(&value);
    CheckException(__result);
    return new nsIPropertyBagD(value);
  }
  void Properties(nsIPropertyBagD  aProperties){
    nsIPropertyBag value;
    nsresult __result = inner.SetProperties(value);
    CheckException(__result);
  }

  /**
   * Returns the child event item at the given index.
   */
  /* nsIMetricsEventItem childAt (in long index); */
  nsIMetricsEventItemD  ChildAt(PRInt32 index){
    nsIMetricsEventItem _retval;
    nsresult __result = inner.ChildAt(index, &_retval);
    CheckException(__result);
    return new nsIMetricsEventItemD(_retval);
  }

  /**
   * Returns the first occurrence of the given item in the child list,
   * or -1 if the item is not in the child list.
   */
  /* long indexOf (in nsIMetricsEventItem item); */
  PRInt32 IndexOf(nsIMetricsEventItemD item){
    PRInt32 _retval;
    nsresult __result = inner.IndexOf(item ? cast(nsIMetricsEventItem)item : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Appends a child event item to this item.
   */
  /* void appendChild (in nsIMetricsEventItem item); */
  void AppendChild(nsIMetricsEventItemD item){
    nsresult __result = inner.AppendChild(item ? cast(nsIMetricsEventItem)item : null);
    CheckException(__result);
  }

  /**
   * Inserts a child event item at a given index, moving later items
   * up by one position.
   *  @param item   The new item to insert 
   *  @param index  The position in the array.  If the index is equal to
   *                childCount, the new item will be appended.
   *                The index may not be greater than childCount.
   */
  /* void insertChildAt (in nsIMetricsEventItem item, in long index); */
  void InsertChildAt(nsIMetricsEventItemD item, PRInt32 index){
    nsresult __result = inner.InsertChildAt(item ? cast(nsIMetricsEventItem)item : null, index);
    CheckException(__result);
  }

  /**
   * Removes a child event item at the given index, moving all items
   * stored at a higher position down one.
   */
  /* void removeChildAt (in long index); */
  void RemoveChildAt(PRInt32 index){
    nsresult __result = inner.RemoveChildAt(index);
    CheckException(__result);
  }

  /**
   * Replaces a child event item at the given index.
   *  @param newItem  The new item
   *  @param index    The position of the item to be replaced
   */
  /* void replaceChildAt (in nsIMetricsEventItem newItem, in long index); */
  void ReplaceChildAt(nsIMetricsEventItemD newItem, PRInt32 index){
    nsresult __result = inner.ReplaceChildAt(newItem ? cast(nsIMetricsEventItem)newItem : null, index);
    CheckException(__result);
  }

  /**
   * Clears all of the child items.
   */
  /* void clearChildren (); */
  void ClearChildren(){
    nsresult __result = inner.ClearChildren();
    CheckException(__result);
  }

  /**
   * The number of child event items
   */
  /* readonly attribute long childCount; */
  PRInt32 ChildCount(){
    PRInt32 value;
    nsresult __result = inner.GetChildCount(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMetricsEventItem inner;

}


/* starting wrapper class:    nsIMetricsService */
class nsIMetricsServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMETRICSSERVICE_IID;


  alias nsIMetricsService InnerType;

  this(nsIMetricsService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMetricsService opCast() {
    return inner;
  }

  void opAssign(nsIMetricsService value) {
    inner = value;
  }

  /**
   * Creates a new EventItem object to hold event data.
   * The event will not be logged until logEvent() is called.
   *  @param itemNamespace   The new item's namespace
   *  @param itemName        The new item's name
   *
   * @returns a new MetricsEventItem instance
   */
  /* nsIMetricsEventItem createEventItem (in DOMString itemNamespace, in DOMString itemName); */
  nsIMetricsEventItemD  CreateEventItem(wchar[] itemNamespace, wchar[] itemName){
    scope auto _itemNamespace = new AString(itemNamespace);
    scope auto _itemName = new AString(itemName);
    nsIMetricsEventItem _retval;
    nsresult __result = inner.CreateEventItem(cast(nsAString*)_itemNamespace, cast(nsAString*)_itemName, &_retval);
    CheckException(__result);
    return new nsIMetricsEventItemD(_retval);
  }

  /**
   * Logs an event using the given EventItem.  The event is recorded with a
   * timestamp generated at the time at which this method is called, and a
   * session id for this instance of the application.  The keys "time" and
   * "sessionid" are reserved for this data.
   *
   * @param item
   *        The item to log.  This item and its entire tree of child items
   *        will be logged as part of the event.
   */
  /* void logEvent (in nsIMetricsEventItem item); */
  void LogEvent(nsIMetricsEventItemD item){
    nsresult __result = inner.LogEvent(item ? cast(nsIMetricsEventItem)item : null);
    CheckException(__result);
  }

  /**
   * Constructs and logs an EventItem, using the given namespace, event name,
   * and event properties. This is a more convenient version of logEvent() for
   * the case where there are no child EventItems.
   *
   * @see nsIMetricsEventItem
   */
  /* void logSimpleEvent (in DOMString eventNS, in DOMString event, in nsIPropertyBag eventValues); */
  void LogSimpleEvent(wchar[] eventNS, wchar[] event, nsIPropertyBagD eventValues){
    scope auto _eventNS = new AString(eventNS);
    scope auto _event = new AString(event);
    nsresult __result = inner.LogSimpleEvent(cast(nsAString*)_eventNS, cast(nsAString*)_event, eventValues ? cast(nsIPropertyBag)eventValues : null);
    CheckException(__result);
  }

  /**
   * Flush data to disk.
   */
  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /**
   * Initiate the upload of the current event log.  This causes the current
   * event log to be truncated once the upload completes.
   */
  /* void upload (); */
  void Upload(){
    nsresult __result = inner.Upload();
    CheckException(__result);
  }

  /**
   * Suspend log collection.  LogEvent calls will be silently ignored while log
   * collection is suspended.  For each call to suspend, resume must be called
   * to re-enable log collection.
   */
  /* void suspend (); */
  void Suspend(){
    nsresult __result = inner.Suspend();
    CheckException(__result);
  }

  /**
   * Resume log collection.  Call this method once per call to suspend to
   * re-enable log collection.
   */
  /* void resume (); */
  void Resume(){
    nsresult __result = inner.Resume();
    CheckException(__result);
  }

  /**
   * Gets a numeric window id corresponding to the given DOMWindow.
   * The id remains constant for as long as the window exists.
   */
  /* unsigned long getWindowID (in nsIDOMWindow window); */
  PRUint32 GetWindowID(nsIDOMWindowD window){
    PRUint32 _retval;
    nsresult __result = inner.GetWindowID(window ? cast(nsIDOMWindow)window : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMetricsService inner;

}

