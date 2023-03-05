/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICMSSecureMessage.idl
 */

module mozilla.xpcom.nsICMSSecureMessage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsICMSSecureMessage */
const char[] NS_ICMSSECUREMESSAGE_IID_STR = "14b4394a-1dd2-11b2-b4fd-ba4a194fe97e";

const nsIID NS_ICMSSECUREMESSAGE_IID= 
  {0x14b4394a, 0x1dd2, 0x11b2, 
    [ 0xb4, 0xfd, 0xba, 0x4a, 0x19, 0x4f, 0xe9, 0x7e ]};

/**
 * nsICMSManager (service)
 *  Interface to access users certificate store
 */
extern(Windows)
interface nsICMSSecureMessage : nsISupports {
  static const char[] IID_STR = NS_ICMSSECUREMESSAGE_IID_STR;
  static const nsIID IID = NS_ICMSSECUREMESSAGE_IID;

  /**
   * getCertByPrefID - a BASE64 string representing a user's
   *   certificate (or NULL if there isn't one)
   */
  /* string getCertByPrefID (in string certID); */
  nsresult GetCertByPrefID(char *certID, char **_retval);

  /**
   * decodeCert - decode a BASE64 string into an X509Certificate object
   */
  /* nsIX509Cert decodeCert (in string value); */
  nsresult DecodeCert(char *value, nsIX509Cert *_retval);

  /**
   * sendMessage - send a text message to the recipient indicated
   *   by the base64-encoded cert.
   */
  /* string sendMessage (in string msg, in string cert); */
  nsresult SendMessage(char *msg, char *cert, char **_retval);

  /**
   * receiveMessage - recieve an encrypted (enveloped) message
   */
  /* string receiveMessage (in string msg); */
  nsresult ReceiveMessage(char *msg, char **_retval);

}

