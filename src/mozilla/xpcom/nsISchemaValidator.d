/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISchemaValidator.idl
 */

module mozilla.xpcom.nsISchemaValidator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISchema;
public import mozilla.xpcom.nsISchemaDuration;
public import mozilla.xpcom.nsIDOMNode;


/* starting interface:    nsISchemaValidator */
const char[] NS_ISCHEMAVALIDATOR_IID_STR = "eced2af3-fde9-4575-b5a4-e1c830b24611";

const nsIID NS_ISCHEMAVALIDATOR_IID= 
  {0xeced2af3, 0xfde9, 0x4575, 
    [ 0xb5, 0xa4, 0xe1, 0xc8, 0x30, 0xb2, 0x46, 0x11 ]};

extern(Windows)
interface nsISchemaValidator : nsISupports {
  static const char[] IID_STR = NS_ISCHEMAVALIDATOR_IID_STR;
  static const nsIID IID = NS_ISCHEMAVALIDATOR_IID;

  /* void loadSchema (in nsISchema aSchema); */
  nsresult LoadSchema(nsISchema aSchema);

  /* boolean validate (in nsIDOMNode aElement); */
  nsresult Validate(nsIDOMNode aElement, PRBool *_retval);

  /* boolean validateString (in AString aValue, in AString aType, in AString aNamespace); */
  nsresult ValidateString(nsAString * aValue, nsAString * aType, nsAString * aNamespace, PRBool *_retval);

  /* boolean validateAgainstType (in nsIDOMNode aElement, in nsISchemaType aType); */
  nsresult ValidateAgainstType(nsIDOMNode aElement, nsISchemaType aType, PRBool *_retval);

  /* nsISchemaType getType (in AString aType, in AString aNamespace); */
  nsresult GetType(nsAString * aType, nsAString * aNamespace, nsISchemaType *_retval);

  /* nsISchemaDuration validateBuiltinTypeDuration (in AString aValue); */
  nsresult ValidateBuiltinTypeDuration(nsAString * aValue, nsISchemaDuration *_retval);

  /* PRTime validateBuiltinTypeTime (in AString aValue); */
  nsresult ValidateBuiltinTypeTime(nsAString * aValue, PRTime *_retval);

  /* PRTime validateBuiltinTypeDate (in AString aValue); */
  nsresult ValidateBuiltinTypeDate(nsAString * aValue, PRTime *_retval);

  /* PRTime validateBuiltinTypeDateTime (in AString aValue); */
  nsresult ValidateBuiltinTypeDateTime(nsAString * aValue, PRTime *_retval);

}

