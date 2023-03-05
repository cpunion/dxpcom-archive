/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMapiSupport.idl
 */

module mozilla.xpcom.nsIMapiSupport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMapiSupport */
const char[] NS_IMAPISUPPORT_IID_STR = "2907b676-c4bd-49af-880a-e27a0616291e";

const nsIID NS_IMAPISUPPORT_IID= 
  {0x2907b676, 0xc4bd, 0x49af, 
    [ 0x88, 0x0a, 0xe2, 0x7a, 0x06, 0x16, 0x29, 0x1e ]};

/**
 * This interface provides support for registering Mozilla as a COM component
 * for extending the use of Mail/News through Simple MAPI.
 * 
 */
extern(Windows)
interface nsIMapiSupport : nsISupports {
  static const char[] IID_STR = NS_IMAPISUPPORT_IID_STR;
  static const nsIID IID = NS_IMAPISUPPORT_IID;

  /** Initiates MAPI support
    */
  /* void initializeMAPISupport (); */
  nsresult InitializeMAPISupport();

  /**  Shuts down the MAPI support
    */
  /* void shutdownMAPISupport (); */
  nsresult ShutdownMAPISupport();

  /**  registerServer - register the mapi DLL with the desktop
    *   Typically called by the window shell service when we are
    *   made the default mail app
    */
  /* void registerServer (); */
  nsresult RegisterServer();

  /**  unRegisterServer - unregister the mapi DLL with the desktop
    *   Typically called by the window shell service when we are
    *   removed as the default mail app.
    */
  /* void unRegisterServer (); */
  nsresult UnRegisterServer();

}

