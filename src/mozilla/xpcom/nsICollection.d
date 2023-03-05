/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICollection.idl
 */

module mozilla.xpcom.nsICollection;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISerializable;
public import mozilla.xpcom.nsIEnumerator;


/* starting interface:    nsICollection */
const char[] NS_ICOLLECTION_IID_STR = "83b6019c-cbc4-11d2-8cca-0060b0fc14a3";

const nsIID NS_ICOLLECTION_IID= 
  {0x83b6019c, 0xcbc4, 0x11d2, 
    [ 0x8c, 0xca, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

extern(Windows)
interface nsICollection : nsISerializable {
  static const char[] IID_STR = NS_ICOLLECTION_IID_STR;
  static const nsIID IID = NS_ICOLLECTION_IID;

  /* PRUint32 Count (); */
  nsresult Count(PRUint32 *_retval);

  /* nsISupports GetElementAt (in PRUint32 index); */
  nsresult GetElementAt(PRUint32 index, nsISupports *_retval);

  /* void QueryElementAt (in PRUint32 index, in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  nsresult QueryElementAt(PRUint32 index, nsIID * uuid, void * *result);

  /* void SetElementAt (in PRUint32 index, in nsISupports item); */
  nsresult SetElementAt(PRUint32 index, nsISupports item);

  /* void AppendElement (in nsISupports item); */
  nsresult AppendElement(nsISupports item);

  /* void RemoveElement (in nsISupports item); */
  nsresult RemoveElement(nsISupports item);

  /* nsIEnumerator Enumerate (); */
  nsresult Enumerate(nsIEnumerator *_retval);

  /* void Clear (); */
  nsresult Clear();

}

