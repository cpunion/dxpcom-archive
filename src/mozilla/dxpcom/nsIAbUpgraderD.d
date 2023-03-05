/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbUpgrader.idl
 */

module mozilla.dxpcom.nsIAbUpgraderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbUpgrader;


public import mozilla.dxpcom.nsIAbUpgraderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIFileSpec;
public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIAbUpgrader */
class nsIAbUpgraderD : public nsISupportsD {

  static const nsIID IID = NS_IABUPGRADER_IID;


  alias nsIAbUpgrader InnerType;

  this(nsIAbUpgrader intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbUpgrader opCast() {
    return inner;
  }

  void opAssign(nsIAbUpgrader value) {
    inner = value;
  }

  /* void StartUpgrade4xAddrBook (in nsIFileSpec sourceAddrBook, in nsIFileSpec destAddrBook); */
  void StartUpgrade4xAddrBook(nsIFileSpecD sourceAddrBook, nsIFileSpecD destAddrBook){
    nsresult __result = inner.StartUpgrade4xAddrBook(sourceAddrBook ? cast(nsIFileSpec)sourceAddrBook : null, destAddrBook ? cast(nsIFileSpec)destAddrBook : null);
    CheckException(__result);
  }

  /* void ContinueExport (out boolean done); */
  void ContinueExport(out PRBool done){
    nsresult __result = inner.ContinueExport(&done);
    CheckException(__result);
  }

  /* attribute string currentCharset; */
  char* CurrentCharset(){
    char* value;
    nsresult __result = inner.GetCurrentCharset(&value);
    CheckException(__result);
    return value;
  }
  void CurrentCharset(char* aCurrentCharset){
    nsresult __result = inner.SetCurrentCharset(aCurrentCharset);
    CheckException(__result);
  }

private:
  nsIAbUpgrader inner;

}

