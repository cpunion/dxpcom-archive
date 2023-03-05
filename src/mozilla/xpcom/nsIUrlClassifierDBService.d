/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlClassifierDBService.idl
 */

module mozilla.xpcom.nsIUrlClassifierDBService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIUrlClassifierCallback */
const char[] NS_IURLCLASSIFIERCALLBACK_IID_STR = "4ca27b6b-a674-4b3d-ab30-d21e2da2dffb";

const nsIID NS_IURLCLASSIFIERCALLBACK_IID= 
  {0x4ca27b6b, 0xa674, 0x4b3d, 
    [ 0xab, 0x30, 0xd2, 0x1e, 0x2d, 0xa2, 0xdf, 0xfb ]};

extern(Windows)
interface nsIUrlClassifierCallback : nsISupports {
  static const char[] IID_STR = NS_IURLCLASSIFIERCALLBACK_IID_STR;
  static const nsIID IID = NS_IURLCLASSIFIERCALLBACK_IID;

  /* void handleEvent (in ACString value); */
  nsresult HandleEvent(nsACString * value);

}


/* starting interface:    nsIUrlClassifierDBService */
const char[] NS_IURLCLASSIFIERDBSERVICE_IID_STR = "211d5360-4af6-4a1d-99c1-926d35861eaf";

const nsIID NS_IURLCLASSIFIERDBSERVICE_IID= 
  {0x211d5360, 0x4af6, 0x4a1d, 
    [ 0x99, 0xc1, 0x92, 0x6d, 0x35, 0x86, 0x1e, 0xaf ]};

/**
 * This is a proxy class that is instantiated and called from the JS thread.
 * It provides async methods for querying and updating the database.  As the
 * methods complete, they call the callback function.
 */
extern(Windows)
interface nsIUrlClassifierDBService : nsISupports {
  static const char[] IID_STR = NS_IURLCLASSIFIERDBSERVICE_IID_STR;
  static const nsIID IID = NS_IURLCLASSIFIERDBSERVICE_IID;

  /**
   * Looks up a key in the database.  After it finds a value, it calls
   * callback with the value as the first param.  If the key is not in
   * the db or the table does not exist, the callback is called with
   * an empty string parameter.
   */
  /* void exists (in ACString tableName, in ACString key, in nsIUrlClassifierCallback c); */
  nsresult Exists(nsACString * tableName, nsACString * key, nsIUrlClassifierCallback c);

  /**
   * Checks to see if the tables exist.  tableNames is a comma separated list
   * of table names to check.  The callback is called with a comma separated
   * list of tables that no longer exist (either the db is corrupted or the
   * user deleted the file).
   */
  /* void checkTables (in ACString tableNames, in nsIUrlClassifierCallback c); */
  nsresult CheckTables(nsACString * tableNames, nsIUrlClassifierCallback c);

  /**
   * Updates the table in the background.  Calls callback after each table
   * completes processing with the new table line as the parameter.  This
   * allows us to keep track of the table version in our main thread.
   */
  /* void updateTables (in ACString updateString, in nsIUrlClassifierCallback c); */
  nsresult UpdateTables(nsACString * updateString, nsIUrlClassifierCallback c);

  /**
   * Update the table incrementally.
   */
  /* void update (in ACString updateChunk); */
  nsresult Update(nsACString * updateChunk);

  /**
   * Finish an incremental update.  This commits any pending tables and
   * calls the callback for each completed table.
   */
  /* void finish (in nsIUrlClassifierCallback c); */
  nsresult Finish(nsIUrlClassifierCallback c);

  /**
   * Cancel an incremental update.  This rolls back and pending changes.
   * and resets the stream interface.
   */
  /* void cancelStream (); */
  nsresult CancelStream();

}


/* starting interface:    nsIUrlClassifierDBServiceWorker */
const char[] NS_IURLCLASSIFIERDBSERVICEWORKER_IID_STR = "5d405325-2ba1-4040-b69b-8bda8353d3d3";

const nsIID NS_IURLCLASSIFIERDBSERVICEWORKER_IID= 
  {0x5d405325, 0x2ba1, 0x4040, 
    [ 0xb6, 0x9b, 0x8b, 0xda, 0x83, 0x53, 0xd3, 0xd3 ]};

/**
 * Interface for the actual worker thread.  Implementations of this need not
 * be thread aware and just work on the database.
 */
extern(Windows)
interface nsIUrlClassifierDBServiceWorker : nsIUrlClassifierDBService {
  static const char[] IID_STR = NS_IURLCLASSIFIERDBSERVICEWORKER_IID_STR;
  static const nsIID IID = NS_IURLCLASSIFIERDBSERVICEWORKER_IID;

  /* void closeDb (); */
  nsresult CloseDb();

}

