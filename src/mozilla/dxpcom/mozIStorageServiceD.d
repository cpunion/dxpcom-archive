/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageService.idl
 */

module mozilla.dxpcom.mozIStorageServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozIStorageService;


public import mozilla.dxpcom.mozIStorageServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.mozIStorageConnection;

public import mozilla.dxpcom.mozIStorageConnectionD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    mozIStorageService */
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
class mozIStorageServiceD : public nsISupportsD {

  static const nsIID IID = MOZISTORAGESERVICE_IID;


  alias mozIStorageService InnerType;

  this(mozIStorageService intr){
    super(intr);
    this.inner = intr;
  }

  mozIStorageService opCast() {
    return inner;
  }

  void opAssign(mozIStorageService value) {
    inner = value;
  }

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
  mozIStorageConnectionD  OpenSpecialDatabase(char*aStorageKey){
    mozIStorageConnection _retval;
    nsresult __result = inner.OpenSpecialDatabase(aStorageKey, &_retval);
    CheckException(__result);
    return new mozIStorageConnectionD(_retval);
  }

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
  mozIStorageConnectionD  OpenDatabase(nsIFileD aDatabaseFile){
    mozIStorageConnection _retval;
    nsresult __result = inner.OpenDatabase(aDatabaseFile ? cast(nsIFile)aDatabaseFile : null, &_retval);
    CheckException(__result);
    return new mozIStorageConnectionD(_retval);
  }

private:
  mozIStorageService inner;

}

