/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFastLoadService.idl
 */

module mozilla.xpcom.nsIFastLoadService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFastLoadFileControl;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIObjectInputStream; /* forward declaration */

public import mozilla.xpcom.nsIObjectOutputStream; /* forward declaration */


/* starting interface:    nsIFastLoadFileIO */
const char[] NS_IFASTLOADFILEIO_IID_STR = "715577db-d9c5-464a-a32e-0a40c29b22d4";

const nsIID NS_IFASTLOADFILEIO_IID= 
  {0x715577db, 0xd9c5, 0x464a, 
    [ 0xa3, 0x2e, 0x0a, 0x40, 0xc2, 0x9b, 0x22, 0xd4 ]};

extern(Windows)
interface nsIFastLoadFileIO : nsISupports {
  static const char[] IID_STR = NS_IFASTLOADFILEIO_IID_STR;
  static const nsIID IID = NS_IFASTLOADFILEIO_IID;

  /* readonly attribute nsIInputStream inputStream; */
  nsresult GetInputStream(nsIInputStream  *aInputStream);

  /* readonly attribute nsIOutputStream outputStream; */
  nsresult GetOutputStream(nsIOutputStream  *aOutputStream);

}


/* starting interface:    nsIFastLoadService */
const char[] NS_IFASTLOADSERVICE_IID_STR = "759e475e-0c23-4dbf-b1b8-78c9369e3072";

const nsIID NS_IFASTLOADSERVICE_IID= 
  {0x759e475e, 0x0c23, 0x4dbf, 
    [ 0xb1, 0xb8, 0x78, 0xc9, 0x36, 0x9e, 0x30, 0x72 ]};

extern(Windows)
interface nsIFastLoadService : nsISupports {
  static const char[] IID_STR = NS_IFASTLOADSERVICE_IID_STR;
  static const nsIID IID = NS_IFASTLOADSERVICE_IID;

  /* nsIFile newFastLoadFile (in string aBaseName); */
  nsresult NewFastLoadFile(char *aBaseName, nsIFile *_retval);

  /* nsIObjectInputStream newInputStream (in nsIInputStream aSrcStream); */
  nsresult NewInputStream(nsIInputStream aSrcStream, nsIObjectInputStream *_retval);

  /* nsIObjectOutputStream newOutputStream (in nsIOutputStream aDestStream); */
  nsresult NewOutputStream(nsIOutputStream aDestStream, nsIObjectOutputStream *_retval);

  enum { NS_FASTLOAD_READ = 1 };

  enum { NS_FASTLOAD_WRITE = 2 };

  /* attribute nsIObjectInputStream inputStream; */
  nsresult GetInputStream(nsIObjectInputStream  *aInputStream);
  nsresult SetInputStream(nsIObjectInputStream  aInputStream);

  /* attribute nsIObjectOutputStream outputStream; */
  nsresult GetOutputStream(nsIObjectOutputStream  *aOutputStream);
  nsresult SetOutputStream(nsIObjectOutputStream  aOutputStream);

  /* attribute nsIFastLoadFileIO fileIO; */
  nsresult GetFileIO(nsIFastLoadFileIO  *aFileIO);
  nsresult SetFileIO(nsIFastLoadFileIO  aFileIO);

  /* readonly attribute PRInt32 direction; */
  nsresult GetDirection(PRInt32 *aDirection);

  /**
     * These methods associate a URI object with its spec, for faster select
     * using the object pointer as a key, rather than the spec string.  The
     * selectMuxedDocument method returns the previously selected URI object,
     * in case a caller needs to reselect the previous after muxing data for
     * a given URI synchronously.  For the non-blocking or "asynchronous" i/o
     * case, the caller must select the source URI from the FastLoad multiplex
     * before writing a new burst of data parsed from the slow-loaded source.
     *
     * Clients of inputStream and outputStream should try to demultiplex data
     * from the input stream only if fastLoadService->StartMuxedDocument(uri,
     * urispec, NS_FASTLOAD_READ) succeeds.  If StartMuxedDocument fails with
     * NS_ERROR_NOT_AVAILABLE, callers should slow-load the documents, muxing
     * their data to the current output stream.
     */
  /* void startMuxedDocument (in nsISupports aURI, in string aURISpec, in PRInt32 aDirectionFlags); */
  nsresult StartMuxedDocument(nsISupports aURI, char *aURISpec, PRInt32 aDirectionFlags);

  /* nsISupports selectMuxedDocument (in nsISupports aURI); */
  nsresult SelectMuxedDocument(nsISupports aURI, nsISupports *_retval);

  /* void endMuxedDocument (in nsISupports aURI); */
  nsresult EndMuxedDocument(nsISupports aURI);

  /* void addDependency (in nsIFile aFile); */
  nsresult AddDependency(nsIFile aFile);

  /* PRUint32 computeChecksum (in nsIFile aFile, in nsIFastLoadReadControl aControl); */
  nsresult ComputeChecksum(nsIFile aFile, nsIFastLoadReadControl aControl, PRUint32 *_retval);

  /* void cacheChecksum (in nsIFile aFile, in nsIObjectOutputStream aStream); */
  nsresult CacheChecksum(nsIFile aFile, nsIObjectOutputStream aStream);

  /* [noscript] void getFastLoadReferent (inout nsISupports aPtr); */
  nsresult GetFastLoadReferent(nsISupports *aPtr);

  /* [noscript] void readFastLoadPtr (in nsIObjectInputStream aInputStream, inout nsISupports aPtr); */
  nsresult ReadFastLoadPtr(nsIObjectInputStream aInputStream, nsISupports *aPtr);

  /* [noscript] void writeFastLoadPtr (in nsIObjectOutputStream aOutputStream, in nsISupports aPtr); */
  nsresult WriteFastLoadPtr(nsIObjectOutputStream aOutputStream, nsISupports aPtr);

  /**
     * Return true if aURISpec identifies a muxed document in the FastLoad
     * file, false otherwise.
     */
  /* boolean hasMuxedDocument (in string aURISpec); */
  nsresult HasMuxedDocument(char *aURISpec, PRBool *_retval);

}

