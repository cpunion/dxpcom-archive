/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorLogging.idl
 */

module mozilla.dxpcom.nsIEditorLoggingD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorLogging;


public import mozilla.dxpcom.nsIEditorLoggingD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIEditorLogging */
class nsIEditorLoggingD : public nsISupportsD {

  static const nsIID IID = NS_IEDITORLOGGING_IID;


  alias nsIEditorLogging InnerType;

  this(nsIEditorLogging intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorLogging opCast() {
    return inner;
  }

  void opAssign(nsIEditorLogging value) {
    inner = value;
  }

  /** Start logging.
   * @param aLogFile     The file to which the log should be written.
    */
  /* void startLogging (in nsIFile aLogFile); */
  void StartLogging(nsIFileD aLogFile){
    nsresult __result = inner.StartLogging(aLogFile ? cast(nsIFile)aLogFile : null);
    CheckException(__result);
  }

  /** Stop logging.
    */
  /* void stopLogging (); */
  void StopLogging(){
    nsresult __result = inner.StopLogging();
    CheckException(__result);
  }

private:
  nsIEditorLogging inner;

}

