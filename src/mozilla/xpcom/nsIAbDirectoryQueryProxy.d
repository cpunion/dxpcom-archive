/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectoryQueryProxy.idl
 */

module mozilla.xpcom.nsIAbDirectoryQueryProxy;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAbDirectoryQuery;
public import mozilla.xpcom.nsIAbDirectory;


/* starting interface:    nsIAbDirectoryQueryProxy */
const char[] NS_IABDIRECTORYQUERYPROXY_IID_STR = "cfa60e0c-94d5-4292-a675-28c737950b3b";

const nsIID NS_IABDIRECTORYQUERYPROXY_IID= 
  {0xcfa60e0c, 0x94d5, 0x4292, 
    [ 0xa6, 0x75, 0x28, 0xc7, 0x37, 0x95, 0x0b, 0x3b ]};

extern(Windows)
interface nsIAbDirectoryQueryProxy : nsIAbDirectoryQuery {
  static const char[] IID_STR = NS_IABDIRECTORYQUERYPROXY_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYQUERYPROXY_IID;

  /* void initiate (in nsIAbDirectory directory); */
  nsresult Initiate(nsIAbDirectory directory);

}

