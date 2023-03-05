/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlService.idl
 */

module mozilla.xpcom.mozISqlService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.mozISqlConnection; /* forward declaration */


/* starting interface:    mozISqlService */
const char[] MOZISQLSERVICE_IID_STR = "1ceb35b7-daa8-4ce4-ac67-125fb17cb019";

const nsIID MOZISQLSERVICE_IID= 
  {0x1ceb35b7, 0xdaa8, 0x4ce4, 
    [ 0xac, 0x67, 0x12, 0x5f, 0xb1, 0x7c, 0xb0, 0x19 ]};

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
extern(Windows)
interface mozISqlService : nsISupports {
  static const char[] IID_STR = MOZISQLSERVICE_IID_STR;
  static const nsIID IID = MOZISQLSERVICE_IID;

  /**
   * Holds the string message of the last error that occured when a connection
   * was opened.
   */
  /* readonly attribute AString errorMessage; */
  nsresult GetErrorMessage(nsAString * aErrorMessage);

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
  nsresult AddAlias(nsAString * aName, nsAString * aType, nsAString * aHostname, PRInt32 aPort, nsAString * aDatabase, PRInt32 aPriority, nsIRDFResource *_retval);

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
  nsresult FetchAlias(nsIRDFResource aAlias, nsAString * aName, nsAString * aType, nsAString * aHostname, PRInt32 *aPort, nsAString * aDatabase, PRInt32 *aPriority);

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
  nsresult UpdateAlias(nsIRDFResource aAlias, nsAString * aName, nsAString * aType, nsAString * aHostname, PRInt32 aPort, nsAString * aDatabase, PRInt32 aPriority);

  /**
   * Removes an alias that already exists.
   *
   * @param aAlias      the alias to remove
   */
  /* void removeAlias (in nsIRDFResource aAlias); */
  nsresult RemoveAlias(nsIRDFResource aAlias);

  /**
   * Get the alias resource with the given name.
   *
   * @param aName      the name of the alias to retrieve
   * @return           the RDF resource for the alias, or null if it doesn't exist.
   */
  /* nsIRDFResource getAlias (in AString aName); */
  nsresult GetAlias(nsAString * aName, nsIRDFResource *_retval);

  /**
   * Get the aliases with the given name.
   *
   * @param aName      the name of the aliases to retrieve
   * @return           an enumerator for the aliases
   */
  /* nsISimpleEnumerator getAliases (in AString aName); */
  nsresult GetAliases(nsAString * aName, nsISimpleEnumerator *_retval);

  /**
   * Retrieves an SQL connection to a database given its alias. If a
   * connection is already open, that connection is returned. Otherwise,
   * a new connection is opened and returned.
   *
   * @param aAlias      the alias to use to open a connection
   * @return            a connection
   */
  /* mozISqlConnection getConnection (in nsIRDFResource aAlias); */
  nsresult GetConnection(nsIRDFResource aAlias, mozISqlConnection *_retval);

  /**
   * Opens and returns a new connection to a database. The user will be
   * prompted for a username and password.
   *
   * @param aAlias      the alias to use to open a connection
   * @return            a newly opened connection
   */
  /* mozISqlConnection getNewConnection (in nsIRDFResource aAlias); */
  nsresult GetNewConnection(nsIRDFResource aAlias, mozISqlConnection *_retval);

}

