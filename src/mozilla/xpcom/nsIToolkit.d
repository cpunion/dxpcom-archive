/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIToolkit.idl
 */

module mozilla.xpcom.nsIToolkit;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIToolkit */
const char[] NS_ITOOLKIT_IID_STR = "18032bd0-b265-11d1-aa2a-000000000000";

const nsIID NS_ITOOLKIT_IID= 
  {0x18032bd0, 0xb265, 0x11d1, 
    [ 0xaa, 0x2a, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ]};

extern(Windows)
interface nsIToolkit : nsISupports {
  static const char[] IID_STR = NS_ITOOLKIT_IID_STR;
  static const nsIID IID = NS_ITOOLKIT_IID;

  /**
   * Initialize this toolkit with aThread. 
   * @param aThread The thread passed in runs the message pump.
   *  NULL can be passed in, in which case a new thread gets created
   *  and a message pump will run in that thread
   *
   */
  /* void Init (in PRThread aThread); */
  nsresult Init(PRThread * aThread);

}

