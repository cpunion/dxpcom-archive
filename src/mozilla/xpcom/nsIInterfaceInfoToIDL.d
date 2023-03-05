/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceInfoToIDL.idl
 */

module mozilla.xpcom.nsIInterfaceInfoToIDL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIInterfaceInfoToIDL */
const char[] NS_IINTERFACEINFOTOIDL_IID_STR = "b01eb40c-026b-49c9-af55-25e8c9d034c8";

const nsIID NS_IINTERFACEINFOTOIDL_IID= 
  {0xb01eb40c, 0x026b, 0x49c9, 
    [ 0xaf, 0x55, 0x25, 0xe8, 0xc9, 0xd0, 0x34, 0xc8 ]};

extern(Windows)
interface nsIInterfaceInfoToIDL : nsISupports {
  static const char[] IID_STR = NS_IINTERFACEINFOTOIDL_IID_STR;
  static const nsIID IID = NS_IINTERFACEINFOTOIDL_IID;

  /* string generateIDL (in nsIIDRef aIID, in PRBool withIncludes, in PRBool withForwardDeclarations); */
  nsresult GenerateIDL(nsIID * aIID, PRBool withIncludes, PRBool withForwardDeclarations, char **_retval);

  /* void getReferencedInterfaceNames (in nsIIDRef aIID, out PRUint32 aArrayLength, [array, size_is (aArrayLength), retval] out string aNames); */
  nsresult GetReferencedInterfaceNames(nsIID * aIID, PRUint32 *aArrayLength, char ***aNames);

}

