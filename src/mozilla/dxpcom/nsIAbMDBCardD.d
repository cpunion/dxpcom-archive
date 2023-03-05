/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbMDBCard.idl
 */

module mozilla.dxpcom.nsIAbMDBCardD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbMDBCard;


public import mozilla.dxpcom.nsIAbMDBCardD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAddrDatabase;

public import mozilla.dxpcom.nsIAddrDatabaseD;


/* starting wrapper class:    nsIAbMDBCard */
class nsIAbMDBCardD : public nsISupportsD {

  static const nsIID IID = NS_IABMDBCARD_IID;


  alias nsIAbMDBCard InnerType;

  this(nsIAbMDBCard intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbMDBCard opCast() {
    return inner;
  }

  void opAssign(nsIAbMDBCard value) {
    inner = value;
  }

  /* attribute unsigned long key; */
  PRUint32 Key(){
    PRUint32 value;
    nsresult __result = inner.GetKey(&value);
    CheckException(__result);
    return value;
  }
  void Key(PRUint32 aKey){
    nsresult __result = inner.SetKey(aKey);
    CheckException(__result);
  }

  /* attribute unsigned long dbTableID; */
  PRUint32 DbTableID(){
    PRUint32 value;
    nsresult __result = inner.GetDbTableID(&value);
    CheckException(__result);
    return value;
  }
  void DbTableID(PRUint32 aDbTableID){
    nsresult __result = inner.SetDbTableID(aDbTableID);
    CheckException(__result);
  }

  /* attribute unsigned long dbRowID; */
  PRUint32 DbRowID(){
    PRUint32 value;
    nsresult __result = inner.GetDbRowID(&value);
    CheckException(__result);
    return value;
  }
  void DbRowID(PRUint32 aDbRowID){
    nsresult __result = inner.SetDbRowID(aDbRowID);
    CheckException(__result);
  }

  /* void setAbDatabase (in nsIAddrDatabase database); */
  void SetAbDatabase(nsIAddrDatabaseD database){
    nsresult __result = inner.SetAbDatabase(database ? cast(nsIAddrDatabase)database : null);
    CheckException(__result);
  }

  /* void copyCard (in nsIAbMDBCard srcCardDB); */
  void CopyCard(nsIAbMDBCardD srcCardDB){
    nsresult __result = inner.CopyCard(srcCardDB ? cast(nsIAbMDBCard)srcCardDB : null);
    CheckException(__result);
  }

  /* wstring getStringAttribute (in string name); */
  PRUnichar* GetStringAttribute(char*name){
    PRUnichar* _retval;
    nsresult __result = inner.GetStringAttribute(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setStringAttribute (in string name, in wstring value); */
  void SetStringAttribute(char*name, PRUnichar*value){
    nsresult __result = inner.SetStringAttribute(name, value);
    CheckException(__result);
  }

private:
  nsIAbMDBCard inner;

}

