/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPDirectory.idl
 */

module mozilla.xpcom.nsIAbLDAPDirectory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray;


/* starting interface:    nsIAbLDAPDirectory */
const char[] NS_IABLDAPDIRECTORY_IID_STR = "27ef9414-6959-4085-b5e3-bc491c0e6554";

const nsIID NS_IABLDAPDIRECTORY_IID= 
  {0x27ef9414, 0x6959, 0x4085, 
    [ 0xb5, 0xe3, 0xbc, 0x49, 0x1c, 0x0e, 0x65, 0x54 ]};

/**
 * XXX This should really inherit from nsIAbDirectory, and some day it will.
 * But for now, doing that complicates implementation.
 */
extern(Windows)
interface nsIAbLDAPDirectory : nsISupports {
  static const char[] IID_STR = NS_IABLDAPDIRECTORY_IID_STR;
  static const nsIID IID = NS_IABLDAPDIRECTORY_IID;

  /**
     * If set, these arrays of nsILDAPControls are passed through to the
     * nsILDAPOperation that searchExt is called on.
     */
  /* attribute nsIMutableArray searchServerControls; */
  nsresult GetSearchServerControls(nsIMutableArray  *aSearchServerControls);
  nsresult SetSearchServerControls(nsIMutableArray  aSearchServerControls);

  /* attribute nsIMutableArray searchClientControls; */
  nsresult GetSearchClientControls(nsIMutableArray  *aSearchClientControls);
  nsresult SetSearchClientControls(nsIMutableArray  aSearchClientControls);

}

