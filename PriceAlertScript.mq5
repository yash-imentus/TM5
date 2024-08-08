//+------------------------------------------------------------------+
//|                                              PriceIncreaseAlert.mq5 |
//|                        Script example                            |
//+------------------------------------------------------------------+
#include <Trade\Trade.mqh>

// Input parameters
input double price_threshold = 146.990; // Price threshold to trigger the alert

//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
   // Get the current price
   double current_price = SymbolInfoDouble(_Symbol, SYMBOL_ASK);

   // Check if the current price is higher than the threshold
   if (current_price > price_threshold)
     {
      // Show a popup message
      Alert("Price has increased above the threshold! Current Price: ", DoubleToString(current_price, _Digits)," threshold Price:",DoubleToString(price_threshold, _Digits));
     }
  }
//+------------------------------------------------------------------+
