*---------------------------------------------------------------------*
*    view related data declarations
*---------------------------------------------------------------------*
*...processing: ZSM30_EVENT.....................................*
DATA:  BEGIN OF STATUS_ZSM30_EVENT                   .   "state vector
         INCLUDE STRUCTURE VIMSTATUS.
DATA:  END OF STATUS_ZSM30_EVENT                   .
CONTROLS: TCTRL_ZSM30_EVENT
            TYPE TABLEVIEW USING SCREEN '0001'.
*.........table declarations:.................................*
TABLES: *ZSM30_EVENT                   .
TABLES: ZSM30_EVENT                    .

* general table data declarations..............
  INCLUDE LSVIMTDT                                .
