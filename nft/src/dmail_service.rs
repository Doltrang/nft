use std::collections::HashMap;

use derive_new::new;
use ic_kit::{ic, macros::*, Principal, candid::CandidType};
use serde::Deserialize;
type Alias = String;

use crate::{
    types::{into_token_index, ApiError, TokenIdentifier, TokenIndex, TokenMetadata},
    utils::{is_controller, ledger},
};

#[update]
async fn bind(token_identifier: TokenIdentifier, pid: Principal) -> Result<bool, ApiError> {
    let caller = ic::caller();
    if !is_controller(&caller).await {
        return Err(ApiError::Unauthorized);
    }
    let token_index: TokenIndex = into_token_index(&token_identifier);
    Ok(ledger().bind_alias_for_using_dmail(token_index, pid))
}

#[update]
async fn query_nft_by_name(alias: Alias) -> Result<Option<String>, ApiError> {
    let caller = ic::caller();
    if !is_controller(&caller).await {
        return Err(ApiError::Unauthorized);
    }
    match ledger().query_nft_by_name(alias) {
        Some(principal) => Ok(Some(principal.to_text())),
        None => Ok(None),
    }
}

#[update]
fn query_bind_nft_by_pid(pid: Principal) -> Option<TokenMetadata> {
    ledger().query_bind_nft_by_pid(pid)
}

#[update]
fn query_bind_alias_by_pid(pid: Principal) -> Option<Alias> {
    ledger().query_bind_alias_by_pid(pid)
}
