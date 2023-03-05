/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgRDFDataSource.idl
 */

module mozilla.xpcom.nsIMsgRDFDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgWindow;


/* starting interface:    nsIMsgRDFDataSource */
const char[] NS_IMSGRDFDATASOURCE_IID_STR = "bb460dfe-8bf0-11d3-8afe-0060b0fc04d2";

const nsIID NS_IMSGRDFDATASOURCE_IID= 
  {0xbb460dfe, 0x8bf0, 0x11d3, 
    [ 0x8a, 0xfe, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xd2 ]};

extern(Windows)
interface nsIMsgRDFDataSource : nsISupports {
  static const char[] IID_STR = NS_IMSGRDFDATASOURCE_IID_STR;
  static const nsIID IID = NS_IMSGRDFDATASOURCE_IID;

  /* attribute nsIMsgWindow window; */
  nsresult GetWindow(nsIMsgWindow  *aWindow);
  nsresult SetWindow(nsIMsgWindow  aWindow);

}

