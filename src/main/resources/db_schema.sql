CREATE TABLE IF NOT EXISTS company_overview (
                                  ticker VARCHAR(10) PRIMARY KEY NOT NULL,
                                  name VARCHAR(255) NOT NULL,
                                  description VARCHAR NOT NULL,
                                  country VARCHAR(20) NOT NULL,
                                  sector VARCHAR(50) NOT NULL,
                                  industry VARCHAR(50) NOT NULL,
                                  address VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS income_statement (
                                  id VARCHAR(30) PRIMARY KEY NOT NULL ,
                                  ticker VARCHAR(10) REFERENCES company_overview(ticker) ON DELETE CASCADE NOT NULL ,
                                  type VARCHAR(10) NOT NULL,
                                  fiscaldateending DATE NOT NULL ,
                                  reportedcurrency VARCHAR(10) NOT NULL ,
                                  grossprofit BIGINT,
                                  totalrevenue BIGINT,
                                  costofrevenue BIGINT,
                                  costofgoodsandservicessold BIGINT,
                                  operatingincome BIGINT,
                                  sellinggeneralandadministrative BIGINT,
                                  researchanddevelopment BIGINT,
                                  operatingexpenses BIGINT,
                                  investmentincomenet BIGINT,
                                  netinterestincome BIGINT,
                                  interestincome BIGINT,
                                  interestexpense BIGINT,
                                  noninterestincome BIGINT,
                                  othernonoperatingincome BIGINT,
                                  depreciation BIGINT,
                                  depreciationandamortization BIGINT,
                                  incomebeforetax BIGINT,
                                  incometaxexpense BIGINT,
                                  interestanddebtexpense BIGINT,
                                  netincomefromcontinuingoperations BIGINT,
                                  comprehensiveincomenetoftax BIGINT,
                                  ebit BIGINT,
                                  ebitda BIGINT,
                                  netincome BIGINT
);

CREATE TABLE IF NOT EXISTS balance_sheet (
                               id VARCHAR(30) PRIMARY KEY NOT NULL ,
                               ticker VARCHAR(10) REFERENCES company_overview(ticker) ON DELETE CASCADE NOT NULL ,
                               fiscaldateending DATE NOT NULL,
                               type VARCHAR(10) NOT NULL,
                               reportedcurrency VARCHAR(10) NOT NULL,
                               totalassets BIGINT,
                               totalcurrentassets BIGINT,
                               cashandcashequivalentsatcarryingvalue BIGINT,
                               cashandshortterminvestments BIGINT,
                               inventory BIGINT,
                               currentnetreceivables BIGINT,
                               totalnoncurrentassets BIGINT,
                               propertyplantequipment BIGINT,
                               accumulateddepreciationamortizationppe BIGINT,
                               intangibleassets BIGINT,
                               intangibleassetsexcludinggoodwill BIGINT,
                               goodwill BIGINT,
                               investments BIGINT,
                               longterminvestments BIGINT,
                               shortterminvestments BIGINT,
                               othercurrentassets BIGINT,
                               othernoncurrentassets BIGINT,
                               totalliabilities BIGINT,
                               totalcurrentliabilities BIGINT,
                               currentaccountspayable BIGINT,
                               deferredrevenue BIGINT,
                               currentdebt BIGINT,
                               shorttermdebt BIGINT,
                               totalnoncurrentliabilities BIGINT,
                               capitalleaseobligations BIGINT,
                               longtermdebt BIGINT,
                               currentlongtermdebt BIGINT,
                               longtermdebtnoncurrent BIGINT,
                               shortlongtermdettotal BIGINT,
                               othercurrentliabilities BIGINT,
                               othernoncurrentliabilities BIGINT,
                               totalshareholderequity BIGINT,
                               treasurystock BIGINT,
                               retainedearnings BIGINT,
                               commonstock BIGINT,
                               commonstocksharesoutstanding BIGINT
);

CREATE TABLE IF NOT EXISTS cash_flow (
                           id VARCHAR(30) NOT NULL PRIMARY KEY,
                           ticker VARCHAR(10) REFERENCES company_overview(ticker) ON DELETE CASCADE NOT NULL,
                           fiscaldateending DATE NOT NULL,
                           type VARCHAR(10) NOT NULL,
                           reportedcurrency VARCHAR(10) NOT NULL,
                           operatingcashflow BIGINT,
                           paymentsforoperatingactivities BIGINT,
                           proceedsfromoperatingactivities BIGINT,
                           changeinoperatingliabilities BIGINT,
                           changeinoperatingassets BIGINT,
                           depreciationdepletionandamortization BIGINT,
                           capitalexpenditures BIGINT,
                           changeinreceivables BIGINT,
                           changeininventory BIGINT,
                           profitloss BIGINT,
                           cashflowfrominvestment BIGINT,
                           cashflowfromfinancing BIGINT,
                           proceedsfromrepaymentsofshorttermdet BIGINT,
                           paymentsforrepurchaseofcommonstock BIGINT,
                           paymentsforrepurchaseofequity BIGINT,
                           paymentsforrepurchaseofpreferredstock BIGINT,
                           dividendpayout BIGINT,
                           dividendpayoutcommonstock BIGINT,
                           dividendpayoutpreferredstock BIGINT,
                           proceedsfromissuanceofcommonstock BIGINT,
                           proceedsfromissuanceoflongtermdetandcapitalsecuritiesnet BIGINT,
                           proceedsfromissuanceofpreferredstock BIGINT,
                           proceedsfromrepurchaseofequity BIGINT,
                           proceedsfromsaleoftreasurystock BIGINT,
                           changeincashandcashequivalents BIGINT,
                           changeinexchangerate BIGINT,
                           netincome BIGINT
);

CREATE TABLE IF NOT EXISTS candles_history (
                                      id VARCHAR PRIMARY KEY,
                                      start_date_time TIMESTAMP NOT NULL,
                                      ticker VARCHAR(10) NOT NULL,
                                      interval INTEGER NOT NULL,
                                      data_source VARCHAR (20) NOT NULL,
                                      open_price float4,
                                      max_price float4,
                                      min_price float4,
                                      close_price float4,
                                      volume BIGINT
);