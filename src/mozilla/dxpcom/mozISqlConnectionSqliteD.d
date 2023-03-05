/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlConnectionSqlite.idl
 */

module mozilla.dxpcom.mozISqlConnectionSqliteD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlConnectionSqlite;


public import mozilla.dxpcom.mozISqlConnectionSqliteD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlConnectionSqlite */
class mozISqlConnectionSqliteD : public nsISupportsD {

  static const nsIID IID = MOZISQLCONNECTIONSQLITE_IID;


  alias mozISqlConnectionSqlite InnerType;

  this(mozISqlConnectionSqlite intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlConnectionSqlite opCast() {
    return inner;
  }

  void opAssign(mozISqlConnectionSqlite value) {
    inner = value;
  }

private:
  mozISqlConnectionSqlite inner;

}

