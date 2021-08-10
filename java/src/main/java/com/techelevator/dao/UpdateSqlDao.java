package com.techelevator.dao;

import com.techelevator.model.Update;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class UpdateSqlDao implements UpdateDAO{

    private JdbcTemplate jdbcTemplate;

    public UpdateSqlDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void addUpdate(Long breweryId, String breweryName, String update) {
        String sql = "INSERT INTO update (brewery_id, brewery_name, update) VALUES (?, ?, ?);";
        jdbcTemplate.update(sql, breweryId, breweryName, update);
    }

    @Override
    public List<Update> getUpdatesByUserId(Long userId) {
        List<Update> updateList = new ArrayList<>();
        String sql = "SELECT update_id, brewery_id, brewery_name, update FROM update WHERE brewery_id IN (SELECT brewery_id from brewery_users WHERE user_id = ?);";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, userId);

        while(result.next()) {
            updateList.add(mapRowToUpdate(result));
        }
                return updateList;
    }

    @Override
    public void insertIntoBreweryUser(long breweryId, long userId) {
        String sql = "INSERT INTO brewery_users (brewery_id, user_id) VALUES (?, ?);";
        jdbcTemplate.update(sql, breweryId, userId);
    }


    private Update mapRowToUpdate(SqlRowSet row) {
        Update newUpdate = new Update();

        newUpdate.setUpdateId(row.getLong("update_id"));
        newUpdate.setBreweryId(row.getLong("brewery_id"));
        newUpdate.setBreweryName(row.getString("brewery_name"));
        newUpdate.setUpdate(row.getString("update"));
        return newUpdate;
    }
}
