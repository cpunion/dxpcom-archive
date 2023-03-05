/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIURLFetcher.idl
 */

module mozilla.xpcom.nsIURLFetcher;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIURI;
public import mozilla.xpcom.nsIFileStreams;
public import mozilla.xpcom.nsILocalFile;

//
// Callback declarations for URL completion
//
// For completion of send/message creation operations...
typedef nsresult function(nsresult aStatus,
        char *aContentType,
        char *aCharset,
        PRInt32 totalSize,
		PRUnichar* aMsg, 
        void *tagData) 
nsAttachSaveCompletionCallback;

/* starting interface:    nsIURLFetcher */
const char[] NS_IURLFETCHER_IID_STR = "01b8a700-2f52-11d5-9daa-f78da781a1fc";

const nsIID NS_IURLFETCHER_IID= 
  {0x01b8a700, 0x2f52, 0x11d5, 
    [ 0x9d, 0xaa, 0xf7, 0x8d, 0xa7, 0x81, 0xa1, 0xfc ]};

extern(Windows)
interface nsIURLFetcher : nsISupports {
  static const char[] IID_STR = NS_IURLFETCHER_IID_STR;
  static const nsIID IID = NS_IURLFETCHER_IID;

  /* boolean stillRunning (); */
  nsresult StillRunning(PRBool *_retval);

  /* void fireURLRequest (in nsIURI aURL, in nsILocalFile localFile, in nsIFileOutputStream fileStream, in nsAttachSaveCompletionCallback cb, in voidPtr tagData); */
  nsresult FireURLRequest(nsIURI aURL, nsILocalFile localFile, nsIFileOutputStream fileStream, nsAttachSaveCompletionCallback cb, void * tagData);

  /* void initialize (in nsILocalFile localFile, in nsIFileOutputStream fileStream, in nsAttachSaveCompletionCallback cb, in voidPtr tagData); */
  nsresult Initialize(nsILocalFile localFile, nsIFileOutputStream fileStream, nsAttachSaveCompletionCallback cb, void * tagData);

}

