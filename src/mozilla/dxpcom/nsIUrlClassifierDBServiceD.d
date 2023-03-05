/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlClassifierDBService.idl
 */

module mozilla.dxpcom.nsIUrlClassifierDBServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIUrlClassifierDBService;


public import mozilla.dxpcom.nsIUrlClassifierDBServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIUrlClassifierCallback */
class nsIUrlClassifierCallbackD : public nsISupportsD {

  static const nsIID IID = NS_IURLCLASSIFIERCALLBACK_IID;


  alias nsIUrlClassifierCallback InnerType;

  this(nsIUrlClassifierCallback intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlClassifierCallback opCast() {
    return inner;
  }

  void opAssign(nsIUrlClassifierCallback value) {
    inner = value;
  }

  /* void handleEvent (in ACString value); */
  void HandleEvent(char[] value){
    scope auto _value = new ACString(value);
    nsresult __result = inner.HandleEvent(cast(nsACString*)_value);
    CheckException(__result);
  }

private:
  nsIUrlClassifierCallback inner;

}


/* starting wrapper class:    nsIUrlClassifierDBService */
/**
 * This is a proxy class that is instantiated and called from the JS thread.
 * It provides async methods for querying and updating the database.  As the
 * methods complete, they call the callback function.
 */
class nsIUrlClassifierDBServiceD : public nsISupportsD {

  static const nsIID IID = NS_IURLCLASSIFIERDBSERVICE_IID;


  alias nsIUrlClassifierDBService InnerType;

  this(nsIUrlClassifierDBService intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlClassifierDBService opCast() {
    return inner;
  }

  void opAssign(nsIUrlClassifierDBService value) {
    inner = value;
  }

  /**
   * Looks up a key in the database.  After it finds a value, it calls
   * callback with the value as the first param.  If the key is not in
   * the db or the table does not exist, the callback is called with
   * an empty string parameter.
   */
  /* void exists (in ACString tableName, in ACString key, in nsIUrlClassifierCallback c); */
  void Exists(char[] tableName, char[] key, nsIUrlClassifierCallbackD c){
    scope auto _tableName = new ACString(tableName);
    scope auto _key = new ACString(key);
    nsresult __result = inner.Exists(cast(nsACString*)_tableName, cast(nsACString*)_key, c ? cast(nsIUrlClassifierCallback)c : null);
    CheckException(__result);
  }

  /**
   * Checks to see if the tables exist.  tableNames is a comma separated list
   * of table names to check.  The callback is called with a comma separated
   * list of tables that no longer exist (either the db is corrupted or the
   * user deleted the file).
   */
  /* void checkTables (in ACString tableNames, in nsIUrlClassifierCallback c); */
  void CheckTables(char[] tableNames, nsIUrlClassifierCallbackD c){
    scope auto _tableNames = new ACString(tableNames);
    nsresult __result = inner.CheckTables(cast(nsACString*)_tableNames, c ? cast(nsIUrlClassifierCallback)c : null);
    CheckException(__result);
  }

  /**
   * Updates the table in the background.  Calls callback after each table
   * completes processing with the new table line as the parameter.  This
   * allows us to keep track of the table version in our main thread.
   */
  /* void updateTables (in ACString updateString, in nsIUrlClassifierCallback c); */
  void UpdateTables(char[] updateString, nsIUrlClassifierCallbackD c){
    scope auto _updateString = new ACString(updateString);
    nsresult __result = inner.UpdateTables(cast(nsACString*)_updateString, c ? cast(nsIUrlClassifierCallback)c : null);
    CheckException(__result);
  }

  /**
   * Update the table incrementally.
   */
  /* void update (in ACString updateChunk); */
  void Update(char[] updateChunk){
    scope auto _updateChunk = new ACString(updateChunk);
    nsresult __result = inner.Update(cast(nsACString*)_updateChunk);
    CheckException(__result);
  }

  /**
   * Finish an incremental update.  This commits any pending tables and
   * calls the callback for each completed table.
   */
  /* void finish (in nsIUrlClassifierCallback c); */
  void Finish(nsIUrlClassifierCallbackD c){
    nsresult __result = inner.Finish(c ? cast(nsIUrlClassifierCallback)c : null);
    CheckException(__result);
  }

  /**
   * Cancel an incremental update.  This rolls back and pending changes.
   * and resets the stream interface.
   */
  /* void cancelStream (); */
  void CancelStream(){
    nsresult __result = inner.CancelStream();
    CheckException(__result);
  }

private:
  nsIUrlClassifierDBService inner;

}


/* starting wrapper class:    nsIUrlClassifierDBServiceWorker */
/**
 * Interface for the actual worker thread.  Implementations of this need not
 * be thread aware and just work on the database.
 */
class nsIUrlClassifierDBServiceWorkerD : public nsIUrlClassifierDBServiceD {

  static const nsIID IID = NS_IURLCLASSIFIERDBSERVICEWORKER_IID;


  alias nsIUrlClassifierDBServiceWorker InnerType;

  this(nsIUrlClassifierDBServiceWorker intr){
    super(intr);
    this.inner = intr;
  }

  nsIUrlClassifierDBServiceWorker opCast() {
    return inner;
  }

  void opAssign(nsIUrlClassifierDBServiceWorker value) {
    inner = value;
  }

  /* void closeDb (); */
  void CloseDb(){
    nsresult __result = inner.CloseDb();
    CheckException(__result);
  }

private:
  nsIUrlClassifierDBServiceWorker inner;

}

