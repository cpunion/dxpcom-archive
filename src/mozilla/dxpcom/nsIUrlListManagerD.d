/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlListManager.idl
 */

module mozilla.dxpcom.nsIUrlListManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUrlListManager;


public import mozilla.dxpcom.nsIUrlListManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUrlListManagerCallback */
/**
 * Interface for a class that manages updates of multiple nsIUrlClassifierTables.
 */
class nsIUrlListManagerCallbackD : public nsISupportsD {

  static const nsIID IID = NS_IURLLISTMANAGERCALLBACK_IID;


  alias nsIUrlListManagerCallback InnerType;

  this(nsIUrlListManagerCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlListManagerCallback opCast() {
    return inner;
  }

  void opAssign(nsIUrlListManagerCallback value) {
    inner = value;
  }

  /* void handleEvent (in boolean value); */
  void HandleEvent(PRBool value){
    nsresult __result = inner.HandleEvent(value);
    CheckException(__result);
  }

private:
  nsIUrlListManagerCallback inner;

}


/* starting wrapper class:    nsIUrlListManager */
class nsIUrlListManagerD : public nsISupportsD {

  static const nsIID IID = NS_IURLLISTMANAGER_IID;


  alias nsIUrlListManager InnerType;

  this(nsIUrlListManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlListManager opCast() {
    return inner;
  }

  void opAssign(nsIUrlListManager value) {
    inner = value;
  }

  /**
     * Set the URL we check for updates.
     */
  /* void setUpdateUrl (in ACString url); */
  void SetUpdateUrl(char[] url){
    scope auto _url = new ACString(url);
    nsresult __result = inner.SetUpdateUrl(cast(nsACString*)_url);
    CheckException(__result);
  }

  /**
     * Set the URL we use to get keys used to decrypt URLs in
     * enchash tables.
     */
  /* void setKeyUrl (in ACString url); */
  void SetKeyUrl(char[] url){
    scope auto _url = new ACString(url);
    nsresult __result = inner.SetKeyUrl(cast(nsACString*)_url);
    CheckException(__result);
  }

  /**
     * Add a table to the list of tables we are managing.  The name is a
     * string of the format provider_name-semantic_type-table_type.  For
     * example, goog-white-enchash or goog-black-url.
     */
  /* boolean registerTable (in ACString tableName, in boolean requireMac); */
  PRBool RegisterTable(char[] tableName, PRBool requireMac){
    scope auto _tableName = new ACString(tableName);
    PRBool _retval;
    nsresult __result = inner.RegisterTable(cast(nsACString*)_tableName, requireMac, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Turn on update checking for a table.  I.e., during the next server
     * check, download updates for this table.
     */
  /* void enableUpdate (in ACString tableName); */
  void EnableUpdate(char[] tableName){
    scope auto _tableName = new ACString(tableName);
    nsresult __result = inner.EnableUpdate(cast(nsACString*)_tableName);
    CheckException(__result);
  }

  /**
     * Turn off update checking for a table.
     */
  /* void disableUpdate (in ACString tableName); */
  void DisableUpdate(char[] tableName){
    scope auto _tableName = new ACString(tableName);
    nsresult __result = inner.DisableUpdate(cast(nsACString*)_tableName);
    CheckException(__result);
  }

  /**
     * Lookup a key in a table.  Should not raise exceptions.  Calls
     * the callback function with a single parameter: true if the key
     * is in the table, false if it isn't.
     */
  /* void safeExists (in ACString tableName, in ACString key, in nsIUrlListManagerCallback cb); */
  void SafeExists(char[] tableName, char[] key, nsIUrlListManagerCallbackD cb){
    scope auto _tableName = new ACString(tableName);
    scope auto _key = new ACString(key);
    nsresult __result = inner.SafeExists(cast(nsACString*)_tableName, cast(nsACString*)_key, cb ? cast(nsIUrlListManagerCallback)cb : null);
    CheckException(__result);
  }

private:
  nsIUrlListManager inner;

}

