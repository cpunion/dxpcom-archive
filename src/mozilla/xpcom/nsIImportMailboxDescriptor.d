/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportMailboxDescriptor.idl
 */

module mozilla.xpcom.nsIImportMailboxDescriptor;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIImportMailboxDescriptor */
const char[] NS_IIMPORTMAILBOXDESCRIPTOR_IID_STR = "d92056c0-184d-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTMAILBOXDESCRIPTOR_IID= 
  {0xd92056c0, 0x184d, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportMailboxDescriptor : nsISupports {
  static const char[] IID_STR = NS_IIMPORTMAILBOXDESCRIPTOR_IID_STR;
  static const nsIID IID = NS_IIMPORTMAILBOXDESCRIPTOR_IID;

  /* attribute unsigned long identifier; */
  nsresult GetIdentifier(PRUint32 *aIdentifier);
  nsresult SetIdentifier(PRUint32 aIdentifier);

  /* attribute unsigned long depth; */
  nsresult GetDepth(PRUint32 *aDepth);
  nsresult SetDepth(PRUint32 aDepth);

  /* attribute unsigned long size; */
  nsresult GetSize(PRUint32 *aSize);
  nsresult SetSize(PRUint32 aSize);

  /* wstring GetDisplayName (); */
  nsresult GetDisplayName(PRUnichar **_retval);

  /* void SetDisplayName ([const] in wstring name); */
  nsresult SetDisplayName(PRUnichar *name);

  /* attribute boolean import; */
  nsresult GetImport(PRBool *aImport);
  nsresult SetImport(PRBool aImport);

  /* readonly attribute nsIFileSpec fileSpec; */
  nsresult GetFileSpec(nsIFileSpec  *aFileSpec);

}

