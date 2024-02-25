package com.pavelkhomenko.marketdata;

import java.util.HashSet;
import java.util.Set;

public class Constants {
    public static final Set<Integer> MOEX_CANDLE_SIZE = new HashSet<>(Set.of(1, 10, 60, 24, 7, 31, 4));
    public static final Set<Integer> ALPHA_VANTAGE_CANDLE_SIZE = new HashSet<>(Set.of(1, 5, 15, 30, 60));
}
