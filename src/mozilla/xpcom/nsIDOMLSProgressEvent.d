/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMLSProgressEvent.idl
 */

module mozilla.xpcom.nsIDOMLSProgressEvent;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMEvent;

public import mozilla.xpcom.nsIDOMLSInput; /* forward declaration */


/* starting interface:    nsIDOMLSProgressEvent */
const char[] NS_IDOMLSPROGRESSEVENT_IID_STR = "b9a2371f-70e9-4657-b0e8-28e15b40857e";

const nsIID NS_IDOMLSPROGRESSEVENT_IID= 
  {0xb9a2371f, 0x70e9, 0x4657, 
    [ 0xb0, 0xe8, 0x28, 0xe1, 0x5b, 0x40, 0x85, 0x7e ]};

extern(Windows)
interface nsIDOMLSProgressEvent : nsIDOMEvent {
  static const char[] IID_STR = NS_IDOMLSPROGRESSEVENT_IID_STR;
  static const nsIID IID = NS_IDOMLSPROGRESSEVENT_IID;

  /* readonly attribute nsIDOMLSInput input; */
  nsresult GetInput(nsIDOMLSInput  *aInput);

  /* readonly attribute unsigned long position; */
  nsresult GetPosition(PRUint32 *aPosition);

  /* readonly attribute unsigned long totalSize; */
  nsresult GetTotalSize(PRUint32 *aTotalSize);

}

