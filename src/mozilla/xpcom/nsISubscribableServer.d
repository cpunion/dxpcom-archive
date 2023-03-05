/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISubscribableServer.idl
 */

module mozilla.xpcom.nsISubscribableServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMsgIncomingServer; /* forward declaration */

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsIRDFNode; /* forward declaration */


/* starting interface:    nsISubscribeDataSource */
const char[] NS_ISUBSCRIBEDATASOURCE_IID_STR = "61a08c3a-1dd2-11b2-b64f-c4b2de1cf129";

const nsIID NS_ISUBSCRIBEDATASOURCE_IID= 
  {0x61a08c3a, 0x1dd2, 0x11b2, 
    [ 0xb6, 0x4f, 0xc4, 0xb2, 0xde, 0x1c, 0xf1, 0x29 ]};

extern(Windows)
interface nsISubscribeDataSource : nsISupports {
  static const char[] IID_STR = NS_ISUBSCRIBEDATASOURCE_IID_STR;
  static const nsIID IID = NS_ISUBSCRIBEDATASOURCE_IID;

  /* readonly attribute boolean hasObservers; */
  nsresult GetHasObservers(PRBool *aHasObservers);

  /* void NotifyObservers (in nsIRDFResource subject, in nsIRDFResource property, in nsIRDFNode object, in boolean isAssert, in boolean isChange); */
  nsresult NotifyObservers(nsIRDFResource subject, nsIRDFResource property, nsIRDFNode object, PRBool isAssert, PRBool isChange);

}


/* starting interface:    nsISubscribeListener */
const char[] NS_ISUBSCRIBELISTENER_IID_STR = "f337b84a-1dd1-11b2-97c7-fb8b2e3f2280";

const nsIID NS_ISUBSCRIBELISTENER_IID= 
  {0xf337b84a, 0x1dd1, 0x11b2, 
    [ 0x97, 0xc7, 0xfb, 0x8b, 0x2e, 0x3f, 0x22, 0x80 ]};

extern(Windows)
interface nsISubscribeListener : nsISupports {
  static const char[] IID_STR = NS_ISUBSCRIBELISTENER_IID_STR;
  static const nsIID IID = NS_ISUBSCRIBELISTENER_IID;

  /* void OnDonePopulating (); */
  nsresult OnDonePopulating();

}


/* starting interface:    nsISubscribableServer */
const char[] NS_ISUBSCRIBABLESERVER_IID_STR = "4afd3d64-f7e9-4eb6-98bf-8200a7dab60f";

const nsIID NS_ISUBSCRIBABLESERVER_IID= 
  {0x4afd3d64, 0xf7e9, 0x4eb6, 
    [ 0x98, 0xbf, 0x82, 0x00, 0xa7, 0xda, 0xb6, 0x0f ]};

extern(Windows)
interface nsISubscribableServer : nsISupports {
  static const char[] IID_STR = NS_ISUBSCRIBABLESERVER_IID_STR;
  static const nsIID IID = NS_ISUBSCRIBABLESERVER_IID;

  /* attribute nsISubscribeListener subscribeListener; */
  nsresult GetSubscribeListener(nsISubscribeListener  *aSubscribeListener);
  nsresult SetSubscribeListener(nsISubscribeListener  aSubscribeListener);

  /* attribute char delimiter; */
  nsresult GetDelimiter(char *aDelimiter);
  nsresult SetDelimiter(char aDelimiter);

  /* void startPopulating (in nsIMsgWindow aMsgWindow, in boolean forceToServer); */
  nsresult StartPopulating(nsIMsgWindow aMsgWindow, PRBool forceToServer);

  /* void startPopulatingWithUri (in nsIMsgWindow aMsgWindow, in boolean forceToServer, in string uri); */
  nsresult StartPopulatingWithUri(nsIMsgWindow aMsgWindow, PRBool forceToServer, char *uri);

  /* void stopPopulating (in nsIMsgWindow aMsgWindow); */
  nsresult StopPopulating(nsIMsgWindow aMsgWindow);

  /* boolean setState (in AUTF8String path, in boolean state); */
  nsresult SetState(nsACString * path, PRBool state, PRBool *_retval);

  /* void subscribeCleanup (); */
  nsresult SubscribeCleanup();

  /* void subscribe (in wstring name); */
  nsresult Subscribe(PRUnichar *name);

  /* void unsubscribe (in wstring name); */
  nsresult Unsubscribe(PRUnichar *name);

  /* void commitSubscribeChanges (); */
  nsresult CommitSubscribeChanges();

  /* void setIncomingServer (in nsIMsgIncomingServer server); */
  nsresult SetIncomingServer(nsIMsgIncomingServer server);

  /* void addTo (in AUTF8String aName, in boolean addAsSubscribed, in boolean aSubscribable, in boolean aChangeIfExists); */
  nsresult AddTo(nsACString * aName, PRBool addAsSubscribed, PRBool aSubscribable, PRBool aChangeIfExists);

  /* void setAsSubscribed (in AUTF8String path); */
  nsresult SetAsSubscribed(nsACString * path);

  /* void updateSubscribed (); */
  nsresult UpdateSubscribed();

  /* void setShowFullName (in boolean showFullName); */
  nsresult SetShowFullName(PRBool showFullName);

  /* boolean hasChildren (in AUTF8String path); */
  nsresult HasChildren(nsACString * path, PRBool *_retval);

  /* boolean isSubscribed (in AUTF8String path); */
  nsresult IsSubscribed(nsACString * path, PRBool *_retval);

  /* boolean isSubscribable (in AUTF8String path); */
  nsresult IsSubscribable(nsACString * path, PRBool *_retval);

  /* AString getLeafName (in AUTF8String path); */
  nsresult GetLeafName(nsACString * path, nsAString * _retval);

  /* void getChildren (in AUTF8String path, in nsISupportsArray array); */
  nsresult GetChildren(nsACString * path, nsISupportsArray array);

  /* AUTF8String getFirstChildURI (in AUTF8String path); */
  nsresult GetFirstChildURI(nsACString * path, nsACString * _retval);

  /* void setSearchValue (in AString searchValue); */
  nsresult SetSearchValue(nsAString * searchValue);

  /* readonly attribute boolean supportsSubscribeSearch; */
  nsresult GetSupportsSubscribeSearch(PRBool *aSupportsSubscribeSearch);

}

