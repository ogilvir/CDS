view: dtl_pega_mkt_ih_dim_channel {
  sql_table_name: CDS_DTL.DTL_PEGA_MKT_IH_DIM_CHANNEL ;;

  dimension: devicetype {
    type: string
    sql: ${TABLE}.DEVICETYPE ;;
  }

  dimension_group: interface_dttm {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INTERFACE_DTTM ;;
  }

  dimension_group: process_dttm {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PROCESS_DTTM ;;
  }

  dimension_group: pxcreatedatetime {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PXCREATEDATETIME ;;
  }

  dimension: pychannel {
    type: string
    sql: ${TABLE}.PYCHANNEL ;;
  }

  dimension: pydirection {
    type: string
    sql: ${TABLE}.PYDIRECTION ;;
  }

  dimension: pytreatment {
    type: string
    sql: ${TABLE}.PYTREATMENT ;;
  }

  dimension: pzid {
    type: string
    sql: ${TABLE}.PZID ;;
  }

  dimension: uri {
    type: string
    sql: ${TABLE}.URI ;;
  }

  dimension: useragent {
    type: string
    sql: ${TABLE}.USERAGENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
