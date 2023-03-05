/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlService.idl
 */

module mozilla.dxpcom.mozISqlServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlService;


public import mozilla.dxpcom.mozISqlServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.mozISqlConnection;

public import mozilla.dxpcom.mozISqlConnectionD;


/* starting wrapper class:    mozISqlService */
/**
 * The SQL service is used to construct direct connections to SQL-based
 * databases. The service maintains a set of aliases, one for each database
 * to connect to. Methods are provided for adding, retrieving and removing
 * aliases. Once an alias has been added, it is persistent, so it does not need
 * to be added again. The aliases are stored in user preferences.
 * Aliases are identfied using an RDF resource.
 *
 * Once an alias has been added, a connection may be opened to a database using
 * the RDF resource.
 *
 * @status UNDER_DEVELOPMENT
 */
class mozISqlServiceD : public nsISupportsD {

  static const nsIID IID = MOZISQLSERVICE_IID;


  alias mozISqlService InnerType;

  this(mozISqlService intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlService opCast() {
    return inner;
  }

  void opAssign(mozISqlService value) {
    inner = value;
  }

  /**
   * Holds the string message of the last error that occured when a connection
   * was opened.
   */
  /* readonly attribute AString errorMessage; */
  wchar[] ErrorMessage(){
    scope auto value = new AString();
    nsresult __result = inner.GetErrorMessage(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * Add an alias for a database connection. An alias must be added before a
   * connection can be made.
   *
   * Different types of databases may be connected to using the |aType|
   * argument. For instance 'pgsql' or 'mysql'. When a connection is made, a
   * component of the form '@mozilla.org/sql/connection;1?type=<type>' will be
   * looked up using the component manager. This allows additional database
   * implementations to be provided separately of mozSQL.
   *
   * @param aName       human-readable name of the alias
   * @param aType       database type (such as pgsql)
   * @param aHostname   hostname for the database
   * @param aPort       port for the database
   * @param aDatabase   database name
   * @param aPriority   priority
   * @return            an RDF resource representing the alias
   */
  /* nsIRDFResource addAlias (in AString aName, in AString aType, in AString aHostname, in long aPort, in AString aDatabase, in long aPriority); */
  nsIRDFResourceD  AddAlias(wchar[] aName, wchar[] aType, wchar[] aHostname, PRInt32 aPort, wchar[] aDatabase, PRInt32 aPriority){
    scope auto _aName = new AString(aName);
    scope auto _aType = new AString(aType);
    scope auto _aHostname = new AString(aHostname);
    scope auto _aDatabase = new AString(aDatabase);
    nsIRDFResource _retval;
    nsresult __result = inner.AddAlias(cast(nsAString*)_aName, cast(nsAString*)_aType, cast(nsAString*)_aHostname, aPort, cast(nsAString*)_aDatabase, aPriority, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /**
   * Retrieves alias information. The out parameters are filled in with
   * the corresponding information.
   *
   * @param aAlias      the alias to retrieve
   * @param aName       human-readable name of the alias
   * @param aType       database type
   * @param aHostname   hostname of the database
   * @param aPort       port of the database
   * @param aDatabase   database name
   * @param aPriority   priority
   */
  /* void fetchAlias (in nsIRDFResource aAlias, out AString aName, out AString aType, out AString aHostname, out long aPort, out AString aDatabase, out long aPriority); */
  void FetchAlias(nsIRDFResourceD aAlias, wchar[] aName, wchar[] aType, wchar[] aHostname, out PRInt32 aPort, wchar[] aDatabase, out PRInt32 aPriority){
    scope auto _aName = new AString;
    scope auto _aType = new AString;
    scope auto _aHostname = new AString;
    scope auto _aDatabase = new AString;
    nsresult __result = inner.FetchAlias(aAlias ? cast(nsIRDFResource)aAlias : null, cast(nsAString*)_aName, cast(nsAString*)_aType, cast(nsAString*)_aHostname, &aPort, cast(nsAString*)_aDatabase, &aPriority);
    CheckException(__result);
    aName = _aName.GetString();
    aType = _aType.GetString();
    aHostname = _aHostname.GetString();
    aDatabase = _aDatabase.GetString();
  }

  /**
   * Update the information of an alias that has already been added. The new
   * information replaces the old information.
   *
   *
   * @param aAlias      the alias to update
   * @param aName       human-readable name of the alias
   * @param aType       database type (such as pgsql)
   * @param aHostname   hostname for the database
   * @param aPort       port for the database
   * @param aDatabase   database name
   * @param aPriority   priority
   */
  /* void updateAlias (in nsIRDFResource aAlias, in AString aName, in AString aType, in AString aHostname, in long aPort, in AString aDatabase, in long aPriority); */
  void UpdateAlias(nsIRDFResourceD aAlias, wchar[] aName, wchar[] aType, wchar[] aHostname, PRInt32 aPort, wchar[] aDatabase, PRInt32 aPriority){
    scope auto _aName = new AString(aName);
    scope auto _aType = new AString(aType);
    scope auto _aHostname = new AString(aHostname);
    scope auto _aDatabase = new AString(aDatabase);
    nsresult __result = inner.UpdateAlias(aAlias ? cast(nsIRDFResource)aAlias : null, cast(nsAString*)_aName, cast(nsAString*)_aType, cast(nsAString*)_aHostname, aPort, cast(nsAString*)_aDatabase, aPriority);
    CheckException(__result);
  }

  /**
   * Removes an alias that already exists.
   *
   * @param aAlias      the alias to remove
   */
  /* void removeAlias (in nsIRDFResource aAlias); */
  void RemoveAlias(nsIRDFResourceD aAlias){
    nsresult __result = inner.RemoveAlias(aAlias ? cast(nsIRDFResource)aAlias : null);
    CheckException(__result);
  }

  /**
   * Get the alias resource with the given name.
   *
   * @param aName      the name of the alias to retrieve
   * @return           the RDF resource for the alias, or null if it doesn't exist.
   */
  /* nsIRDFResource getAlias (in AString aName); */
  nsIRDFResourceD  GetAlias(wchar[] aName){
    scope auto _aName = new AString(aName);
    nsIRDFResource _retval;
    nsresult __result = inner.GetAlias(cast(nsAString*)_aName, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /**
   * Get the aliases with the given name.
   *
   * @param aName      the name of the aliases to retrieve
   * @return           an enumerator for the aliases
   */
  /* nsISimpleEnumerator getAliases (in AString aName); */
  nsISimpleEnumeratorD  GetAliases(wchar[] aName){
    scope auto _aName = new AString(aName);
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetAliases(cast(nsAString*)_aName, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
   * Retrieves an SQL connection to a database given its alias. If a
   * connection is already open, that connection is returned. Otherwise,
   * a new connection is opened and returned.
   *
   * @param aAlias      the alias to use to open a connection
   * @return            a connection
   */
  /* mozISqlConnection getConnection (in nsIRDFResource aAlias); */
  mozISqlConnectionD  GetConnection(nsIRDFResourceD aAlias){
    mozISqlConnection _retval;
    nsresult __result = inner.GetConnection(aAlias ? cast(nsIRDFResource)aAlias : null, &_retval);
    CheckException(__result);
    return new mozISqlConnectionD(_retval);
  }

  /**
   * Opens and returns a new connection to a database. The user will be
   * prompted for a username and password.
   *
   * @param aAlias      the alias to use to open a connection
   * @return            a newly opened connection
   */
  /* mozISqlConnection getNewConnection (in nsIRDFResource aAlias); */
  mozISqlConnectionD  GetNewConnection(nsIRDFResourceD aAlias){
    mozISqlConnection _retval;
    nsresult __result = inner.GetNewConnection(aAlias ? cast(nsIRDFResource)aAlias : null, &_retval);
    CheckException(__result);
    return new mozISqlConnectionD(_retval);
  }

private:
  mozISqlService inner;

}

