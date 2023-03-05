/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFPropagatableDataSource.idl
 */

module mozilla.xpcom.nsIRDFPropagatableDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIRDFPropagatableDataSource */
const char[] NS_IRDFPROPAGATABLEDATASOURCE_IID_STR = "5a9b4770-9fcb-4307-a12e-4b6708e78b97";

const nsIID NS_IRDFPROPAGATABLEDATASOURCE_IID= 
  {0x5a9b4770, 0x9fcb, 0x4307, 
    [ 0xa1, 0x2e, 0x4b, 0x67, 0x08, 0xe7, 0x8b, 0x97 ]};

/**
 * An nsIRDFPropagatableDataSource provides an ability to suppress
 * synchronization notifications.
 */
extern(Windows)
interface nsIRDFPropagatableDataSource : nsISupports {
  static const char[] IID_STR = NS_IRDFPROPAGATABLEDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFPROPAGATABLEDATASOURCE_IID;

  /**
   * Set this value to <code>true</code> to enable synchronization
   * notifications.
   *
   * Set this value to <code>false</code> to disable synchronization
   * notifications.
   *
   * By default, this value is <code>true</code>.
   */
  /* attribute boolean propagateChanges; */
  nsresult GetPropagateChanges(PRBool *aPropagateChanges);
  nsresult SetPropagateChanges(PRBool aPropagateChanges);

}

