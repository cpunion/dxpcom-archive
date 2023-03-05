/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableInterfaces.idl
 */

module mozilla.dxpcom.nsIScriptableInterfacesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableInterfaces;


public import mozilla.dxpcom.nsIScriptableInterfacesD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIInterfaceInfoManager;
public import mozilla.dxpcom.nsIInterfaceInfoManagerD;


/* starting wrapper class:    nsIScriptableInterfaces */
/**
* Interface used as Components.interfaces (and elsewhere)
* (interesting stuff only reflected into JavaScript)
*/
class nsIScriptableInterfacesD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEINTERFACES_IID;


  alias nsIScriptableInterfaces InnerType;

  this(nsIScriptableInterfaces intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableInterfaces opCast() {
    return inner;
  }

  void opAssign(nsIScriptableInterfaces value) {
    inner = value;
  }

  /* [noscript] attribute nsIInterfaceInfoManager manager; */
  nsIInterfaceInfoManagerD  Manager(){
    nsIInterfaceInfoManager value;
    nsresult __result = inner.GetManager(&value);
    CheckException(__result);
    return new nsIInterfaceInfoManagerD(value);
  }
  void Manager(nsIInterfaceInfoManagerD  aManager){
    nsIInterfaceInfoManager value;
    nsresult __result = inner.SetManager(value);
    CheckException(__result);
  }

private:
  nsIScriptableInterfaces inner;

}


/* starting wrapper class:    nsIScriptableInterfacesByID */
/**
* interface of Components.interfacesByID
* (interesting stuff only reflected into JavaScript)
*/
class nsIScriptableInterfacesByIDD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEINTERFACESBYID_IID;


  alias nsIScriptableInterfacesByID InnerType;

  this(nsIScriptableInterfacesByID intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableInterfacesByID opCast() {
    return inner;
  }

  void opAssign(nsIScriptableInterfacesByID value) {
    inner = value;
  }

private:
  nsIScriptableInterfacesByID inner;

}

