/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGenericInterfaceInfoSet.idl
 */

module mozilla.dxpcom.nsIGenericInterfaceInfoSetD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIGenericInterfaceInfoSet;


public import mozilla.dxpcom.nsIGenericInterfaceInfoSetD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.dxpcom.nsIInterfaceInfoD;
public import mozilla.xpcom.nsIInterfaceInfoManager;
public import mozilla.dxpcom.nsIInterfaceInfoManagerD;


/* starting wrapper class:    nsIGenericInterfaceInfo */
class nsIGenericInterfaceInfoD : public nsIInterfaceInfoD {

  static const nsIID IID = NS_IGENERICINTERFACEINFO_IID;


  alias nsIGenericInterfaceInfo InnerType;

  this(nsIGenericInterfaceInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIGenericInterfaceInfo opCast() {
    return inner;
  }

  void opAssign(nsIGenericInterfaceInfo value) {
    inner = value;
  }

  /**
    * All members except params* and result* copied
    */
  /* PRUint16 appendMethod (in XPTMethodDescriptorPtr aMethod); */
  PRUint16 AppendMethod(XPTMethodDescriptor * aMethod){
    PRUint16 _retval;
    nsresult __result = inner.AppendMethod(aMethod, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * All members copied
    */
  /* PRUint16 appendConst (in XPTConstDescriptorPtr aConst); */
  PRUint16 AppendConst(XPTConstDescriptor * aConst){
    PRUint16 _retval;
    nsresult __result = inner.AppendConst(aConst, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIGenericInterfaceInfo inner;

}


/* starting wrapper class:    nsIGenericInterfaceInfoSet */
class nsIGenericInterfaceInfoSetD : public nsIInterfaceInfoManagerD {

  static const nsIID IID = NS_IGENERICINTERFACEINFOSET_IID;


  alias nsIGenericInterfaceInfoSet InnerType;

  this(nsIGenericInterfaceInfoSet intr){
    super(intr);
    this.inner = intr;
  }

  nsIGenericInterfaceInfoSet opCast() {
    return inner;
  }

  void opAssign(nsIGenericInterfaceInfoSet value) {
    inner = value;
  }

  /**
    * Methods include pointers to param arrays allocated here.
    */
  /* XPTParamDescriptorPtr allocateParamArray (in PRUint16 aCount); */
  XPTParamDescriptor * AllocateParamArray(PRUint16 aCount){
XPTParamDescriptor * _retval;
    nsresult __result = inner.AllocateParamArray(aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * Used for type that is in an array.
    */
  /* XPTTypeDescriptorPtr allocateAdditionalType (out PRUint16 aIndex); */
  XPTTypeDescriptor * AllocateAdditionalType(out PRUint16 aIndex){
XPTTypeDescriptor * _retval;
    nsresult __result = inner.AllocateAdditionalType(&aIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint16 createAndAppendInterface (in string aName, in nsIIDRef aIID, in PRUint16 aParent, in PRUint8 aFlags, out nsIGenericInterfaceInfo aInfo); */
  PRUint16 CreateAndAppendInterface(char*aName, nsIID * aIID, PRUint16 aParent, PRUint8 aFlags, out nsIGenericInterfaceInfoD aInfo){
    nsIGenericInterfaceInfo _aInfo;
    PRUint16 _retval;
    nsresult __result = inner.CreateAndAppendInterface(aName, aIID, aParent, aFlags, &_aInfo, &_retval);
    CheckException(__result);
    aInfo = _aInfo ? new nsIGenericInterfaceInfoD(_aInfo) : null;
    return _retval;
  }

  /* PRUint16 appendExternalInterface (in nsIInterfaceInfo aInfo); */
  PRUint16 AppendExternalInterface(nsIInterfaceInfoD aInfo){
    PRUint16 _retval;
    nsresult __result = inner.AppendExternalInterface(aInfo ? cast(nsIInterfaceInfo)aInfo : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint16 indexOf (in nsIIDRef aIID); */
  PRUint16 IndexOf(nsIID * aIID){
    PRUint16 _retval;
    nsresult __result = inner.IndexOf(aIID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint16 indexOfByName (in string aName); */
  PRUint16 IndexOfByName(char*aName){
    PRUint16 _retval;
    nsresult __result = inner.IndexOfByName(aName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIInterfaceInfo interfaceInfoAt (in PRUint16 aIndex); */
  nsIInterfaceInfoD  InterfaceInfoAt(PRUint16 aIndex){
    nsIInterfaceInfo _retval;
    nsresult __result = inner.InterfaceInfoAt(aIndex, &_retval);
    CheckException(__result);
    return new nsIInterfaceInfoD(_retval);
  }

private:
  nsIGenericInterfaceInfoSet inner;

}

