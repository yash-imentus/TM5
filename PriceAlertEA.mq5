//+------------------------------------------------------------------+
//|                                                PriceAlertEA.mq5  |
//|                        Basic Example of Expert Advisor           |
//+------------------------------------------------------------------+
#property strict

// Input parameters
input double alert_threshold = 1.2000;  // Alert threshold price

// Declare a flag to track whether the alert has been triggered
bool alert_triggered = false;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   // Initialization code
   Print("Price Alert EA initialized.");
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   // Cleanup code
   Print("Price Alert EA deinitialized.");
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   // Check if the alert has already been triggered
   if (!alert_triggered)
     {
      // Get the current ask price
      double current_price = SymbolInfoDouble(_Symbol, SYMBOL_ASK);

      // Check if the current price exceeds the alert threshold
      if (current_price > alert_threshold)
        {
         // Trigger an alert
         Alert("Price Alert! Current price (", DoubleToString(current_price, _Digits), 
               ") has exceeded the threshold (", DoubleToString(alert_threshold, _Digits), ").");

         // Set the flag to true to indicate the alert has been triggered
         alert_triggered = true;
        }
     }
  }
//+------------------------------------------------------------------+
