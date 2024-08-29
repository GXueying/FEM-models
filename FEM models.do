*Transitional models used 
use "MEC.dta", clear

probit diabe male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle edulowmidhigh l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev l2hibpe if l2diabe==0

probit hibpe male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev l2diabe if l2hibpe==0

probit stroke male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduMidHighEdu l2bmi230_275_cat l2bmi275u_cat l2smoken l2smokev l2hibpe if l2stroke==0

probit hearte male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev l2diabe l2hibpe l2highchole if l2hearte==0

regress logbmi male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev  l2diabe l2hibpe l2highchole l2stroke

probit died male malay indian eth_other  l2age65l l2age6575 l2age75p  mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2bmi185l_cat  l2bmi230u_cat  l2income2000_3999 l2income4000_5999 l2income6000u l2smoken  l2diabe l2cancre l2stroke if l2died==0

oprobit income4lv male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle edulowmidhigh l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev l2working 

oprobit smkstat male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev

probit working male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2logbmi l2smoken l2smokev l2hearte 

probit highchole male malay indian eth_other l2age logdeltaage mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu l2logbmi l2income2000_3999 l2income4000_5999 l2income6000u l2smoken l2smokev l2diabe l2hibpe if l2highchole==0

use "SLAS.dta", clear

probit anyadl male malay indian l2age75l l2age7585 l2age85p  mdivorce_sep mwidowed msingle eduMidHighEdu l2bmi185l l2bmi185_230 l2bmi230_275 l2bmi275u smokev smoken l2diabe l2stroke l2hearte

probit anyiadl male malay indian l2age75l l2age7585 l2age85p  mdivorce_sep mwidowed msingle eduLowEdu eduMidHighEdu smokev l2stroke


use "WiSE.dta", clear

probit totalhccost female age malay indian eth_other msingle mdiv_sep_wid eduLowEdu eduMidEdu eduHighEdu diabe hearte stroke hibpe

glm totalhccost female age malay indian eth_other msingle mdiv_sep_wid eduLowEdu eduMidEdu eduHighEdu diabe hearte stroke hibpe dementia_xsect depression_xsect if totalhccost!=0, family(gamma) link(log)
eststo margin: margins, dydx(*) asobserved post 

probit primaryhccost female age75p_cat malay indian msingle mdiv_sep_wid eduHighEdu diabe hibpe
glm primaryhccost female age75p_cat malay indian msingle mdiv_sep_wid eduHighEdu diabe hibpe if primaryhccost!=0 & eth_other!=1, family(gamma) link(log)
eststo margin: margins, dydx(*) asobserved post 

