 
###
 # @Author: xust
 # @Date: 2022-02-10 11:59:06
 # @LastEditTime: 2022-04-01 13:09:26
 # @LastEditors: xust
 # @Description: 
 # @FilePath: /DIP721-2/test-deploy.sh
 # custom
### 
# principal=$(dfx identity get-principal)
# cap_principal=$(cat .dfx/local/canister_ids.json | jq ".cap.local" -r)

# echo "principal: $principal"
# echo "cap_principal: $cap_principal"

#  dfx deploy cap  
 
  
# dfx deploy nft  --argument "(principal \"$(dfx identity get-principal)\", \"tkn\", \"token\", principal \"rrkah-fqaaa-aaaaa-aaaaq-cai\")"

# dfx canister  call nft  query_nft_by_name "(\"lijiaxu\")"


 

# # echo moon
  dfx canister   --network ic  call nft mintDip721 "(
    principal \"3g3l5-7forh-pp6xk-fd4us-bowx7-tz3sn-scucg-2nhdn-dc6iy-ga6sp-2qe\",
    vec {record {
      data=vec {}; 
      key_val_data=vec {
        record {
          key=\"alias\";
          val=variant {TextContent=\"dmail\"}}; 
          record {key=\"binding\"; val=variant {TextContent=\"true\"}}};
          purpose=variant { Rendered }
        }
      }
    )"

#  dfx canister  call nft  test_dip721 "()"
#  dfx canister  call nft  query_nft_by_name "(\"dmail\")"


  # dfx canister     call aaaaa-aa update_settings "(
  #   record { 
  #     canister_id=principal \"$( dfx canister  id nft)\";
  #     settings=record {
  #       controllers=opt vec {
  #         principal\"$(dfx identity get-principal)\";
  #         principal\"$(dfx canister  id nft)\";
  #         principal\"renrk-eyaaa-aaaaa-aaada-cai\";
  #         principal\"3g3l5-7forh-pp6xk-fd4us-bowx7-tz3sn-scucg-2nhdn-dc6iy-ga6sp-2qe\";
  #       }
  #     }
  #   }
  # )"