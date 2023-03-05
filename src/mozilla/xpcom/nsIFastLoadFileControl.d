/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFastLoadFileControl.idl
 */

module mozilla.xpcom.nsIFastLoadFileControl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIFastLoadFileControl */
const char[] NS_IFASTLOADFILECONTROL_IID_STR = "8a1e2c63-af50-4147-af7e-26289dc180dd";

const nsIID NS_IFASTLOADFILECONTROL_IID= 
  {0x8a1e2c63, 0xaf50, 0x4147, 
    [ 0xaf, 0x7e, 0x26, 0x28, 0x9d, 0xc1, 0x80, 0xdd ]};

/**
 * The nsIFastLoadFileControl interface and its subinterfaces are mix-ins for
 * classes implementing nsIObjectInputStream and nsIObjectOutputStream, so that
 * those stream types can be used with nsIFastLoadService to access and compute
 * FastLoad file checksums, update and check FastLoad file dependencies, and
 * multiplex documents loaded via non-blocking i/o.
 *
 * If an nsIObjectInputStream class doesn't support nsIFastLoadReadControl, or
 * an nsIObjectOutputStream class doesn't support nsIFastLoadWriteControl, that
 * implementation may still be useful for object serialization, but it can't be
 * used to read or write a Mozilla FastLoad file.
 */
extern(Windows)
interface nsIFastLoadFileControl : nsISupports {
  static const char[] IID_STR = NS_IFASTLOADFILECONTROL_IID_STR;
  static const nsIID IID = NS_IFASTLOADFILECONTROL_IID;

  /**
     * Get and set the recorded checksum value from the FastLoad file header.
     */
  /* attribute PRUint32 checksum; */
  nsresult GetChecksum(PRUint32 *aChecksum);
  nsresult SetChecksum(PRUint32 aChecksum);

  /**
     * Multiplexed document control methods.  A FastLoad file may contain
     * multiple interleaved documents identified by a URI specifier string,
     * and indexed for fast multiplexor select by an opaque URI object key.
     * You StartMuxedDocument when initiating a document load, then Select
     * before every batch of calls to (de)serialize document data, and End
     * when the load completes.
     *
     * Document multiplexing is necessary to support incremental FastLoad
     * development in a non-blocking i/o architecture such as Mozilla, where
     * some (but not all, at first, or for a while during development) of the
     * results of parsing and compiling various inputs can be multiplexed to
     * or from a FastLoad file.
     *
     * Note: Select returns the previously selected URI object in case the
     * caller is synchronously selecting and writing data to the FastLoad
     * file, so the caller can reselect the previous URI and return to code
     * the continues to write FastLoad data for the previous URI, unaware of
     * the nested select/write/reselect.
     */
  /* void startMuxedDocument (in nsISupports aURI, in string aURISpec); */
  nsresult StartMuxedDocument(nsISupports aURI, char *aURISpec);

  /* nsISupports selectMuxedDocument (in nsISupports aURI); */
  nsresult SelectMuxedDocument(nsISupports aURI, nsISupports *_retval);

  /* void endMuxedDocument (in nsISupports aURI); */
  nsresult EndMuxedDocument(nsISupports aURI);

  /**
     * Return true if aURISpec identifies a muxed document in the FastLoad
     * file, false otherwise.
     */
  /* boolean hasMuxedDocument (in string aURISpec); */
  nsresult HasMuxedDocument(char *aURISpec, PRBool *_retval);

}


/* starting interface:    nsIFastLoadReadControl */
const char[] NS_IFASTLOADREADCONTROL_IID_STR = "652ecec6-d40b-45b6-afef-641d6c63a35b";

const nsIID NS_IFASTLOADREADCONTROL_IID= 
  {0x652ecec6, 0xd40b, 0x45b6, 
    [ 0xaf, 0xef, 0x64, 0x1d, 0x6c, 0x63, 0xa3, 0x5b ]};

extern(Windows)
interface nsIFastLoadReadControl : nsIFastLoadFileControl {
  static const char[] IID_STR = NS_IFASTLOADREADCONTROL_IID_STR;
  static const nsIID IID = NS_IFASTLOADREADCONTROL_IID;

  /**
     * Computes the correct checksum of the FastLoad file, independent of the
     * header's checksum value.  The header checksum field is treated as zero
     * when computing the checksum.
     */
  /* PRUint32 computeChecksum (); */
  nsresult ComputeChecksum(PRUint32 *_retval);

  /**
     * Get the collection of dependency nsIFile instances recorded during the
     * FastLoad file write or read/update process, and checked during the read
     * process to invalidate the FastLoad file if any dependencies are newer.
     */
  /* readonly attribute nsISimpleEnumerator dependencies; */
  nsresult GetDependencies(nsISimpleEnumerator  *aDependencies);

}


/* starting interface:    nsIFastLoadWriteControl */
const char[] NS_IFASTLOADWRITECONTROL_IID_STR = "2ad6e9e6-1379-4e45-a899-a54b27ff915c";

const nsIID NS_IFASTLOADWRITECONTROL_IID= 
  {0x2ad6e9e6, 0x1379, 0x4e45, 
    [ 0xa8, 0x99, 0xa5, 0x4b, 0x27, 0xff, 0x91, 0x5c ]};

extern(Windows)
interface nsIFastLoadWriteControl : nsIFastLoadFileControl {
  static const char[] IID_STR = NS_IFASTLOADWRITECONTROL_IID_STR;
  static const nsIID IID = NS_IFASTLOADWRITECONTROL_IID;

  /**
     * Add a file dependency of the FastLoad file (e.g., a .jar file) to the
     * set of dependencies that trigger regeneration if any dependency has a
     * last-modified-time greater than the FastLoad file's mtime.
     */
  /* void addDependency (in nsIFile aFile); */
  nsresult AddDependency(nsIFile aFile);

}

