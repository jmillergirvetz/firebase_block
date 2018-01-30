view: transactions {
  sql_table_name: shopify.transactions ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: _id {
    type: number
    sql: ${TABLE}._id ;;
  }

  dimension_group: _sdc_batched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: authorization {
    type: string
    sql: ${TABLE}.authorization ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: gateway {
    type: string
    sql: ${TABLE}.gateway ;;
  }

  dimension: kind {
    type: string
    sql: ${TABLE}.kind ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: payment_details {
    hidden: yes
    sql: ${TABLE}.payment_details ;;
  }

  dimension: receipt {
    hidden: yes
    sql: ${TABLE}.receipt ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: test {
    type: yesno
    sql: ${TABLE}.test ;;
  }

  measure: count {
    type: count
    drill_fields: [id, source_name, orders.name, orders.source_name]
  }
}

view: transactions__payment_details {
  dimension: avs_result_code {
    type: string
    sql: ${TABLE}.avs_result_code ;;
  }

  dimension: credit_card_bin {
    type: string
    sql: ${TABLE}.credit_card_bin ;;
  }

  dimension: credit_card_company {
    type: string
    sql: ${TABLE}.credit_card_company ;;
  }

  dimension: credit_card_number {
    type: string
    sql: ${TABLE}.credit_card_number ;;
  }

  dimension: cvv_result_code {
    type: string
    sql: ${TABLE}.cvv_result_code ;;
  }
}

view: transactions__receipt__responsemetadata {
  dimension: requestid {
    type: string
    sql: ${TABLE}.requestid ;;
  }
}

view: transactions__receipt {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: ack {
    type: string
    sql: ${TABLE}.ack ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_refunded {
    type: number
    sql: ${TABLE}.amount_refunded ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: application_fee {
    type: string
    sql: ${TABLE}.application_fee ;;
  }

  dimension: authorizeresult {
    hidden: yes
    sql: ${TABLE}.authorizeresult ;;
  }

  dimension: balance_transaction {
    hidden: yes
    sql: ${TABLE}.balance_transaction ;;
  }

  dimension: build {
    type: string
    sql: ${TABLE}.build ;;
  }

  dimension: captured {
    type: yesno
    sql: ${TABLE}.captured ;;
  }

  dimension: correlation_id {
    type: string
    sql: ${TABLE}.correlation_id ;;
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: error {
    hidden: yes
    sql: ${TABLE}.error ;;
  }

  dimension: error_code {
    type: string
    sql: ${TABLE}.error_code ;;
  }

  dimension: fee_amount {
    type: number
    sql: ${TABLE}.fee_amount ;;
  }

  dimension: fee_amount_currency_id {
    type: string
    sql: ${TABLE}.fee_amount_currency_id ;;
  }

  dimension: gross_amount {
    type: number
    sql: ${TABLE}.gross_amount ;;
  }

  dimension: gross_amount_currency_id {
    type: string
    sql: ${TABLE}.gross_amount_currency_id ;;
  }

  dimension: livemode {
    type: yesno
    sql: ${TABLE}.livemode ;;
  }

  dimension: metadata {
    hidden: yes
    sql: ${TABLE}.metadata ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: outcome {
    hidden: yes
    sql: ${TABLE}.outcome ;;
  }

  dimension: paid {
    type: yesno
    sql: ${TABLE}.paid ;;
  }

  dimension: pay_pal_account_id {
    type: string
    sql: ${TABLE}.pay_pal_account_id ;;
  }

  dimension_group: payment {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.payment_date ;;
  }

  dimension: payment_status {
    type: string
    sql: ${TABLE}.payment_status ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}.payment_type ;;
  }

  dimension: paymentinfo {
    hidden: yes
    sql: ${TABLE}.paymentinfo ;;
  }

  dimension: pending_reason {
    type: string
    sql: ${TABLE}.pending_reason ;;
  }

  dimension: protection_eligibility {
    type: string
    sql: ${TABLE}.protection_eligibility ;;
  }

  dimension: protection_eligibility_type {
    type: string
    sql: ${TABLE}.protection_eligibility_type ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.reason_code ;;
  }

  dimension: refunded {
    type: yesno
    sql: ${TABLE}.refunded ;;
  }

  dimension: refunds {
    hidden: yes
    sql: ${TABLE}.refunds ;;
  }

  dimension: responsemetadata {
    hidden: yes
    sql: ${TABLE}.responsemetadata ;;
  }

  dimension: secure_merchant_account_id {
    type: string
    sql: ${TABLE}.secure_merchant_account_id ;;
  }

  dimension: source {
    hidden: yes
    sql: ${TABLE}.source ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: success_page_redirect_requested {
    type: string
    sql: ${TABLE}.success_page_redirect_requested ;;
  }

  dimension: successpageredirectrequested {
    type: string
    sql: ${TABLE}.successpageredirectrequested ;;
  }

  dimension: tax_amount {
    type: number
    sql: ${TABLE}.tax_amount ;;
  }

  dimension: tax_amount_currency_id {
    type: string
    sql: ${TABLE}.tax_amount_currency_id ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transaction_id ;;
  }

  dimension: transaction_type {
    type: string
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

view: transactions__receipt__metadata {
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: order_transaction_id {
    type: string
    sql: ${TABLE}.order_transaction_id ;;
  }

  dimension: payments_charge_id {
    type: string
    sql: ${TABLE}.payments_charge_id ;;
  }

  dimension: payments_transaction_fee_id {
    type: string
    sql: ${TABLE}.payments_transaction_fee_id ;;
  }

  dimension: transaction_fee_total_amount {
    type: string
    sql: ${TABLE}.transaction_fee_total_amount ;;
  }
}

view: transactions__receipt__source {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address_city {
    type: string
    sql: ${TABLE}.address_city ;;
  }

  dimension: address_country {
    type: string
    sql: ${TABLE}.address_country ;;
  }

  dimension: address_line1 {
    type: string
    sql: ${TABLE}.address_line1 ;;
  }

  dimension: address_line1_check {
    type: string
    sql: ${TABLE}.address_line1_check ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}.address_line2 ;;
  }

  dimension: address_state {
    type: string
    sql: ${TABLE}.address_state ;;
  }

  dimension: address_zip {
    type: string
    sql: ${TABLE}.address_zip ;;
  }

  dimension: address_zip_check {
    type: string
    sql: ${TABLE}.address_zip_check ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: cvc_check {
    type: string
    sql: ${TABLE}.cvc_check ;;
  }

  dimension: exp_month {
    type: number
    sql: ${TABLE}.exp_month ;;
  }

  dimension: exp_year {
    type: number
    sql: ${TABLE}.exp_year ;;
  }

  dimension: fingerprint {
    type: string
    sql: ${TABLE}.fingerprint ;;
  }

  dimension: funding {
    type: string
    sql: ${TABLE}.funding ;;
  }

  dimension: last4 {
    type: string
    sql: ${TABLE}.last4 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }
}

view: transactions__receipt__paymentinfo {
  dimension: feeamount {
    type: number
    sql: ${TABLE}.feeamount ;;
  }

  dimension: grossamount {
    type: number
    sql: ${TABLE}.grossamount ;;
  }

  dimension_group: paymentdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.paymentdate ;;
  }

  dimension: paymentstatus {
    type: string
    sql: ${TABLE}.paymentstatus ;;
  }

  dimension: paymenttype {
    type: string
    sql: ${TABLE}.paymenttype ;;
  }

  dimension: pendingreason {
    type: string
    sql: ${TABLE}.pendingreason ;;
  }

  dimension: protectioneligibility {
    type: string
    sql: ${TABLE}.protectioneligibility ;;
  }

  dimension: protectioneligibilitytype {
    type: string
    sql: ${TABLE}.protectioneligibilitytype ;;
  }

  dimension: reasoncode {
    type: string
    sql: ${TABLE}.reasoncode ;;
  }

  dimension: sellerdetails {
    hidden: yes
    sql: ${TABLE}.sellerdetails ;;
  }

  dimension: taxamount {
    type: number
    sql: ${TABLE}.taxamount ;;
  }

  dimension: transactionid {
    type: string
    sql: ${TABLE}.transactionid ;;
  }

  dimension: transactiontype {
    type: string
    sql: ${TABLE}.transactiontype ;;
  }
}

view: transactions__receipt__paymentinfo__sellerdetails {
  dimension: paypalaccountid {
    type: string
    sql: ${TABLE}.paypalaccountid ;;
  }

  dimension: securemerchantaccountid {
    type: string
    sql: ${TABLE}.securemerchantaccountid ;;
  }
}

view: transactions__receipt__authorizeresult__authorizationdetails {
  dimension: amazonauthorizationid {
    type: string
    sql: ${TABLE}.amazonauthorizationid ;;
  }

  dimension: authorizationamount {
    hidden: yes
    sql: ${TABLE}.authorizationamount ;;
  }

  dimension: authorizationfee {
    hidden: yes
    sql: ${TABLE}.authorizationfee ;;
  }

  dimension: authorizationreferenceid {
    type: string
    sql: ${TABLE}.authorizationreferenceid ;;
  }

  dimension: authorizationstatus {
    hidden: yes
    sql: ${TABLE}.authorizationstatus ;;
  }

  dimension: capturedamount {
    hidden: yes
    sql: ${TABLE}.capturedamount ;;
  }

  dimension: capturenow {
    type: string
    sql: ${TABLE}.capturenow ;;
  }

  dimension: creationtimestamp {
    type: string
    sql: ${TABLE}.creationtimestamp ;;
  }

  dimension: expirationtimestamp {
    type: string
    sql: ${TABLE}.expirationtimestamp ;;
  }

  dimension: idlist {
    hidden: yes
    sql: ${TABLE}.idlist ;;
  }

  dimension: softdecline {
    type: string
    sql: ${TABLE}.softdecline ;;
  }

  dimension: softdescriptor {
    type: string
    sql: ${TABLE}.softdescriptor ;;
  }
}

view: transactions__receipt__authorizeresult__authorizationdetails__capturedamount {
  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: currencycode {
    type: string
    sql: ${TABLE}.currencycode ;;
  }
}

view: transactions__receipt__authorizeresult__authorizationdetails__idlist {
  dimension: member {
    type: string
    sql: ${TABLE}.member ;;
  }
}

view: transactions__receipt__authorizeresult__authorizationdetails__authorizationstatus {
  dimension: lastupdatetimestamp {
    type: string
    sql: ${TABLE}.lastupdatetimestamp ;;
  }

  dimension: reasoncode {
    type: string
    sql: ${TABLE}.reasoncode ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
}

view: transactions__receipt__authorizeresult__authorizationdetails__authorizationfee {
  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: currencycode {
    type: string
    sql: ${TABLE}.currencycode ;;
  }
}

view: transactions__receipt__authorizeresult__authorizationdetails__authorizationamount {
  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: currencycode {
    type: string
    sql: ${TABLE}.currencycode ;;
  }
}

view: transactions__receipt__balance_transaction {
  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: available_on {
    type: number
    sql: ${TABLE}.available_on ;;
  }

  dimension: created {
    type: number
    sql: ${TABLE}.created ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: fee_details {
    hidden: yes
    sql: ${TABLE}.fee_details ;;
  }

  dimension: net {
    type: number
    sql: ${TABLE}.net ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sourced_transfers {
    hidden: yes
    sql: ${TABLE}.sourced_transfers ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: transactions__receipt__balance_transaction__sourced_transfers {
  dimension: has_more {
    type: yesno
    sql: ${TABLE}.has_more ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.total_count ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: transactions__receipt__balance_transaction__fee_details {
  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: application {
    type: string
    sql: ${TABLE}.application ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: transactions__receipt__error {
  dimension: charge {
    type: string
    sql: ${TABLE}.charge ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}.message ;;
  }

  dimension: param {
    type: string
    sql: ${TABLE}.param ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: transactions__receipt__refunds {
  dimension: has_more {
    type: yesno
    sql: ${TABLE}.has_more ;;
  }

  dimension: object {
    type: string
    sql: ${TABLE}.object ;;
  }

  dimension: total_count {
    type: number
    sql: ${TABLE}.total_count ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }
}

view: transactions__receipt__outcome {
  dimension: network_status {
    type: string
    sql: ${TABLE}.network_status ;;
  }

  dimension: seller_message {
    type: string
    sql: ${TABLE}.seller_message ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

view: transactions__receipt__authorizeresult {
  dimension: authorizationdetails {
    hidden: yes
    sql: ${TABLE}.authorizationdetails ;;
  }
}
