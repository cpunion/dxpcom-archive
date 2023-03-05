/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibleAction.idl
 */

module mozilla.xpcom.nsIAccessibleAction;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIAccessibleAction */
const char[] NS_IACCESSIBLEACTION_IID_STR = "829b36d4-125a-4279-abc4-87d834664f82";

const nsIID NS_IACCESSIBLEACTION_IID= 
  {0x829b36d4, 0x125a, 0x4279, 
    [ 0xab, 0xc4, 0x87, 0xd8, 0x34, 0x66, 0x4f, 0x82 ]};

extern(Windows)
interface nsIAccessibleAction : nsISupports {
  static const char[] IID_STR = NS_IACCESSIBLEACTION_IID_STR;
  static const nsIID IID = NS_IACCESSIBLEACTION_IID;

  /* readonly attribute long actions; */
  nsresult GetActions(PRInt32 *aActions);

  /* boolean doAction (in long index); */
  nsresult DoAction(PRInt32 index, PRBool *_retval);

  /* AString getDescription (in long index); */
  nsresult GetDescription(PRInt32 index, nsAString * _retval);

  /* void getDescriptionConst (in long index, [shared, retval] out string description); */
  nsresult GetDescriptionConst(PRInt32 index, char **description);

  /* AString getKeyBinding (in long index); */
  nsresult GetKeyBinding(PRInt32 index, nsAString * _retval);

  /* void getKeyBindingConst (in long index, [shared, retval] out string keyBinding); */
  nsresult GetKeyBindingConst(PRInt32 index, char **keyBinding);

}

