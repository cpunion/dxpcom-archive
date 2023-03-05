/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgRecipientArray.idl
 */

module mozilla.dxpcom.nsIMsgRecipientArrayD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgRecipientArray;


public import mozilla.dxpcom.nsIMsgRecipientArrayD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgRecipientArray */
class nsIMsgRecipientArrayD : public nsISupportsD {

  static const nsIID IID = NS_IMSGRECIPIENTARRAY_IID;


  alias nsIMsgRecipientArray InnerType;

  this(nsIMsgRecipientArray intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgRecipientArray opCast() {
    return inner;
  }

  void opAssign(nsIMsgRecipientArray value) {
    inner = value;
  }

  /* wstring StringAt (in long index); */
  PRUnichar* StringAt(PRInt32 index){
    PRUnichar* _retval;
    nsresult __result = inner.StringAt(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean AppendString (in wstring aString); */
  PRBool AppendString(PRUnichar*aString){
    PRBool _retval;
    nsresult __result = inner.AppendString(aString, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean RemoveStringAt (in long index); */
  PRBool RemoveStringAt(PRInt32 index){
    PRBool _retval;
    nsresult __result = inner.RemoveStringAt(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void Clear (); */
  void Clear(){
    nsresult __result = inner.Clear();
    CheckException(__result);
  }

  /* readonly attribute long count; */
  PRInt32 Count(){
    PRInt32 value;
    nsresult __result = inner.GetCount(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIMsgRecipientArray inner;

}

