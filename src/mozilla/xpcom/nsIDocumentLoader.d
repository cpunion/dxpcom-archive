/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentLoader.idl
 */

module mozilla.xpcom.nsIDocumentLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILoadGroup; /* forward declaration */

public import mozilla.xpcom.nsIChannel; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIWebProgress; /* forward declaration */

public import mozilla.xpcom.nsIRequest; /* forward declaration */


/* starting interface:    nsIDocumentLoader */
const char[] NS_IDOCUMENTLOADER_IID_STR = "bbe961ee-59e9-42bb-be50-0331979bb79f";

const nsIID NS_IDOCUMENTLOADER_IID= 
  {0xbbe961ee, 0x59e9, 0x42bb, 
    [ 0xbe, 0x50, 0x03, 0x31, 0x97, 0x9b, 0xb7, 0x9f ]};

/**
 * An nsIDocumentLoader is an interface responsible for tracking groups of
 * loads that belong together (images, external scripts, etc) and subdocuments
 * (<iframe>, <frame>, etc). It is also responsible for sending
 * nsIWebProgressListener notifications.
 * XXXbz this interface should go away, we think...
 */
extern(Windows)
interface nsIDocumentLoader : nsISupports {
  static const char[] IID_STR = NS_IDOCUMENTLOADER_IID_STR;
  static const nsIID IID = NS_IDOCUMENTLOADER_IID;

  /* void stop (); */
  nsresult Stop();

  /* readonly attribute nsISupports container; */
  nsresult GetContainer(nsISupports  *aContainer);

  /* readonly attribute nsILoadGroup loadGroup; */
  nsresult GetLoadGroup(nsILoadGroup  *aLoadGroup);

  /* readonly attribute nsIChannel documentChannel; */
  nsresult GetDocumentChannel(nsIChannel  *aDocumentChannel);

}

