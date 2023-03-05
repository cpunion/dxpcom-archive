/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsPISocketTransportService.idl
 */

module mozilla.xpcom.nsPISocketTransportService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISocketTransportService;


/* starting interface:    nsPISocketTransportService */
const char[] NS_PISOCKETTRANSPORTSERVICE_IID_STR = "6f704e69-a5fb-11d9-8ce8-0011246ecd24";

const nsIID NS_PISOCKETTRANSPORTSERVICE_IID= 
  {0x6f704e69, 0xa5fb, 0x11d9, 
    [ 0x8c, 0xe8, 0x00, 0x11, 0x24, 0x6e, 0xcd, 0x24 ]};

/**
 * This is a private interface used by the internals of the networking library.
 * It will never be frozen.  Do not use it in external code.
 */
extern(Windows)
interface nsPISocketTransportService : nsISocketTransportService {
  static const char[] IID_STR = NS_PISOCKETTRANSPORTSERVICE_IID_STR;
  static const nsIID IID = NS_PISOCKETTRANSPORTSERVICE_IID;

  /**
   * init/shutdown routines.
   */
  /* void init (); */
  nsresult Init();

  /* void shutdown (); */
  nsresult Shutdown();

  /**
   * controls whether or not the socket transport service should poke
   * the autodialer on connection failure.
   */
  /* attribute boolean autodialEnabled; */
  nsresult GetAutodialEnabled(PRBool *aAutodialEnabled);
  nsresult SetAutodialEnabled(PRBool aAutodialEnabled);

}

