package com.psl.DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.psl.beans.Hotel;
import com.psl.beans.User;

@Component(value = "dao")
public class HotelInfoDAOImpl implements IHotelInfoDAO {

	@Autowired
	@Qualifier("template")
	private JdbcTemplate template;

	@Override
	public List<Hotel> getInfoFromDB(String city) {
		List<Hotel> list = template.query("select * from donor_tbl",
				new RowMapper<Hotel>() {

					@Override
					public Hotel mapRow(ResultSet rs, int rownum)
							throws SQLException {

						Hotel h = new Hotel();
						/*
						 * d.setDonorId(rs.getInt("donorId"));
						 * d.setDonorName(rs.getString("donorName"));
						 * d.setBloodGroup(rs.getString("bloodGroup"));
						 */

						h.setHotelId(rs.getInt("hotelId"));
						h.setHotelName(rs.getString("hotelName"));
						h.setAddress(rs.getString("address"));
						h.setCity(rs.getString("city"));
						h.setState(rs.getString("state"));
						h.setTelephone(rs.getString("telephone"));
						h.setRating(rs.getString("rating"));
						h.setLongitude(rs.getString("longitude"));
						h.setLatitude(rs.getString("latitude"));

						return h;
					}

				});

		List<Hotel> listCity = new ArrayList<Hotel>();
		for (int i = 0; i < list.size() - 1; i++) {
			if (list.get(i).equals(city)) {
				listCity.add(list.get(i));
			}
		}
		return listCity;

	}

	@Override
	public void addInfoToDB(Hotel h) {
		template.update("insert into table_name values(" + h.getHotelId()
				+ ",'" + h.getHotelName() + "','" + h.getAddress() + "','"
				+ h.getCity() + "','" + h.getState() + "','" + h.getTelephone()
				+ "','" + h.getLongitude() + "','" + h.getLatitude() + "','"
				+ h.getRating() + "')");
	}

	@Override
	public void addUser(User u) {
		template.update("insert into table_name values(" + u.getUserId() + ",'"
				+ u.getFirstName() + "','" + u.getLastName() + "','"
				+ u.getUserId() + "','" + u.getCountry() + "','"
				+ u.getEmailId() + "','" + u.getPassword() + "')");
	}

	

	@Override
	public boolean checkLogIn(int id) {
		// TODO Auto-generated method stub
		return false;
	}

}
