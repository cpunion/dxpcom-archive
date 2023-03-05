/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIZipReader.idl
 */

module mozilla.dxpcom.nsIZipReaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIZipReader;


public import mozilla.dxpcom.nsIZipReaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIZipEntry */
class nsIZipEntryD : public nsISupportsD {

  static const nsIID IID = NS_IZIPENTRY_IID;


  alias nsIZipEntry InnerType;

  this(nsIZipEntry intr){
    super(intr);
    this.inner = intr;
  }

  nsIZipEntry opCast() {
    return inner;
  }

  void opAssign(nsIZipEntry value) {
    inner = value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned short compression; */
  PRUint16 Compression(){
    PRUint16 value;
    nsresult __result = inner.GetCompression(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long size; */
  PRUint32 Size(){
    PRUint32 value;
    nsresult __result = inner.GetSize(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long realSize; */
  PRUint32 RealSize(){
    PRUint32 value;
    nsresult __result = inner.GetRealSize(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long CRC32; */
  PRUint32 CRC32(){
    PRUint32 value;
    nsresult __result = inner.GetCRC32(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIZipEntry inner;

}


/* starting wrapper class:    nsIZipReader */
class nsIZipReaderD : public nsISupportsD {

  static const nsIID IID = NS_IZIPREADER_IID;


  alias nsIZipReader InnerType;

  this(nsIZipReader intr){
    super(intr);
    this.inner = intr;
  }

  nsIZipReader opCast() {
    return inner;
  }

  void opAssign(nsIZipReader value) {
    inner = value;
  }

  /**
     * Initializes a zip reader after construction.
     */
  /* void init (in nsIFile zipFile); */
  void Init(nsIFileD zipFile){
    nsresult __result = inner.Init(zipFile ? cast(nsIFile)zipFile : null);
    CheckException(__result);
  }

  /* readonly attribute nsIFile file; */
  nsIFileD  File(){
    nsIFile value;
    nsresult __result = inner.GetFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
     * Opens a zip reader.
     */
  /* void open (); */
  void Open(){
    nsresult __result = inner.Open();
    CheckException(__result);
  }

  /**
     * Closes a zip reader. Subsequent attempts to extract files or read from
     * its input stream will result in an error.
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /**
     * Tests the integrity of the archive by performing a CRC check 
     * on each item expanded into memory.  If an entry is specified
     * the integrity of only that item is tested.  If NULL is passed 
     * in the inetgrity of all items in the archive are tested.  
     */
  /* void test (in string aEntryName); */
  void Test(char*aEntryName){
    nsresult __result = inner.Test(aEntryName);
    CheckException(__result);
  }

  /**
     * Extracts a zip entry into a local file specified by outFile.
     */
  /* void extract (in string zipEntry, in nsIFile outFile); */
  void Extract(char*zipEntry, nsIFileD outFile){
    nsresult __result = inner.Extract(zipEntry, outFile ? cast(nsIFile)outFile : null);
    CheckException(__result);
  }

  /**
     * Returns a nsIZipEntry describing a specified zip entry.
     */
  /* nsIZipEntry getEntry (in string zipEntry); */
  nsIZipEntryD  GetEntry(char*zipEntry){
    nsIZipEntry _retval;
    nsresult __result = inner.GetEntry(zipEntry, &_retval);
    CheckException(__result);
    return new nsIZipEntryD(_retval);
  }

  /**
     * Returns a simple enumerator whose elements are of type nsIZipEntry.
     */
  /* nsISimpleEnumerator findEntries (in string aPattern); */
  nsISimpleEnumeratorD  FindEntries(char*aPattern){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.FindEntries(aPattern, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Returns an input stream containing the contents of the specified zip entry.
     */
  /* nsIInputStream getInputStream (in string zipEntry); */
  nsIInputStreamD  GetInputStream(char*zipEntry){
    nsIInputStream _retval;
    nsresult __result = inner.GetInputStream(zipEntry, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

private:
  nsIZipReader inner;

}


/* starting wrapper class:    nsIZipReaderCache */
class nsIZipReaderCacheD : public nsISupportsD {

  static const nsIID IID = NS_IZIPREADERCACHE_IID;


  alias nsIZipReaderCache InnerType;

  this(nsIZipReaderCache intr){
    super(intr);
    this.inner = intr;
  }

  nsIZipReaderCache opCast() {
    return inner;
  }

  void opAssign(nsIZipReaderCache value) {
    inner = value;
  }

  /**
     * Initializes a new zip reader cache. 
     * @param cacheSize - the number of released entries to maintain before
     *   beginning to throw some out (note that the number of outstanding
     *   entries can be much greater than this number -- this is the count
     *   for those otherwise unused entries)
     */
  /* void init (in unsigned long cacheSize); */
  void Init(PRUint32 cacheSize){
    nsresult __result = inner.Init(cacheSize);
    CheckException(__result);
  }

  /**
     * Returns a (possibly shared) nsIZipReader for an nsIFile.
     */
  /* nsIZipReader getZip (in nsIFile zipFile); */
  nsIZipReaderD  GetZip(nsIFileD zipFile){
    nsIZipReader _retval;
    nsresult __result = inner.GetZip(zipFile ? cast(nsIFile)zipFile : null, &_retval);
    CheckException(__result);
    return new nsIZipReaderD(_retval);
  }

private:
  nsIZipReaderCache inner;

}

