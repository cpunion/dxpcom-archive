/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportGeneric.idl
 */

module mozilla.xpcom.nsIImportGeneric;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsISupportsPrimitives;


/* starting interface:    nsIImportGeneric */
const char[] NS_IIMPORTGENERIC_IID_STR = "9b5c20c0-2348-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTGENERIC_IID= 
  {0x9b5c20c0, 0x2348, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportGeneric : nsISupports {
  static const char[] IID_STR = NS_IIMPORTGENERIC_IID_STR;
  static const nsIID IID = NS_IIMPORTGENERIC_IID;

  /* nsISupports GetData (in string dataId); */
  nsresult GetData(char *dataId, nsISupports *_retval);

  /* void SetData (in string dataId, in nsISupports pData); */
  nsresult SetData(char *dataId, nsISupports pData);

  /* long GetStatus (in string statusKind); */
  nsresult GetStatus(char *statusKind, PRInt32 *_retval);

  /* boolean WantsProgress (); */
  nsresult WantsProgress(PRBool *_retval);

  /* boolean BeginImport (in nsISupportsString successLog, in nsISupportsString errorLog, in boolean isAddrLocHome); */
  nsresult BeginImport(nsISupportsString successLog, nsISupportsString errorLog, PRBool isAddrLocHome, PRBool *_retval);

  /* boolean ContinueImport (); */
  nsresult ContinueImport(PRBool *_retval);

  /* long GetProgress (); */
  nsresult GetProgress(PRInt32 *_retval);

  /* void CancelImport (); */
  nsresult CancelImport();

}

