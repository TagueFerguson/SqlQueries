package com.sqlqueries.storedproceduretests;

import static org.junit.Assert.assertEquals;

import com.sqlqueries.JdbcUtils;
import com.sqlqueries.models.Artist;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.test.context.junit4.SpringRunner;

@SpringBootTest
@RunWith(SpringRunner.class)
public class GetArtistsByPlaceOfOriginTests {

  @Autowired
  private JdbcUtils jdbcUtils;

  @Test
  public void storedProcShouldReturnCorrectArtists() {
    SqlParameterSource params = new MapSqlParameterSource()
            .addValue("inArtistId", 1);
    List<Artist> results = jdbcUtils.callStoredProcedure("Artist_GetById", params, Artist.class);
    assertEquals(1, results.size());
  }


}
