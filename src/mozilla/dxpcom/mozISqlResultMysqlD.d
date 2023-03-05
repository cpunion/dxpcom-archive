/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlResultMysql.idl
 */

module mozilla.dxpcom.mozISqlResultMysqlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlResultMysql;


public import mozilla.dxpcom.mozISqlResultMysqlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlResultMysql */
class mozISqlResultMysqlD : public nsISupportsD {

  static const nsIID IID = MOZISQLRESULTMYSQL_IID;


  alias mozISqlResultMysql InnerType;

  this(mozISqlResultMysql intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlResultMysql opCast() {
    return inner;
  }

  void opAssign(mozISqlResultMysql value) {
    inner = value;
  }

private:
  mozISqlResultMysql inner;

}

