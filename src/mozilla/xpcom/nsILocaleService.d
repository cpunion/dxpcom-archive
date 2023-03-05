/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILocaleService.idl
 */

module mozilla.xpcom.nsILocaleService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsILocale;


/* starting interface:    nsILocaleDefinition */
const char[] NS_ILOCALEDEFINITION_IID_STR = "7c094410-4558-11d3-91cd-00105aa3f7dc";

const nsIID NS_ILOCALEDEFINITION_IID= 
  {0x7c094410, 0x4558, 0x11d3, 
    [ 0x91, 0xcd, 0x00, 0x10, 0x5a, 0xa3, 0xf7, 0xdc ]};

extern(Windows)
interface nsILocaleDefinition : nsISupports {
  static const char[] IID_STR = NS_ILOCALEDEFINITION_IID_STR;
  static const nsIID IID = NS_ILOCALEDEFINITION_IID;

  /* void setLocaleCategory (in AString category, in AString value); */
  nsresult SetLocaleCategory(nsAString * category, nsAString * value);

}


/* starting interface:    nsILocaleService */
const char[] NS_ILOCALESERVICE_IID_STR = "48ab1fa0-4550-11d3-91cd-00105aa3f7dc";

const nsIID NS_ILOCALESERVICE_IID= 
  {0x48ab1fa0, 0x4550, 0x11d3, 
    [ 0x91, 0xcd, 0x00, 0x10, 0x5a, 0xa3, 0xf7, 0xdc ]};

extern(Windows)
interface nsILocaleService : nsISupports {
  static const char[] IID_STR = NS_ILOCALESERVICE_IID_STR;
  static const nsIID IID = NS_ILOCALESERVICE_IID;

  /* nsILocale newLocale (in AString aLocale); */
  nsresult NewLocale(nsAString * aLocale, nsILocale *_retval);

  /* nsILocale newLocaleObject (in nsILocaleDefinition localeDefinition); */
  nsresult NewLocaleObject(nsILocaleDefinition localeDefinition, nsILocale *_retval);

  /* nsILocale getSystemLocale (); */
  nsresult GetSystemLocale(nsILocale *_retval);

  /* nsILocale getApplicationLocale (); */
  nsresult GetApplicationLocale(nsILocale *_retval);

  /* nsILocale getLocaleFromAcceptLanguage (in string acceptLanguage); */
  nsresult GetLocaleFromAcceptLanguage(char *acceptLanguage, nsILocale *_retval);

  /* AString getLocaleComponentForUserAgent (); */
  nsresult GetLocaleComponentForUserAgent(nsAString * _retval);

}

