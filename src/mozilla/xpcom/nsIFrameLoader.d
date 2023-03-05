/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFrameLoader.idl
 */

module mozilla.xpcom.nsIFrameLoader;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDocShell; /* forward declaration */


/* starting interface:    nsIFrameLoader */
const char[] NS_IFRAMELOADER_IID_STR = "88800e93-c6af-4d69-9ee0-29c1100ff431";

const nsIID NS_IFRAMELOADER_IID= 
  {0x88800e93, 0xc6af, 0x4d69, 
    [ 0x9e, 0xe0, 0x29, 0xc1, 0x10, 0x0f, 0xf4, 0x31 ]};

extern(Windows)
interface nsIFrameLoader : nsISupports {
  static const char[] IID_STR = NS_IFRAMELOADER_IID_STR;
  static const nsIID IID = NS_IFRAMELOADER_IID;

  /**
   * Get the docshell from the frame loader.
   */
  /* readonly attribute nsIDocShell docShell; */
  nsresult GetDocShell(nsIDocShell  *aDocShell);

  /**
   * Start loading the frame. This method figures out what to load
   * from the owner content in the frame loader.
   */
  /* void loadFrame (); */
  nsresult LoadFrame();

  /**
   * Destroy the frame loader and everything inside it. This will
   * clear the weak owner content reference.
   */
  /* void destroy (); */
  nsresult Destroy();

  /**
   * Find out whether the loader's frame is at too great a depth in
   * the frame tree.  This can be used to decide what operations may
   * or may not be allowed on the loader's docshell.
   */
  /* readonly attribute boolean depthTooGreat; */
  nsresult GetDepthTooGreat(PRBool *aDepthTooGreat);

}


/* starting interface:    nsIFrameLoaderOwner */
const char[] NS_IFRAMELOADEROWNER_IID_STR = "feaf9285-05ac-4898-a69f-c3bd350767e4";

const nsIID NS_IFRAMELOADEROWNER_IID= 
  {0xfeaf9285, 0x05ac, 0x4898, 
    [ 0xa6, 0x9f, 0xc3, 0xbd, 0x35, 0x07, 0x67, 0xe4 ]};

extern(Windows)
interface nsIFrameLoaderOwner : nsISupports {
  static const char[] IID_STR = NS_IFRAMELOADEROWNER_IID_STR;
  static const nsIID IID = NS_IFRAMELOADEROWNER_IID;

  /* readonly attribute nsIFrameLoader frameLoader; */
  nsresult GetFrameLoader(nsIFrameLoader  *aFrameLoader);

}

