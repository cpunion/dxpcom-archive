/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportABDescriptor.idl
 */

module mozilla.xpcom.nsIImportABDescriptor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIImportABDescriptor */
const char[] NS_IIMPORTABDESCRIPTOR_IID_STR = "9c1774e0-3538-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTABDESCRIPTOR_IID= 
  {0x9c1774e0, 0x3538, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportABDescriptor : nsISupports {
  static const char[] IID_STR = NS_IIMPORTABDESCRIPTOR_IID_STR;
  static const nsIID IID = NS_IIMPORTABDESCRIPTOR_IID;

  /* attribute unsigned long identifier; */
  nsresult GetIdentifier(PRUint32 *aIdentifier);
  nsresult SetIdentifier(PRUint32 aIdentifier);

  /* attribute unsigned long ref; */
  nsresult GetRef(PRUint32 *aRef);
  nsresult SetRef(PRUint32 aRef);

  /* attribute unsigned long size; */
  nsresult GetSize(PRUint32 *aSize);
  nsresult SetSize(PRUint32 aSize);

  /* wstring GetPreferredName (); */
  nsresult GetPreferredName(PRUnichar **_retval);

  /* void SetPreferredName ([const] in wstring name); */
  nsresult SetPreferredName(PRUnichar *name);

  /* readonly attribute nsIFileSpec fileSpec; */
  nsresult GetFileSpec(nsIFileSpec  *aFileSpec);

  /* attribute boolean import; */
  nsresult GetImport(PRBool *aImport);
  nsresult SetImport(PRBool aImport);

}

