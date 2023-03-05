/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbUpgrader.idl
 */

module mozilla.xpcom.nsIAbUpgrader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIFileSpec;


/* starting interface:    nsIAbUpgrader */
const char[] NS_IABUPGRADER_IID_STR = "abd6c760-f396-11d3-b9fa-00108335942a";

const nsIID NS_IABUPGRADER_IID= 
  {0xabd6c760, 0xf396, 0x11d3, 
    [ 0xb9, 0xfa, 0x00, 0x10, 0x83, 0x35, 0x94, 0x2a ]};

extern(Windows)
interface nsIAbUpgrader : nsISupports {
  static const char[] IID_STR = NS_IABUPGRADER_IID_STR;
  static const nsIID IID = NS_IABUPGRADER_IID;

  /* void StartUpgrade4xAddrBook (in nsIFileSpec sourceAddrBook, in nsIFileSpec destAddrBook); */
  nsresult StartUpgrade4xAddrBook(nsIFileSpec sourceAddrBook, nsIFileSpec destAddrBook);

  /* void ContinueExport (out boolean done); */
  nsresult ContinueExport(PRBool *done);

  /* attribute string currentCharset; */
  nsresult GetCurrentCharset(char * *aCurrentCharset);
  nsresult SetCurrentCharset(char * aCurrentCharset);

}

