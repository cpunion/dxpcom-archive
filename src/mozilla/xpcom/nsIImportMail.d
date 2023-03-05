/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportMail.idl
 */

module mozilla.xpcom.nsIImportMail;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */

public import mozilla.xpcom.nsIImportMailboxDescriptor; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIImportMail */
const char[] NS_IIMPORTMAIL_IID_STR = "c9e314c0-234e-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTMAIL_IID= 
  {0xc9e314c0, 0x234e, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportMail : nsISupports {
  static const char[] IID_STR = NS_IIMPORTMAIL_IID_STR;
  static const nsIID IID = NS_IIMPORTMAIL_IID;

  /* void GetDefaultLocation (out nsIFileSpec location, out boolean found, out boolean userVerify); */
  nsresult GetDefaultLocation(nsIFileSpec *location, PRBool *found, PRBool *userVerify);

  /* nsISupportsArray FindMailboxes (in nsIFileSpec location); */
  nsresult FindMailboxes(nsIFileSpec location, nsISupportsArray *_retval);

  /* void ImportMailbox (in nsIImportMailboxDescriptor source, in nsIFileSpec destination, out wstring errorLog, out wstring successLog, out boolean fatalError); */
  nsresult ImportMailbox(nsIImportMailboxDescriptor source, nsIFileSpec destination, PRUnichar **errorLog, PRUnichar **successLog, PRBool *fatalError);

  /* unsigned long GetImportProgress (); */
  nsresult GetImportProgress(PRUint32 *_retval);

  /* AString translateFolderName (in AString aFolderName); */
  nsresult TranslateFolderName(nsAString * aFolderName, nsAString * _retval);

}

