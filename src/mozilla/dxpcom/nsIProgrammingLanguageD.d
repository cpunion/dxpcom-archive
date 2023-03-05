/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProgrammingLanguage.idl
 */

module mozilla.dxpcom.nsIProgrammingLanguageD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProgrammingLanguage;


public import mozilla.dxpcom.nsIProgrammingLanguageD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIProgrammingLanguage */
/**
 * Enumeration of Programming Languages
 * @status FROZEN
 */
class nsIProgrammingLanguageD : public nsISupportsD {

  static const nsIID IID = NS_IPROGRAMMINGLANGUAGE_IID;


  alias nsIProgrammingLanguage InnerType;

  this(nsIProgrammingLanguage intr){
    super(intr);
    this.inner = intr;
  }

  nsIProgrammingLanguage opCast() {
    return inner;
  }

  void opAssign(nsIProgrammingLanguage value) {
    inner = value;
  }

  /**
     * Identifiers for programming languages.
     */
  enum { UNKNOWN = 0U }

  enum { CPLUSPLUS = 1U }

  enum { JAVASCRIPT = 2U }

  enum { PYTHON = 3U }

  enum { PERL = 4U }

  enum { JAVA = 5U }

  enum { ZX81_BASIC = 6U }

  enum { JAVASCRIPT2 = 7U }

private:
  nsIProgrammingLanguage inner;

}

