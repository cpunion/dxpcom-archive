/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINewsDatabase.idl
 */

module mozilla.dxpcom.nsINewsDatabaseD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINewsDatabase;


public import mozilla.dxpcom.nsINewsDatabaseD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINewsDatabase */
class nsINewsDatabaseD : public nsISupportsD {

  static const nsIID IID = NS_INEWSDATABASE_IID;


  alias nsINewsDatabase InnerType;

  this(nsINewsDatabase intr){
    super(intr);
    this.inner = intr;
  }

  nsINewsDatabase opCast() {
    return inner;
  }

  void opAssign(nsINewsDatabase value) {
    inner = value;
  }

  /* [noscript] attribute nsMsgKeySetPtr readSet; */
  nsMsgKeySet * ReadSet(){
    nsMsgKeySet * value;
    nsresult __result = inner.GetReadSet(&value);
    CheckException(__result);
    return value;
  }
  void ReadSet(nsMsgKeySet * aReadSet){
    nsresult __result = inner.SetReadSet(aReadSet);
    CheckException(__result);
  }

private:
  nsINewsDatabase inner;

}

