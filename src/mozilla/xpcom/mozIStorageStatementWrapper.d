/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozIStorageStatementWrapper.idl
 */

module mozilla.xpcom.mozIStorageStatementWrapper;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.mozIStorageStatement;


/* starting interface:    mozIStorageStatementRow */
const char[] MOZISTORAGESTATEMENTROW_IID_STR = "02eeaf95-c3db-4182-9340-222c29f68f02";

const nsIID MOZISTORAGESTATEMENTROW_IID= 
  {0x02eeaf95, 0xc3db, 0x4182, 
    [ 0x93, 0x40, 0x22, 0x2c, 0x29, 0xf6, 0x8f, 0x02 ]};

extern(Windows)
interface mozIStorageStatementRow : nsISupports {
  static const char[] IID_STR = MOZISTORAGESTATEMENTROW_IID_STR;
  static const nsIID IID = MOZISTORAGESTATEMENTROW_IID;

}


/* starting interface:    mozIStorageStatementParams */
const char[] MOZISTORAGESTATEMENTPARAMS_IID_STR = "e65fe6e2-2643-463c-97e2-27665efe2386";

const nsIID MOZISTORAGESTATEMENTPARAMS_IID= 
  {0xe65fe6e2, 0x2643, 0x463c, 
    [ 0x97, 0xe2, 0x27, 0x66, 0x5e, 0xfe, 0x23, 0x86 ]};

extern(Windows)
interface mozIStorageStatementParams : nsISupports {
  static const char[] IID_STR = MOZISTORAGESTATEMENTPARAMS_IID_STR;
  static const nsIID IID = MOZISTORAGESTATEMENTPARAMS_IID;

}


/* starting interface:    mozIStorageStatementWrapper */
const char[] MOZISTORAGESTATEMENTWRAPPER_IID_STR = "eee6f7c9-5586-4eaf-b35c-dca987c4ffd1";

const nsIID MOZISTORAGESTATEMENTWRAPPER_IID= 
  {0xeee6f7c9, 0x5586, 0x4eaf, 
    [ 0xb3, 0x5c, 0xdc, 0xa9, 0x87, 0xc4, 0xff, 0xd1 ]};

extern(Windows)
interface mozIStorageStatementWrapper : nsISupports {
  static const char[] IID_STR = MOZISTORAGESTATEMENTWRAPPER_IID_STR;
  static const nsIID IID = MOZISTORAGESTATEMENTWRAPPER_IID;

  /**
   * Initialize this wrapper with aStatement.
   */
  /* void initialize (in mozIStorageStatement aStatement); */
  nsresult Initialize(mozIStorageStatement aStatement);

  /**
   * The statement that is wrapped.
   */
  /* readonly attribute mozIStorageStatement statement; */
  nsresult GetStatement(mozIStorageStatement  *aStatement);

  /**
   * Step, reset, and execute the wrapped statement.
   */
  /* void reset (); */
  nsresult Reset();

  /* boolean step (); */
  nsresult Step(PRBool *_retval);

  /* void execute (); */
  nsresult Execute();

  /**
   * The current row.  Throws an exception if no row is currently
   * available.  Useful only from script.  The value of this is only
   * valid while the statement is still executing, and is still on the
   * appropriate row.
   */
  /* readonly attribute mozIStorageStatementRow row; */
  nsresult GetRow(mozIStorageStatementRow  *aRow);

  /**
   * The parameters; these can be set in lieu of using the call
   * notation on this.
   */
  /* readonly attribute mozIStorageStatementParams params; */
  nsresult GetParams(mozIStorageStatementParams  *aParams);

}

