/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPalmSyncSupport.idl
 */

module mozilla.xpcom.nsIPalmSyncSupport;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPalmSyncSupport */
const char[] NS_IPALMSYNCSUPPORT_IID_STR = "0071c291-ce82-11d6-b8a6-00b0d06e5f27";

const nsIID NS_IPALMSYNCSUPPORT_IID= 
  {0x0071c291, 0xce82, 0x11d6, 
    [ 0xb8, 0xa6, 0x00, 0xb0, 0xd0, 0x6e, 0x5f, 0x27 ]};

/**
 * This interface provides support for registering Mozilla as a COM component
 * for enabling Palm-Mozilla Address Book (and also other when implemented) Synchronization
 * 
 */
extern(Windows)
interface nsIPalmSyncSupport : nsISupports {
  static const char[] IID_STR = NS_IPALMSYNCSUPPORT_IID_STR;
  static const nsIID IID = NS_IPALMSYNCSUPPORT_IID;

  /** Initiates PalmSync support
    */
  /* void initializePalmSyncSupport (); */
  nsresult InitializePalmSyncSupport();

  /** Register the PalmSync COM interface for IPC
     * This is called only once from the installer
     */
  /* void registerPalmSync (); */
  nsresult RegisterPalmSync();

  /** Unregister the PalmSync COM interface for IPC
     * This is called only once from the installer
     */
  /* void unRegisterPalmSync (); */
  nsresult UnRegisterPalmSync();

  /**  Shuts down the PalmSync support
    */
  /* void shutdownPalmSyncSupport (); */
  nsresult ShutdownPalmSyncSupport();

}

