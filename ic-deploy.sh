 

  # dfx deploy     --network ic  cap  
  # dfx deploy --network ic nft --argument "(principal \"3g3l5-7forh-pp6xk-fd4us-bowx7-tz3sn-scucg-2nhdn-dc6iy-ga6sp-2qe\", \"tkn\", \"token\", principal \"45elo-3aaaa-aaaak-aafwa-cai\")"
 
 
  #  dfx canister  --network ic  call aaaaa-aa update_settings "(
  #   record { 
  #     canister_id=principal \"$(dfx canister --network ic  id cap)\";
  #     settings=record {
  #       controllers=opt vec{
  #         principal\"$(dfx identity --network ic get-principal)\";
  #         principal \"$(dfx canister --network ic id cap)\";
  #         principal\"$(dfx identity --network ic get-principal)\";
  #         principal \"$(dfx canister --network ic id nft)\";
  #         principal \"$(dfx identity --network ic get-wallet)\";
  #          principal \"renrk-eyaaa-aaaaa-aaada-cai\";
  #       }
  #     }
  #   }
  # )"

dfx canister  --network ic call nft  query_nft_by_name "(\"lijiaxu\")"

# dfx canister   --network ic  call nft  bind "( \"9505\", principal \"2e2zr-ylqej-iruuu-ugkd3-bmv6e-cvceo-davpx-6lbbm-vyfh4-ply3e-qae\")"
# echo poapnft

 

  # dfx canister    --network ic    call nft mintDip721 "(
  #   principal \"6cjya-hnrph-ohcs7-pt7m4-dxzwj-zax3s-b5f2w-n472d-mulap-7jaeg-2ae\",
  #   vec {record {
  #     data=vec {}; 
  #     key_val_data=vec {
  #       record {
  #         key=\"alias\";
  #         val=variant {TextContent=\"lijiaxu3\"}}; 
  #         record {key=\"binding\"; val=variant {TextContent=\"false\"}}};
  #         purpose=variant { Rendered }
  #       }
  #     }
  #   )"
