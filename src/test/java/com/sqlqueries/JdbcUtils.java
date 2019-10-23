package com.sqlqueries;

import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class JdbcUtils {
  private final DataSource dataSource;
  private final JdbcTemplate jdbcTemplate;

  public <T> List<T> callStoredProcedure(String procedureName, SqlParameterSource params, Class<T> mappedClass) {
    SimpleJdbcCall storedProcCall = new SimpleJdbcCall(dataSource)
            .withProcedureName(procedureName)
            .returningResultSet("results", BeanPropertyRowMapper.newInstance(mappedClass));

    Map<String, Object> results = storedProcCall.execute(params);
    return (List<T>) results.get("results");
  }
}
