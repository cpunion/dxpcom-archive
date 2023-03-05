/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPIDNSService.idl
 */

module mozilla.xpcom.nsPIDNSService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDNSService;


/* starting interface:    nsPIDNSService */
const char[] NS_PIDNSSERVICE_IID_STR = "a26c5b45-7707-4412-bbc1-2462b890848d";

const nsIID NS_PIDNSSERVICE_IID= 
  {0xa26c5b45, 0x7707, 0x4412, 
    [ 0xbb, 0xc1, 0x24, 0x62, 0xb8, 0x90, 0x84, 0x8d ]};

/**
 * This is a private interface used by the internals of the networking library.
 * It will never be frozen.  Do not use it in external code.
 */
extern(Windows)
interface nsPIDNSService : nsIDNSService {
  static const char[] IID_STR = NS_PIDNSSERVICE_IID_STR;
  static const nsIID IID = NS_PIDNSSERVICE_IID;

  /**
     * called to initialize the DNS service.
     */
  /* void init (); */
  nsresult Init();

  /**
     * called to shutdown the DNS service.  any pending asynchronous
     * requests will be canceled, and the local cache of DNS records
     * will be cleared.  NOTE: the operating system may still have
     * its own cache of DNS records, which would be unaffected by
     * this method.
     */
  /* void shutdown (); */
  nsresult Shutdown();

}

