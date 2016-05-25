%% -*- coding: utf-8 -*-
%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.24.3

-ifndef(riak_pb).
-define(riak_pb, true).

-define(riak_pb_gpb_version, "3.24.3").

-ifndef('RPBMODFUN_PB_H').
-define('RPBMODFUN_PB_H', true).
-record(rpbmodfun,
        {module,                        % = 1, bytes
         function                       % = 2, bytes
        }).
-endif.

-ifndef('RPBCOMMITHOOK_PB_H').
-define('RPBCOMMITHOOK_PB_H', true).
-record(rpbcommithook,
        {modfun,                        % = 1, {msg,rpbmodfun} (optional)
         name                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBBUCKETPROPS_PB_H').
-define('RPBBUCKETPROPS_PB_H', true).
-record(rpbbucketprops,
        {n_val,                         % = 1, uint32 (optional)
         allow_mult,                    % = 2, bool (optional)
         last_write_wins,               % = 3, bool (optional)
         precommit = [],                % = 4, [{msg,rpbcommithook}]
         has_precommit = false,         % = 5, bool (optional)
         postcommit = [],               % = 6, [{msg,rpbcommithook}]
         has_postcommit = false,        % = 7, bool (optional)
         chash_keyfun,                  % = 8, {msg,rpbmodfun} (optional)
         linkfun,                       % = 9, {msg,rpbmodfun} (optional)
         old_vclock,                    % = 10, uint32 (optional)
         young_vclock,                  % = 11, uint32 (optional)
         big_vclock,                    % = 12, uint32 (optional)
         small_vclock,                  % = 13, uint32 (optional)
         pr,                            % = 14, uint32 (optional)
         r,                             % = 15, uint32 (optional)
         w,                             % = 16, uint32 (optional)
         pw,                            % = 17, uint32 (optional)
         dw,                            % = 18, uint32 (optional)
         rw,                            % = 19, uint32 (optional)
         basic_quorum,                  % = 20, bool (optional)
         notfound_ok,                   % = 21, bool (optional)
         backend,                       % = 22, bytes (optional)
         search,                        % = 23, bool (optional)
         repl,                          % = 24, {enum,'RpbBucketProps.RpbReplMode'} (optional)
         search_index,                  % = 25, bytes (optional)
         datatype,                      % = 26, bytes (optional)
         consistent,                    % = 27, bool (optional)
         write_once                     % = 28, bool (optional)
        }).
-endif.

-ifndef('RPBPAIR_PB_H').
-define('RPBPAIR_PB_H', true).
-record(rpbpair,
        {key,                           % = 1, bytes
         value                          % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBRESETBUCKETREQ_PB_H').
-define('RPBRESETBUCKETREQ_PB_H', true).
-record(rpbresetbucketreq,
        {bucket,                        % = 1, bytes
         type                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBSETBUCKETTYPEREQ_PB_H').
-define('RPBSETBUCKETTYPEREQ_PB_H', true).
-record(rpbsetbuckettypereq,
        {type,                          % = 1, bytes
         props                          % = 2, {msg,rpbbucketprops}
        }).
-endif.

-ifndef('RPBGETBUCKETTYPEREQ_PB_H').
-define('RPBGETBUCKETTYPEREQ_PB_H', true).
-record(rpbgetbuckettypereq,
        {type                           % = 1, bytes
        }).
-endif.

-ifndef('RPBGETSERVERINFORESP_PB_H').
-define('RPBGETSERVERINFORESP_PB_H', true).
-record(rpbgetserverinforesp,
        {node,                          % = 1, bytes (optional)
         server_version                 % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBSETBUCKETREQ_PB_H').
-define('RPBSETBUCKETREQ_PB_H', true).
-record(rpbsetbucketreq,
        {bucket,                        % = 1, bytes
         props,                         % = 2, {msg,rpbbucketprops}
         type                           % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBGETBUCKETREQ_PB_H').
-define('RPBGETBUCKETREQ_PB_H', true).
-record(rpbgetbucketreq,
        {bucket,                        % = 1, bytes
         type                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBAUTHREQ_PB_H').
-define('RPBAUTHREQ_PB_H', true).
-record(rpbauthreq,
        {user,                          % = 1, bytes
         password                       % = 2, bytes
        }).
-endif.

-ifndef('RPBGETBUCKETRESP_PB_H').
-define('RPBGETBUCKETRESP_PB_H', true).
-record(rpbgetbucketresp,
        {props                          % = 1, {msg,rpbbucketprops}
        }).
-endif.

-ifndef('RPBERRORRESP_PB_H').
-define('RPBERRORRESP_PB_H', true).
-record(rpberrorresp,
        {errmsg,                        % = 1, bytes
         errcode                        % = 2, uint32
        }).
-endif.

-endif.
