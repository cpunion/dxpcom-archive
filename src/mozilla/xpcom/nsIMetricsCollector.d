/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMetricsCollector.idl
 */

module mozilla.xpcom.nsIMetricsCollector;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMetricsCollector */
const char[] NS_IMETRICSCOLLECTOR_IID_STR = "9c6bd2a8-784a-4003-9534-faf45b4de64c";

const nsIID NS_IMETRICSCOLLECTOR_IID= 
  {0x9c6bd2a8, 0x784a, 0x4003, 
    [ 0x95, 0x34, 0xfa, 0xf4, 0x5b, 0x4d, 0xe6, 0x4c ]};

/**
 * The nsIMetricsCollector interface is implemented by any object that collects
 * data on behalf of the MetricsService.  When the configuration file reequests
 * collector "foo" in namespace "http://www.mozilla.org/metrics",
 * the contract id
 * "@mozilla.org/metrics/collector;1?name=http://www.mozilla.org/metrics:foo"
 * is instantiated (using getSerivce).  The collector is responsible for
 * calling nsIMetricsService::logEvent() when it has something to log.
 */
extern(Windows)
interface nsIMetricsCollector : nsISupports {
  static const char[] IID_STR = NS_IMETRICSCOLLECTOR_IID_STR;
  static const nsIID IID = NS_IMETRICSCOLLECTOR_IID;

  /**
   * Notification that this collector should be enabled.  The collector
   * should register itself for observer and event notifications as
   * necessary.
   */
  /* void onAttach (); */
  nsresult OnAttach();

  /**
   * Notification that this collector is no longer enabled.  The collector
   * should unregister itself from observer and event notifications so that
   * the object can be freed.
   */
  /* void onDetach (); */
  nsresult OnDetach();

  /**
   * Notification that the MetricsService is starting a new event log.
   * This happens after any onDetach() notifications that result from parsing
   * the new configuration.
   */
  /* void onNewLog (); */
  nsresult OnNewLog();

}

