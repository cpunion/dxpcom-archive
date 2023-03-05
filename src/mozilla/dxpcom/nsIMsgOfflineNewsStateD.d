/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgOfflineNewsState.idl
 */

module mozilla.dxpcom.nsIMsgOfflineNewsStateD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgOfflineNewsState;


public import mozilla.dxpcom.nsIMsgOfflineNewsStateD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgOfflineNewsState */
class nsIMsgOfflineNewsStateD : public nsISupportsD {

  static const nsIID IID = NS_IMSGOFFLINENEWSSTATE_IID;


  alias nsIMsgOfflineNewsState InnerType;

  this(nsIMsgOfflineNewsState intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgOfflineNewsState opCast() {
    return inner;
  }

  void opAssign(nsIMsgOfflineNewsState value) {
    inner = value;
  }

  /* long Process (out string outputBuffer, in long bufferSize); */
  PRInt32 Process(out char*outputBuffer, PRInt32 bufferSize){
    PRInt32 _retval;
    nsresult __result = inner.Process(&outputBuffer, bufferSize, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long Interrupt (); */
  PRInt32 Interrupt(){
    PRInt32 _retval;
    nsresult __result = inner.Interrupt(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgOfflineNewsState inner;

}

