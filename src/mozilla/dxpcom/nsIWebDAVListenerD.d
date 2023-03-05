/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebDAVListener.idl
 */

module mozilla.dxpcom.nsIWebDAVListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebDAVListener;


public import mozilla.dxpcom.nsIWebDAVListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURL;

public import mozilla.dxpcom.nsIURLD;

public import mozilla.xpcom.nsIWebDAVResource;

public import mozilla.dxpcom.nsIWebDAVResourceD;


/* starting wrapper class:    nsIWebDAVOperationListener */
class nsIWebDAVOperationListenerD : public nsISupportsD {

  static const nsIID IID = NS_IWEBDAVOPERATIONLISTENER_IID;


  alias nsIWebDAVOperationListener InnerType;

  this(nsIWebDAVOperationListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebDAVOperationListener opCast() {
    return inner;
  }

  void opAssign(nsIWebDAVOperationListener value) {
    inner = value;
  }

  enum { PUT = 1U }

  enum { GET = 2U }

  enum { MOVE = 3U }

  enum { COPY = 4U }

  enum { REMOVE = 5U }

  enum { MAKE_COLLECTION = 6U }

  enum { LOCK = 7U }

  enum { UNLOCK = 8U }

  /**
     * @param detail will be nsIProperties of the properties.
     */
  enum { GET_PROPERTIES = 9U }

  /**
     * @param detail will be nsIProperties of the property names.
     */
  enum { GET_PROPERTY_NAMES = 10U }

  /**
     * @param detail will be nsISupportsString (ugh) of options list
     */
  enum { GET_OPTIONS = 11U }

  /**
     * @param detail will be nsISupportsCString of content.
     */
  enum { GET_TO_STRING = 12U }

  /**
     * @param detail will be an nsIDOMElement of the <response> element
     */
  enum { REPORT = 13U }

  /* void onOperationComplete (in unsigned long statusCode, in nsIWebDAVResource resource, in unsigned long operation, in nsISupports closure); */
  void OnOperationComplete(PRUint32 statusCode, nsIWebDAVResourceD resource, PRUint32 operation, nsISupportsD closure){
    nsresult __result = inner.OnOperationComplete(statusCode, resource ? cast(nsIWebDAVResource)resource : null, operation, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

  /* void onOperationDetail (in unsigned long statusCode, in nsIURL resource, in unsigned long operation, in nsISupports detail, in nsISupports closure); */
  void OnOperationDetail(PRUint32 statusCode, nsIURLD resource, PRUint32 operation, nsISupportsD detail, nsISupportsD closure){
    nsresult __result = inner.OnOperationDetail(statusCode, resource ? cast(nsIURL)resource : null, operation, detail ? cast(nsISupports)detail : null, closure ? cast(nsISupports)closure : null);
    CheckException(__result);
  }

private:
  nsIWebDAVOperationListener inner;

}

