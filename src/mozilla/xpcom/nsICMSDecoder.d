/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSDecoder.idl
 */

module mozilla.xpcom.nsICMSDecoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

typedef void function (void *arg, char *buf, size_t len) NSSCMSContentCallback;
const char[] NS_CMSDECODER_CONTRACTID = "@mozilla.org/nsCMSDecoder;1";
public import mozilla.xpcom.nsICMSMessage; /* forward declaration */


/* starting interface:    nsICMSDecoder */
const char[] NS_ICMSDECODER_IID_STR = "65244a06-a342-11d5-ba47-00108303b117";

const nsIID NS_ICMSDECODER_IID= 
  {0x65244a06, 0xa342, 0x11d5, 
    [ 0xba, 0x47, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

/**
 * nsICMSDecoder
 *  Interface to decode an CMS message
 */
extern(Windows)
interface nsICMSDecoder : nsISupports {
  static const char[] IID_STR = NS_ICMSDECODER_IID_STR;
  static const nsIID IID = NS_ICMSDECODER_IID;

  /* void start (in NSSCMSContentCallback cb, in voidPtr arg); */
  nsresult Start(NSSCMSContentCallback cb, void * arg);

  /* void update (in string aBuf, in long aLen); */
  nsresult Update(char *aBuf, PRInt32 aLen);

  /* void finish (out nsICMSMessage msg); */
  nsresult Finish(nsICMSMessage *msg);

}

