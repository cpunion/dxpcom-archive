/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResultSqlite.idl
 */

module mozilla.dxpcom.mozISqlResultSqliteD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlResultSqlite;


public import mozilla.dxpcom.mozISqlResultSqliteD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlResultSqlite */
class mozISqlResultSqliteD : public nsISupportsD {

  static const nsIID IID = MOZISQLRESULTSQLITE_IID;


  alias mozISqlResultSqlite InnerType;

  this(mozISqlResultSqlite intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlResultSqlite opCast() {
    return inner;
  }

  void opAssign(mozISqlResultSqlite value) {
    inner = value;
  }

private:
  mozISqlResultSqlite inner;

}

