/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFolderCacheElement.idl
 */

module mozilla.xpcom.nsIMsgFolderCacheElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgFolderCacheElement */
const char[] NS_IMSGFOLDERCACHEELEMENT_IID_STR = "c3096590-3983-11d3-8d76-00805f8a6617";

const nsIID NS_IMSGFOLDERCACHEELEMENT_IID= 
  {0xc3096590, 0x3983, 0x11d3, 
    [ 0x8d, 0x76, 0x00, 0x80, 0x5f, 0x8a, 0x66, 0x17 ]};

extern(Windows)
interface nsIMsgFolderCacheElement : nsISupports {
  static const char[] IID_STR = NS_IMSGFOLDERCACHEELEMENT_IID_STR;
  static const nsIID IID = NS_IMSGFOLDERCACHEELEMENT_IID;

  /* attribute string Key; */
  nsresult GetKey(char * *aKey);
  nsresult SetKey(char * aKey);

  /* string GetStringProperty (in string propertyName); */
  nsresult GetStringProperty(char *propertyName, char **_retval);

  /* long GetInt32Property (in string propertyName); */
  nsresult GetInt32Property(char *propertyName, PRInt32 *_retval);

  /* void SetStringProperty (in string propertyName, in string propertyValue); */
  nsresult SetStringProperty(char *propertyName, char *propertyValue);

  /* void SetInt32Property (in string propertyName, in long propertyValue); */
  nsresult SetInt32Property(char *propertyName, PRInt32 propertyValue);

}

