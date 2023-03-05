/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProgrammingLanguage.idl
 */

module mozilla.xpcom.nsIProgrammingLanguage;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIProgrammingLanguage */
const char[] NS_IPROGRAMMINGLANGUAGE_IID_STR = "ea604e90-40ba-11d5-90bb-0010a4e73d9a";

const nsIID NS_IPROGRAMMINGLANGUAGE_IID= 
  {0xea604e90, 0x40ba, 0x11d5, 
    [ 0x90, 0xbb, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/**
 * Enumeration of Programming Languages
 * @status FROZEN
 */
extern(Windows)
interface nsIProgrammingLanguage : nsISupports {
  static const char[] IID_STR = NS_IPROGRAMMINGLANGUAGE_IID_STR;
  static const nsIID IID = NS_IPROGRAMMINGLANGUAGE_IID;

  /**
     * Identifiers for programming languages.
     */
  enum { UNKNOWN = 0U };

  enum { CPLUSPLUS = 1U };

  enum { JAVASCRIPT = 2U };

  enum { PYTHON = 3U };

  enum { PERL = 4U };

  enum { JAVA = 5U };

  enum { ZX81_BASIC = 6U };

  enum { JAVASCRIPT2 = 7U };

}

