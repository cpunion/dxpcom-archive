/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFastLoadService.idl
 */

module mozilla.dxpcom.nsIFastLoadServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFastLoadService;


public import mozilla.dxpcom.nsIFastLoadServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;

public import mozilla.xpcom.nsIFastLoadFileControl;

import mozilla.dxpcom.nsIFastLoadFileControlD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIObjectInputStream;

public import mozilla.dxpcom.nsIObjectInputStreamD;

public import mozilla.xpcom.nsIObjectOutputStream;

public import mozilla.dxpcom.nsIObjectOutputStreamD;


/* starting wrapper class:    nsIFastLoadFileIO */
class nsIFastLoadFileIOD : public nsISupportsD {

  static const nsIID IID = NS_IFASTLOADFILEIO_IID;


  alias nsIFastLoadFileIO InnerType;

  this(nsIFastLoadFileIO intr){
    super(intr);
    this.inner = intr;
  }

  nsIFastLoadFileIO opCast() {
    return inner;
  }

  void opAssign(nsIFastLoadFileIO value) {
    inner = value;
  }

  /* readonly attribute nsIInputStream inputStream; */
  nsIInputStreamD  InputStream(){
    nsIInputStream value;
    nsresult __result = inner.GetInputStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }

  /* readonly attribute nsIOutputStream outputStream; */
  nsIOutputStreamD  OutputStream(){
    nsIOutputStream value;
    nsresult __result = inner.GetOutputStream(&value);
    CheckException(__result);
    return new nsIOutputStreamD(value);
  }

private:
  nsIFastLoadFileIO inner;

}


/* starting wrapper class:    nsIFastLoadService */
class nsIFastLoadServiceD : public nsISupportsD {

  static const nsIID IID = NS_IFASTLOADSERVICE_IID;


  alias nsIFastLoadService InnerType;

  this(nsIFastLoadService intr){
    super(intr);
    this.inner = intr;
  }

  nsIFastLoadService opCast() {
    return inner;
  }

  void opAssign(nsIFastLoadService value) {
    inner = value;
  }

  /* nsIFile newFastLoadFile (in string aBaseName); */
  nsIFileD  NewFastLoadFile(char*aBaseName){
    nsIFile _retval;
    nsresult __result = inner.NewFastLoadFile(aBaseName, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

  /* nsIObjectInputStream newInputStream (in nsIInputStream aSrcStream); */
  nsIObjectInputStreamD  NewInputStream(nsIInputStreamD aSrcStream){
    nsIObjectInputStream _retval;
    nsresult __result = inner.NewInputStream(aSrcStream ? cast(nsIInputStream)aSrcStream : null, &_retval);
    CheckException(__result);
    return new nsIObjectInputStreamD(_retval);
  }

  /* nsIObjectOutputStream newOutputStream (in nsIOutputStream aDestStream); */
  nsIObjectOutputStreamD  NewOutputStream(nsIOutputStreamD aDestStream){
    nsIObjectOutputStream _retval;
    nsresult __result = inner.NewOutputStream(aDestStream ? cast(nsIOutputStream)aDestStream : null, &_retval);
    CheckException(__result);
    return new nsIObjectOutputStreamD(_retval);
  }

  enum { NS_FASTLOAD_READ = 1 }

  enum { NS_FASTLOAD_WRITE = 2 }

  /* attribute nsIObjectInputStream inputStream; */
  nsIObjectInputStreamD  InputStream(){
    nsIObjectInputStream value;
    nsresult __result = inner.GetInputStream(&value);
    CheckException(__result);
    return new nsIObjectInputStreamD(value);
  }
  void InputStream(nsIObjectInputStreamD  aInputStream){
    nsIObjectInputStream value;
    nsresult __result = inner.SetInputStream(value);
    CheckException(__result);
  }

  /* attribute nsIObjectOutputStream outputStream; */
  nsIObjectOutputStreamD  OutputStream(){
    nsIObjectOutputStream value;
    nsresult __result = inner.GetOutputStream(&value);
    CheckException(__result);
    return new nsIObjectOutputStreamD(value);
  }
  void OutputStream(nsIObjectOutputStreamD  aOutputStream){
    nsIObjectOutputStream value;
    nsresult __result = inner.SetOutputStream(value);
    CheckException(__result);
  }

  /* attribute nsIFastLoadFileIO fileIO; */
  nsIFastLoadFileIOD  FileIO(){
    nsIFastLoadFileIO value;
    nsresult __result = inner.GetFileIO(&value);
    CheckException(__result);
    return new nsIFastLoadFileIOD(value);
  }
  void FileIO(nsIFastLoadFileIOD  aFileIO){
    nsIFastLoadFileIO value;
    nsresult __result = inner.SetFileIO(value);
    CheckException(__result);
  }

  /* readonly attribute PRInt32 direction; */
  PRInt32 Direction(){
    PRInt32 value;
    nsresult __result = inner.GetDirection(&value);
    CheckException(__result);
    return value;
  }

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
  void StartMuxedDocument(nsISupportsD aURI, char*aURISpec, PRInt32 aDirectionFlags){
    nsresult __result = inner.StartMuxedDocument(aURI ? cast(nsISupports)aURI : null, aURISpec, aDirectionFlags);
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

  /* void addDependency (in nsIFile aFile); */
  void AddDependency(nsIFileD aFile){
    nsresult __result = inner.AddDependency(aFile ? cast(nsIFile)aFile : null);
    CheckException(__result);
  }

  /* PRUint32 computeChecksum (in nsIFile aFile, in nsIFastLoadReadControl aControl); */
  PRUint32 ComputeChecksum(nsIFileD aFile, nsIFastLoadReadControlD aControl){
    PRUint32 _retval;
    nsresult __result = inner.ComputeChecksum(aFile ? cast(nsIFile)aFile : null, aControl ? cast(nsIFastLoadReadControl)aControl : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void cacheChecksum (in nsIFile aFile, in nsIObjectOutputStream aStream); */
  void CacheChecksum(nsIFileD aFile, nsIObjectOutputStreamD aStream){
    nsresult __result = inner.CacheChecksum(aFile ? cast(nsIFile)aFile : null, aStream ? cast(nsIObjectOutputStream)aStream : null);
    CheckException(__result);
  }

  /* [noscript] void getFastLoadReferent (inout nsISupports aPtr); */
  void GetFastLoadReferent(out nsISupportsD aPtr){
    nsISupports _aPtr;
    nsresult __result = inner.GetFastLoadReferent(&_aPtr);
    CheckException(__result);
    aPtr = _aPtr ? new nsISupportsD(_aPtr) : null;
  }

  /* [noscript] void readFastLoadPtr (in nsIObjectInputStream aInputStream, inout nsISupports aPtr); */
  void ReadFastLoadPtr(nsIObjectInputStreamD aInputStream, out nsISupportsD aPtr){
    nsISupports _aPtr;
    nsresult __result = inner.ReadFastLoadPtr(aInputStream ? cast(nsIObjectInputStream)aInputStream : null, &_aPtr);
    CheckException(__result);
    aPtr = _aPtr ? new nsISupportsD(_aPtr) : null;
  }

  /* [noscript] void writeFastLoadPtr (in nsIObjectOutputStream aOutputStream, in nsISupports aPtr); */
  void WriteFastLoadPtr(nsIObjectOutputStreamD aOutputStream, nsISupportsD aPtr){
    nsresult __result = inner.WriteFastLoadPtr(aOutputStream ? cast(nsIObjectOutputStream)aOutputStream : null, aPtr ? cast(nsISupports)aPtr : null);
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
  nsIFastLoadService inner;

}

