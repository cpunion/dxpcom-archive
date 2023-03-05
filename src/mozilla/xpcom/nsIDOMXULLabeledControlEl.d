/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMXULLabeledControlEl.idl
 */

module mozilla.xpcom.nsIDOMXULLabeledControlEl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIDOMElement;
public import mozilla.xpcom.nsIDOMXULControlElement;


/* starting interface:    nsIDOMXULLabeledControlElement */
const char[] NS_IDOMXULLABELEDCONTROLELEMENT_IID_STR = "a457ea70-1dd1-11b2-9089-8fd894122084";

const nsIID NS_IDOMXULLABELEDCONTROLELEMENT_IID= 
  {0xa457ea70, 0x1dd1, 0x11b2, 
    [ 0x90, 0x89, 0x8f, 0xd8, 0x94, 0x12, 0x20, 0x84 ]};

extern(Windows)
interface nsIDOMXULLabeledControlElement : nsIDOMXULControlElement {
  static const char[] IID_STR = NS_IDOMXULLABELEDCONTROLELEMENT_IID_STR;
  static const nsIID IID = NS_IDOMXULLABELEDCONTROLELEMENT_IID;

  /* attribute DOMString crop; */
  nsresult GetCrop(nsAString * aCrop);
  nsresult SetCrop(nsAString * aCrop);

  /* attribute DOMString image; */
  nsresult GetImage(nsAString * aImage);
  nsresult SetImage(nsAString * aImage);

  /* attribute DOMString label; */
  nsresult GetLabel(nsAString * aLabel);
  nsresult SetLabel(nsAString * aLabel);

  /* attribute DOMString accessKey; */
  nsresult GetAccessKey(nsAString * aAccessKey);
  nsresult SetAccessKey(nsAString * aAccessKey);

  /* attribute DOMString command; */
  nsresult GetCommand(nsAString * aCommand);
  nsresult SetCommand(nsAString * aCommand);

}

