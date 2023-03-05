/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPResponse.idl
 */

module mozilla.xpcom.nsISOAPResponse;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISOAPCall;

public import mozilla.xpcom.nsISOAPParameter; /* forward declaration */

public import mozilla.xpcom.nsISOAPFault; /* forward declaration */


/* starting interface:    nsISOAPResponse */
const char[] NS_ISOAPRESPONSE_IID_STR = "99ec6691-535f-11d4-9a58-000064657374";

const nsIID NS_ISOAPRESPONSE_IID= 
  {0x99ec6691, 0x535f, 0x11d4, 
    [ 0x9a, 0x58, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsISOAPResponse : nsISOAPMessage {
  static const char[] IID_STR = NS_ISOAPRESPONSE_IID_STR;
  static const nsIID IID = NS_ISOAPRESPONSE_IID;

  /**
 * This is an extension of a message which contains extra functions
 * such as tracking, where appropriate, the original call that
 * produced the response message, identifying the fault, if any,
 * and supplying the return value.
 */
/**
   * The fault returned in the response, if one was generated. NULL
   * if there was no fault.  This does not rely on the response
   * parameters having been deserialized.
   */
  /* readonly attribute nsISOAPFault fault; */
  nsresult GetFault(nsISOAPFault  *aFault);

}

