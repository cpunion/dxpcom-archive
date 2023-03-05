/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAcceptLang.idl
 */

module mozilla.xpcom.nsIAcceptLang;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAcceptLang */
const char[] NS_IACCEPTLANG_IID_STR = "383f6c16-2797-11d4-ba1c-001083344de7";

const nsIID NS_IACCEPTLANG_IID= 
  {0x383f6c16, 0x2797, 0x11d4, 
    [ 0xba, 0x1c, 0x00, 0x10, 0x83, 0x34, 0x4d, 0xe7 ]};

extern(Windows)
interface nsIAcceptLang : nsISupports {
  static const char[] IID_STR = NS_IACCEPTLANG_IID_STR;
  static const nsIID IID = NS_IACCEPTLANG_IID;

  /* wstring getAcceptLangFromLocale (in wstring aLocale); */
  nsresult GetAcceptLangFromLocale(PRUnichar *aLocale, PRUnichar **_retval);

  /* wstring getLocaleFromAcceptLang (in wstring aName); */
  nsresult GetLocaleFromAcceptLang(PRUnichar *aName, PRUnichar **_retval);

  /* wstring acceptLang2List (in wstring aName, in wstring aList); */
  nsresult AcceptLang2List(PRUnichar *aName, PRUnichar *aList, PRUnichar **_retval);

}

