//+------------------------------------------------------------------+
//|                                                    NewCandle.mq5 |
//|                                  Copyright 2025, MetaQuotes Ltd. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, MetaQuotes Ltd."
#property link      "https://www.mql5.com"
#property version   "1.00"



void OnStart()
   {
   
      if(NewCandle(PERIOD_M1))
         Print("Started New Candle.");
         
   }

bool NewCandle(ENUM_TIMEFRAMES time_frame)
   {
      static int index = 0;
      int new_index = Bars(_Symbol, time_frame); 
      if(index != new_index)  
         {  
            index = new_index;   
            return true;  
         } 
      return false;     
   }