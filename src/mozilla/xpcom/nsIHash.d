/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHash.idl
 */

module mozilla.xpcom.nsIHash;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIHash */
const char[] NS_IHASH_IID_STR = "a31a3028-ae28-11d5-ba4b-00108303b117";

const nsIID NS_IHASH_IID= 
  {0xa31a3028, 0xae28, 0x11d5, 
    [ 0xba, 0x4b, 0x00, 0x10, 0x83, 0x03, 0xb1, 0x17 ]};

extern(Windows)
interface nsIHash : nsISupports {
  static const char[] IID_STR = NS_IHASH_IID_STR;
  static const nsIID IID = NS_IHASH_IID;

  enum { HASH_AlgNULL = 0 };

  enum { HASH_AlgMD2 = 1 };

  enum { HASH_AlgMD5 = 2 };

  enum { HASH_AlgSHA1 = 3 };

  enum { MD2_LEN = 16U };

  enum { MD5_LEN = 16U };

  enum { SHA1_LEN = 20U };

  enum { MAX_HASH_LEN = 20U };

  /* unsigned long resultLen (in short aAlg); */
  nsresult ResultLen(PRInt16 aAlg, PRUint32 *_retval);

  /* void create (in short aAlg); */
  nsresult Create(PRInt16 aAlg);

  /* void begin (); */
  nsresult Begin();

  /* void update (in UnsignedCharPtr aBuf, in unsigned long aLen); */
  nsresult Update(char * aBuf, PRUint32 aLen);

  /* void end (in UnsignedCharPtr aHash, out unsigned long aLen, in unsigned long aMaxLen); */
  nsresult End(char * aHash, PRUint32 *aLen, PRUint32 aMaxLen);

}

