/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebDAVListener.idl
 */

module mozilla.xpcom.nsIWebDAVListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURL; /* forward declaration */

public import mozilla.xpcom.nsIWebDAVResource; /* forward declaration */


/* starting interface:    nsIWebDAVOperationListener */
const char[] NS_IWEBDAVOPERATIONLISTENER_IID_STR = "e198a0fd-9e62-4299-84e3-d93c0cd68881";

const nsIID NS_IWEBDAVOPERATIONLISTENER_IID= 
  {0xe198a0fd, 0x9e62, 0x4299, 
    [ 0x84, 0xe3, 0xd9, 0x3c, 0x0c, 0xd6, 0x88, 0x81 ]};

extern(Windows)
interface nsIWebDAVOperationListener : nsISupports {
  static const char[] IID_STR = NS_IWEBDAVOPERATIONLISTENER_IID_STR;
  static const nsIID IID = NS_IWEBDAVOPERATIONLISTENER_IID;

  enum { PUT = 1U };

  enum { GET = 2U };

  enum { MOVE = 3U };

  enum { COPY = 4U };

  enum { REMOVE = 5U };

  enum { MAKE_COLLECTION = 6U };

  enum { LOCK = 7U };

  enum { UNLOCK = 8U };

  /**
     * @param detail will be nsIProperties of the properties.
     */
  enum { GET_PROPERTIES = 9U };

  /**
     * @param detail will be nsIProperties of the property names.
     */
  enum { GET_PROPERTY_NAMES = 10U };

  /**
     * @param detail will be nsISupportsString (ugh) of options list
     */
  enum { GET_OPTIONS = 11U };

  /**
     * @param detail will be nsISupportsCString of content.
     */
  enum { GET_TO_STRING = 12U };

  /**
     * @param detail will be an nsIDOMElement of the <response> element
     */
  enum { REPORT = 13U };

  /* void onOperationComplete (in unsigned long statusCode, in nsIWebDAVResource resource, in unsigned long operation, in nsISupports closure); */
  nsresult OnOperationComplete(PRUint32 statusCode, nsIWebDAVResource resource, PRUint32 operation, nsISupports closure);

  /* void onOperationDetail (in unsigned long statusCode, in nsIURL resource, in unsigned long operation, in nsISupports detail, in nsISupports closure); */
  nsresult OnOperationDetail(PRUint32 statusCode, nsIURL resource, PRUint32 operation, nsISupports detail, nsISupports closure);

}

