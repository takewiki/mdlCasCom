app_id =  'cpdms'
module_id ='mdlCasCom'
conn_cfg ='conn_cfg.R'

# token='34A4B98D-AD90-4691-BDCC-63A86C46A22F'
dms_token='34A4B98D-AD90-4691-BDCC-63A86C46A22F'
tstk::import(app_id)




#设置链接---
conn <- conn_rds('jlrds')

#报表相关数据

jala_week_amtType <- jlrdspkg::week_getRptType(conn = conn)

jala_month_amtType <- jlrdspkg::month_getRptType(conn = conn)

current_year <- function() {
  return(as.numeric(tsdo::left(as.character(Sys.Date()),4)))
  
}

