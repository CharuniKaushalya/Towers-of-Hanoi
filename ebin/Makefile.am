## Process this file with automake to produce Makefile.in
appdir = $(beamdir)
app_DATA = digital_ad.app
EXTRA_DIST = digital_ad.app

beam_DATA = ad_ad_group_svr.beam ad_admin_svr.beam ad_anal.beam ad_api_svr.beam ad_app.beam ad_budget_svr.beam \ 
						 ad_camp.beam ad_cfg.beam ad_counter_svr.beam ad_db.beam ad_http_svr.beam ad_log.beam \ 
						 ad_mysql_db.beam ad_rx_sms_svr.beam ad_schedule_svr.beam ad_select_svr.beam ad_send_camp.beam \ 
						 ad_sqlite_db.beam ad_sup.beam ad_util.beam	ad_push_select_svr.beam		
%.beam:$(top_srcdir)/src/%.erl
	$(ERLC) $(ERLCFLAGS) -I $(top_builddir)/include $<

CLEANFILES = $(beam_DATA)

