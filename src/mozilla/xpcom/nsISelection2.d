/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelection2.idl
 */

module mozilla.xpcom.nsISelection2;


import mozilla.xpcom.nsrootidl;

import mozilla.xpcom.nsISupports;
import mozilla.xpcom.nsISelection;

import mozilla.xpcom.nsIDOMNode; /* forward declaration */

import mozilla.xpcom.nsIDOMRange; /* forward declaration */


/* starting interface:    nsISelection2 */
const char[] NS_ISELECTION2_IID_STR = "eab4ae76-efdc-4e09-828c-bd921e9a662f";

const nsIID NS_ISELECTION2_IID= 
  {0xeab4ae76, 0xefdc, 0x4e09, 
    [ 0x82, 0x8c, 0xbd, 0x92, 0x1e, 0x9a, 0x66, 0x2f ]};

extern(Windows)
interface nsISelection2 : nsISelection {
  static const char[] IID_STR = NS_ISELECTION2_IID_STR;
  static const nsIID IID = NS_ISELECTION2_IID;

  /* void GetRangesForInterval (in nsIDOMNode beginNode, in PRInt32 beginOffset, in nsIDOMNode endNode, in PRInt32 endOffset, in PRBool allowAdjacent, out PRUint32 resultCount, [array, size_is (resultCount), retval] out nsIDOMRange results); */
  nsresult GetRangesForInterval(nsIDOMNode beginNode, PRInt32 beginOffset, nsIDOMNode endNode, PRInt32 endOffset, PRBool allowAdjacent, PRUint32 *resultCount, nsIDOMRange **results);

  /* [noscript] void GetRangesForIntervalCOMArray (in nsIDOMNode beginNode, in PRInt32 beginOffset, in nsIDOMNode endNode, in PRInt32 endOffset, in PRBool allowAdjacent, in RangeArray results); */
  nsresult GetRangesForIntervalCOMArray(nsIDOMNode beginNode, PRInt32 beginOffset, nsIDOMNode endNode, PRInt32 endOffset, PRBool allowAdjacent, nsCOMArray<nsIDOMRange> * results);

}

