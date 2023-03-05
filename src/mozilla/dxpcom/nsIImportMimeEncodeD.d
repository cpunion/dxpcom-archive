/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportMimeEncode.idl
 */

module mozilla.dxpcom.nsIImportMimeEncodeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportMimeEncode;


public import mozilla.dxpcom.nsIImportMimeEncodeD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;


/* starting wrapper class:    nsIImportMimeEncode */
class nsIImportMimeEncodeD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTMIMEENCODE_IID;


  alias nsIImportMimeEncode InnerType;

  this(nsIImportMimeEncode intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportMimeEncode opCast() {
    return inner;
  }

  void opAssign(nsIImportMimeEncode value) {
    inner = value;
  }

  /* void EncodeFile (in nsIFileSpec inFile, in nsIFileSpec outFile, [const] in string fileName, [const] in string mimeType); */
  void EncodeFile(nsIFileSpecD inFile, nsIFileSpecD outFile, char*fileName, char*mimeType){
    nsresult __result = inner.EncodeFile(inFile ? cast(nsIFileSpec)inFile : null, outFile ? cast(nsIFileSpec)outFile : null, fileName, mimeType);
    CheckException(__result);
  }

  /* boolean DoWork (out boolean done); */
  PRBool DoWork(out PRBool done){
    PRBool _retval;
    nsresult __result = inner.DoWork(&done, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* long NumBytesProcessed (); */
  PRInt32 NumBytesProcessed(){
    PRInt32 _retval;
    nsresult __result = inner.NumBytesProcessed(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean DoEncoding (); */
  PRBool DoEncoding(){
    PRBool _retval;
    nsresult __result = inner.DoEncoding(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void Initialize (in nsIFileSpec inFile, in nsIFileSpec outFile, [const] in string fileName, [const] in string mimeType); */
  void Initialize(nsIFileSpecD inFile, nsIFileSpecD outFile, char*fileName, char*mimeType){
    nsresult __result = inner.Initialize(inFile ? cast(nsIFileSpec)inFile : null, outFile ? cast(nsIFileSpec)outFile : null, fileName, mimeType);
    CheckException(__result);
  }

private:
  nsIImportMimeEncode inner;

}

