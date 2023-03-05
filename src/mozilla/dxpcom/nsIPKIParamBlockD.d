/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKIParamBlock.idl
 */

module mozilla.dxpcom.nsIPKIParamBlockD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPKIParamBlock;


public import mozilla.dxpcom.nsIPKIParamBlockD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIPKIParamBlock */
class nsIPKIParamBlockD : public nsISupportsD {

  static const nsIID IID = NS_IPKIPARAMBLOCK_IID;


  alias nsIPKIParamBlock InnerType;

  this(nsIPKIParamBlock intr){
    super(intr);
    this.inner = intr;
  }

  nsIPKIParamBlock opCast() {
    return inner;
  }

  void opAssign(nsIPKIParamBlock value) {
    inner = value;
  }

  /* void setISupportAtIndex (in long index, in nsISupports object); */
  void SetISupportAtIndex(PRInt32 index, nsISupportsD object){
    nsresult __result = inner.SetISupportAtIndex(index, object ? cast(nsISupports)object : null);
    CheckException(__result);
  }

  /* nsISupports getISupportAtIndex (in long index); */
  nsISupportsD  GetISupportAtIndex(PRInt32 index){
    nsISupports _retval;
    nsresult __result = inner.GetISupportAtIndex(index, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIPKIParamBlock inner;

}

