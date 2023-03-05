/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMetricsService.idl
 */

module mozilla.xpcom.nsIMetricsService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIPropertyBag; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsIMetricsEventItem */
const char[] NS_IMETRICSEVENTITEM_IID_STR = "880b8655-15a4-4b72-b6d4-6e3325bca4b6";

const nsIID NS_IMETRICSEVENTITEM_IID= 
  {0x880b8655, 0x15a4, 0x4b72, 
    [ 0xb6, 0xd4, 0x6e, 0x33, 0x25, 0xbc, 0xa4, 0xb6 ]};

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
extern(Windows)
interface nsIMetricsEventItem : nsISupports {
  static const char[] IID_STR = NS_IMETRICSEVENTITEM_IID_STR;
  static const nsIID IID = NS_IMETRICSEVENTITEM_IID;

  /**
   * The namespace for this item, which must be a valid XML namespace URI.
   */
  /* readonly attribute DOMString itemNamespace; */
  nsresult GetItemNamespace(nsAString * aItemNamespace);

  /**
   * The name of this item, which must be a valid XML tag name.
   */
  /* readonly attribute DOMString itemName; */
  nsresult GetItemName(nsAString * aItemName);

  /**
   * A PropertyBag containing the key/value pairs to be included in the item.
   * JavaScript callers can simply set this to an object containing the
   * key/value pairs as object properties.
   */
  /* attribute nsIPropertyBag properties; */
  nsresult GetProperties(nsIPropertyBag  *aProperties);
  nsresult SetProperties(nsIPropertyBag  aProperties);

  /**
   * Returns the child event item at the given index.
   */
  /* nsIMetricsEventItem childAt (in long index); */
  nsresult ChildAt(PRInt32 index, nsIMetricsEventItem *_retval);

  /**
   * Returns the first occurrence of the given item in the child list,
   * or -1 if the item is not in the child list.
   */
  /* long indexOf (in nsIMetricsEventItem item); */
  nsresult IndexOf(nsIMetricsEventItem item, PRInt32 *_retval);

  /**
   * Appends a child event item to this item.
   */
  /* void appendChild (in nsIMetricsEventItem item); */
  nsresult AppendChild(nsIMetricsEventItem item);

  /**
   * Inserts a child event item at a given index, moving later items
   * up by one position.
   *  @param item   The new item to insert 
   *  @param index  The position in the array.  If the index is equal to
   *                childCount, the new item will be appended.
   *                The index may not be greater than childCount.
   */
  /* void insertChildAt (in nsIMetricsEventItem item, in long index); */
  nsresult InsertChildAt(nsIMetricsEventItem item, PRInt32 index);

  /**
   * Removes a child event item at the given index, moving all items
   * stored at a higher position down one.
   */
  /* void removeChildAt (in long index); */
  nsresult RemoveChildAt(PRInt32 index);

  /**
   * Replaces a child event item at the given index.
   *  @param newItem  The new item
   *  @param index    The position of the item to be replaced
   */
  /* void replaceChildAt (in nsIMetricsEventItem newItem, in long index); */
  nsresult ReplaceChildAt(nsIMetricsEventItem newItem, PRInt32 index);

  /**
   * Clears all of the child items.
   */
  /* void clearChildren (); */
  nsresult ClearChildren();

  /**
   * The number of child event items
   */
  /* readonly attribute long childCount; */
  nsresult GetChildCount(PRInt32 *aChildCount);

}


/* starting interface:    nsIMetricsService */
const char[] NS_IMETRICSSERVICE_IID_STR = "289cd0d3-00b4-4554-9e6d-71eded08d1d8";

const nsIID NS_IMETRICSSERVICE_IID= 
  {0x289cd0d3, 0x00b4, 0x4554, 
    [ 0x9e, 0x6d, 0x71, 0xed, 0xed, 0x08, 0xd1, 0xd8 ]};

extern(Windows)
interface nsIMetricsService : nsISupports {
  static const char[] IID_STR = NS_IMETRICSSERVICE_IID_STR;
  static const nsIID IID = NS_IMETRICSSERVICE_IID;

  /**
   * Creates a new EventItem object to hold event data.
   * The event will not be logged until logEvent() is called.
   *  @param itemNamespace   The new item's namespace
   *  @param itemName        The new item's name
   *
   * @returns a new MetricsEventItem instance
   */
  /* nsIMetricsEventItem createEventItem (in DOMString itemNamespace, in DOMString itemName); */
  nsresult CreateEventItem(nsAString * itemNamespace, nsAString * itemName, nsIMetricsEventItem *_retval);

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
  nsresult LogEvent(nsIMetricsEventItem item);

  /**
   * Constructs and logs an EventItem, using the given namespace, event name,
   * and event properties. This is a more convenient version of logEvent() for
   * the case where there are no child EventItems.
   *
   * @see nsIMetricsEventItem
   */
  /* void logSimpleEvent (in DOMString eventNS, in DOMString event, in nsIPropertyBag eventValues); */
  nsresult LogSimpleEvent(nsAString * eventNS, nsAString * event, nsIPropertyBag eventValues);

  /**
   * Flush data to disk.
   */
  /* void flush (); */
  nsresult Flush();

  /**
   * Initiate the upload of the current event log.  This causes the current
   * event log to be truncated once the upload completes.
   */
  /* void upload (); */
  nsresult Upload();

  /**
   * Suspend log collection.  LogEvent calls will be silently ignored while log
   * collection is suspended.  For each call to suspend, resume must be called
   * to re-enable log collection.
   */
  /* void suspend (); */
  nsresult Suspend();

  /**
   * Resume log collection.  Call this method once per call to suspend to
   * re-enable log collection.
   */
  /* void resume (); */
  nsresult Resume();

  /**
   * Gets a numeric window id corresponding to the given DOMWindow.
   * The id remains constant for as long as the window exists.
   */
  /* unsigned long getWindowID (in nsIDOMWindow window); */
  nsresult GetWindowID(nsIDOMWindow window, PRUint32 *_retval);

}

