/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileUtilities.idl
 */

module mozilla.dxpcom.nsIFileUtilitiesD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileUtilities;


public import mozilla.dxpcom.nsIFileUtilitiesD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIFileUtilities */
/**
 * The nsIFileUtilities interface provides access to random file operations.
 * To obtain: QueryInterface on nsIPluginManager.
 */
class nsIFileUtilitiesD : public nsISupportsD {

  static const nsIID IID = NS_IFILEUTILITIES_IID;


  alias nsIFileUtilities InnerType;

  this(nsIFileUtilities intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileUtilities opCast() {
    return inner;
  }

  void opAssign(nsIFileUtilities value) {
    inner = value;
  }

  /**
   * Returns the name of the browser executable program.
   *
   * @param aProgramPath - the returned path to the program
   * @result             - NS_OK if this operation was successful
   */
  /* void getProgramPath (out constCharPtr aProgramPath); */
  void GetProgramPath(out char * aProgramPath){
    nsresult __result = inner.GetProgramPath(&aProgramPath);
    CheckException(__result);
  }

  /**
   * Returns the name of the temporary directory.
   *
   * @param aTempDirPath - the returned path to the temp directory
   * @result             - NS_OK if this operation was successful
   */
  /* void getTempDirPath (out constCharPtr aTempDirPath); */
  void GetTempDirPath(out char * aTempDirPath){
    nsresult __result = inner.GetTempDirPath(&aTempDirPath);
    CheckException(__result);
  }

  /**
   * Returns a unique temporary file name.
   *
   * @param aPrefix - a string to prefix to the temporary file name
   * @param aLength - the length of the resulting buffer to receive the data
   * @param aBuffer - the returned temp file name
   * @result        - NS_OK if this operation was successful
   */
  /* void newTempFileName (in string aPrefix, in unsigned long aLength, in charPtr aBuffer); */
  void NewTempFileName(char*aPrefix, PRUint32 aLength, char * aBuffer){
    nsresult __result = inner.NewTempFileName(aPrefix, aLength, aBuffer);
    CheckException(__result);
  }

private:
  nsIFileUtilities inner;

}

