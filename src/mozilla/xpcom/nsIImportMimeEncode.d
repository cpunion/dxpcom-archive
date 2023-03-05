/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportMimeEncode.idl
 */

module mozilla.xpcom.nsIImportMimeEncode;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsIImportMimeEncode */
const char[] NS_IIMPORTMIMEENCODE_IID_STR = "455ca0a0-8de2-11d3-a206-00a0cc26da63";

const nsIID NS_IIMPORTMIMEENCODE_IID= 
  {0x455ca0a0, 0x8de2, 0x11d3, 
    [ 0xa2, 0x06, 0x00, 0xa0, 0xcc, 0x26, 0xda, 0x63 ]};

extern(Windows)
interface nsIImportMimeEncode : nsISupports {
  static const char[] IID_STR = NS_IIMPORTMIMEENCODE_IID_STR;
  static const nsIID IID = NS_IIMPORTMIMEENCODE_IID;

  /* void EncodeFile (in nsIFileSpec inFile, in nsIFileSpec outFile, [const] in string fileName, [const] in string mimeType); */
  nsresult EncodeFile(nsIFileSpec inFile, nsIFileSpec outFile, char *fileName, char *mimeType);

  /* boolean DoWork (out boolean done); */
  nsresult DoWork(PRBool *done, PRBool *_retval);

  /* long NumBytesProcessed (); */
  nsresult NumBytesProcessed(PRInt32 *_retval);

  /* boolean DoEncoding (); */
  nsresult DoEncoding(PRBool *_retval);

  /* void Initialize (in nsIFileSpec inFile, in nsIFileSpec outFile, [const] in string fileName, [const] in string mimeType); */
  nsresult Initialize(nsIFileSpec inFile, nsIFileSpec outFile, char *fileName, char *mimeType);

}

