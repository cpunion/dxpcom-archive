/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSEncoder.idl
 */

module mozilla.xpcom.nsICMSEncoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

typedef void function(void *arg, char *buf, size_t len) NSSCMSContentCallback;
const char[] NS_CMSENCODER_CONTRACTID = "@mozilla.org/nsCMSEncoder;1";
public import mozilla.xpcom.nsICMSMessage; /* forward declaration */


/* starting interface:    nsICMSEncoder */
const char[] NS_ICMSENCODER_IID_STR = "a15789aa-8903-462b-81e9-4aa2cff4d5cb";

const nsIID NS_ICMSENCODER_IID= 
  {0xa15789aa, 0x8903, 0x462b, 
    [ 0x81, 0xe9, 0x4a, 0xa2, 0xcf, 0xf4, 0xd5, 0xcb ]};

/**
 * nsICMSEncoder
 *  Interface to Encode an CMS message
 */
extern(Windows)
interface nsICMSEncoder : nsISupports {
  static const char[] IID_STR = NS_ICMSENCODER_IID_STR;
  static const nsIID IID = NS_ICMSENCODER_IID;

  /* void start (in nsICMSMessage aMsg, in NSSCMSContentCallback cb, in voidPtr arg); */
  nsresult Start(nsICMSMessage aMsg, NSSCMSContentCallback cb, void * arg);

  /* void update (in string aBuf, in long aLen); */
  nsresult Update(char *aBuf, PRInt32 aLen);

  /* void finish (); */
  nsresult Finish();

  /* void encode (in nsICMSMessage aMsg); */
  nsresult Encode(nsICMSMessage aMsg);

}

