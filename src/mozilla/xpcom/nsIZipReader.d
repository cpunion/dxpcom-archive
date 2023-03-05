/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIZipReader.idl
 */

module mozilla.xpcom.nsIZipReader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIZipEntry */
const char[] NS_IZIPENTRY_IID_STR = "6ca5e43e-9632-11d3-8cd9-0060b0fc14a3";

const nsIID NS_IZIPENTRY_IID= 
  {0x6ca5e43e, 0x9632, 0x11d3, 
    [ 0x8c, 0xd9, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsIZipEntry : nsISupports {
  static const char[] IID_STR = NS_IZIPENTRY_IID_STR;
  static const nsIID IID = NS_IZIPENTRY_IID;

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute unsigned short compression; */
  nsresult GetCompression(PRUint16 *aCompression);

  /* readonly attribute unsigned long size; */
  nsresult GetSize(PRUint32 *aSize);

  /* readonly attribute unsigned long realSize; */
  nsresult GetRealSize(PRUint32 *aRealSize);

  /* readonly attribute unsigned long CRC32; */
  nsresult GetCRC32(PRUint32 *aCRC32);

}


/* starting interface:    nsIZipReader */
const char[] NS_IZIPREADER_IID_STR = "6ff6a966-9632-11d3-8cd9-0060b0fc14a3";

const nsIID NS_IZIPREADER_IID= 
  {0x6ff6a966, 0x9632, 0x11d3, 
    [ 0x8c, 0xd9, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsIZipReader : nsISupports {
  static const char[] IID_STR = NS_IZIPREADER_IID_STR;
  static const nsIID IID = NS_IZIPREADER_IID;

  /**
     * Initializes a zip reader after construction.
     */
  /* void init (in nsIFile zipFile); */
  nsresult Init(nsIFile zipFile);

  /* readonly attribute nsIFile file; */
  nsresult GetFile(nsIFile  *aFile);

  /**
     * Opens a zip reader.
     */
  /* void open (); */
  nsresult Open();

  /**
     * Closes a zip reader. Subsequent attempts to extract files or read from
     * its input stream will result in an error.
     */
  /* void close (); */
  nsresult Close();

  /**
     * Tests the integrity of the archive by performing a CRC check 
     * on each item expanded into memory.  If an entry is specified
     * the integrity of only that item is tested.  If NULL is passed 
     * in the inetgrity of all items in the archive are tested.  
     */
  /* void test (in string aEntryName); */
  nsresult Test(char *aEntryName);

  /**
     * Extracts a zip entry into a local file specified by outFile.
     */
  /* void extract (in string zipEntry, in nsIFile outFile); */
  nsresult Extract(char *zipEntry, nsIFile outFile);

  /**
     * Returns a nsIZipEntry describing a specified zip entry.
     */
  /* nsIZipEntry getEntry (in string zipEntry); */
  nsresult GetEntry(char *zipEntry, nsIZipEntry *_retval);

  /**
     * Returns a simple enumerator whose elements are of type nsIZipEntry.
     */
  /* nsISimpleEnumerator findEntries (in string aPattern); */
  nsresult FindEntries(char *aPattern, nsISimpleEnumerator *_retval);

  /**
     * Returns an input stream containing the contents of the specified zip entry.
     */
  /* nsIInputStream getInputStream (in string zipEntry); */
  nsresult GetInputStream(char *zipEntry, nsIInputStream *_retval);

}


/* starting interface:    nsIZipReaderCache */
const char[] NS_IZIPREADERCACHE_IID_STR = "52c45d86-0cc3-11d4-986e-00c04fa0cf4a";

const nsIID NS_IZIPREADERCACHE_IID= 
  {0x52c45d86, 0x0cc3, 0x11d4, 
    [ 0x98, 0x6e, 0x00, 0xc0, 0x4f, 0xa0, 0xcf, 0x4a ]};

extern(Windows)
interface nsIZipReaderCache : nsISupports {
  static const char[] IID_STR = NS_IZIPREADERCACHE_IID_STR;
  static const nsIID IID = NS_IZIPREADERCACHE_IID;

  /**
     * Initializes a new zip reader cache. 
     * @param cacheSize - the number of released entries to maintain before
     *   beginning to throw some out (note that the number of outstanding
     *   entries can be much greater than this number -- this is the count
     *   for those otherwise unused entries)
     */
  /* void init (in unsigned long cacheSize); */
  nsresult Init(PRUint32 cacheSize);

  /**
     * Returns a (possibly shared) nsIZipReader for an nsIFile.
     */
  /* nsIZipReader getZip (in nsIFile zipFile); */
  nsresult GetZip(nsIFile zipFile, nsIZipReader *_retval);

}

