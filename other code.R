
## Tables and Curves using log-log

 
fit2<- survival::survfit(survival::Surv(time,status)~1,conf.type = "log-log") 
summary(fit2)
p <- survminer::ggsurvplot(fit = fit2,data = df)
p$plot

 

## Tables and Curves using plain


# Tables and Curves using log
fit3 <- survival::survfit(survival::Surv(time,status)~1,conf.type = "plain") 
summary(fit3)
p <- survminer::ggsurvplot(fit = fit3,data = df)
p$plot


## The most prefered is log-log.

 
## Comparison by sex
 

fit4 <- survival::survfit(survival::Surv(time,status)~sex,conf.type = "log-log") 
p <- survminer::ggsurvplot(fit = fit4,data = df)
p$plot

survdiff(Surv(time,status)~ sex, data = df)  
 