/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBaseWindow.idl
 */

module mozilla.xpcom.nsIBaseWindow;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

alias void * nativeWindow;


/* starting interface:    nsIBaseWindow */
const char[] NS_IBASEWINDOW_IID_STR = "046bc8a0-8015-11d3-af70-00a024ffc08c";

const nsIID NS_IBASEWINDOW_IID= 
  {0x046bc8a0, 0x8015, 0x11d3, 
    [ 0xaf, 0x70, 0x00, 0xa0, 0x24, 0xff, 0xc0, 0x8c ]};

/**
 * The nsIBaseWindow describes a generic window and basic operations that 
 * can be performed on it.  This is not to be a complete windowing interface
 * but rather a common set that nearly all windowed objects support.    
 */
extern(Windows)
interface nsIBaseWindow : nsISupports {
  static const char[] IID_STR = NS_IBASEWINDOW_IID_STR;
  static const nsIID IID = NS_IBASEWINDOW_IID;

  /* [noscript] void initWindow (in nativeWindow parentNativeWindow, in nsIWidget parentWidget, in long x, in long y, in long cx, in long cy); */
  nsresult InitWindow(nativeWindow parentNativeWindow, nsIWidget * parentWidget, PRInt32 x, PRInt32 y, PRInt32 cx, PRInt32 cy);

  /* void create (); */
  nsresult Create();

  /* void destroy (); */
  nsresult Destroy();

  /* void setPosition (in long x, in long y); */
  nsresult SetPosition(PRInt32 x, PRInt32 y);

  /* void getPosition (out long x, out long y); */
  nsresult GetPosition(PRInt32 *x, PRInt32 *y);

  /* void setSize (in long cx, in long cy, in boolean fRepaint); */
  nsresult SetSize(PRInt32 cx, PRInt32 cy, PRBool fRepaint);

  /* void getSize (out long cx, out long cy); */
  nsresult GetSize(PRInt32 *cx, PRInt32 *cy);

  /* void setPositionAndSize (in long x, in long y, in long cx, in long cy, in boolean fRepaint); */
  nsresult SetPositionAndSize(PRInt32 x, PRInt32 y, PRInt32 cx, PRInt32 cy, PRBool fRepaint);

  /* void getPositionAndSize (out long x, out long y, out long cx, out long cy); */
  nsresult GetPositionAndSize(PRInt32 *x, PRInt32 *y, PRInt32 *cx, PRInt32 *cy);

  /** 
	 * Tell the window to repaint itself
	 * @param aForce - if true, repaint immediately
	 *                 if false, the window may defer repainting as it sees fit.
	 */
  /* void repaint (in boolean force); */
  nsresult Repaint(PRBool force);

  /* [noscript] attribute nsIWidget parentWidget; */
  nsresult GetParentWidget(nsIWidget * *aParentWidget);
  nsresult SetParentWidget(nsIWidget * aParentWidget);

  /* attribute nativeWindow parentNativeWindow; */
  nsresult GetParentNativeWindow(nativeWindow *aParentNativeWindow);
  nsresult SetParentNativeWindow(nativeWindow aParentNativeWindow);

  /* attribute boolean visibility; */
  nsresult GetVisibility(PRBool *aVisibility);
  nsresult SetVisibility(PRBool aVisibility);

  /* attribute boolean enabled; */
  nsresult GetEnabled(PRBool *aEnabled);
  nsresult SetEnabled(PRBool aEnabled);

  /** set blurSuppression to true to suppress handling of blur events.
     *  set it false to re-enable them. query it to determine whether
     *  blur events are suppressed. The implementation should allow
     *  for blur events to be suppressed multiple times.
     */
  /* attribute boolean blurSuppression; */
  nsresult GetBlurSuppression(PRBool *aBlurSuppression);
  nsresult SetBlurSuppression(PRBool aBlurSuppression);

  /* [noscript] readonly attribute nsIWidget mainWidget; */
  nsresult GetMainWidget(nsIWidget * *aMainWidget);

  /**
	* Give the window focus.
	*/
  /* void setFocus (); */
  nsresult SetFocus();

  /* attribute wstring title; */
  nsresult GetTitle(PRUnichar * *aTitle);
  nsresult SetTitle(PRUnichar * aTitle);

}

