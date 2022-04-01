# 3g3l5-7forh-pp6xk-fd4us-bowx7-tz3sn-scucg-2nhdn-dc6iy-ga6sp-2qe dmail => lijiaxu(A) dmail lijiaxu1 lijiaxu3
# 6cjya-hnrph-ohcs7-pt7m4-dxzwj-zax3s-b5f2w-n472d-mulap-7jaeg-2ae pro => dmail3(A)  dmail2 dmail1
# dfx deploy cap
# dfx deploy nft --argument "(principal \"$(dfx identity get-principal)\", \"tkn\", \"token\", principal \"rrkah-fqaaa-aaaaa-aaaaq-cai\")"
# dfx canister  call nft  query_nft_by_name "(\"dmail3\")"
# dfx canister    call nft mintDip721 "(
# principal \"6cjya-hnrph-ohcs7-pt7m4-dxzwj-zax3s-b5f2w-n472d-mulap-7jaeg-2ae\",
# vec {record {
#     data=vec {}; 
#     key_val_data=vec {
#     record {
#         key=\"alias\";
#         val=variant {TextContent=\"dmail3\"}}; 
#         record {key=\"binding\"; val=variant {TextContent=\"true\"}}};
#         purpose=variant { Rendered }
#     }
#     }
# )"
dfx canister  call nft  query_nft_by_name "(\"dmail3\")"
dfx canister  call nft  query_bind_alias_by_pid "(principal \"6cjya-hnrph-ohcs7-pt7m4-dxzwj-zax3s-b5f2w-n472d-mulap-7jaeg-2ae\")"
dfx canister  call nft  query_bind_alias_by_pid "(principal \"3g3l5-7forh-pp6xk-fd4us-bowx7-tz3sn-scucg-2nhdn-dc6iy-ga6sp-2qe\")"


