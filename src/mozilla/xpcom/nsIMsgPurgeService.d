/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgPurgeService.idl
 */

module mozilla.xpcom.nsIMsgPurgeService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgPurgeService */
const char[] NS_IMSGPURGESERVICE_IID_STR = "c73294b2-b619-4915-b0e8-314d4215e08d";

const nsIID NS_IMSGPURGESERVICE_IID= 
  {0xc73294b2, 0xb619, 0x4915, 
    [ 0xb0, 0xe8, 0x31, 0x4d, 0x42, 0x15, 0xe0, 0x8d ]};

extern(Windows)
interface nsIMsgPurgeService : nsISupports {
  static const char[] IID_STR = NS_IMSGPURGESERVICE_IID_STR;
  static const nsIID IID = NS_IMSGPURGESERVICE_IID;

  /* void init (); */
  nsresult Init();

  /* void shutdown (); */
  nsresult Shutdown();

}

