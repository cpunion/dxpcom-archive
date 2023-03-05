/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceInfoManager.idl
 */

module mozilla.dxpcom.nsIInterfaceInfoManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInterfaceInfoManager;


public import mozilla.dxpcom.nsIInterfaceInfoManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.dxpcom.nsIInterfaceInfoD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIInterfaceInfoManager */
class nsIInterfaceInfoManagerD : public nsISupportsD {

  static const nsIID IID = NS_IINTERFACEINFOMANAGER_IID;


  alias nsIInterfaceInfoManager InnerType;

  this(nsIInterfaceInfoManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIInterfaceInfoManager opCast() {
    return inner;
  }

  void opAssign(nsIInterfaceInfoManager value) {
    inner = value;
  }

  /* nsIInterfaceInfo getInfoForIID (in nsIIDPtr iid); */
  nsIInterfaceInfoD  GetInfoForIID(nsIID * iid){
    nsIInterfaceInfo _retval;
    nsresult __result = inner.GetInfoForIID(iid, &_retval);
    CheckException(__result);
    return new nsIInterfaceInfoD(_retval);
  }

  /* nsIInterfaceInfo getInfoForName (in string name); */
  nsIInterfaceInfoD  GetInfoForName(char*name){
    nsIInterfaceInfo _retval;
    nsresult __result = inner.GetInfoForName(name, &_retval);
    CheckException(__result);
    return new nsIInterfaceInfoD(_retval);
  }

  /* nsIIDPtr getIIDForName (in string name); */
  nsIID * GetIIDForName(char*name){
nsIID * _retval;
    nsresult __result = inner.GetIIDForName(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string getNameForIID (in nsIIDPtr iid); */
  char* GetNameForIID(nsIID * iid){
    char* _retval;
    nsresult __result = inner.GetNameForIID(iid, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIEnumerator enumerateInterfaces (); */
  nsIEnumeratorD  EnumerateInterfaces(){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateInterfaces(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* void autoRegisterInterfaces (); */
  void AutoRegisterInterfaces(){
    nsresult __result = inner.AutoRegisterInterfaces();
    CheckException(__result);
  }

  /* nsIEnumerator enumerateInterfacesWhoseNamesStartWith (in string prefix); */
  nsIEnumeratorD  EnumerateInterfacesWhoseNamesStartWith(char*prefix){
    nsIEnumerator _retval;
    nsresult __result = inner.EnumerateInterfacesWhoseNamesStartWith(prefix, &_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

private:
  nsIInterfaceInfoManager inner;

}


/* starting wrapper class:    nsIInterfaceInfoSuperManager */
class nsIInterfaceInfoSuperManagerD : public nsIInterfaceInfoManagerD {

  static const nsIID IID = NS_IINTERFACEINFOSUPERMANAGER_IID;


  alias nsIInterfaceInfoSuperManager InnerType;

  this(nsIInterfaceInfoSuperManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIInterfaceInfoSuperManager opCast() {
    return inner;
  }

  void opAssign(nsIInterfaceInfoSuperManager value) {
    inner = value;
  }

  /* void addAdditionalManager (in nsIInterfaceInfoManager manager); */
  void AddAdditionalManager(nsIInterfaceInfoManagerD manager){
    nsresult __result = inner.AddAdditionalManager(manager ? cast(nsIInterfaceInfoManager)manager : null);
    CheckException(__result);
  }

  /* void removeAdditionalManager (in nsIInterfaceInfoManager manager); */
  void RemoveAdditionalManager(nsIInterfaceInfoManagerD manager){
    nsresult __result = inner.RemoveAdditionalManager(manager ? cast(nsIInterfaceInfoManager)manager : null);
    CheckException(__result);
  }

  /* PRBool hasAdditionalManagers (); */
  PRBool HasAdditionalManagers(){
    PRBool _retval;
    nsresult __result = inner.HasAdditionalManagers(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISimpleEnumerator enumerateAdditionalManagers (); */
  nsISimpleEnumeratorD  EnumerateAdditionalManagers(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateAdditionalManagers(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIInterfaceInfoSuperManager inner;

}

