/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgAccount.idl
 */

module mozilla.dxpcom.nsIMsgAccountD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgAccount;


public import mozilla.dxpcom.nsIMsgAccountD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgIncomingServer;
public import mozilla.dxpcom.nsIMsgIncomingServerD;
public import mozilla.xpcom.nsIMsgIdentity;
public import mozilla.dxpcom.nsIMsgIdentityD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIMsgAccount */
class nsIMsgAccountD : public nsISupportsD {

  static const nsIID IID = NS_IMSGACCOUNT_IID;


  alias nsIMsgAccount InnerType;

  this(nsIMsgAccount intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgAccount opCast() {
    return inner;
  }

  void opAssign(nsIMsgAccount value) {
    inner = value;
  }

  /* void init (); */
  void Init(){
    nsresult __result = inner.Init();
    CheckException(__result);
  }

  /* attribute string key; */
  char* Key(){
    char* value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(char* aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /* attribute nsIMsgIncomingServer incomingServer; */
  nsIMsgIncomingServerD  IncomingServer(){
    nsIMsgIncomingServer value;
    nsresult __result = inner.GetIncomingServer(&value);
    CheckException(__result);
    return new nsIMsgIncomingServerD(value);
  }
  void IncomingServer(nsIMsgIncomingServerD  aIncomingServer){
    nsIMsgIncomingServer value;
    nsresult __result = inner.SetIncomingServer(value);
    CheckException(__result);
  }

  /* readonly attribute nsISupportsArray identities; */
  nsISupportsArrayD  Identities(){
    nsISupportsArray value;
    nsresult __result = inner.GetIdentities(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* attribute nsIMsgIdentity defaultIdentity; */
  nsIMsgIdentityD  DefaultIdentity(){
    nsIMsgIdentity value;
    nsresult __result = inner.GetDefaultIdentity(&value);
    CheckException(__result);
    return new nsIMsgIdentityD(value);
  }
  void DefaultIdentity(nsIMsgIdentityD  aDefaultIdentity){
    nsIMsgIdentity value;
    nsresult __result = inner.SetDefaultIdentity(value);
    CheckException(__result);
  }

  /* void addIdentity (in nsIMsgIdentity identity); */
  void AddIdentity(nsIMsgIdentityD identity){
    nsresult __result = inner.AddIdentity(identity ? cast(nsIMsgIdentity)identity : null);
    CheckException(__result);
  }

  /* void removeIdentity (in nsIMsgIdentity identity); */
  void RemoveIdentity(nsIMsgIdentityD identity){
    nsresult __result = inner.RemoveIdentity(identity ? cast(nsIMsgIdentity)identity : null);
    CheckException(__result);
  }

  /* void clearAllValues (); */
  void ClearAllValues(){
    nsresult __result = inner.ClearAllValues();
    CheckException(__result);
  }

  /* wstring toString (); */
  PRUnichar* ToString(){
    PRUnichar* _retval;
    nsresult __result = inner.ToString(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgAccount inner;

}

