/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISubscribableServer.idl
 */

module mozilla.dxpcom.nsISubscribableServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISubscribableServer;


public import mozilla.dxpcom.nsISubscribableServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMsgIncomingServer;

public import mozilla.dxpcom.nsIMsgIncomingServerD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIRDFNode;

public import mozilla.dxpcom.nsIRDFNodeD;


/* starting wrapper class:    nsISubscribeDataSource */
class nsISubscribeDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_ISUBSCRIBEDATASOURCE_IID;


  alias nsISubscribeDataSource InnerType;

  this(nsISubscribeDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsISubscribeDataSource opCast() {
    return inner;
  }

  void opAssign(nsISubscribeDataSource value) {
    inner = value;
  }

  /* readonly attribute boolean hasObservers; */
  PRBool HasObservers(){
    PRBool value;
    nsresult __result = inner.GetHasObservers(&value);
    CheckException(__result);
    return value;
  }

  /* void NotifyObservers (in nsIRDFResource subject, in nsIRDFResource property, in nsIRDFNode object, in boolean isAssert, in boolean isChange); */
  void NotifyObservers(nsIRDFResourceD subject, nsIRDFResourceD property, nsIRDFNodeD object, PRBool isAssert, PRBool isChange){
    nsresult __result = inner.NotifyObservers(subject ? cast(nsIRDFResource)subject : null, property ? cast(nsIRDFResource)property : null, object ? cast(nsIRDFNode)object : null, isAssert, isChange);
    CheckException(__result);
  }

private:
  nsISubscribeDataSource inner;

}


/* starting wrapper class:    nsISubscribeListener */
class nsISubscribeListenerD : public nsISupportsD {

  static const nsIID IID = NS_ISUBSCRIBELISTENER_IID;


  alias nsISubscribeListener InnerType;

  this(nsISubscribeListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISubscribeListener opCast() {
    return inner;
  }

  void opAssign(nsISubscribeListener value) {
    inner = value;
  }

  /* void OnDonePopulating (); */
  void OnDonePopulating(){
    nsresult __result = inner.OnDonePopulating();
    CheckException(__result);
  }

private:
  nsISubscribeListener inner;

}


/* starting wrapper class:    nsISubscribableServer */
class nsISubscribableServerD : public nsISupportsD {

  static const nsIID IID = NS_ISUBSCRIBABLESERVER_IID;


  alias nsISubscribableServer InnerType;

  this(nsISubscribableServer intr){
    super(intr);
    this.inner = intr;
  }

  nsISubscribableServer opCast() {
    return inner;
  }

  void opAssign(nsISubscribableServer value) {
    inner = value;
  }

  /* attribute nsISubscribeListener subscribeListener; */
  nsISubscribeListenerD  SubscribeListener(){
    nsISubscribeListener value;
    nsresult __result = inner.GetSubscribeListener(&value);
    CheckException(__result);
    return new nsISubscribeListenerD(value);
  }
  void SubscribeListener(nsISubscribeListenerD  aSubscribeListener){
    nsISubscribeListener value;
    nsresult __result = inner.SetSubscribeListener(value);
    CheckException(__result);
  }

  /* attribute char delimiter; */
  char Delimiter(){
    char value;
    nsresult __result = inner.GetDelimiter(&value);
    CheckException(__result);
    return value;
  }
  void Delimiter(char aDelimiter){
    nsresult __result = inner.SetDelimiter(aDelimiter);
    CheckException(__result);
  }

  /* void startPopulating (in nsIMsgWindow aMsgWindow, in boolean forceToServer); */
  void StartPopulating(nsIMsgWindowD aMsgWindow, PRBool forceToServer){
    nsresult __result = inner.StartPopulating(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, forceToServer);
    CheckException(__result);
  }

  /* void startPopulatingWithUri (in nsIMsgWindow aMsgWindow, in boolean forceToServer, in string uri); */
  void StartPopulatingWithUri(nsIMsgWindowD aMsgWindow, PRBool forceToServer, char*uri){
    nsresult __result = inner.StartPopulatingWithUri(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, forceToServer, uri);
    CheckException(__result);
  }

  /* void stopPopulating (in nsIMsgWindow aMsgWindow); */
  void StopPopulating(nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.StopPopulating(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* boolean setState (in AUTF8String path, in boolean state); */
  PRBool SetState(char[] path, PRBool state){
    scope auto _path = new ACString(path);
    PRBool _retval;
    nsresult __result = inner.SetState(cast(nsACString*)_path, state, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void subscribeCleanup (); */
  void SubscribeCleanup(){
    nsresult __result = inner.SubscribeCleanup();
    CheckException(__result);
  }

  /* void subscribe (in wstring name); */
  void Subscribe(PRUnichar*name){
    nsresult __result = inner.Subscribe(name);
    CheckException(__result);
  }

  /* void unsubscribe (in wstring name); */
  void Unsubscribe(PRUnichar*name){
    nsresult __result = inner.Unsubscribe(name);
    CheckException(__result);
  }

  /* void commitSubscribeChanges (); */
  void CommitSubscribeChanges(){
    nsresult __result = inner.CommitSubscribeChanges();
    CheckException(__result);
  }

  /* void setIncomingServer (in nsIMsgIncomingServer server); */
  void SetIncomingServer(nsIMsgIncomingServerD server){
    nsresult __result = inner.SetIncomingServer(server ? cast(nsIMsgIncomingServer)server : null);
    CheckException(__result);
  }

  /* void addTo (in AUTF8String aName, in boolean addAsSubscribed, in boolean aSubscribable, in boolean aChangeIfExists); */
  void AddTo(char[] aName, PRBool addAsSubscribed, PRBool aSubscribable, PRBool aChangeIfExists){
    scope auto _aName = new ACString(aName);
    nsresult __result = inner.AddTo(cast(nsACString*)_aName, addAsSubscribed, aSubscribable, aChangeIfExists);
    CheckException(__result);
  }

  /* void setAsSubscribed (in AUTF8String path); */
  void SetAsSubscribed(char[] path){
    scope auto _path = new ACString(path);
    nsresult __result = inner.SetAsSubscribed(cast(nsACString*)_path);
    CheckException(__result);
  }

  /* void updateSubscribed (); */
  void UpdateSubscribed(){
    nsresult __result = inner.UpdateSubscribed();
    CheckException(__result);
  }

  /* void setShowFullName (in boolean showFullName); */
  void SetShowFullName(PRBool showFullName){
    nsresult __result = inner.SetShowFullName(showFullName);
    CheckException(__result);
  }

  /* boolean hasChildren (in AUTF8String path); */
  PRBool HasChildren(char[] path){
    scope auto _path = new ACString(path);
    PRBool _retval;
    nsresult __result = inner.HasChildren(cast(nsACString*)_path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isSubscribed (in AUTF8String path); */
  PRBool IsSubscribed(char[] path){
    scope auto _path = new ACString(path);
    PRBool _retval;
    nsresult __result = inner.IsSubscribed(cast(nsACString*)_path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isSubscribable (in AUTF8String path); */
  PRBool IsSubscribable(char[] path){
    scope auto _path = new ACString(path);
    PRBool _retval;
    nsresult __result = inner.IsSubscribable(cast(nsACString*)_path, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getLeafName (in AUTF8String path); */
  wchar[] GetLeafName(char[] path){
    scope auto _path = new ACString(path);
    scope auto _retval = new AString;
    nsresult __result = inner.GetLeafName(cast(nsACString*)_path, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void getChildren (in AUTF8String path, in nsISupportsArray array); */
  void GetChildren(char[] path, nsISupportsArrayD array){
    scope auto _path = new ACString(path);
    nsresult __result = inner.GetChildren(cast(nsACString*)_path, array ? cast(nsISupportsArray)array : null);
    CheckException(__result);
  }

  /* AUTF8String getFirstChildURI (in AUTF8String path); */
  char[] GetFirstChildURI(char[] path){
    scope auto _path = new ACString(path);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetFirstChildURI(cast(nsACString*)_path, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setSearchValue (in AString searchValue); */
  void SetSearchValue(wchar[] searchValue){
    scope auto _searchValue = new AString(searchValue);
    nsresult __result = inner.SetSearchValue(cast(nsAString*)_searchValue);
    CheckException(__result);
  }

  /* readonly attribute boolean supportsSubscribeSearch; */
  PRBool SupportsSubscribeSearch(){
    PRBool value;
    nsresult __result = inner.GetSupportsSubscribeSearch(&value);
    CheckException(__result);
    return value;
  }

private:
  nsISubscribableServer inner;

}

