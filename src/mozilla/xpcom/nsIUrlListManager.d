/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlListManager.idl
 */

module mozilla.xpcom.nsIUrlListManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUrlListManagerCallback */
const char[] NS_IURLLISTMANAGERCALLBACK_IID_STR = "ba913c5c-13d6-41eb-83c1-de2f4165a516";

const nsIID NS_IURLLISTMANAGERCALLBACK_IID= 
  {0xba913c5c, 0x13d6, 0x41eb, 
    [ 0x83, 0xc1, 0xde, 0x2f, 0x41, 0x65, 0xa5, 0x16 ]};

/**
 * Interface for a class that manages updates of multiple nsIUrlClassifierTables.
 */
extern(Windows)
interface nsIUrlListManagerCallback : nsISupports {
  static const char[] IID_STR = NS_IURLLISTMANAGERCALLBACK_IID_STR;
  static const nsIID IID = NS_IURLLISTMANAGERCALLBACK_IID;

  /* void handleEvent (in boolean value); */
  nsresult HandleEvent(PRBool value);

}


/* starting interface:    nsIUrlListManager */
const char[] NS_IURLLISTMANAGER_IID_STR = "d39982d6-da4f-4a27-8d91-f9c7b179aa33";

const nsIID NS_IURLLISTMANAGER_IID= 
  {0xd39982d6, 0xda4f, 0x4a27, 
    [ 0x8d, 0x91, 0xf9, 0xc7, 0xb1, 0x79, 0xaa, 0x33 ]};

extern(Windows)
interface nsIUrlListManager : nsISupports {
  static const char[] IID_STR = NS_IURLLISTMANAGER_IID_STR;
  static const nsIID IID = NS_IURLLISTMANAGER_IID;

  /**
     * Set the URL we check for updates.
     */
  /* void setUpdateUrl (in ACString url); */
  nsresult SetUpdateUrl(nsACString * url);

  /**
     * Set the URL we use to get keys used to decrypt URLs in
     * enchash tables.
     */
  /* void setKeyUrl (in ACString url); */
  nsresult SetKeyUrl(nsACString * url);

  /**
     * Add a table to the list of tables we are managing.  The name is a
     * string of the format provider_name-semantic_type-table_type.  For
     * example, goog-white-enchash or goog-black-url.
     */
  /* boolean registerTable (in ACString tableName, in boolean requireMac); */
  nsresult RegisterTable(nsACString * tableName, PRBool requireMac, PRBool *_retval);

  /**
     * Turn on update checking for a table.  I.e., during the next server
     * check, download updates for this table.
     */
  /* void enableUpdate (in ACString tableName); */
  nsresult EnableUpdate(nsACString * tableName);

  /**
     * Turn off update checking for a table.
     */
  /* void disableUpdate (in ACString tableName); */
  nsresult DisableUpdate(nsACString * tableName);

  /**
     * Lookup a key in a table.  Should not raise exceptions.  Calls
     * the callback function with a single parameter: true if the key
     * is in the table, false if it isn't.
     */
  /* void safeExists (in ACString tableName, in ACString key, in nsIUrlListManagerCallback cb); */
  nsresult SafeExists(nsACString * tableName, nsACString * key, nsIUrlListManagerCallback cb);

}

