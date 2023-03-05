/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlConnectionMysql.idl
 */

module mozilla.dxpcom.mozISqlConnectionMysqlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.mozISqlConnectionMysql;


public import mozilla.dxpcom.mozISqlConnectionMysqlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    mozISqlConnectionMysql */
class mozISqlConnectionMysqlD : public nsISupportsD {

  static const nsIID IID = MOZISQLCONNECTIONMYSQL_IID;


  alias mozISqlConnectionMysql InnerType;

  this(mozISqlConnectionMysql intr){
    super(intr);
    this.inner = intr;
  }

  mozISqlConnectionMysql opCast() {
    return inner;
  }

  void opAssign(mozISqlConnectionMysql value) {
    inner = value;
  }

private:
  mozISqlConnectionMysql inner;

}

