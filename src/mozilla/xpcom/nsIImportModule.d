/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportModule.idl
 */

module mozilla.xpcom.nsIImportModule;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIImportModule */
const char[] NS_IIMPORTMODULE_IID_STR = "624f0280-173f-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTMODULE_IID= 
  {0x624f0280, 0x173f, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportModule : nsISupports {
  static const char[] IID_STR = NS_IIMPORTMODULE_IID_STR;
  static const nsIID IID = NS_IIMPORTMODULE_IID;

  /* readonly attribute wstring name; */
  nsresult GetName(PRUnichar * *aName);

  /* readonly attribute wstring description; */
  nsresult GetDescription(PRUnichar * *aDescription);

  /* readonly attribute string supports; */
  nsresult GetSupports(char * *aSupports);

  /* readonly attribute boolean supportsUpgrade; */
  nsresult GetSupportsUpgrade(PRBool *aSupportsUpgrade);

  /* nsISupports GetImportInterface (in string importType); */
  nsresult GetImportInterface(char *importType, nsISupports *_retval);

}

