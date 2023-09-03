fx_version "adamant"
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game "rdr3"
lua54 "yes"
this_is_a_map "yes"

files {
    'stream/[props_tunnel]/tunel_last_ytyp.ytyp'
  }
  
  data_file 'DLC_ITYP_REQUEST' 'stream/[props_tunnel]/tunel_last_ytyp.ytyp'

  escrow_ignore {
    "stream/[props_tunnel]/tunel_last.ydr",
  }  
  
dependency '/assetpacks'