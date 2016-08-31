%% -*- coding: utf-8 -*-
%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.25.2

-ifndef(riak_dt_pb).
-define(riak_dt_pb, true).

-define(riak_dt_pb_gpb_version, "3.25.2").

-ifndef('MAPFIELD_PB_H').
-define('MAPFIELD_PB_H', true).
-record(mapfield,
        {name,                          % = 1, bytes
         type                           % = 2, {enum,'MapField.MapFieldType'}
        }).
-endif.

-ifndef('MAPENTRY_PB_H').
-define('MAPENTRY_PB_H', true).
-record(mapentry,
        {field,                         % = 1, {msg,mapfield}
         counter_value,                 % = 2, sint64 (optional)
         set_value = [],                % = 3, [bytes]
         register_value,                % = 4, bytes (optional)
         flag_value,                    % = 5, bool (optional)
         map_value = []                 % = 6, [{msg,mapentry}]
        }).
-endif.

-ifndef('DTFETCHREQ_PB_H').
-define('DTFETCHREQ_PB_H', true).
-record(dtfetchreq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes
         type,                          % = 3, bytes
         r,                             % = 4, uint32 (optional)
         pr,                            % = 5, uint32 (optional)
         basic_quorum,                  % = 6, bool (optional)
         notfound_ok,                   % = 7, bool (optional)
         timeout,                       % = 8, uint32 (optional)
         sloppy_quorum,                 % = 9, bool (optional)
         n_val,                         % = 10, uint32 (optional)
         include_context = true         % = 11, bool (optional)
        }).
-endif.

-ifndef('DTVALUE_PB_H').
-define('DTVALUE_PB_H', true).
-record(dtvalue,
        {counter_value,                 % = 1, sint64 (optional)
         set_value = [],                % = 2, [bytes]
         map_value = []                 % = 3, [{msg,mapentry}]
        }).
-endif.

-ifndef('DTFETCHRESP_PB_H').
-define('DTFETCHRESP_PB_H', true).
-record(dtfetchresp,
        {context,                       % = 1, bytes (optional)
         type,                          % = 2, {enum,'DtFetchResp.DataType'}
         value                          % = 3, {msg,dtvalue} (optional)
        }).
-endif.

-ifndef('COUNTEROP_PB_H').
-define('COUNTEROP_PB_H', true).
-record(counterop,
        {increment                      % = 1, sint64 (optional)
        }).
-endif.

-ifndef('SETOP_PB_H').
-define('SETOP_PB_H', true).
-record(setop,
        {adds = [],                     % = 1, [bytes]
         removes = []                   % = 2, [bytes]
        }).
-endif.

-ifndef('MAPUPDATE_PB_H').
-define('MAPUPDATE_PB_H', true).
-record(mapupdate,
        {field,                         % = 1, {msg,mapfield}
         counter_op,                    % = 2, {msg,counterop} (optional)
         set_op,                        % = 3, {msg,setop} (optional)
         register_op,                   % = 4, bytes (optional)
         flag_op,                       % = 5, {enum,'MapUpdate.FlagOp'} (optional)
         map_op                         % = 6, {msg,mapop} (optional)
        }).
-endif.

-ifndef('MAPOP_PB_H').
-define('MAPOP_PB_H', true).
-record(mapop,
        {removes = [],                  % = 1, [{msg,mapfield}]
         updates = []                   % = 2, [{msg,mapupdate}]
        }).
-endif.

-ifndef('DTOP_PB_H').
-define('DTOP_PB_H', true).
-record(dtop,
        {counter_op,                    % = 1, {msg,counterop} (optional)
         set_op,                        % = 2, {msg,setop} (optional)
         map_op                         % = 3, {msg,mapop} (optional)
        }).
-endif.

-ifndef('DTUPDATEREQ_PB_H').
-define('DTUPDATEREQ_PB_H', true).
-record(dtupdatereq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes (optional)
         type,                          % = 3, bytes
         context,                       % = 4, bytes (optional)
         op,                            % = 5, {msg,dtop}
         w,                             % = 6, uint32 (optional)
         dw,                            % = 7, uint32 (optional)
         pw,                            % = 8, uint32 (optional)
         return_body = false,           % = 9, bool (optional)
         timeout,                       % = 10, uint32 (optional)
         sloppy_quorum,                 % = 11, bool (optional)
         n_val,                         % = 12, uint32 (optional)
         include_context = true         % = 13, bool (optional)
        }).
-endif.

-ifndef('DTUPDATERESP_PB_H').
-define('DTUPDATERESP_PB_H', true).
-record(dtupdateresp,
        {key,                           % = 1, bytes (optional)
         context,                       % = 2, bytes (optional)
         counter_value,                 % = 3, sint64 (optional)
         set_value = [],                % = 4, [bytes]
         map_value = []                 % = 5, [{msg,mapentry}]
        }).
-endif.

-endif.