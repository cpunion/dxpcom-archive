/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFastLoadFileControl.idl
 */

module mozilla.dxpcom.nsIFastLoadFileControlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFastLoadFileControl;


public import mozilla.dxpcom.nsIFastLoadFileControlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIFastLoadFileControl */
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
class nsIFastLoadFileControlD : public nsISupportsD {

  static const nsIID IID = NS_IFASTLOADFILECONTROL_IID;


  alias nsIFastLoadFileControl InnerType;

  this(nsIFastLoadFileControl intr){
    super(intr);
    this.inner = intr;
  }

  nsIFastLoadFileControl opCast() {
    return inner;
  }

  void opAssign(nsIFastLoadFileControl value) {
    inner = value;
  }

  /**
     * Get and set the recorded checksum value from the FastLoad file header.
     */
  /* attribute PRUint32 checksum; */
  PRUint32 Checksum(){
    PRUint32 value;
    nsresult __result = inner.GetChecksum(&value);
    CheckException(__result);
    return value;
  }
  void Checksum(PRUint32 aChecksum){
    PRUint32 value;
    nsresult __result = inner.SetChecksum(value);
    CheckException(__result);
  }

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
  void StartMuxedDocument(nsISupportsD aURI, char*aURISpec){
    nsresult __result = inner.StartMuxedDocument(aURI ? cast(nsISupports)aURI : null, aURISpec);
    CheckException(__result);
  }

  /* nsISupports selectMuxedDocument (in nsISupports aURI); */
  nsISupportsD  SelectMuxedDocument(nsISupportsD aURI){
    nsISupports _retval;
    nsresult __result = inner.SelectMuxedDocument(aURI ? cast(nsISupports)aURI : null, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void endMuxedDocument (in nsISupports aURI); */
  void EndMuxedDocument(nsISupportsD aURI){
    nsresult __result = inner.EndMuxedDocument(aURI ? cast(nsISupports)aURI : null);
    CheckException(__result);
  }

  /**
     * Return true if aURISpec identifies a muxed document in the FastLoad
     * file, false otherwise.
     */
  /* boolean hasMuxedDocument (in string aURISpec); */
  PRBool HasMuxedDocument(char*aURISpec){
    PRBool _retval;
    nsresult __result = inner.HasMuxedDocument(aURISpec, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIFastLoadFileControl inner;

}


/* starting wrapper class:    nsIFastLoadReadControl */
class nsIFastLoadReadControlD : public nsIFastLoadFileControlD {

  static const nsIID IID = NS_IFASTLOADREADCONTROL_IID;


  alias nsIFastLoadReadControl InnerType;

  this(nsIFastLoadReadControl intr){
    super(intr);
    this.inner = intr;
  }

  nsIFastLoadReadControl opCast() {
    return inner;
  }

  void opAssign(nsIFastLoadReadControl value) {
    inner = value;
  }

  /**
     * Computes the correct checksum of the FastLoad file, independent of the
     * header's checksum value.  The header checksum field is treated as zero
     * when computing the checksum.
     */
  /* PRUint32 computeChecksum (); */
  PRUint32 ComputeChecksum(){
    PRUint32 _retval;
    nsresult __result = inner.ComputeChecksum(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Get the collection of dependency nsIFile instances recorded during the
     * FastLoad file write or read/update process, and checked during the read
     * process to invalidate the FastLoad file if any dependencies are newer.
     */
  /* readonly attribute nsISimpleEnumerator dependencies; */
  nsISimpleEnumeratorD  Dependencies(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetDependencies(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

private:
  nsIFastLoadReadControl inner;

}


/* starting wrapper class:    nsIFastLoadWriteControl */
class nsIFastLoadWriteControlD : public nsIFastLoadFileControlD {

  static const nsIID IID = NS_IFASTLOADWRITECONTROL_IID;


  alias nsIFastLoadWriteControl InnerType;

  this(nsIFastLoadWriteControl intr){
    super(intr);
    this.inner = intr;
  }

  nsIFastLoadWriteControl opCast() {
    return inner;
  }

  void opAssign(nsIFastLoadWriteControl value) {
    inner = value;
  }

  /**
     * Add a file dependency of the FastLoad file (e.g., a .jar file) to the
     * set of dependencies that trigger regeneration if any dependency has a
     * last-modified-time greater than the FastLoad file's mtime.
     */
  /* void addDependency (in nsIFile aFile); */
  void AddDependency(nsIFileD aFile){
    nsresult __result = inner.AddDependency(aFile ? cast(nsIFile)aFile : null);
    CheckException(__result);
  }

private:
  nsIFastLoadWriteControl inner;

}

