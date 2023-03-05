/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICollection.idl
 */

module mozilla.dxpcom.nsICollectionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICollection;


public import mozilla.dxpcom.nsICollectionD;

public import mozilla.xpcom.nsISerializable;
public import mozilla.dxpcom.nsISerializableD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsICollection */
class nsICollectionD : public nsISerializableD {

  static const nsIID IID = NS_ICOLLECTION_IID;


  alias nsICollection InnerType;

  this(nsICollection intr){
    super(intr);
    this.inner = intr;
  }

  nsICollection opCast() {
    return inner;
  }

  void opAssign(nsICollection value) {
    inner = value;
  }

  /* PRUint32 Count (); */
  PRUint32 Count(){
    PRUint32 _retval;
    nsresult __result = inner.Count(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsISupports GetElementAt (in PRUint32 index); */
  nsISupportsD  GetElementAt(PRUint32 index){
    nsISupports _retval;
    nsresult __result = inner.GetElementAt(index, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void QueryElementAt (in PRUint32 index, in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  void QueryElementAt(PRUint32 index, nsIID * uuid, out void * result){
    nsresult __result = inner.QueryElementAt(index, uuid, &result);
    CheckException(__result);
  }

  /* void SetElementAt (in PRUint32 index, in nsISupports item); */
  void SetElementAt(PRUint32 index, nsISupportsD item){
    nsresult __result = inner.SetElementAt(index, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* void AppendElement (in nsISupports item); */
  void AppendElement(nsISupportsD item){
    nsresult __result = inner.AppendElement(item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* void RemoveElement (in nsISupports item); */
  void RemoveElement(nsISupportsD item){
    nsresult __result = inner.RemoveElement(item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  /* nsIEnumerator Enumerate (); */
  nsIEnumeratorD  Enumerate(){
    nsIEnumerator _retval;
    nsresult __result = inner.Enumerate(&_retval);
    CheckException(__result);
    return new nsIEnumeratorD(_retval);
  }

  /* void Clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

private:
  nsICollection inner;

}

