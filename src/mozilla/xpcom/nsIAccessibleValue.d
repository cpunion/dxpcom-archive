/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleValue.idl
 */

module mozilla.xpcom.nsIAccessibleValue;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAccessibleValue */
const char[] NS_IACCESSIBLEVALUE_IID_STR = "f4abbc2f-0f28-47dc-a9e9-f7a1719ab2be";

const nsIID NS_IACCESSIBLEVALUE_IID= 
  {0xf4abbc2f, 0x0f28, 0x47dc, 
    [ 0xa9, 0xe9, 0xf7, 0xa1, 0x71, 0x9a, 0xb2, 0xbe ]};

extern(Windows)
interface nsIAccessibleValue : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEVALUE_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEVALUE_IID;

  /* readonly attribute double maximumValue; */
  nsresult GetMaximumValue(double *aMaximumValue);

  /* readonly attribute double minimumValue; */
  nsresult GetMinimumValue(double *aMinimumValue);

  /* readonly attribute double currentValue; */
  nsresult GetCurrentValue(double *aCurrentValue);

  /**
      * We want to be able to return a success condition of the value
      *   getting set. ie if the value is not within the interval of
      *   minimumValue-maximumValue
      */
  /* boolean setCurrentValue (in double value); */
  nsresult SetCurrentValue(double value, PRBool *_retval);

}

