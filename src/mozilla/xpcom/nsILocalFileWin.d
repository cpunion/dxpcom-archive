/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocalFileWin.idl
 */

module mozilla.xpcom.nsILocalFileWin;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsILocalFile;


/* starting interface:    nsILocalFileWin */
const char[] NS_ILOCALFILEWIN_IID_STR = "dc42f467-4094-437d-9e3e-8912a072aede";

const nsIID NS_ILOCALFILEWIN_IID= 
  {0xdc42f467, 0x4094, 0x437d, 
    [ 0x9e, 0x3e, 0x89, 0x12, 0xa0, 0x72, 0xae, 0xde ]};

extern(Windows)
interface nsILocalFileWin : nsILocalFile {
  static const char[] IID_STR = NS_ILOCALFILEWIN_IID_STR;
  static const nsIID IID = NS_ILOCALFILEWIN_IID;

  /**
    * getVersionInfoValue
    *
    * Retrieve a metadata field from the file's VERSIONINFO block.
    * Throws NS_ERROR_FAILURE if no value is found, or the value is empty.
    *
    * @param   aField         The field to look up.
    *
    */
  /* AString getVersionInfoField (in string aField); */
  nsresult GetVersionInfoField(char *aField, nsAString * _retval);

}

