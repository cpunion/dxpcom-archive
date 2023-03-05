/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageService.idl
 */

module mozilla.xpcom.mozIStorageService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.mozIStorageConnection; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    mozIStorageService */
const char[] MOZISTORAGESERVICE_IID_STR = "a4a0cad9-e0da-4379-bee4-2feef3dddc7e";

const nsIID MOZISTORAGESERVICE_IID= 
  {0xa4a0cad9, 0xe0da, 0x4379, 
    [ 0xbe, 0xe4, 0x2f, 0xee, 0xf3, 0xdd, 0xdc, 0x7e ]};

/**
 * The mozIStorageService interface is intended to be implemented by
 * a service that can create storage connections (mozIStorageConnection)
 * to either a well-known profile database or to a specific database file.
 *
 * The implementation of this service using sqlite with the async IO module
 * must be created the first time on the main thread. If you want to use it
 * from another thread, you should be sure you call getService from the main
 * thread before accessing it from another thread.
 *
 * This is the only way to open a database connection.
 */
extern(Windows)
interface mozIStorageService : nsISupports {
  static const char[] IID_STR = MOZISTORAGESERVICE_IID_STR;
  static const nsIID IID = MOZISTORAGESERVICE_IID;

  /**
   * Get a connection to a named special database storage.
   *
   * @param aStorageKey a string key identifying the type of storage
   * requested.  Valid values include: "profile", "memory".
   *
   * @see openDatabase for restrictions on how database connections may be
   * used. For the profile database, you should only access it from the main
   * thread since other callers may also have connections.
   *
   * @returns a new mozIStorageConnection for the requested
   * storage database.
   *
   * @throws NS_ERROR_INVALID_ARG if aStorageKey is invalid.
   */
  /* mozIStorageConnection openSpecialDatabase (in string aStorageKey); */
  nsresult OpenSpecialDatabase(char *aStorageKey, mozIStorageConnection *_retval);

  /**
   * Open a connection to the specified file.
   *
   * ==========
   *   DANGER
   * ==========
   *
   * If you have more than one connection to a file, you MUST use the EXACT
   * SAME NAME for the file each time, including case. The sqlite code uses
   * a simple string compare to see if there is already a connection. Opening
   * a connection to "Foo.sqlite" and "foo.sqlite" will CORRUPT YOUR DATABASE.
   *
   * Opening connections from more than one thread to the same database will
   * also CORRUPT YOUR DATABASE. All connections share the same sqlite cache,
   * and the cache is not threadsafe.
   *
   * The connection object returned by this function is not threadsafe. You must
   * use it only from the thread you created it from.
   *
   * @param aDatabaseFile a nsIFile of the database to open.
   *
   * @returns a mozIStorageConnection for the requested
   * database file.
   *
   * @throws NS_ERROR_FAILURE if any operation fails while opening
   * the database.
   */
  /* mozIStorageConnection openDatabase (in nsIFile aDatabaseFile); */
  nsresult OpenDatabase(nsIFile aDatabaseFile, mozIStorageConnection *_retval);

}

