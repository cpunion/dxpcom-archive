/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIPluginInstancePeer.idl
 */

module mozilla.dxpcom.nsPIPluginInstancePeerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsPIPluginInstancePeer;


public import mozilla.dxpcom.nsPIPluginInstancePeerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPluginInstanceOwner;
public import mozilla.dxpcom.nsIPluginInstanceOwnerD;


/* starting wrapper class:    nsPIPluginInstancePeer */
class nsPIPluginInstancePeerD : public nsISupportsD {

  static const nsIID IID = NS_PIPLUGININSTANCEPEER_IID;


  alias nsPIPluginInstancePeer InnerType;

  this(nsPIPluginInstancePeer intr){
    super(intr);
    this.inner = intr;
  }

  nsPIPluginInstancePeer opCast() {
    return inner;
  }

  void opAssign(nsPIPluginInstancePeer value) {
    inner = value;
  }

  /* readonly attribute nsIPluginInstanceOwner owner; */
  nsIPluginInstanceOwnerD  Owner(){
    nsIPluginInstanceOwner value;
    nsresult __result = inner.GetOwner(&value);
    CheckException(__result);
    return new nsIPluginInstanceOwnerD(value);
  }

private:
  nsPIPluginInstancePeer inner;

}

