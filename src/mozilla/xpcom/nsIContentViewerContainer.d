/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewerContainer.idl
 */

module mozilla.xpcom.nsIContentViewerContainer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIContentViewer; /* forward declaration */


/* starting interface:    nsIContentViewerContainer */
const char[] NS_ICONTENTVIEWERCONTAINER_IID_STR = "ea2ce7a0-5c3d-11d4-90c2-0050041caf44";

const nsIID NS_ICONTENTVIEWERCONTAINER_IID= 
  {0xea2ce7a0, 0x5c3d, 0x11d4, 
    [ 0x90, 0xc2, 0x00, 0x50, 0x04, 0x1c, 0xaf, 0x44 ]};

extern(Windows)
interface nsIContentViewerContainer : nsISupports {
  static const char[] IID_STR = NS_ICONTENTVIEWERCONTAINER_IID_STR;
  static const nsIID IID = NS_ICONTENTVIEWERCONTAINER_IID;

  /* void embed (in nsIContentViewer aDocViewer, in string aCommand, in nsISupports aExtraInfo); */
  nsresult Embed(nsIContentViewer aDocViewer, char *aCommand, nsISupports aExtraInfo);

  /**
   * Allows the PrintEngine to make this call on 
   * an internal interface to the DocShell
   */
  /* void setIsPrinting (in boolean aIsPrinting); */
  nsresult SetIsPrinting(PRBool aIsPrinting);

}

