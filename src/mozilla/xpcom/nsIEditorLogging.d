/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorLogging.idl
 */

module mozilla.xpcom.nsIEditorLogging;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIEditorLogging */
const char[] NS_IEDITORLOGGING_IID_STR = "4805e681-49b9-11d3-9ce4-ed60bd6cb5bc";

const nsIID NS_IEDITORLOGGING_IID= 
  {0x4805e681, 0x49b9, 0x11d3, 
    [ 0x9c, 0xe4, 0xed, 0x60, 0xbd, 0x6c, 0xb5, 0xbc ]};

extern(Windows)
interface nsIEditorLogging : nsISupports {
  static const char[] IID_STR = NS_IEDITORLOGGING_IID_STR;
  static const nsIID IID = NS_IEDITORLOGGING_IID;

  /** Start logging.
   * @param aLogFile     The file to which the log should be written.
    */
  /* void startLogging (in nsIFile aLogFile); */
  nsresult StartLogging(nsIFile aLogFile);

  /** Stop logging.
    */
  /* void stopLogging (); */
  nsresult StopLogging();

}

