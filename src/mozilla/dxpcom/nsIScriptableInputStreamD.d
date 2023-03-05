/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableInputStream.idl
 */

module mozilla.dxpcom.nsIScriptableInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptableInputStream;


public import mozilla.dxpcom.nsIScriptableInputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIScriptableInputStream */
/**
 * nsIScriptableInputStream provides scriptable access to the nsIInputStream.  
 *
 * @status FROZEN
 */
class nsIScriptableInputStreamD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEINPUTSTREAM_IID;


  alias nsIScriptableInputStream InnerType;

  this(nsIScriptableInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptableInputStream opCast() {
    return inner;
  }

  void opAssign(nsIScriptableInputStream value) {
    inner = value;
  }

  /** 
     * Closes the stream. 
     */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /** Wrap the given nsIInputStream with this nsIScriptableInputStream. 
     *  @param aInputStream [in] parameter providing the stream to wrap 
     */
  /* void init (in nsIInputStream aInputStream); */
  void Init(nsIInputStreamD aInputStream){
    nsresult __result = inner.Init(aInputStream ? cast(nsIInputStream)aInputStream : null);
    CheckException(__result);
  }

  /** Return the number of bytes currently available in the stream 
     *  @param _retval [out] parameter to hold the number of bytes 
     *         if an error occurs, the parameter will be undefined 
     *  @return error status 
     */
  /* unsigned long available (); */
  PRUint32 Available(){
    PRUint32 _retval;
    nsresult __result = inner.Available(&_retval);
    CheckException(__result);
    return _retval;
  }

  /** Read data from the stream. 
     *  @param aCount [in] the maximum number of bytes to read 
     *  @param _retval [out] the data
     */
  /* string read (in unsigned long aCount); */
  char* Read(PRUint32 aCount){
    char* _retval;
    nsresult __result = inner.Read(aCount, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIScriptableInputStream inner;

}

