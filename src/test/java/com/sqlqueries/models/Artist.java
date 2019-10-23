package com.sqlqueries.models;

import java.sql.Timestamp;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Artist {
  private Long artistId;
  private Long placeOfOriginId;
  private String artistTypeCode;
  private String artistName;
  private String artistDescription;
  private Timestamp createdDate;
  private Timestamp createdBy;
  private Timestamp modifiedDate;
  private Timestamp modifiedBy;
}
