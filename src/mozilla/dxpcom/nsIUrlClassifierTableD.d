/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlClassifierTable.idl
 */

module mozilla.dxpcom.nsIUrlClassifierTableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUrlClassifierTable;


public import mozilla.dxpcom.nsIUrlClassifierTableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIUrlListManager;
public import mozilla.dxpcom.nsIUrlListManagerD;


/* starting wrapper class:    nsIUrlClassifierTable */
class nsIUrlClassifierTableD : public nsISupportsD {

  static const nsIID IID = NS_IURLCLASSIFIERTABLE_IID;


  alias nsIUrlClassifierTable InnerType;

  this(nsIUrlClassifierTable intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlClassifierTable opCast() {
    return inner;
  }

  void opAssign(nsIUrlClassifierTable value) {
    inner = value;
  }

  /**
     * The name used to identify this table
     */
  /* attribute ACString name; */
  char[] Name(){
    scope auto value = new ACString();
    nsresult __result = inner.GetName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(char[] aName){
    scope auto value = new ACString(aName);
    nsresult __result = inner.SetName(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Set to false if we don't want to update this table.
     */
  /* attribute boolean needsUpdate; */
  PRBool NeedsUpdate(){
    PRBool value;
    nsresult __result = inner.GetNeedsUpdate(&value);
    CheckException(__result);
    return value;
  }
  void NeedsUpdate(PRBool aNeedsUpdate){
    nsresult __result = inner.SetNeedsUpdate(aNeedsUpdate);
    CheckException(__result);
  }

  /**
     * In the simple case, exists just looks up the string in the
     * table and call the callback after the query returns with true or
     * false.  It's possible that something more complex happens
     * (e.g., canonicalize the url).
     */
  /* void exists (in ACString key, in nsIUrlListManagerCallback cb); */
  void Exists(char[] key, nsIUrlListManagerCallbackD cb){
    scope auto _key = new ACString(key);
    nsresult __result = inner.Exists(cast(nsACString*)_key, cb ? cast(nsIUrlListManagerCallback)cb : null);
    CheckException(__result);
  }

private:
  nsIUrlClassifierTable inner;

}

